/**
 * AbstractDerivativeValue.java
 *
 * TODO
 *
 * @author  filippo
 * @project SBML2Modelica
 */
package sbml2modelica.abstractmodel.values;

import sbml2modelica.abstractmodel.AbstractObject;
import sbml2modelica.utils.exceptions.NullFormulaException;
import sbml2modelica.utils.exceptions.NullTargetException;

/**
 * @author Maggioli Filippo
 *
 */
public class AbstractDerivativeValue extends AbstractValue
{
    private final AbstractFormula _init;
    private final AbstractFormula _der;
    
    public AbstractDerivativeValue(final AbstractObject target,
                                   final AbstractFormula initialConditions,
                                   final AbstractFormula derivative) 
                                           throws NullTargetException, NullFormulaException
    {
        super(target);
        if (initialConditions == null)
        {
            throw new NullFormulaException("Trying to initialize an AbstractDerivativeValue with a"
                                           + " NULL AbstractFormula as initial condition.");
        }
        this._init = initialConditions;
        this._der = derivative;
    }

    public AbstractFormula getInitialConditions()
    {
        return this._init;
    }
    
    public AbstractFormula getDerivative()
    {
        return this._der;
    }
    
    @Override
    public String toString()
    {
        StringBuilder sb = new StringBuilder();
        sb.append("{ ")
          .append(this.getTarget().getId()).append("(0) = ")
          .append(this.getInitialConditions().toString())
          .append(", ")
          .append("d ").append(this.getTarget().getId()).append("/dt (t) = ")
          .append(this.getDerivative().toString())
          .append(" }");
        return sb.toString();
    }
}
