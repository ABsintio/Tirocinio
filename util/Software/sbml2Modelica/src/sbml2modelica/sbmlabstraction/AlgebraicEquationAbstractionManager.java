/**
 * AlgebraicEquationAbstractionManager.java
 *
 * TODO
 *
 * @author  filippo
 * @project SBML2Modelica
 */
package sbml2modelica.sbmlabstraction;

import org.sbml.jsbml.AlgebraicRule;
import org.sbml.jsbml.Model;
import org.sbml.jsbml.Rule;

import sbml2modelica.abstractmodel.AbstractAlgebraicEquation;
import sbml2modelica.abstractmodel.AbstractModel;
import sbml2modelica.abstractmodel.values.AbstractFormula;
import sbml2modelica.utils.Log;
import sbml2modelica.utils.exceptions.NullAbstractModelException;
import sbml2modelica.utils.exceptions.NullFormulaException;
import sbml2modelica.utils.exceptions.NullSBMLModelException;

/**
 * An <code>AlgebraicEquationAbstractionManager</code> provides functionalities for generation of
 * <code>AbstractAlgebraicEquation</code> in an <code>AbstractModel</code> from the informations
 * provided by a SBML <code>Model</code>.<br>
 * The <code>AlgebraicEquationAbstractionManager</code> works under the assumption that the SBML
 * <code>Model</code> has been pre-processed with a <code>ModelPreprocessingManager</code>.
 * 
 * @author Maggioli Filippo
 */
public class AlgebraicEquationAbstractionManager
{
    /**
     * The <code>AbstractModel</code> where the generated <code>AbstractAlgebraicEquation</code>s
     * will be stored.
     */
    private AbstractModel _model;
    
    /**
     * The SBML <code>Model</code> from which the informations are retrieved.
     */
    private Model         _sbmlmodel;
    
    /**
     * Constructor initializes the <code>AlgebraicEquationAbstractionManager</code> with the given
     * <code>AbstractModel</code> and SBML <code>Model</code>.<br>
     * If one between the two inputs is <code>null</code>, then a proper exception is
     * thrown.
     * 
     * @param model The <code>AbstractModel</code> where the informations must be stored.
     * @param sbmlmodel The SBML <code>Model</code> from which the informations are retrieved.
     * @throws NullAbstractModelException When <code>model == null</code>.
     * @throws NullSBMLModelException When <code>sbmlmodel == null</code>.
     */
    AlgebraicEquationAbstractionManager(final AbstractModel model, final Model sbmlmodel) 
            throws NullAbstractModelException, NullSBMLModelException
    {
        if (model == null)
        {
            throw new NullAbstractModelException("Trying to initialize an"
                                                 + " AlgebraicEquationAbstractionManager with a "
                                                 + "NULL AbstractModel.");
        }
        if (sbmlmodel == null)
        {
            throw new NullSBMLModelException("Trying to initialize an "
                                             + "AlgebraicEquationAbstractionManager"
                                             + " with a NULL SBML model.");
        }
        
        _model = model;
        _sbmlmodel = sbmlmodel;
    }
    
    /**
     * This method generates the <code>AbstractAlgebraicEquation</code> that represents the
     * given SBML <code>AlgebraicEquation</code>.
     * 
     * @param ar The SBML <code>AlgebraicEquation</code> that must be represented.
     * @return An <code>AbstractAlgebraicEquation</code> that represents the given SBML
     *         <code>AlgebraicEquation</code>.
     */
    private AbstractAlgebraicEquation generateAlgebraicEquation(AlgebraicRule ar)
    {
        try
        {
            AbstractFormula formula = new AbstractFormula(_model, ar.getMath());
            return _model.createAlgebraicEquation(ar.getId(), ar.getName(), formula);
        }
        catch (NullAbstractModelException | NullFormulaException e)
        {
            Log.FatalError("Something went wrong when trying to generate an "
                           + "AbstractAlgebraicEquation.", 1);
            return null;
        }
    }
    
    /**
     * This method generates all the <code>AbstractAlgebraicEquation</code>s in the
     * <code>AbstractModel</code> that represent the SBML <code>AlgebraicEquation</code>s in the
     * SBML <code>Model</code>.
     */
    void generateAlgebraicEquations()
    {
        int rulelength = _sbmlmodel.getNumRules();
        for (int i = 0; i < rulelength; i++)
        {
            Rule r = _sbmlmodel.getRule(i);
            if (! r.isAlgebraic())
                continue;
            AlgebraicRule ar = (AlgebraicRule) r;
            generateAlgebraicEquation(ar);
        }
    }
}
