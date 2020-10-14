/**
 * AbstractFormula.java
 *
 * TODO
 *
 * @author  Maggioli Filippo
 * @project SBML2Modelica
 */
package sbml2modelica.abstractmodel.values;

import java.util.HashSet;
import java.util.Iterator;

import org.sbml.jsbml.ASTNode;
import org.sbml.jsbml.JSBML;

import sbml2modelica.abstractmodel.AbstractModel;
import sbml2modelica.abstractmodel.AbstractObject;
import sbml2modelica.utils.exceptions.NullAbstractModelException;
import sbml2modelica.utils.exceptions.NullFormulaException;

/**
 * An <code>AbstractFormula</code> represents a mathematical formula, expressed
 * in function of variables and functions of an <code>AbstractModel</code>.
 * An <code>AbstractFormula</code> is an <code>Iterable</code> object over a 
 * set of <code>AbstractObject</code>s, that represent the variables that
 * appear in the formula.
 * 
 * @author Maggioli Filippo
 */
public class AbstractFormula implements Iterable<AbstractObject>
{
    /**
     * The <code>ASTNode</code> that represents the formula.
     */
    private ASTNode                     _formula;
    
    /**
     * The set of <code>AbstractObject</code>s that appear in the formula.
     */
    protected HashSet<AbstractObject>   _dependencies;
    
    /**
     * The <code>AbstractModel</code> in which the formula exists.
     */
    private final AbstractModel         _model;
    
    /**
     * This method generates the dependencies of the given <code>ASTNode</code>.
     * A dependency is an <code>AbstractObject</code> whose the identifier appears as
     * a variable in the formula.
     * 
     * @param formula The formula whose the dependencies must be computed.
     */
    protected void generateDependencies(final ASTNode formula)
    {
        if (formula.getType() == ASTNode.Type.NAME)
        {
            _dependencies.add(_model.getObjectById(formula.getName()));
        }
        
        int clength = formula.getNumChildren();
        for (int i = 0; i < clength; i++)
        {
            generateDependencies(formula.getChild(i));
        }
    }
    
    /**
     * Constructor initializes the model in which the <code>AbstractFormula</code> is defined with
     * the given <code>AbstractModel</code> and the formula with a deep copy of the given 
     * <code>ASTNode</code>.
     * If the given <code>AbstractModel</code> or the given <code>ASTNode</code> are
     * <code>null</code>, then the <code>AbstractFormula</code> is not created and a proper
     * exception is thrown.
     * 
     * @param model The <code>AbstractModel</code> in which the <code>AbstractFormula</code> is
     *              defined
     * @param formula The <code>ASTNode</code> that represents the formula of the
     *                <code>AbstractFormuka</code>.
     * @throws NullAbstractModelException When <code>model == null</code>.
     * @throws NullFormulaException When <code>formula == null</code>.
     */
    public AbstractFormula(final AbstractModel model, ASTNode formula) 
            throws NullAbstractModelException, NullFormulaException
    {
        if (model == null)
        {
            throw new NullAbstractModelException("Trying to initialize an AbstractFormula with a" +
                                                 " NULL AbstractModel");
        }
        _model = model;
        
        if (formula == null)
        {
            throw new NullFormulaException("Trying to initialize an AbstractFormula with a "
                    + "NULL ASTNode");
        }
        
        _formula = new ASTNode(formula);
        _dependencies = new HashSet<AbstractObject>();
        generateDependencies(this._formula);
    }
    
    /**
     * This method returns the <code>AbstractModel</code> in which the 
     * <code>AbstractFormula</code> is defined.
     * 
     * @return The model of the <code>AbstractFormula</code>.
     */
    public AbstractModel getModel()
    {
        return _model;
    }
    
    /**
     * This method returns the <code>ASTNode</code> that represents the formula of the
     * <code>AbstractFormula</code>.
     * 
     * @return The formula of the <code>AbstractFormula</code>.
     */
    public ASTNode getFormula()
    {
        return new ASTNode(_formula);
    }

    /**
     * This method returns the iterator over the set of <code>AbstractObject</code>s that
     * appear in the formula associated with the <code>AbstractFormula</code>.
     * 
     * @return The iterator over the set of dependencies.
     */
    @Override
    public Iterator<AbstractObject> iterator()
    {
        return _dependencies.iterator();
    }
    
    /**
     * This method returns a <code>String</code> that represents the formula associated with
     * the <code>AbstractFormula</code>.
     * 
     * @return The <code>String</code> representation of the formula.
     */
    @Override
    public String toString()
    {
        return JSBML.formulaToString(getFormula());
    }
}
