/**
 * AbstractAssignment.java
 *
 * TODO
 *
 * @author  Maggioli Filippo
 * @project SBML2Modelica
 */
package sbml2modelica.abstractmodel.values;

import sbml2modelica.abstractmodel.AbstractObject;
import sbml2modelica.utils.exceptions.NullFormulaException;
import sbml2modelica.utils.exceptions.NullTargetException;

/**
 * An <code>AbstractAssignment</code> represents the assignment of a value, that could 
 * be constant or variable, to a certain <code>AbstractObject</code>.
 * An <code>AbstractAssignment</code> only makes sense when it is referred to an
 * <code>AbstractObject</code> with an associated quantity.
 * 
 * @author Maggioli Filippo
 */
public class AbstractAssignment
{
    /**
     * The <code>AbstractObject</code> targeted by the <code>AbstractAssignment</code>. 
     */
    private final AbstractObject    _target;
    
    /**
     * The <code>AbstractFormula</code> that represents the value that is assigned to
     * the target.
     */
    private final AbstractFormula   _value;
    
    /**
     * Constructor initializes the <code>AbstractAssignment</code> with the given target
     * and value. Note that neither the target nor can be <code>null</code>. In case one
     * of them or both are not defined, then a proper exception is thrown.
     * 
     * @param target The <code>AbstractObject</code> targeted by the 
     *               <code>AbstractAssignment</code>.
     * @param value The <code>AbstractFormula</code> representing the value assigned to
     *              the target by the <code>AbstractAssignment</code>.
     * @throws NullTargetException When <code>target == null</code>
     * @throws NullFormulaException When <code>value == null</code>
     */
    public AbstractAssignment(final AbstractObject target, final AbstractFormula value) 
            throws NullTargetException, NullFormulaException
    {
        if (target == null)
        {
            throw new NullTargetException("Trying to initialize an AbstractAssignment"
                                                       + " with a NULL target");
        }
        if (value == null)
        {
            throw new NullFormulaException("Trying to initialize an AbstractAssignment"
                                                       + " with a NULL AbstractFormula");
        }
        _target = target;
        _value = value;
    }

    /**
     * This method returns the <code>AbstractObject</code> that is targeted by the
     * <code>AbstractAssignment</code>.
     *  
     * @return The target of the <code>AbstractAssignment</code>.
     */
    public AbstractObject getTarget()
    {
        return _target;
    }

    /**
     * This method returns the <code>AbstractFormula</code> that represents the value
     * assigned by the <code>AbstractAssignment</code>.
     * 
     * @return The value assigned by the <code>AbstractAssignment</code>.
     */
    public AbstractFormula getValue()
    {
        return _value;
    }
}
