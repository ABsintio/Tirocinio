/**
 * PreprocessingManager.java
 *
 * TODO
 *
 * @author  filippo
 * @project SBML2Modelica
 */
package sbml2modelica.preprocessing;

import org.sbml.jsbml.ASTNode;
import org.sbml.jsbml.Model;

import sbml2modelica.utils.exceptions.NullSBMLModelException;

/**
 * The {@code PreprocessingManager} is the base class for all those classes whose the task is
 * to pre-process the SBML {@code Model} in order to simplify the subsequent analysis and 
 * abstraction.
 * 
 * @author Maggioli Filippo
 */
public abstract class PreprocessingManager
{
    /**
     * The SBML <code>Model</code> that has to be pre-processed.
     */
    private Model _model;
    
    /**
     * Constructor initializes a <code>PreprocessingManager</code> with a deep copy of the input
     * SBML <code>Model</code>.
     * 
     * @param model The SBML <code>Model</code> that must be pre-processed.
     * @throws NullSBMLModelException When <code>model == null</code>.
     */
    public PreprocessingManager(Model model) throws NullSBMLModelException
    {
        if (model == null)
        {
            throw new NullSBMLModelException("Cannot initialize a PreprocessingManager with a "
                                             + "NULL SBML Model.");
        }
        _model = model;
    }
    
    /**
     * This method returns the SBML <code>Model</code> contained in the 
     * <code>PreprocessingManager</code>.
     *  
     * @return The model of the <code>PreprocessingManager</code>.
     */
    public Model getModel()
    {
        return _model;
    }
    
    /**
     * This method returns <code>true</code> if the given <code>ASTNode</code> represents a formula
     * in which a variable with a name equals to the given <code>String</code> appears.<br>
     * Otherwise, the method returns <code>false</code>.
     * 
     * @param formula The formula to examine.
     * @param name The name to search.
     * @return <code>true</code> if and only if the formula contains the name.
     */
    static boolean formulaContainsVariable(ASTNode formula, String name)
    {
        if (formula.getType() == ASTNode.Type.NAME)
            return formula.getName().equals(name);
        
        int chlength = formula.getNumChildren();
        for (int i = 0; i < chlength; i++)
        {
            if (formulaContainsVariable(formula.getChild(i), name))
                return true;
        }
        
        return false;
    }
    
    /**
     * This method returns {@code true} if any leaf node of the given {@link ASTNode} is 
     * a numeric literal.
     *  
     * @param formula   The formula to analyze.
     * @return          {@code true} if the formula is numeric, {@code false} otherwise.
     */
    static boolean formulaIsNumeric(ASTNode formula)
    {
        int chlength = formula.getNumChildren();
        for (int i = 0; i < chlength; i++)
        {
            if (! formulaIsNumeric(formula.getChild(i)))
                return false;
        }
        
        return formula.isNumber();
    }
}
