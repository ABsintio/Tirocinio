/**
 * AbstractKineticFormula.java
 *
 * TODO
 *
 * @author  filippo
 * @project SBML2Modelica
 */
package sbml2modelica.abstractmodel.values;

import org.sbml.jsbml.ASTNode;

import sbml2modelica.abstractmodel.AbstractLocalParameter;
import sbml2modelica.abstractmodel.AbstractReaction;
import sbml2modelica.utils.exceptions.NullAbstractModelException;
import sbml2modelica.utils.exceptions.NullFormulaException;
import sbml2modelica.utils.exceptions.NullReactionException;

/**
 * @author Maggioli Filippo
 *
 */
public class AbstractKineticFormula extends AbstractFormula
{
    private final AbstractReaction _reaction;
    
    private static AbstractReaction notNull(AbstractReaction r) throws NullReactionException
    {
        if (r == null)
        {
            throw new NullReactionException("Trying to initialize an AbstractKineticFormula"
                                            + " with a NULL AbstractReaction.");
        }
        
        return r;
    }
    
    @Override
    protected void generateDependencies(final ASTNode formula)
    {
        if (formula.getType() == ASTNode.Type.NAME)
        {
            AbstractLocalParameter lp = null;
            if (this._reaction != null)
                lp = this._reaction.getLocalParameterById(formula.getName());
            if (lp != null)
                this._dependencies.add(lp);
            else
                this._dependencies.add(this.getModel().getObjectById(formula.getName()));
        }
        
        int clength = formula.getNumChildren();
        for (int i = 0; i < clength; i++)
        {
            this.generateDependencies(formula.getChild(i));
        }
    }
    
    public AbstractKineticFormula(final AbstractReaction reaction, ASTNode formula) 
            throws NullAbstractModelException, NullFormulaException, NullReactionException
    {
        super(notNull(reaction).getModel(), formula);
        this._reaction = reaction;
        this._dependencies.clear();
        this.generateDependencies(formula);
    }
}
