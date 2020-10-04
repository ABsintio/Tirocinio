/**
 * EventPreprocessingManager.java
 * 
 * @author  Maggioli Filippo
 * @project SBML2Modelica
 */

package sbml2modelica.preprocessing;

import org.sbml.jsbml.ASTNode;
import org.sbml.jsbml.Event;
import org.sbml.jsbml.EventAssignment;
import org.sbml.jsbml.Model;
import org.sbml.jsbml.Trigger;

import sbml2modelica.utils.Log;
import sbml2modelica.utils.exceptions.NullSBMLModelException;

/**
 * The {@link EventPreprocessingManager} performs a series of operations to ensure that the
 * {@link Event}s in the {@link Model} are in a certain standard form.<br>
 * Such standard form impose that no {@code math} attribute is missing from any component of the
 * {@link Event} and that the {@link Trigger} exists.
 */
public class EventPreprocessingManager extends PreprocessingManager
{
    public EventPreprocessingManager(Model model) throws NullSBMLModelException
    {
        super(model);
    }

    /**
     * This method applies the pre-processing operation to the {@link Trigger} of the given
     * {@link Event}.<br>
     * In particular, the {@link Trigger} must exists and its {@code math} attribute must
     * be set. If the {@link Trigger} does not exists, then it is created. If its {@code math}
     * attribute is not set, it is set to {@code false}.
     * 
     * @param e     The {@link Event} to pre-process.
     */
    public void preprocessTrigger(Event e)
    {
        Trigger t;
        // Create the trigger, if not present
        if (! e.isSetTrigger())
        {
            t = e.createTrigger();
            String warnmsg = "Event " + e.getId() + " had no associated trigger. "
                             + "A trigger has been created.";
            Log.Warning(warnmsg);
        }
        else
            t = e.getTrigger();
        // Give it a math, if it has not
        if (! t.isSetMath())
        {
            // Default is false
            ASTNode trig = new ASTNode(ASTNode.Type.CONSTANT_FALSE);
            t.setMath(new ASTNode(trig));
            String warnmsg = "Event " + e.getId() + " had no set \'math\' attribute inside its "
                             + "trigger. A \'math\' attribute set to FALSE has been created.";
            Log.Warning(warnmsg);
        }
    }
    
    /**
     * This method applies the pre-processing operation to the {@link Delay} of the given
     * {@link Event}.<br>
     * In particular, the {@link Delay} could not exists, but if it exists, then its {@code math}
     * attribute must be set. If its {@code math} attribute is not set, the {@link Delay} is
     * removed.
     * 
     * @param e     The {@link Event} to pre-process.
     */
    public void preprocessDelay(Event e)
    {
        // If the delay is not set, we are done
        if (! e.isSetDelay())
            return;
        // If the delay has a set math, we are done
        if (e.getDelay().isSetMath())
            return;
        // Otherwise, the delay is useless and can be safely removed
        e.unsetDelay();
        String warnmsg = "The delay of event " + e.getId() + " has no set \'math\' attribute. "
                         + " It has been removed.";
        Log.Warning(warnmsg);
    }
    
    /**
     * This method applies the pre-processing operation to the {@link Priority} of the given
     * {@link Event}.<br>
     * In particular, the {@link Priority} could not exists, but if it exists, then its
     * {@code math} attribute must be set. If its {@code math} attribute is not set, the
     * {@link Priority} is removed.
     * 
     * @param e     The {@link Event} to pre-process.
     */
    public void preprocessPriority(Event e)
    {
        // If the priority is unset, we are done
        if (! e.isSetPriority())
            return;
        // If the priority has a math element, we are done
        if (e.getPriority().isSetMath())
            return;
        // Otherwise, the priority is useless and can be safely removed
        e.unsetPriority();
        String warnmsg = "The priority of event " + e.getId() + " has no set \'math\' attribute. "
                + " It has been removed.";
        Log.Warning(warnmsg);
    }
    
    /**
     * This method applies the pre-processing operation to each {@link EventAssignment} in the
     * given {@link Event}.<br>
     * In particular, each {@link EventAssignment} with a no set {@code math} attribute is
     * removed from the list of {@link EventAssignment}s of the {@link Event}.
     * 
     * @param e     The {@link Event} to pre-process.
     */
    public void preprocessAssignments(Event e)
    {
        // If an event assignment has no math, it can be safely removed
        int ealength = e.getNumEventAssignments();
        for (int i = 0; i < ealength; i++)
        {
            EventAssignment ea = e.getEventAssignment(i);
            if (! ea.isSetMath())
            {
                e.removeEventAssignment(i);
                i--;
                ealength = e.getNumEventAssignments();
                String warnmsg = "The event assignment of event " + e.getId() + " targeting "
                                 + "the object " + ea.getVariable() + " has no set \'math\'"
                                 + " attribute. It has been removed.";
                Log.Warning(warnmsg);
            }
        }
    }
    
    /**
     * This method applies the pre-processing operation to each {@link Event} in the
     * {@link Model}.<br>
     * The pre-processing operation involves the following:
     * <ul> 
     * <li> Adding a {@link Trigger} to an {@link Event}, if it has not one.</li>
     * <li> Adding the {@code math} attribute to a {@link Trigger}, if it has not one set.</li>
     * <li> Removing a {@link Delay} from an {@link Event}, if it has no set {@code math}
     *      attribute.</li>
     * <li> Removing a {@link Priority} from an {@link Event}, if it has no set {@code math}
     *      attribute.</li>
     * <li> Removing an {@link EventAssignment} from an {@link Event}, if it has no set
     *      {@code math} attribute.</li>
     * </ul>
     */
    public void preprocessEvents()
    {
        final int elength = getModel().getNumEvents();
        for (int i = 0; i < elength; i++)
        {
            Event e = getModel().getEvent(i);
            preprocessTrigger(e);
            preprocessDelay(e);
            preprocessPriority(e);
            preprocessAssignments(e);
        }
    }
}
