/**
 * Compartmentjava
 *
 * TODO
 *
 * @author  filippo
 * @project SBML2Modelica
 */
package sbml2modelica.modelicagen;

import java.io.File;
import java.util.HashMap;
import java.util.HashSet;
import java.util.stream.Collectors;

import org.sbml.jsbml.ASTNode;
import org.sbml.jsbml.UnitDefinition;

import sbml2modelica.abstractmodel.AbstractCompartment;
import sbml2modelica.abstractmodel.AbstractEvent;
import sbml2modelica.abstractmodel.AbstractObject;
import sbml2modelica.abstractmodel.AbstractReaction;
import sbml2modelica.abstractmodel.AbstractSpecies;
import sbml2modelica.abstractmodel.AbstractSpeciesReference;
import sbml2modelica.abstractmodel.values.AbstractAssignment;
import sbml2modelica.abstractmodel.values.AbstractAssignmentValue;
import sbml2modelica.abstractmodel.values.AbstractConstantValue;
import sbml2modelica.abstractmodel.values.AbstractDerivativeValue;
import sbml2modelica.abstractmodel.values.AbstractFormula;
import sbml2modelica.abstractmodel.values.AbstractValue;
import sbml2modelica.utils.Constants;
import sbml2modelica.utils.Log;
import sbml2modelica.utils.exceptions.NullAbstractModelException;
import sbml2modelica.utils.exceptions.NullCompartmentException;
import sbml2modelica.utils.exceptions.NullFormulaException;

/**
 * @author Maggioli Filippo
 *
 */
public class CompartmentClassGenerator extends ClassGenerator
{
    private AbstractCompartment                         comp;
    private HashSet<AbstractObject>                     inputs;
    private HashSet<AbstractEvent>                      eventDepend;
    private HashMap<AbstractSpecies, AbstractFormula>   specders;
    
    
    private static AbstractCompartment notNull(AbstractCompartment c) 
            throws NullCompartmentException
    {
        if (c == null)
        {
            throw new NullCompartmentException("Cannot initialize a CompartmentClassGenerator"
                                               + " with a NULL AbstractCompartment.");
        }
        
        return c;
    }

    public CompartmentClassGenerator(AbstractCompartment comp, int efficiency) 
            throws NullAbstractModelException, NullCompartmentException
    {
        super(notNull(comp).getModel(), efficiency);
        
        this.comp           = comp;
        this.specders       = new HashMap<AbstractSpecies, AbstractFormula>();
        this.inputs         = new HashSet<AbstractObject>();
        this.eventDepend    = new HashSet<AbstractEvent>();
        
        this.generateSpeciesDerivatives();
        this.computeInputs();
        
        if (efficiency > 0)
        {
            AbstractValue val = null;
            AbstractFormula formula = null;
            ASTNode node = null;
            val = this.comp.getSize();
            if (val instanceof AbstractAssignmentValue)
                formula = ((AbstractAssignmentValue) val).getValue();
            else if (val instanceof AbstractConstantValue)
                formula = ((AbstractConstantValue) val).getValue();
            if (formula != null)
            {
                node = formula.getFormula();
                if (realEvaluation(node))
                    _constants.add(this.comp);
            }
        }
    }
    
    private void generateSpeciesDerivatives()
    {
        HashSet<AbstractReaction> reacs = this._model.getReactions();
        for (AbstractSpecies s : this.comp)
        {
            if (s.hasBoundaryCondition())
                continue;
            
            AbstractValue val = s.getQuantity();
            if (! (val instanceof AbstractDerivativeValue))
                continue;
            
            AbstractFormula formula = ((AbstractDerivativeValue) val).getDerivative();
            if (formula != null)
                continue;
            
            ASTNode der = new ASTNode(ASTNode.Type.PLUS);
            for (AbstractReaction r : reacs)
            {
                HashSet<AbstractSpeciesReference> specrefs = r.getReactants();
                specrefs.addAll(r.getProducts());
                for (AbstractSpeciesReference sr : specrefs)
                {
                    if (! sr.getSpecies().equals(s))
                        continue;
                    
                    ASTNode term = new ASTNode(ASTNode.Type.TIMES);
                    term.addChild(new ASTNode(ASTNode.Type.NAME));
                    term.getChild(0).setName(r.getId());
                    term.addChild(new ASTNode(ASTNode.Type.NAME));
                    term.getChild(1).setName(sr.getId());
                    
                    if (sr.isProduct())
                        der.addChild(term);
                    else
                    {
                        ASTNode wrap = new ASTNode(ASTNode.Type.MINUS);
                        wrap.addChild(term);
                        der.addChild(wrap);
                    }
                }
            }
            
            if (der.getNumChildren() == 0)
            {
                this.specders.put(s, null);
                continue;
            }
            
            if (der.getNumChildren() == 1)
                der = der.getChild(0);
            
            try
            {
                if (s.getConversionFactor() != null)
                {
                    ASTNode realder = new ASTNode(ASTNode.Type.TIMES);
                    realder.addChild(new ASTNode(ASTNode.Type.NAME));
                    realder.getChild(0).setName(s.getConversionFactor().getId());
                    realder.addChild(der);
                    formula = new AbstractFormula(_model, realder);
                }
                else
                    formula = new AbstractFormula(this._model, der);
            }
            catch (NullAbstractModelException | NullFormulaException e)
            {
                Log.Error("Something went wrong in generating the derivative of "
                          + s.getId() + ".");
                formula = null;
            }
            
            this.specders.put(s, formula);
        }
    }
    
    private void computeInputs()
    {
        HashSet<AbstractEvent> events = this._model.getEvents();
        AbstractValue val = this.comp.getSize();
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
            if (formula != null)
            {
                for (AbstractObject o : formula)
                    this.inputs.add(o);
            }
        }
        
        for (AbstractSpecies s : this.comp)
        {
            val = s.getQuantity();
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
                    formula = this.specders.get(s);
                if (formula == null)
                    continue;
                for (AbstractObject o : formula)
                    this.inputs.add(o);
            }
        }

        for (AbstractEvent e : events)
        {
            for (AbstractAssignment ae : e)
            {
                String targname = ae.getTarget().getId();
                if (this.comp.getId().equals(targname) 
                        || this.comp.getSpeciesById(targname) != null)
                {
                    this.eventDepend.add(e);
                    break;
                }
            }
        }
        this.inputs = this.inputs.stream()
                .filter(o -> !(o.getId().equals(this.comp.getId())))
                .filter(o -> (this.comp.getSpeciesById(o.getId()) == null))
                .collect(Collectors.toCollection(HashSet<AbstractObject>::new));
    }

    private void classHeader()
    {
        _strcls.append("class ").append("Class_").append(this.comp.getId());
        _strcls.append(System.lineSeparator());
        _strcls.append("    extends Modelica.Icons.VariantsPackage;").append(System.lineSeparator());
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
            _strcls.append(System.lineSeparator());
        }
        if (this.eventDepend.size() > 0)
            _strcls.append(System.lineSeparator());
        
        for (AbstractSpecies s : this.comp)
        {
            for (AbstractEvent e : this.eventDepend)
            {
                if (e.getEventAssignmentByTargetId(s.getId()) != null)
                {
                    _strcls.append("    input Real assign_").append(s.getId());
                    _strcls.append(';').append(System.lineSeparator());
                    break;
                }
            }
        }
        for (AbstractEvent e : this.eventDepend)
        {
            if (e.getEventAssignmentByTargetId(this.comp.getId()) != null)
            {
                _strcls.append("    input Real assign_").append(this.comp.getId());
                _strcls.append(';').append(System.lineSeparator());
            }
        }
        if (this.eventDepend.size() > 0)
            _strcls.append(System.lineSeparator());
    }
    
    private void classVariables()
    {
        // Declare the compartment's size
        _strcls.append("    ");
        if (_efficiency > 0 && _constants.contains(this.comp))
            _strcls.append("constant ");
        _strcls.append("Real ").append(this.comp.getId()).append("(unit = \"");
        _strcls.append(ModelicaUnitRepresentation(this.comp.getSizeUnit()));
        _strcls.append("\")");
        if (_efficiency > 0 && _constants.contains(this.comp))
        {
            AbstractValue val = this.comp.getSize();
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
        if (comp.getName() != null)
        	_strcls.append(" \"").append(comp.getName()).append("\"");
        _strcls.append(';').append(System.lineSeparator());
        String notes = comp.getNotesString();
        if (notes != null)
        	_strcls.append(" annotation(Documentation(info=\"").append(notes).append("\"));").append(System.lineSeparator());
        String info = comp.getInfo();
        if (info != null && ! info.equals(""))
        	_strcls.append("//").append(info.replace("\n", "\n//")).append(System.lineSeparator());
        
        for (AbstractSpecies s : this.comp)
        {
            // Declare the main reference to the species
            _strcls.append("    Real ").append(s.getId());
            if (s.isAmountReferenced())
                _strcls.append(Constants.SPECIES_AMOUNT_SUFFIX).append("(unit = \"");
            else
                _strcls.append(Constants.SPECIES_CONCENTRATION_SUFFIX).append("(unit = \"");
            _strcls.append(ModelicaUnitRepresentation(s.getQuantityUnit()));
            _strcls.append("\")").append(';').append(System.lineSeparator());
            // Declare the secondary reference to the species
            _strcls.append("    Real ").append(s.getId());
            if (! s.isAmountReferenced())
            {
                _strcls.append(Constants.SPECIES_AMOUNT_SUFFIX).append("(unit = \"");
                UnitDefinition other = s.getQuantityUnit();
                if (other != null)
                    other = other.multiplyWith(this.comp.getSizeUnit());
                _strcls.append(ModelicaUnitRepresentation(other));
            }
            else
            {
                _strcls.append(Constants.SPECIES_CONCENTRATION_SUFFIX).append("(unit = \"");
                UnitDefinition other = s.getQuantityUnit();
                if (other != null)
                    other = other.divideBy(this.comp.getSizeUnit());
                _strcls.append(ModelicaUnitRepresentation(other));
            }
            // Declare the external reference to the species
            _strcls.append("\")").append(';').append(System.lineSeparator());
            _strcls.append("    Real ").append(s.getId()).append("(unit = \"");
            _strcls.append(ModelicaUnitRepresentation(s.getQuantityUnit()));
            _strcls.append("\")");
            if (s.getName() != null)
            	_strcls.append(" \"").append(s.getName()).append("\"");
            _strcls.append(';').append(System.lineSeparator());
            notes = s.getNotesString();
            if (notes != null)
            	_strcls.append(" annotation(Documentation(info=\"").append(notes).append("\"));").append(System.lineSeparator());
            info = s.getInfo();
            if (info != null && ! info.equals(""))
            	_strcls.append("//").append(info.replace("\n", "\n//")).append(System.lineSeparator());      
        }
        _strcls.append(System.lineSeparator());
    }
    
    private void classInitialEquations()
    {
        _strcls.append("    initial equation").append(System.lineSeparator());
        AbstractValue val = this.comp.getSize();
        if (!(_efficiency > 0 && _constants.contains(this.comp)))
        {
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
                        if (aa.getTarget().equals(this.comp))
                            startEvents.add(e);
                    }
                }
                _strcls.append("        ").append(this.comp.getId()).append(" = ");
                if (startEvents.size() > 0)
                {
                    _strcls.append("if ");
                    for (AbstractEvent e : startEvents)
                    {
                        _strcls.append(e.getId()).append(" or ");
                    }
                    _strcls.setLength(_strcls.length() - 4);
                    _strcls.append(" then assign_").append(this.comp.getId());
                    _strcls.append(" else ");
                }
                _strcls.append(ModelicaRealRepresentation(formula));
                _strcls.append(';').append(System.lineSeparator());
            }
            else if (val instanceof AbstractConstantValue)
            {
                ASTNode formula = ((AbstractConstantValue) val).getValue().getFormula();
                _strcls.append("        ").append(this.comp.getId()).append(" = ");
                _strcls.append(ModelicaRealRepresentation(formula));
                _strcls.append(';').append(System.lineSeparator());
            }
        }
        
        for (AbstractSpecies s : this.comp)
        {
            val = s.getQuantity();
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
                        if (aa.getTarget().equals(s))
                            startEvents.add(e);
                    }
                }
                _strcls.append("        ").append(s.getId());
                if (s.isAmountReferenced())
                    _strcls.append(Constants.SPECIES_AMOUNT_SUFFIX);
                else
                    _strcls.append(Constants.SPECIES_CONCENTRATION_SUFFIX);
                _strcls.append(" = ");
                if (startEvents.size() > 0)
                {
                    _strcls.append("if ");
                    for (AbstractEvent e : startEvents)
                    {
                        _strcls.append(e.getId()).append(" or ");
                    }
                    _strcls.setLength(_strcls.length() - 4);
                    _strcls.append(" then assign_").append(s.getId());
                    _strcls.append(" else ");
                }
                _strcls.append(ModelicaRealRepresentation(formula));
                _strcls.append(';').append(System.lineSeparator());
            }
            else if (val instanceof AbstractConstantValue)
            {
                ASTNode formula = ((AbstractConstantValue) val).getValue().getFormula();
                _strcls.append("        ").append(s.getId());
                if (s.isAmountReferenced())
                    _strcls.append(Constants.SPECIES_AMOUNT_SUFFIX);
                else
                    _strcls.append(Constants.SPECIES_CONCENTRATION_SUFFIX);
                _strcls.append(" = ");
                _strcls.append(ModelicaRealRepresentation(formula));
                _strcls.append(';').append(System.lineSeparator());
            }
        }
        _strcls.append(System.lineSeparator()).append(System.lineSeparator());
    }
    
    private void classSystemEquations()
    {
        _strcls.append("    equation").append(System.lineSeparator());
        _strcls.append("        assert(").append(comp.getId()).append(" >= 0, ");
        _strcls.append("\"Compartment size became negative. Make sure this is a valid bahaviour.\");");
        _strcls.append(System.lineSeparator());
        AbstractValue val = this.comp.getSize();
        if (!(_efficiency > 0 && _constants.contains(this.comp)))
        {
            if (val instanceof AbstractConstantValue)
            {
                _strcls.append("        der(").append(this.comp.getId()).append(") = 0");
                _strcls.append(';').append(System.lineSeparator());
            }
            else if (val instanceof AbstractAssignmentValue)
            {
                ASTNode formula = ((AbstractAssignmentValue) val).getValue().getFormula();
                _strcls.append("        ").append(this.comp.getId()).append(" = ");
                _strcls.append(ModelicaRealRepresentation(formula));
                _strcls.append(';').append(System.lineSeparator());
            }
            else if (val instanceof AbstractDerivativeValue)
            {
                AbstractFormula derFormula = ((AbstractDerivativeValue) val).getDerivative();
                if (derFormula != null)
                {
                    ASTNode formula = derFormula.getFormula();
                    _strcls.append("        der(").append(this.comp.getId()).append(") = ");
                    _strcls.append(ModelicaRealRepresentation(formula));
                    _strcls.append(';').append(System.lineSeparator());
                }
            }
        }
        
        for (AbstractSpecies s : this.comp)
        {
            _strcls.append("        ").append(s.getId()).append(" = ").append(s.getId());
            if (s.isAmountReferenced())
                _strcls.append(Constants.SPECIES_AMOUNT_SUFFIX);
            else
                _strcls.append(Constants.SPECIES_CONCENTRATION_SUFFIX);
            _strcls.append(';').append(System.lineSeparator());
        }
        for (AbstractSpecies s : this.comp)
        {
            if (this.specders.keySet().contains(s))
                continue;
            
            val = s.getQuantity();
            if (val instanceof AbstractConstantValue)
            {
                _strcls.append("        der(").append(s.getId());
                _strcls.append(Constants.SPECIES_AMOUNT_SUFFIX);
                _strcls.append(") = 0").append(';').append(System.lineSeparator());
            }
            else if (val instanceof AbstractAssignmentValue)
            {
                ASTNode formula = ((AbstractAssignmentValue) val).getValue().getFormula();
                _strcls.append("        ").append(s.getId()).append(Constants.SPECIES_AMOUNT_SUFFIX);
//                if (s.isAmountReferenced())
//                    _strcls.append(Constants.SPECIES_AMOUNT_SUFFIX);
//                else
//                    _strcls.append(Constants.SPECIES_CONCENTRATION_SUFFIX);
                _strcls.append(" = ");
                _strcls.append(ModelicaRealRepresentation(formula));
                if (! s.isAmountReferenced())
                    _strcls.append(" * ").append(this.comp.getId());
                _strcls.append(';').append(System.lineSeparator());
            }
            else if (val instanceof AbstractDerivativeValue)
            {
                AbstractFormula derFormula = ((AbstractDerivativeValue) val).getDerivative();
                if (derFormula == null)
                    continue;
                ASTNode formula = derFormula.getFormula();
                _strcls.append("        der(").append(s.getId());
                _strcls.append(Constants.SPECIES_AMOUNT_SUFFIX);
                if (!s.isAmountReferenced())
                    _strcls.append(" / ").append(this.comp.getId());
//                if (s.isAmountReferenced())
//                    _strcls.append(Constants.SPECIES_AMOUNT_SUFFIX);
//                else
//                    _strcls.append(Constants.SPECIES_CONCENTRATION_SUFFIX);
                _strcls.append(") = ");
                _strcls.append(ModelicaRealRepresentation(formula));
//                if (! s.isAmountReferenced())
//                {
//                    _strcls.append(" * ").append(this.comp.getId()).append(" + ");
//                    _strcls.append("(").append(s.getId()).append(Constants.SPECIES_AMOUNT_SUFFIX);
//                    _strcls.append(" * der(").append(this.comp.getId()).append(") / ");
//                    _strcls.append(this.comp.getId()).append(")");
//                }
                _strcls.append(';').append(System.lineSeparator());
            }
//            _strcls.append("        ").append(s.getId());
//            _strcls.append(Constants.SPECIES_AMOUNT_SUFFIX).append(" = ");
//            _strcls.append(s.getId()).append(Constants.SPECIES_CONCENTRATION_SUFFIX);
//            _strcls.append(" * ").append(this.comp.getId());
//            _strcls.append(';').append(System.lineSeparator());
        }
        for (AbstractSpecies s : this.specders.keySet())
        {
            ASTNode formula = this.specders.get(s).getFormula();
            if (formula == null)
                continue;
            _strcls.append("        der(").append(s.getId());
            _strcls.append(Constants.SPECIES_AMOUNT_SUFFIX).append(") = ");
            _strcls.append(ModelicaRealRepresentation(formula));
            _strcls.append(';').append(System.lineSeparator());
//            _strcls.append("        ").append(s.getId());
//            _strcls.append(Constants.SPECIES_AMOUNT_SUFFIX);
//            _strcls.append(" = ").append(s.getId());
//            _strcls.append(Constants.SPECIES_CONCENTRATION_SUFFIX);
//            _strcls.append(" * ").append(this.comp.getId());
//            _strcls.append(';').append(System.lineSeparator());
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
            //_strcls.append("        when ").append(e.getId()).append(" then");
            _strcls.append(System.lineSeparator());
            for (AbstractSpecies s : this.comp)
            {
                for (AbstractAssignment ae : e)
                {
                    if (ae.getTarget().equals(s))
                    {
                        _strcls.append("            ");
                        _strcls.append("reinit(").append(s.getId());
                        _strcls.append(Constants.SPECIES_AMOUNT_SUFFIX);
                        _strcls.append(", ").append("assign_").append(s.getId());
                        if (!s.isAmountReferenced())
                            _strcls.append(" * pre(").append(this.comp.getId()).append(')');
                        _strcls.append(");").append(System.lineSeparator());
                    }
                    else if (ae.getTarget().equals(this.comp))
                    {
                        _strcls.append("            ");
                        _strcls.append("reinit(").append(this.comp.getId()).append(", ");
                        _strcls.append("assign_").append(this.comp.getId()).append(");");
                        _strcls.append(System.lineSeparator());
                    }
                }
            }
        }
        if (i > 0)
        	_strcls.append("        end when;").append(System.lineSeparator());
    }
    
    private void classAlgorithm()
    {
        _strcls.append("    algorithm").append(System.lineSeparator());
        for (AbstractSpecies s : this.comp)
        {
            _strcls.append("        ").append(s.getId());
            _strcls.append(Constants.SPECIES_CONCENTRATION_SUFFIX);
            _strcls.append(" := ").append(s.getId()).append(Constants.SPECIES_AMOUNT_SUFFIX);
            _strcls.append(" / ").append(this.comp.getId()).append(';');
            _strcls.append(System.lineSeparator());
        }
    }
    
    private void classEnd()
    {
        _strcls.append("end ").append("Class_").append(this.comp.getId());
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
        this.classAlgorithm();
        this.classEnd();
        
        return this._strcls.toString();
    }

    @Override
    public void writeClass(File dir)
    {
        String filename = "Class_" + this.comp.getId()
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
    
    public String getClassName()
    {
        return "Class_" + this.comp.getId();
    }

    public String getInstanceName()
    {
        return this.comp.getId();
    }
}
