/**
 * AbstractValue.java
 *
 * TODO
 *
 * @author  filippo
 * @project SBML2Modelica
 */
package sbml2modelica.abstractmodel.values;

import sbml2modelica.abstractmodel.AbstractObject;
import sbml2modelica.utils.exceptions.NullTargetException;

/**
 * @author Maggioli Filippo
 *
 */
public abstract class AbstractValue
{
    private final AbstractObject _target;
    
    public AbstractValue(final AbstractObject target) throws NullTargetException
    {
        if (target == null)
        {
            throw new NullTargetException("Trying to initialize an AbstractValue"
                                                       + " with a NULL target");
        }
        this._target = target;
    }
    
    public AbstractObject getTarget()
    {
        return this._target;
    }
}
