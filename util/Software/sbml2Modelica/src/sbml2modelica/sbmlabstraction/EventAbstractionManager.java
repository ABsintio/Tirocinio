/**
 * EventAbstractionManager.java
 *
 * TODO
 *
 * @author  filippo
 * @project SBML2Modelica
 */
package sbml2modelica.sbmlabstraction;

import javax.xml.stream.XMLStreamException;

import org.sbml.jsbml.Delay;
import org.sbml.jsbml.Event;
import org.sbml.jsbml.EventAssignment;
import org.sbml.jsbml.Model;
import org.sbml.jsbml.Priority;
import org.sbml.jsbml.Trigger;

import sbml2modelica.abstractmodel.AbstractEvent;
import sbml2modelica.abstractmodel.AbstractModel;
import sbml2modelica.abstractmodel.AbstractObject;
import sbml2modelica.abstractmodel.values.AbstractFormula;
import sbml2modelica.utils.Constants;
import sbml2modelica.utils.Log;
import sbml2modelica.utils.exceptions.NullAbstractModelException;
import sbml2modelica.utils.exceptions.NullFormulaException;
import sbml2modelica.utils.exceptions.NullSBMLModelException;

/**
 * An <code>EventAbstractionManager</code> provides functionalities for generation of
 * <code>AbstractEvent</code>s in an <code>AbstractModel</code> from the informations 
 * provided by a SBML <code>Model</code>.
 * <br>
 * The <code>EventAbstractionManager</code> works under the assumption that the SBML
 * <code>Model</code> has been pre-processed with a <code>ModelPreprocessingManager</code>.
 * 
 * @author Maggioli Filippo
 */
public class EventAbstractionManager
{
    /**
     * The <code>AbstractModel</code> where the generated <code>AbstractEvent</code>s
     * will be stored.
     */
    private AbstractModel   _model;
    
    /**
     * The SBML <code>Model</code> from which the informations are retrieved.
     */
    private Model           _sbmlmodel;
    
    /**
     * Constructor initializes the <code>EventAbstractionManager</code> with the given
     * <code>AbstractModel</code> and SBML <code>Model</code>.<br>
     * If one between the two inputs is <code>null</code>, then a proper exception is
     * thrown.
     * 
     * @param model The <code>AbstractModel</code> where the informations must be stored.
     * @param sbmlmodel The SBML <code>Model</code> from which the informations are retrieved.
     * @throws NullAbstractModelException When <code>model == null</code>.
     * @throws NullSBMLModelException When <code>sbmlmodel == null</code>.
     */
    EventAbstractionManager(final AbstractModel model, final Model sbmlmodel) 
            throws NullAbstractModelException, NullSBMLModelException
    {
        if (model == null)
        {
            throw new NullAbstractModelException("Trying to initialize an"
                                                 + " EventAbstractionManager with a NULL"
                                                 + " AbstractModel.");
        }
        if (sbmlmodel == null)
        {
            throw new NullSBMLModelException("Trying to initialize an EventAbstractionManager"
                                             + " with a NULL SBML model.");
        }
        
        _model = model;
        _sbmlmodel = sbmlmodel;
    }

    /**
     * This method computes the <code>AbstractFormula</code> that represents the trigger of the
     * given SBML <code>Event</code> and assign that <code>AbstractFormula</code> to the given
     * <code>AbstractEvent</code>.
     * 
     * @param ae The <code>AbstractEvent</code> whose the trigger has to be computed.
     * @param e The SBML <code>Event</code> that contains the informations.
     */
    private void computeTrigger(AbstractEvent ae, Event e)
    {
        Trigger t = e.getTrigger();
        try
        {
            AbstractFormula formula = new AbstractFormula(_model, t.getMath());
            ae.setTrigger(formula);
        }
        catch (NullAbstractModelException | NullFormulaException e1)
        {
            Log.FatalError("An AbstractEvent cannot have an undefined trigger value.", 
                           Constants.ERRCODE_NO_TRIGGER_FOUND);
        }
    }
    
    /**
     * This method computes the <code>AbstractFormula</code> that represents the delay of the
     * given SBML <code>Event</code> and assign that <code>AbstractFormula</code> to the given
     * <code>AbstractEvent</code>.
     * 
     * @param ae The <code>AbstractEvent</code> whose the delay has to be computed.
     * @param e The SBML <code>Event</code> that contains the informations.
     */
    private void computeDelay(AbstractEvent ae, Event e)
    {
        Delay d = e.getDelay();
        if (d == null || d.getMath() == null)
        {
            ae.setDelay(null);
            return;
        }
        
        try
        {
            AbstractFormula formula = new AbstractFormula(_model, d.getMath());
            ae.setDelay(formula);
        }
        catch (NullAbstractModelException | NullFormulaException e1)
        {
            Log.FatalError("Something went wrong when trying to compute the delay of "
                           + "the AbstractEvent " + ae.getId() + ".", 1);
        }
    }
    
    /**
     * This method computes the <code>AbstractFormula</code> that represents the priority of the
     * given SBML <code>Event</code> and assign that <code>AbstractFormula</code> to the given
     * <code>AbstractEvent</code>.
     * 
     * @param ae The <code>AbstractEvent</code> whose the priority has to be computed.
     * @param e The SBML <code>Event</code> that contains the informations.
     */
    private void computePriority(AbstractEvent ae, Event e)
    {
        Priority p = e.getPriority();
        if (p == null || p.getMath() == null)
        {
            ae.setPriority(null);
            return;
        }
        
        try
        {
            AbstractFormula formula = new AbstractFormula(this._model, p.getMath());
            ae.setPriority(formula);
        }
        catch (NullAbstractModelException | NullFormulaException e1)
        {
            Log.FatalError("Something went wrong when trying to compute the priority of "
                           + "the AbstractEvent " + ae.getId() + ".", 1);
        }   
    }
    
    /**
     * This method generates the <code>AbstractEvent</code> that represents the given SBML
     * <code>Event</code>.
     * <br>
     * After the call to this method, the generated <code>AbstractEvent</code> only contains
     * the informations about it, and nothing about its <code>AbstractAssignment</code>s.
     * 
     * @param e The SBML <code>Event</code> that contains the informations.
     * @return An <code>AbstractEvent</code> that represents the given SBML <code>Event</code>.
     */
    private AbstractEvent generateEvent(Event e)
    {
        AbstractEvent ae = _model.createEvent(e.getId(), e.getName());
        if (ae == null)
            return null;
        ae.setNotes(e.getAnnotation());
        try {
			ae.setInfo(e.getNotesString());
		} catch (XMLStreamException err) {
			ae.setInfo(null);
		}
        
        if (e.isSetUseValuesFromTriggerTime() && e.getUseValuesFromTriggerTime())
            ae.makeEvaluableAtTrigger();
        else
            ae.makeEvaluableAtExecution();
        if (e.getTrigger().isSetPersistent() && e.getTrigger().getPersistent())
            ae.makePersistent();
        else
            ae.makeNonPersistent();
        if (!e.getTrigger().isSetInitialValue() || e.getTrigger().getInitialValue())
            ae.makeNonTriggerableAtStart();
        else
            ae.makeTriggerableAtStart();
        
        computeTrigger(ae, e);
        computeDelay(ae, e);
        computePriority(ae, e);
        
        return ae;
    }
    
    /**
     * This method generates all the <code>AbstractAssignment</code>s of the given
     * <code>AbstractEvent</code>, from the informations about the SBML
     * <code>EventAssignment</code>s contained in the given SBML <code>Event</code>.
     * 
     * @param ae The <code>AbstractEvent</code> whose the <code>AbstractAssignment</code>s must
     *           be generated.
     * @param e The SBML <code>Event</code> that contains the informations.
     */
    private void generateEventAssignments(AbstractEvent ae, Event e)
    {
        int ealength = e.getNumEventAssignments();
        for (int i = 0; i < ealength; i++)
        {
            try
            {
                EventAssignment ea = e.getEventAssignment(i);
                AbstractObject target = _model.getObjectById(ea.getVariable());
                AbstractFormula formula = new AbstractFormula(_model, ea.getMath());
                ae.createEventAssignment(target, formula);
            }
            catch (NullAbstractModelException | NullFormulaException e1)
            {
                Log.FatalError("Something went wrong when trying to generate the "
                               + "AbstractAssignments of the AbstractEvent " + ae.getId()
                               + ".", 1);
            }
        }
    }
    
    /**
     * This method generates all the <code>AbstractEvent</code>s in the <code>AbstractModel</code>
     * that represent the SBML <code>Event</code>s in the SBML <code>Model</code>.
     */
    void generateEvents()
    {
        int elength = _sbmlmodel.getNumEvents();
        for (int i = 0; i < elength; i++)
        {
            Event e = _sbmlmodel.getEvent(i);
            AbstractEvent ae = generateEvent(e);
            generateEventAssignments(ae, e);
        }
    }
}
