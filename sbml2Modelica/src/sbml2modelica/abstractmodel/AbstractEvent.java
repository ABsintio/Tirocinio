/**
 * AbstractEvent.java
 *
 * TODO
 *
 * @author  filippo
 * @project SBML2Modelica
 */
package sbml2modelica.abstractmodel;

import java.util.HashSet;
import java.util.Iterator;

import sbml2modelica.abstractmodel.values.AbstractAssignment;
import sbml2modelica.abstractmodel.values.AbstractFormula;
import sbml2modelica.utils.Log;
import sbml2modelica.utils.exceptions.InvalidAbstractIdentifierException;
import sbml2modelica.utils.exceptions.NullAbstractModelException;
import sbml2modelica.utils.exceptions.NullFormulaException;
import sbml2modelica.utils.exceptions.NullTargetException;

/**
 * @author Maggioli Filippo
 *
 */
public class AbstractEvent extends AbstractObject implements Iterable<AbstractAssignment>
{
    private static final int PERSISTENT     = 1;
    private static final int TRIGGER_AT_0   = 2;
    private static final int EVAL_AT_TRIG   = 4; 
    
    private AbstractFormula trigger;
    private AbstractFormula delay;
    private AbstractFormula priority;
    private byte            modifier;
    private HashSet<AbstractAssignment> assignments;
    
    private static int serialId = 0;      
    
    private static String fixId(final String unfixedId)
    {
        if (! unfixedId.equals(""))
            return unfixedId;
        StringBuilder sb = new StringBuilder();
        sb.append("event").append(serialId++);
        
        return sb.toString();
    }
    
    public AbstractEvent(final AbstractModel model, final String id, final String name) 
            throws NullAbstractModelException, InvalidAbstractIdentifierException
    {
        super(model, fixId(id), name);
        modifier = 0;
        assignments = new HashSet<AbstractAssignment>();
        Log.Message("Creation of AbstractEvent " + this.getId() + " completed.");
    }
    
    public AbstractEvent(final AbstractModel model, final String id) 
            throws NullAbstractModelException, InvalidAbstractIdentifierException
    {
        this(model, id, "");
    }

    public void setTrigger(AbstractFormula newTrigger)
    {
        this.trigger = newTrigger;
    }

    public void setDelay(AbstractFormula newDelay)
    {
        this.delay = newDelay;
    }

    public void setPriority(AbstractFormula newPriority)
    {
        this.priority = newPriority;
    }
    
    public AbstractFormula getTrigger()
    {
        return this.trigger;
    }

    public AbstractFormula getDelay()
    {
        return this.delay;
    }

    public AbstractFormula getPriority()
    {
        return this.priority;
    }
    
    public void makePersistent()
    {
        this.modifier = (byte) (this.modifier | PERSISTENT);
    }
    
    public void makeNonPersistent()
    {
        this.modifier = (byte) (this.modifier & ~ PERSISTENT);
    }
    
    public void makeTriggerableAtStart()
    {
        this.modifier = (byte) (this.modifier | TRIGGER_AT_0);
    }
    
    public void makeNonTriggerableAtStart()
    {
        this.modifier = (byte) (this.modifier & ~ TRIGGER_AT_0);
    }
    
    public void makeEvaluableAtTrigger()
    {
        this.modifier = (byte) (this.modifier | EVAL_AT_TRIG);
    }
    
    public void makeEvaluableAtExecution()
    {
        this.modifier = (byte) (this.modifier & ~ EVAL_AT_TRIG);
    }
    
    public boolean isPersistent()
    {
        return (this.modifier & PERSISTENT) != 0;
    }
    
    public boolean isTriggerableAtStart()
    {
        return (this.modifier & TRIGGER_AT_0) != 0;
    }
    
    public boolean isEvaluatedAtTriggerTime()
    {
        return (this.modifier & EVAL_AT_TRIG) != 0;
    }
    
    public AbstractAssignment createEventAssignment(final AbstractObject target, 
                                                    AbstractFormula value)
    {
        AbstractAssignment aa = null;
        try
        {
            aa = new AbstractAssignment(target, value);
        }
        catch (NullTargetException | NullFormulaException e)
        {
            return null;
        }
        
        this.assignments.add(aa);
        return aa;
    }
    
    public AbstractAssignment getEventAssignmentByTargetId(final String id)
    {
        for (AbstractAssignment aa : this)
        {
            if (aa.getTarget().getId().equals(id))
                return aa;
        }
        
        return null;
    }

    @Override
    public Iterator<AbstractAssignment> iterator()
    {
        return this.assignments.iterator();
    }

}
