/**
 * ParameterAbstraction.java
 *
 * TODO
 *
 * @author  filippo
 * @project SBML2Modelica
 */
package sbml2modelica.sbmlabstraction;

import javax.xml.stream.XMLStreamException;

import org.sbml.jsbml.ASTNode;
import org.sbml.jsbml.AssignmentRule;
import org.sbml.jsbml.InitialAssignment;
import org.sbml.jsbml.Model;
import org.sbml.jsbml.Parameter;
import org.sbml.jsbml.RateRule;
import org.sbml.jsbml.UnitDefinition;

import sbml2modelica.abstractmodel.AbstractModel;
import sbml2modelica.abstractmodel.AbstractParameter;
import sbml2modelica.abstractmodel.values.AbstractAssignmentValue;
import sbml2modelica.abstractmodel.values.AbstractConstantValue;
import sbml2modelica.abstractmodel.values.AbstractDerivativeValue;
import sbml2modelica.abstractmodel.values.AbstractFormula;
import sbml2modelica.utils.Log;
import sbml2modelica.utils.exceptions.NullAbstractModelException;
import sbml2modelica.utils.exceptions.NullFormulaException;
import sbml2modelica.utils.exceptions.NullSBMLModelException;
import sbml2modelica.utils.exceptions.NullTargetException;

/**
 * A <code>ParameterAbstractionManager</code> provides functionalities for generation of
 * <code>AbstractParameter</code> in an <code>AbstractModel</code> from the informations
 * provided by a SBML <code>Model</code>.<br>
 * The <code>ParameterAbstractionManager</code> works under the assumption that the SBML
 * <code>Model</code> has been pre-processed with a <code>ModelPreprocessingManager</code>.
 * 
 * @author Maggioli Filippo
 */
public class ParameterAbstractionManager
{
    /**
     * The <code>AbstractModel</code> where the generated <code>AbstractParameter</code>s
     * will be stored.
     */
    private AbstractModel _model;
    
    /**
     * The SBML <code>Model</code> from which the informations are retrieved.
     */
    private Model         _sbmlmodel;
    
    /**
     * Constructor initializes the <code>ParameterAbstractionManager</code> with the given
     * <code>AbstractModel</code> and SBML <code>Model</code>.<br>
     * If one between the two inputs is <code>null</code>, then a proper exception is
     * thrown.
     * 
     * @param model The <code>AbstractModel</code> where the informations must be stored.
     * @param sbmlmodel The SBML <code>Model</code> from which the informations are retrieved.
     * @throws NullAbstractModelException When <code>model == null</code>.
     * @throws NullSBMLModelException When <code>sbmlmodel == null</code>.
     */
    ParameterAbstractionManager(AbstractModel model, Model sbmlmodel) 
            throws NullAbstractModelException, NullSBMLModelException
    {
        if (model == null)
        {
            throw new NullAbstractModelException("Trying to initialize a"
                                                 + " ParameterAbstractionManager with a NULL"
                                                 + " AbstractModel.");
        }
        if (sbmlmodel == null)
        {
            throw new NullSBMLModelException("Trying to initialize a ParameterAbstractionManager"
                                             + " with a NULL SBML model.");
        }
        
        _model = model;
        _sbmlmodel = sbmlmodel;
    }
    
    /**
     * This method generates an <code>AbstractParameter</code> in the <code>AbstractModel</code>
     * using the informations provided by the given SBML <code>Parameter</code>.
     * 
     * @param p A SBML <code>Parameter</code> in the SBML <code>Model</code>.
     * @return An <code>AbstractParameter</code> in the <code>AbstractModel</code> whose the
     *         identifier and name are equals to those of <code>p</code>.
     */
    private AbstractParameter generateParameter(Parameter p)
    {
        AbstractParameter ap = _model.createParameter(p.getId(), p.getName());
        if (ap == null)
        	return null;
        ap.setNotes(p.getAnnotation());
        try {
			ap.setInfo(p.getNotesString());
		} catch (XMLStreamException e) {
			ap.setInfo(null);
		}
        return ap;
    }
    
    /**
     * This method computes the <code>UnitDefinition</code> that represents the unit of 
     * measurement of the given SBML <code>Parameter</code> and associates that unit with the
     * given <code>AbstractParameter</code>.
     * 
     * @param p A SBML <code>Parameter</code> in the SBML <code>Model</code>.
     * @param ap An <code>AbstractParameter</code> in the <code>AbstractModel</code> with the
     *           same identifier as <code>p</code>
     */
    private void computeParameterUnit(Parameter p, AbstractParameter ap)
    {
        UnitDefinition ud = null;
        ud = _sbmlmodel.getUnitDefinition(p.getUnits());
        ap.setUnit(ud);
    }
    
    /**
     * This method computes an <code>AbstractValue</code> that represents the value of the
     * given SBML <code>Parameter</code> in the SBML <code>Model</code> and associates that
     * <code>AbstractValue</code> with the given <code>AbstractParameter</code>.
     * 
     * @param p A SBML <code>Parameter</code> in the SBML <code>Model</code>.
     * @param ap An <code>AbstractParameter</code> in the <code>AbstractModel</code> that
     *           represents the given SBML <code>Parameter</code>.
     */
    private void computeParameterValue(Parameter p, AbstractParameter ap)
    {
        // If the parameter is affected by an assignment rule, we are done
        AssignmentRule ar = _sbmlmodel.getAssignmentRuleByVariable(p.getId());
        if (ar != null)
        {
            // Compute the abstract assignment value and return
            try
            {
                AbstractFormula formula = null;
                formula = new AbstractFormula(_model, new ASTNode(ar.getMath()));
                AbstractAssignmentValue value = new AbstractAssignmentValue(ap, formula);
                ap.setValue(value);
            }
            catch (NullAbstractModelException | NullFormulaException | NullTargetException e)
            {
                Log.FatalError("Something went wrong when trying to initialize the"
                               + " value of AbstractParameter " + ap.getId(), 1);
            }
            
            return;
        }
        // Get an eventual initial condition
        ASTNode init = null;
        // Search for an initial assignment
        InitialAssignment ia = _sbmlmodel.getInitialAssignmentBySymbol(p.getId());
        // If the assignment does exists, then get its formula
        if (ia != null)
            init = ia.getMath();
        // Otherwise the Parameter is defined by an algebraic rule
        else
        {
            // If there is no InitialAssignment, then the Parameter is defined through an
            // AlgebraicRule or not defined at all
            ap.setValue(null);
            return;
        }
        
        // If the parameter is constant, then we are done
        if (p.getConstant())
        {
            try
            {
                AbstractFormula formula = new AbstractFormula(_model, init);
                AbstractConstantValue value = new AbstractConstantValue(ap, formula);
                ap.setValue(value);
            }
            catch (NullAbstractModelException | NullFormulaException | NullTargetException e)
            {
                Log.FatalError("Something went wrong when trying to initialize the"
                               + " value of AbstractParameter " + ap.getId(), 1);
            }
            
            return;
        }
        
        // Otherwise, it is affected by a rate rule
        RateRule rr = _sbmlmodel.getRateRuleByVariable(p.getId());
        // If the rule exists, then the parameter has a well defined derivative
        if (rr != null)
        {
            try
            {
                ASTNode der = new ASTNode(rr.getMath());
                AbstractFormula initForm = new AbstractFormula(_model, init);
                AbstractFormula derForm = new AbstractFormula(_model, der);
                AbstractDerivativeValue value = new AbstractDerivativeValue(ap, initForm, derForm);
                ap.setValue(value);
            }
            catch (NullAbstractModelException | NullFormulaException | NullTargetException e)
            {
                Log.FatalError("Something went wrong when trying to initialize the"
                               + " value of AbstractParameter " + ap.getId(), 1);
            }
            
            return;
        }
    }
    
    /**
     * This method generates all the <code>AbstractParameter</code>s in the 
     * <code>AbstractModel</code> that represents the SBML <code>Parameter</code>s in the
     * SBML <code>Model</code>.<br>
     * After the call of this method, the <code>AbstractParameter</code>s only contains informations 
     * about identifier, name and unit of measurement.
     */
    void generateParameters()
    {
        int plength = this._sbmlmodel.getNumParameters();
        for (int i = 0; i < plength; i++)
        {
            Parameter p = this._sbmlmodel.getParameter(i);
            AbstractParameter ap = this.generateParameter(p);
            this.computeParameterUnit(p, ap);
        }
    }
    
    /**
     * This method computes the <code>AbstractValue</code>s that represent the values of the SBML
     * <code>Parameter</code>s in the SBML <code>Model</code> and associates them to the related
     * <code>AbstractParameter</code>s.<br>
     * That is, an <code>AbstractValue</code> <i>av</i> is associated with an
     * <code>AbstractParameter</code> <i>ap</i> that has the same identifier as a SBML
     * <code>Parameter</code> <i>p</i> whose the value is represented by <i>av</i>.
     */
    void computeParametersValues()
    {
        int plength = this._sbmlmodel.getNumParameters();
        for (int i = 0; i < plength; i++)
        {
            Parameter p = this._sbmlmodel.getParameter(i);
            AbstractParameter ap = this._model.getParameterById(p.getId());
            this.computeParameterValue(p, ap);
        }
    }
}
