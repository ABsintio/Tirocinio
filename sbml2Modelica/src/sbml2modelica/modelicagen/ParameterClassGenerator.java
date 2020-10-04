/**
 * Parameter.java
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
import sbml2modelica.abstractmodel.AbstractModel;
import sbml2modelica.abstractmodel.AbstractObject;
import sbml2modelica.abstractmodel.AbstractParameter;
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
public class ParameterClassGenerator extends ClassGenerator
{
    private HashSet<AbstractObject>     inputs;
    private HashSet<AbstractEvent>      eventDepend;
    private HashSet<AbstractParameter>  params;
    
    
    public ParameterClassGenerator(AbstractModel model, int efficiency) 
            throws NullAbstractModelException
    {
        super(model, efficiency);
        
        this.inputs         = new HashSet<AbstractObject>();
        this.eventDepend    = new HashSet<AbstractEvent>();
        this.params         = this._model.getParameters();

        // Create the list of events which affect parameters
        HashSet<AbstractEvent> events = this._model.getEvents();
        for (AbstractParameter p : params)
        {
            AbstractValue val = p.getValue();
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
                if (e.getEventAssignmentByTargetId(p.getId()) != null)
                    this.eventDepend.add(e);
            }
        }
        this.inputs = this.inputs.stream()
                                 .filter(o -> !(o instanceof AbstractParameter))
                                 .collect(Collectors.toCollection(HashSet<AbstractObject>::new));
        
        // Add all the parameters with constant value to the set of constants objects
        // if the efficiency settings require this
        if (efficiency > 0)
        {
            for (AbstractParameter p : params)
            {
                AbstractValue val = p.getValue();
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
                else
                    continue;
                
                node = formula.getFormula();
                if (realEvaluation(node))
                    _constants.add(p);
            }
        }
    }

    private void classHeader()
    {
        _strcls.append("class ").append(PARAMETER_CLASS_NAME);
        _strcls.append(System.lineSeparator());
        _strcls.append("    extends Modelica.Icons.RecordsPackage;").append(System.lineSeparator());
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
        
        for (AbstractParameter p : this.params)
        {
            for (AbstractEvent e : this.eventDepend)
            {
                if (e.getEventAssignmentByTargetId(p.getId()) != null)
                {
                    _strcls.append("    input Real assign_").append(p.getId()).append(';');
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
        for (AbstractParameter p : this.params)
        {
            _strcls.append("    ");
            if (_efficiency > 0 && _constants.contains(p))
                _strcls.append("constant ");
            _strcls.append("Real ").append(p.getId()).append("(unit = \"");
            _strcls.append(ModelicaUnitRepresentation(p.getUnit()));
            _strcls.append("\")");
            if (_efficiency > 0 && _constants.contains(p))
            {
                AbstractValue val = p.getValue();
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
            if (p.getName() != null)
            	_strcls.append(" \"").append(p.getName()).append("\"");
            _strcls.append(';').append(System.lineSeparator());
            String notes = p.getNotesString();
            if (notes != null)
            	_strcls.append(" annotation(Documentation(info=\"").append(notes).append("\"));").append(System.lineSeparator());
            String info = p.getInfo();
            if (info != null && ! info.equals(""))
            	_strcls.append("//").append(info.replace("\n", "\n//")).append(System.lineSeparator());
        }
        if (this.params.size() > 0)
            _strcls.append(System.lineSeparator()).append(System.lineSeparator());
    }
    
    private void classInitialEquations()
    {
        _strcls.append("    initial equation").append(System.lineSeparator());
        for (AbstractParameter p : this.params)
        {
            if (_efficiency > 0 && _constants.contains(p))
                continue;
            
            AbstractValue val = p.getValue();
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
                        if (aa.getTarget().equals(p))
                            startEvents.add(e);
                    }
                }
                _strcls.append("        ").append(p.getId()).append(" = ");
                if (startEvents.size() > 0)
                {
                    _strcls.append("if ");
                    for (AbstractEvent e : startEvents)
                    {
                        _strcls.append(e.getId()).append(" or ");
                    }
                    _strcls.setLength(_strcls.length() - 4);
                    _strcls.append(" then assign_").append(p.getId());
                    _strcls.append(" else ");
                }
                _strcls.append(ModelicaRealRepresentation(formula));
                _strcls.append(';').append(System.lineSeparator());
            }
            else if (val instanceof AbstractConstantValue)
            {
                ASTNode formula = ((AbstractConstantValue) val).getValue().getFormula();
                _strcls.append("        ").append(p.getId()).append(" = ");
                _strcls.append(ModelicaRealRepresentation(formula));
                _strcls.append(';').append(System.lineSeparator());
            }
        }
        _strcls.append(System.lineSeparator()).append(System.lineSeparator());
    }
    
    private void classSystemEquations()
    {
        _strcls.append("    equation").append(System.lineSeparator());
        for (AbstractParameter p : this.params)
        {
            if (_efficiency > 0 && _constants.contains(p))
                continue;
            
            AbstractValue val = p.getValue();
            if (val instanceof AbstractConstantValue)
            {
                _strcls.append("        der(").append(p.getId()).append(") = 0");
                _strcls.append(';').append(System.lineSeparator());
            }
            else if (val instanceof AbstractAssignmentValue)
            {
                ASTNode formula = ((AbstractAssignmentValue) val).getValue().getFormula();
                _strcls.append("        ").append(p.getId()).append(" = ");
                _strcls.append(ModelicaRealRepresentation(formula));
                _strcls.append(';').append(System.lineSeparator());
            }
            else if (val instanceof AbstractDerivativeValue)
            {
                AbstractFormula derFormula = ((AbstractDerivativeValue) val).getDerivative();
                if (derFormula == null)
                    continue;
                ASTNode formula = derFormula.getFormula();
                _strcls.append("        der(").append(p.getId()).append(") = ");
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
            for (AbstractParameter p : this.params)
            {
                for (AbstractAssignment ae : e)
                {
                    if (! ae.getTarget().equals(p))
                        continue;
                    _strcls.append("            ");
                    _strcls.append("reinit(").append(p.getId()).append(", ");
                    _strcls.append("assign_").append(p.getId()).append(");");
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
        _strcls.append("end ").append(PARAMETER_CLASS_NAME);
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
        String filename = PARAMETER_CLASS_NAME 
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











