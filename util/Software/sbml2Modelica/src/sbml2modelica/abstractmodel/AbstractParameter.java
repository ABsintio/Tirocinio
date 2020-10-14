/**
 * AbstractParameter.java
 *
 * TODO
 *
 * @author  Maggioli Filippo
 * @project SBML2Modelica
 */
package sbml2modelica.abstractmodel;

import org.sbml.jsbml.Unit;
import org.sbml.jsbml.UnitDefinition;

import sbml2modelica.abstractmodel.values.AbstractValue;
import sbml2modelica.utils.Log;
import sbml2modelica.utils.exceptions.InvalidAbstractIdentifierException;
import sbml2modelica.utils.exceptions.NullAbstractModelException;

/**
 * The <code>AbstractParameter</code> is an <code>AbstractObject</code> that represents a 
 * parameter in an <code>AbstractModel</code>.
 * We refers to a parameter as a symbol associated with a value, that can be constant or
 * variable. The value of a parameter also has a unit of measurement in the
 * <code>AbstractModel</code>.
 * 
 * @author Maggioli Filippo
 */
public class AbstractParameter extends AbstractObject
{
    /**
     * The value represented by the <code>AbstractParameter</code>.
     */
    private AbstractValue   _value;
    
    /**
     * The unit of measurement of the <code>AbstractParameter</code>
     */
    private UnitDefinition  unit;

    /**
     * Constructor does almost nothing more than the super constructor. It only prints into
     * the log file the success in the operation of the creation of the
     * <code>AbstractParameter</code>.
     * The restrictions are the same applied to the constructor of the
     * <code>AbstractObject</code>.
     * 
     * @param model The <code>AbstractModel</code> in which the <code>AbstractParameter</code>
     *              is defined.
     * @param id    The identifier of the <code>AbstractParameter</code>.
     * @param name  The name of the <code>AbstractParameter</code>.
     * @throws NullAbstractModelException When <code>model == null</code>.
     * @throws InvalidAbstractIdentifierException When <code>id == null</code> or <code>id</code>
     *                                            is empty.
     */
    public AbstractParameter(final AbstractModel model, final String id, final String name) 
            throws NullAbstractModelException, InvalidAbstractIdentifierException
    {
        super(model, id, name);
        Log.Message("Creation of AbstractParameter " + this.getId() + " completed.");
    }
    
    /**
     * Constructor does almost nothing more than the super constructor. It only prints into
     * the log file the success in the operation of the creation of the
     * <code>AbstractParameter</code>.
     * The restrictions are the same applied to the constructor of the
     * <code>AbstractObject</code>.
     * Calling this constructor is equivalent to call the complete constructor with an empty
     * or <code>null</code> name.
     * 
     * @param model The <code>AbstractModel</code> in which the <code>AbstractParameter</code>
     *              is defined.
     * @param id    The identifier of the <code>AbstractParameter</code>.
     * @throws NullAbstractModelException When <code>model == null</code>.
     * @throws InvalidAbstractIdentifierException When <code>id == null</code> or <code>id</code>
     *                                            is empty.
     */
    public AbstractParameter(final AbstractModel model, final String id) 
            throws NullAbstractModelException, InvalidAbstractIdentifierException
    {
        this(model, id, "");
    }

    /**
     * This method sets the value of the <code>AbstractParameter</code> to the given
     * <code>AbstractValue</code>.
     * If the input is <code>null</code>, then the value of the <code>AbstractParameter</code>
     * is left undefined.
     * 
     * @param newValue The new value of the <code>AbstractParameter</code>.
     */
    public void setValue(AbstractValue newValue)
    {
        _value = newValue;
    }
    
    /**
     * This method sets the unit of measurement of the <code>AbstractParameter</code> to a
     * copy of the given <code>UnitDefinition</code>.
     * If the input is <code>null</code>, then the unit of measurement of the 
     * <code>AbstractParameter</code> is left undefined.
     * @param newUnit
     */
    public void setUnit(UnitDefinition newUnit)
    {
        if (newUnit == null)
        {
        	unit = new UnitDefinition();
        	Unit u = unit.createUnit();
        	u.setKind(org.sbml.jsbml.Unit.Kind.INVALID);
        	u.setExponent(1.0);
        	u.setMultiplier(1);
        }
        else
            unit = newUnit.clone();
    }
    
    /**
     * This method returns the <code>AbstractValue</code> that represents the value of the
     * <code>AbstractParameter</code>.
     * If the value of the <code>AbstractParameter</code> is undefined, then the method returns
     * <code>null</code>.
     * 
     * @return The value of the <code>AbstractParameter</code>.
     */
    public AbstractValue getValue()
    {
        return _value;
    }
    
    /**
     * This method returns a copy of the <code>UnitDefinition</code> that represents the unit of
     * measurement of the <code>AbstractParameter</code>.
     * If the unit of measurement of the <code>AbstractParameter</code> is undefined, then the
     * method returns <code>null</code>.
     * 
     * @return The unit of measurement of the <code>AbstractParameter</code>.
     */
    public UnitDefinition getUnit()
    {
        if (this.unit == null)
            return null;
        else
            return unit.clone();
    }
    
    /**
     * This method returns a <code>String</code> that represents the main informations about the
     * <code>AbstractParameter</code>. The format of the string is:<br>
     *     <code>< AbstractParameter 'identifier', 'name' ></code>
     *     
     * @return A <code>String</code> representing the <code>AbstractObject</code>.
     */
    @Override
    public String toString()
    {
        StringBuilder sb = new StringBuilder();
        sb.append('<').append(' ').append("AbstractParameter").append(' ');
        sb.append('\'').append(getId()).append('\'').append(',').append(' ');
        sb.append('\'').append(getName()).append('\'').append(' ').append('>');
        
        return sb.toString();
    }
}
