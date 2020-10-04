/**
 * AbstractFunction.java
 *
 * TODO
 *
 * @author  filippo
 * @project SBML2Modelica
 */
package sbml2modelica.abstractmodel;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import org.sbml.jsbml.ASTNode;

import sbml2modelica.utils.Log;
import sbml2modelica.utils.exceptions.InvalidAbstractIdentifierException;
import sbml2modelica.utils.exceptions.NullAbstractModelException;

/**
 * @author Maggioli Filippo
 *
 */
public class AbstractFunction extends AbstractObject implements Iterable<String>
{
    private ASTNode             body;
    private ArrayList<String>   args;
    
    private static final ASTNode.Type[] relational_operators = {
        ASTNode.Type.RELATIONAL_EQ,
        ASTNode.Type.RELATIONAL_GEQ,
        ASTNode.Type.RELATIONAL_GT,
        ASTNode.Type.RELATIONAL_LEQ,
        ASTNode.Type.RELATIONAL_LT,
        ASTNode.Type.RELATIONAL_NEQ,
        ASTNode.Type.LOGICAL_AND,
        ASTNode.Type.LOGICAL_IMPLIES,
        ASTNode.Type.LOGICAL_NOT,
        ASTNode.Type.LOGICAL_OR,
        ASTNode.Type.LOGICAL_XOR
    };
    
    public AbstractFunction(final AbstractModel model, final String id, final String name) 
            throws NullAbstractModelException, InvalidAbstractIdentifierException
    {
        super(model, id, name);
        
        this.args = new ArrayList<String>();
        this.setBody(null);
        
        Log.Message("Creation of AbstractFunction " + this.getId() + " completed.");
    }
    
    public AbstractFunction(final AbstractModel model, final String id) 
            throws NullAbstractModelException, InvalidAbstractIdentifierException
    {
        this(model, id, "");
    }
    
    public void setBody(ASTNode newFormula)
    {
        if (newFormula == null)
        {
            this.body = new ASTNode(ASTNode.Type.REAL);
            this.body.setValue(0);
        }
        else
        {
            this.body = new ASTNode(newFormula);
        }
    }
    
    public ASTNode getBody()
    {
        return new ASTNode(this.body);
    }
    
    public void addArgument(final String newArg)
    {
        this.args.add(new String(newArg));
    }

    /**
     * This method returns the {@link org.sbml.libsbml.ASTNode} which represents the
     * expansion of this {@link AbstractFunction} according to the given interpretation.<br>
     * Using the interpretation, each argument appearing in the body of the
     * {@link AbstractFunction} is replaced with the corresponding {@link org.sbml.jsbml.ASTNode}.
     *  
     * @param interpretation    The interpretation of the function's arguments.
     * 
     * @return                  The expansion of the function according to
     *                          <code>interpretation</code>.
     */
    public ASTNode getExpansion(HashMap<String, ASTNode> interpretation)
    {
        return getExpansion(getBody(), interpretation);
    }
    
    /**
     * This method returns the {@link org.sbml.libsbml.ASTNode} which represents the
     * expansion of this {@link AbstractFunction} according to the given interpretation.<br>
     * Using the interpretation, each occurrence of the <i>i</i>-th function argument in the
     * body of the {@link AbstractFunction} is replaced with the <i>i</i>-th 
     * {@link org.sbml.jsbml.ASTNode} in the interpretation.
     *  
     * @param interpretation    The interpretation of the function's arguments.
     * 
     * @return                  The expansion of the function according to
     *                          <code>interpretation</code>.
     */
    public ASTNode getExpansion(ASTNode[] interpretation)
    {
        return getExpansion(Arrays.asList(interpretation));
    }
    
    /**
     * This method returns the {@link org.sbml.libsbml.ASTNode} which represents the
     * expansion of this {@link AbstractFunction} according to the given interpretation.<br>
     * Using the interpretation, each occurrence of the <i>i</i>-th function argument in the
     * body of the {@link AbstractFunction} is replaced with the <i>i</i>-th 
     * {@link org.sbml.jsbml.ASTNode} in the interpretation.
     *  
     * @param interpretation    The interpretation of the function's arguments.
     * 
     * @return                  The expansion of the function according to
     *                          <code>interpretation</code>.
     */
    public ASTNode getExpansion(List<ASTNode> interpretation)
    {
        HashMap<String, ASTNode> _interpret = new HashMap<String, ASTNode>();
        for (int i = 0; i < interpretation.size(); i++)
        {
            _interpret.put(this.args.get(i), interpretation.get(i));
        }
        
        return getExpansion(_interpret);
    }
    
    /**
     * The recursive implementation of the public method {@link getExpansion()}.
     * 
     * @param formula           The formula to expand recursively.
     * @param interpretation    The interpretation for the formula's variables.
     * 
     * @return                  The expansion of the formula according to
     *                          <code>interpretation</code>.
     */
    private ASTNode getExpansion(ASTNode formula, HashMap<String, ASTNode> interpretation)
    {
        if (formula.getType() == ASTNode.Type.NAME)
            return new ASTNode(interpretation.get(formula.getName()));
        
        final int n = formula.getNumChildren();
        if (n == 0)
            return new ASTNode(formula);
        
        ASTNode ret = new ASTNode(formula.getType());
        for (int i = 0; i < n; i++)
        {
            ret.addChild(getExpansion(formula.getChild(i), interpretation));
        }
        
        return ret;
    }
    
    public boolean isRealValued()
    {
        for (int i = 0; i < relational_operators.length; i++)
        {
            if (this.body.getType() == relational_operators[i])
                return false;
        }
        return true;
    }

    @Override
    public Iterator<String> iterator()
    {
        return this.args.iterator();
    }

}
