/**
 * Reactionjava
 *
 * TODO
 *
 * @author  filippo
 * @project SBML2Modelica
 */
package sbml2modelica.modelicagen;

import java.io.File;
import java.util.HashSet;
import java.util.stream.Collectors;

import org.sbml.jsbml.ASTNode;

import sbml2modelica.abstractmodel.AbstractEvent;
import sbml2modelica.abstractmodel.AbstractLocalParameter;
import sbml2modelica.abstractmodel.AbstractModel;
import sbml2modelica.abstractmodel.AbstractObject;
import sbml2modelica.abstractmodel.AbstractReaction;
import sbml2modelica.abstractmodel.AbstractSpeciesReference;
import sbml2modelica.abstractmodel.values.AbstractAssignment;
import sbml2modelica.abstractmodel.values.AbstractAssignmentValue;
import sbml2modelica.abstractmodel.values.AbstractConstantValue;
import sbml2modelica.abstractmodel.values.AbstractDerivativeValue;
import sbml2modelica.abstractmodel.values.AbstractFormula;
import sbml2modelica.abstractmodel.values.AbstractValue;
import sbml2modelica.utils.exceptions.NullAbstractModelException;

/**
 * @author Maggioli Filippo
 *
 */
public class ReactionClassGenerator extends ClassGenerator
{
    private HashSet<AbstractObject>             inputs;
    private HashSet<AbstractEvent>              eventDepend;
    private HashSet<AbstractReaction>           reacs;
    private HashSet<AbstractSpeciesReference>   specrefs;
    
    public ReactionClassGenerator(AbstractModel model, int efficiency) 
            throws NullAbstractModelException
    {
        super(model, efficiency);
        
        this.inputs         = new HashSet<AbstractObject>();
        this.eventDepend    = new HashSet<AbstractEvent>();
        this.reacs          = this._model.getReactions();
        this.specrefs       = new HashSet<AbstractSpeciesReference>();
        this._strcls         = new StringBuilder();

        HashSet<AbstractEvent> events = this._model.getEvents();
        for (AbstractReaction r : this.reacs)
        {
            AbstractFormula kl = r.getKinetic().getValue();
            for (AbstractObject o : kl)
            {
                if (r.getLocalParameterById(o.getId()) == null)
                    this.inputs.add(o);
            }
            
            HashSet<AbstractSpeciesReference> specrefs = r.getReactants();
            specrefs.addAll(r.getProducts());
            this.specrefs.addAll(specrefs);
            for (AbstractSpeciesReference sr : specrefs)
            {
                AbstractValue val = sr.getValue();
                if (val instanceof AbstractConstantValue)
                {
                    AbstractFormula formula = ((AbstractConstantValue) val).getValue();
                    for (AbstractObject o : formula)
                        this.inputs.add(o);
                }
                else if (val instanceof AbstractAssignmentValue)
                {
                    AbstractFormula formula = ((AbstractAssignmentValue) val).getValue();
                    for (AbstractObject o : formula)
                        this.inputs.add(o);
                }
                else if (val instanceof AbstractDerivativeValue)
                {
                    AbstractFormula formula = ((AbstractDerivativeValue) val).getInitialConditions();
                    for (AbstractObject o : formula)
                        this.inputs.add(o);
                    formula = ((AbstractDerivativeValue) val).getDerivative();
                    if (formula == null)
                        continue;
                    for (AbstractObject o : formula)
                        this.inputs.add(o);
                }
                
                for (AbstractEvent e : events)
                {
                    if (e.getEventAssignmentByTargetId(sr.getId()) != null)
                        this.eventDepend.add(e);
                }
            }
        }
        this.inputs = this.inputs.stream()
                .filter(o -> !(o instanceof AbstractReaction))
                .filter(o -> !(o instanceof AbstractSpeciesReference))
                .collect(Collectors.toCollection(HashSet<AbstractObject>::new));
        
        if (efficiency > 0)
        {
            for (AbstractReaction r : reacs)
            {
                AbstractAssignmentValue kin = r.getKinetic();
                ASTNode node = kin.getValue().getFormula();
                if (realEvaluation(node))
                    _constants.add(r);
                
                HashSet<AbstractSpeciesReference> spref = r.getReactants();
                spref.addAll(r.getProducts());
                for (AbstractSpeciesReference sp : spref)
                {
                    AbstractValue val = sp.getValue();
                    AbstractFormula formula = null;
                    node = null;
                    if (val instanceof AbstractAssignmentValue)
                    {
                        AbstractAssignmentValue aav = (AbstractAssignmentValue) val;
                        formula = aav.getValue();
                    }
                    else if (val instanceof AbstractConstantValue)
                    {
                        AbstractConstantValue acv = (AbstractConstantValue) val;
                        formula = acv.getValue();
                    }
                    else
                        continue;
                    
                    node = formula.getFormula();
                    if (realEvaluation(node))
                        _constants.add(sp);
                }
            }
        }
    }

    private void classHeader()
    {
        _strcls.append("class ").append(REACTION_CLASS_NAME);
        _strcls.append(System.lineSeparator());
        _strcls.append("    extends Modelica.Icons.SourcesPackage;").append(System.lineSeparator());
        _strcls.append(System.lineSeparator()).append(System.lineSeparator());
    }
    
    private void classInputs()
    {
        for (AbstractObject o : this.inputs)
        {
            if (_efficiency == 2 && _constants.contains(o))
                continue;
            
            _strcls.append("    input Real ").append(o.getId()).append(';');
            _strcls.append(System.lineSeparator());
        }
        if (this.inputs.size() > 0)
            _strcls.append(System.lineSeparator());
        
        for (AbstractEvent e : this.eventDepend)
        {
            _strcls.append("    input Boolean ").append(e.getId()).append(';');
        }
        if (this.eventDepend.size() > 0)
            _strcls.append(System.lineSeparator());
        
        for (AbstractSpeciesReference sr : this.specrefs)
        {
            for (AbstractEvent e : this.eventDepend)
            {
                if (e.getEventAssignmentByTargetId(sr.getId()) != null)
                {
                    _strcls.append("    input Real assign_").append(sr.getId()).append(';');
                    _strcls.append(System.lineSeparator());
                    break;
                }
            }
        }
        if (this.eventDepend.size() > 0)
            _strcls.append(System.lineSeparator()).append(System.lineSeparator());
    }
    
    private void classVariables()
    {
        for (AbstractReaction r : this.reacs)
        {
//            _strcls.append("    ");
            if (_efficiency > 0 && _constants.contains(r))
                _strcls.append("constant ");
            _strcls.append("    Real ").append(r.getId()).append("(unit = \"");
            _strcls.append(ModelicaUnitRepresentation(_model.getExtentUnit()));
            _strcls.append("\")");
            if (_efficiency > 0 && _constants.contains(r))
            {
                _strcls.append(" = ");
                _strcls.append(ModelicaRealRepresentation(r.getKinetic().getValue().getFormula()));
            }
            if (r.getName() != null)
            	_strcls.append(" \"").append(r.getName()).append("\"");
            _strcls.append(';').append(System.lineSeparator());
            String notes = r.getNotesString();
            if (notes != null)
            	_strcls.append(" annotation(Documentation(info=\"").append(notes).append("\"));").append(System.lineSeparator());
            String info = r.getInfo();
            if (info != null && ! info.equals(""))
            	_strcls.append("//").append(info.replace("\n", "\n//")).append(System.lineSeparator());
            
            HashSet<AbstractLocalParameter> locals = r.getLocalParameters();
            for (AbstractLocalParameter lp : locals)
            {
                _strcls.append("    parameter Real ");
                _strcls.append(r.getId()).append('_').append(lp.getId()).append("(unit \"");
                _strcls.append(ModelicaUnitRepresentation(lp.getUnit()));
                _strcls.append("\")").append(" = ").append(lp.getValue());
                if (lp.getName() != null)
                	_strcls.append(" \"").append(lp.getName()).append("\"");
                _strcls.append(';').append(System.lineSeparator());
                notes = lp.getNotesString();
                if (notes != null)
                	_strcls.append(" annotation(Documentation(info=\"").append(notes).append("\"));").append(System.lineSeparator());
                info = lp.getInfo();
                if (info != null && ! info.equals(""))
                	_strcls.append("//").append(info.replace("\n", "\n//")).append(System.lineSeparator());
            }
            
            HashSet<AbstractSpeciesReference> specrefs = r.getReactants();
            specrefs.addAll(r.getProducts());
            for (AbstractSpeciesReference sr : specrefs)
            {
                _strcls.append("    ");
                if (_efficiency > 0 && _constants.contains(sr))
                    _strcls.append("constant ");
                _strcls.append("Real ").append(sr.getId());
                if (_efficiency > 0 && _constants.contains(sr))
                {
                    AbstractValue val = sr.getValue();
                    AbstractFormula formula = null;
                    ASTNode node = null;
                    if (val instanceof AbstractAssignmentValue)
                    {
                        AbstractAssignmentValue aav = (AbstractAssignmentValue) val;
                        formula = aav.getValue();
                    }
                    else if (val instanceof AbstractConstantValue)
                    {
                        AbstractConstantValue acv = (AbstractConstantValue) val;
                        formula = acv.getValue();
                    }
                    
                    node = formula.getFormula();
                    _strcls.append(" = ").append(ModelicaRealRepresentation(node));
                }
                if (sr.getName() != null)
                	_strcls.append(" \"").append(sr.getName()).append("\"");
                _strcls.append(';').append(System.lineSeparator());
                notes = sr.getNotesString();
                if (notes != null)
                	_strcls.append(" annotation(Documentation(info=\"").append(notes).append("\"));").append(System.lineSeparator());
                info = sr.getInfo();
                if (info != null && ! info.equals(""))
                	_strcls.append("//").append(info.replace("\n", "\n//")).append(System.lineSeparator());
            }
        }
        if (this.reacs.size() > 0)
        {
            _strcls.append(System.lineSeparator()).append(System.lineSeparator());
        }
    }
    
    private void classInitialEquations()
    {
        _strcls.append("    initial equation").append(System.lineSeparator());
        for (AbstractSpeciesReference sr : this.specrefs)
        {
            if (_efficiency > 0 && _constants.contains(sr))
                continue;
            
            AbstractValue val = sr.getValue();
            if (val instanceof AbstractDerivativeValue)
            {
                ASTNode formula = ((AbstractDerivativeValue) val).getInitialConditions()
                                                                 .getFormula();
                HashSet<AbstractEvent> startEvents = new HashSet<AbstractEvent>();
                for (AbstractEvent e : this.eventDepend)
                {
                    if (! e.isTriggerableAtStart())
                        continue;
                    for (AbstractAssignment aa : e)
                    {
                        if (aa.getTarget().equals(sr))
                            startEvents.add(e);
                    }
                }
                _strcls.append("        ").append(sr.getId()).append(" = ");
                if (startEvents.size() > 0)
                {
                    _strcls.append("if ");
                    for (AbstractEvent e : startEvents)
                    {
                        _strcls.append(e.getId()).append(" or ");
                    }
                    _strcls.setLength(_strcls.length() - 4);
                    _strcls.append(" then assign_").append(sr.getId());
                    _strcls.append(" else ");
                }
                _strcls.append(ModelicaRealRepresentation(formula));
                _strcls.append(';').append(System.lineSeparator());
            }
            else if (val instanceof AbstractConstantValue)
            {
                ASTNode formula = ((AbstractConstantValue) val).getValue().getFormula();
                _strcls.append("        ").append(sr.getId()).append(" = ");
                _strcls.append(ModelicaRealRepresentation(formula));
                _strcls.append(';').append(System.lineSeparator());
            }
        }
        _strcls.append(System.lineSeparator()).append(System.lineSeparator());
    }
    
    private void classSystemEquations()
    {
        _strcls.append("    equation").append(System.lineSeparator());
        for (AbstractReaction r : this.reacs)
        {
            if (_efficiency > 0 && _constants.contains(r))
                continue;
            
            AbstractFormula kl = r.getKinetic().getValue();
            ASTNode klnode = new ASTNode(kl.getFormula());
            klnode = RenameLocalParameter(r, klnode);
            _strcls.append("        ").append(r.getId()).append(" = ");
            _strcls.append(ModelicaRealRepresentation(klnode));
            _strcls.append(';').append(System.lineSeparator());
        }
        
        for (AbstractSpeciesReference sr : this.specrefs)
        {
            if (_efficiency > 0 && _constants.contains(sr))
                continue;
            
            AbstractValue val = sr.getValue();
            if (val instanceof AbstractConstantValue)
            {
                _strcls.append("        der(").append(sr.getId()).append(") = 0");
                _strcls.append(';').append(System.lineSeparator());
            }
            else if (val instanceof AbstractAssignmentValue)
            {
                ASTNode formula = ((AbstractAssignmentValue) val).getValue().getFormula();
                _strcls.append("        ").append(sr.getId()).append(" = ");
                _strcls.append(ModelicaRealRepresentation(formula));
                _strcls.append(';').append(System.lineSeparator());
            }
            else if (val instanceof AbstractDerivativeValue)
            {
                AbstractFormula derFormula = ((AbstractDerivativeValue) val).getDerivative();
                if (derFormula == null)
                    continue;
                ASTNode formula = derFormula.getFormula();
                _strcls.append("        der(").append(sr.getId()).append(") = ");
                _strcls.append(ModelicaRealRepresentation(formula));
                _strcls.append(';').append(System.lineSeparator());
            }
        }
        _strcls.append(System.lineSeparator());
    }
    
    private void classWhenEquations()
    {
    	int i = 0;
        for (AbstractEvent e : this.eventDepend)
        {
        	_strcls.append("        ");
        	if (i++ > 0)
        		_strcls.append("else");
            _strcls.append("when ").append(e.getId()).append(" then");
            _strcls.append(System.lineSeparator());
            for (AbstractSpeciesReference sr : this.specrefs)
            {
                for (AbstractAssignment ae : e)
                {
                    if (! ae.getTarget().equals(sr))
                        continue;
                    _strcls.append("            ");
                    _strcls.append("reinit(").append(sr.getId()).append(", ");
                    _strcls.append("assign_").append(sr.getId()).append(");");
                    _strcls.append(System.lineSeparator());
                    break;
                }
            }
        }
        if (i > 0)
        	_strcls.append("        end when;").append(System.lineSeparator());
    }
    
    private void classEnd()
    {
        _strcls.append("end ").append(REACTION_CLASS_NAME);
        _strcls.append(';').append(System.lineSeparator());
    }
    
    @Override
    public String generateClass()
    {
        this._strcls = new StringBuilder();
        
        this.classHeader();
        this.classInputs();
        this.classVariables();
        this.classInitialEquations();
        this.classSystemEquations();
        this.classWhenEquations();
        this.classEnd();
        
        return this._strcls.toString();
    }
    
    public void writeClass(File dir)
    {
        String filename = REACTION_CLASS_NAME 
                          + MODELICA_FILE_EXTENSION;
        this.writeClass(dir, filename);
    }
    
    public HashSet<AbstractObject> getInputs()
    {
        return this.inputs;
    }
    
    public HashSet<AbstractEvent> getInputEvents()
    {
        return this.eventDepend;
    }
}
