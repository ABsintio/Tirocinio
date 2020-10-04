/**
 * AbstractConstantValue.java
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
public class AbstractConstantValue extends AbstractValue
{
    private final AbstractFormula _value;

    public AbstractConstantValue(final AbstractObject target, final AbstractFormula value) 
            throws NullTargetException, NullFormulaException
    {
        super(target);
        if (value == null)
        {
            throw new NullFormulaException("Trying to initialize an AbstractConstantValue "
                                           + "with a NULL AbstractFormula.");
        }
        this._value = value;
    }
    
    public AbstractFormula getValue()
    {
        return this._value;
    }
    
    @Override
    public String toString()
    {
        StringBuilder sb = new StringBuilder();
        sb.append(this.getTarget().getId()).append("(0) = ").append(this.getValue().toString());
        return sb.toString();
    }
}
