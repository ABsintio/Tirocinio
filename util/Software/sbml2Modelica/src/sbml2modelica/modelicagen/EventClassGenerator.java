/**
 * Event.java
 *
 * TODO
 *
 * @author  filippo
 * @project SBML2Modelica
 */
package sbml2modelica.modelicagen;

import java.io.File;
import java.util.HashSet;

import org.sbml.jsbml.ASTNode;

import sbml2modelica.abstractmodel.AbstractEvent;
import sbml2modelica.abstractmodel.AbstractObject;
import sbml2modelica.abstractmodel.values.AbstractAssignment;
import sbml2modelica.abstractmodel.values.AbstractFormula;
import sbml2modelica.utils.exceptions.NullAbstractModelException;
import sbml2modelica.utils.exceptions.NullEventException;

/**
 * @author Maggioli Filippo
 *
 */
public class EventClassGenerator extends ClassGenerator
{
    private AbstractEvent               event;
    private HashSet<AbstractObject>     affected; 
    private HashSet<AbstractObject>     inputs;
    
    private static AbstractEvent notNull(AbstractEvent e) throws NullEventException
    {
        if (e == null)
        {
            throw new NullEventException("Cannot initialize an EventClassGenerator with"
                                         + " a NULL AbstractEvent.");
        }
        
        return e;
    }

    public EventClassGenerator(AbstractEvent e, int efficiency) 
            throws NullAbstractModelException, NullEventException
    {
        super(notNull(e).getModel(), efficiency);
        
        this.event      = e;
        this.affected   = new HashSet<AbstractObject>();
        this.inputs     = new HashSet<AbstractObject>();
        for (AbstractAssignment ea : this.event)
        {
            this.affected.add(ea.getTarget());
            AbstractFormula formula = ea.getValue();
            for (AbstractObject o : formula)
                this.inputs.add(o);
        }
        for (AbstractObject o : this.event.getTrigger())
            this.inputs.add(o);
        if (this.event.getDelay() != null)
        {
            for (AbstractObject o : this.event.getDelay())
                this.inputs.add(o);
        }
        if (this.event.getPriority() != null)
        {
            for (AbstractObject o : this.event.getPriority())
                this.inputs.add(o);
        }
    }

    private void classHeader()
    {
        _strcls.append("class Class_").append(this.event.getId());
        if (event.getName() != null)
        	_strcls.append(" \"").append(event.getName()).append("\"");
        _strcls.append(System.lineSeparator());
        _strcls.append("    extends Modelica.Icons.SignalBus;").append(System.lineSeparator());
        String notes = event.getNotesString();
        if (notes != null)
        	_strcls.append(" annotation(Documentation(info=\"").append(notes).append("\"));").append(System.lineSeparator());
        String info = event.getInfo();
        if (info != null && ! info.equals(""))
        	_strcls.append("//").append(info.replace("\n", "\n//")).append(System.lineSeparator());
        _strcls.append(System.lineSeparator()).append(System.lineSeparator());
    }
    
    private void classInputs()
    {
        for (AbstractObject o : this.inputs)
        {
            if (_efficiency == 2 && _constants.contains(o))
                continue;
            
            _strcls.append("    input Real ").append(o.getId());
            _strcls.append(';').append(System.lineSeparator());
        }
    }
    
    private void classVariables()
    {
        _strcls.append("    Boolean trigger;").append(System.lineSeparator());
        if (this.event.getDelay() != null)
        {
            _strcls.append("    Boolean execution;").append(System.lineSeparator());
            _strcls.append("    Boolean active;").append(System.lineSeparator());
            _strcls.append("    Real    trigtime;").append(System.lineSeparator());
            _strcls.append("    Real    delta;").append(System.lineSeparator());
        }
        if (this.event.getPriority() != null)
            _strcls.append("    Real    priority;").append(System.lineSeparator());
        
        for (AbstractAssignment a : this.event)
        {
            _strcls.append("    Real    value_").append(a.getTarget().getId());
            _strcls.append(';').append(System.lineSeparator());
        }
        _strcls.append(System.lineSeparator());
    }
    
    private void classInitialEquations()
    {
        if (! this.event.isTriggerableAtStart())
            return;
        
        _strcls.append("    initial equation").append(System.lineSeparator());
        
        if (this.event.getDelay() != null)
        {
            ASTNode delay = this.event.getDelay().getFormula();
            _strcls.append("        delta = if trigger then ");
            _strcls.append(ModelicaRealRepresentation(delay));
            _strcls.append(" else 0.0;").append(System.lineSeparator());
            _strcls.append(System.lineSeparator());
        
	        for (AbstractAssignment aa : this.event)
	        {
	            ASTNode formula = new ASTNode(aa.getValue().getFormula());
	            String rightTarg = "pre(" + aa.getTarget().getId() + ")";
	            RenameVariable(formula, aa.getTarget().getId(), rightTarg);
	            _strcls.append("        value_").append(aa.getTarget().getId());
	            _strcls.append(" = ").append(ModelicaRealRepresentation(formula));
	            _strcls.append(';').append(System.lineSeparator());
	        }
	        _strcls.append(System.lineSeparator());
        }
    }
    
    private void classPersistentWhen()
    {
        ASTNode delay = this.event.getDelay().getFormula();
        // When the event triggers, set the trigger time and the delay.
        // Also, set the event as activated and the execution to true iff the delay is zero.
        // Put an assertion to check if a nested event has been detected.
        _strcls.append("        when trigger then").append(System.lineSeparator());
        _strcls.append("            trigtime := if not pre(active) then time else trigtime;");
        _strcls.append(System.lineSeparator());
        _strcls.append("            delta := if not pre(active) then ");
        _strcls.append(ModelicaRealRepresentation(delay));
        _strcls.append(" else delta;").append(System.lineSeparator());
        _strcls.append("            active := true;").append(System.lineSeparator());
        _strcls.append("            execution := delta <= 0.0;").append(System.lineSeparator());
        _strcls.append("            assert(not pre(active), \"");
        _strcls.append("Nested event detected. This is not supported yet.\");");
        _strcls.append(System.lineSeparator());
        // The elsewhen branch occurs when the event is executed. When the current time passes
        // the delta, the event is deactivated and executed.
        _strcls.append("        elsewhen time >= trigtime + delta then");
        _strcls.append(System.lineSeparator());
        _strcls.append("            trigtime := 0.0;").append(System.lineSeparator());
        _strcls.append("            delta := 0.0;").append(System.lineSeparator());
        _strcls.append("            active := false;").append(System.lineSeparator());
        _strcls.append("            execution := true;").append(System.lineSeparator());
        // End when
        _strcls.append("        end when;").append(System.lineSeparator());
        _strcls.append(System.lineSeparator());
        
        // According to the SBML specifications for the event, assignments can be 
        // evaluated at trigger or execution time.
        if (this.event.isEvaluatedAtTriggerTime())
        {
            _strcls.append("            when trigger and not pre(active) then");
            _strcls.append(System.lineSeparator());
        }
        else
        {
            _strcls.append("            when execution then").append(System.lineSeparator());
        }
        for (AbstractAssignment a : this.event)
        {
            ASTNode formula = new ASTNode(a.getValue().getFormula());
            String rightTarg = "pre(" + a.getTarget().getId() + ")";
            RenameVariable(formula, a.getTarget().getId(), rightTarg);
            _strcls.append("                value_").append(a.getTarget().getId());
            _strcls.append(" := ").append(ModelicaRealRepresentation(formula));
            _strcls.append(';').append(System.lineSeparator());
        }
        _strcls.append("            end when;").append(System.lineSeparator());
    }
    
    private void classNonPersistentWhen()
    {
        ASTNode delay = this.event.getDelay().getFormula();
        // When the event triggers, set the trigger time and the delta.
        // Set the event as activated and the execution to true iff delay is zero.
        _strcls.append("        when trigger then").append(System.lineSeparator());
        _strcls.append("            trigtime := time;").append(System.lineSeparator());
        _strcls.append("            delta := ");
        _strcls.append(ModelicaRealRepresentation(delay));
        _strcls.append(';').append(System.lineSeparator());
        _strcls.append("            active := true;").append(System.lineSeparator());
        _strcls.append("            execution := delta <= 0.0;").append(System.lineSeparator());
        // The first elsewhen branch occurs when the time passes the delta. If the event has
        // not been deactivated, it is executed and deactivated. Otherwise, it is only deactivated.
        _strcls.append("        elsewhen time >= trigtime + delta then");
        _strcls.append(System.lineSeparator());
        _strcls.append("            trigtime := 0.0;").append(System.lineSeparator());
        _strcls.append("            delta := 0.0;").append(System.lineSeparator());
        _strcls.append("            execution := pre(active);").append(System.lineSeparator());
        _strcls.append("            active := false;").append(System.lineSeparator());
        // The second elsewhen branch occurs when the trigger comes to false. In this case the
        // event is simply deactivated.
        _strcls.append("        elsewhen not trigger then").append(System.lineSeparator());
        _strcls.append("            trigtime := 0.0;").append(System.lineSeparator());
        _strcls.append("            delta := 0.0;").append(System.lineSeparator());
        _strcls.append("            active := false;").append(System.lineSeparator());
        _strcls.append("            execution := false;").append(System.lineSeparator());
        // End when
        _strcls.append("        end when;").append(System.lineSeparator());
        _strcls.append(System.lineSeparator());
        
        // Section for event assignments. See the method classPersistenWhen()
        if (this.event.isEvaluatedAtTriggerTime())
            _strcls.append("            when trigger then").append(System.lineSeparator());
        else
            _strcls.append("            when execution then").append(System.lineSeparator());
        for (AbstractAssignment a : this.event)
        {
            ASTNode formula = new ASTNode(a.getValue().getFormula());
            String rightTarg = "pre(" + a.getTarget().getId() + ")";
            RenameVariable(formula, a.getTarget().getId(), rightTarg);
            _strcls.append("                value_").append(a.getTarget().getId());
            _strcls.append(" := ").append(ModelicaRealRepresentation(formula));
            _strcls.append(';').append(System.lineSeparator());
        }
        _strcls.append("            end when;").append(System.lineSeparator());
    }
    
    private void classEquations()
    {
        _strcls.append("    equation").append(System.lineSeparator());
        ASTNode trigger = this.event.getTrigger().getFormula();
        _strcls.append("        trigger = ");
        _strcls.append(ModelicaBooleanRepresentation(trigger));
        _strcls.append(';').append(System.lineSeparator());
        if (this.event.getPriority() != null)
        {
            ASTNode priority = this.event.getPriority().getFormula();
            _strcls.append("        priority = ");
            _strcls.append(ModelicaRealRepresentation(priority));
            _strcls.append(';').append(System.lineSeparator());
        }
        if (this.event.getDelay() != null)
        {
            _strcls.append("        algorithm").append(System.lineSeparator());
            
            if (this.event.isPersistent())
                this.classPersistentWhen();
            else
                this.classNonPersistentWhen();
        }
        else
        {
            _strcls.append("        algorithm").append(System.lineSeparator());
            for (AbstractAssignment a : this.event)
            {
                ASTNode formula = new ASTNode(a.getValue().getFormula());
                String rightTarg = "pre(" + a.getTarget().getId() + ")";
                RenameVariable(formula, a.getTarget().getId(), rightTarg);
                _strcls.append("            value_").append(a.getTarget().getId()).append(" := ");
                _strcls.append(ModelicaRealRepresentation(formula));
                _strcls.append(';').append(System.lineSeparator());
            }
        }
    }

    private void classEnd()
    {
        _strcls.append("end Class_").append(this.event.getId());
        _strcls.append(';').append(System.lineSeparator());
    }
    
    @Override
    public String generateClass()
    {
        _strcls = new StringBuilder();
        
        this.classHeader();
        this.classInputs();
        this.classVariables();
        this.classInitialEquations();
        this.classEquations();
        this.classEnd();
        
        return _strcls.toString();
    }

    @Override
    public void writeClass(File dir)
    {
        String filename = "Class_" + this.event.getId()
                          + MODELICA_FILE_EXTENSION;
        this.writeClass(dir, filename);
    }
    
    public HashSet<AbstractObject> getInputs()
    {
        return this.inputs;
    }
    
    public String getClassName()
    {
        return "Class_" + this.event.getId();
    }

    public String getInstanceName()
    {
        return this.event.getId();
    }
}
