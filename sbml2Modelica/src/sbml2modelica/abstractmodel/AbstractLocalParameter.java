/**
 * AbstractLocalParameter.java
 *
 * TODO
 *
 * @author  filippo
 * @project SBML2Modelica
 */
package sbml2modelica.abstractmodel;

import org.sbml.jsbml.Unit;
import org.sbml.jsbml.UnitDefinition;

import sbml2modelica.utils.Log;
import sbml2modelica.utils.exceptions.InvalidAbstractIdentifierException;
import sbml2modelica.utils.exceptions.NullAbstractModelException;
import sbml2modelica.utils.exceptions.NullReactionException;

/**
 * @author filippo
 *
 */
public class AbstractLocalParameter extends AbstractObject
{
    private final AbstractReaction reaction;
    private double                 value;
    private UnitDefinition         unit;
    
    private static AbstractReaction notNull(final AbstractReaction r)
            throws NullReactionException
    {
        if (r == null)
        {
            throw new NullReactionException("Trying to initialize an AbstractLocalParameter "
                                            + "in a NULL AbstractReaction.");
        }
        
        return r;
    }
    
    public AbstractLocalParameter(final AbstractReaction reaction, final String id) 
            throws NullAbstractModelException, 
                   InvalidAbstractIdentifierException, 
                   NullReactionException
    {
        super(notNull(reaction).getModel(), id);
        
        this.reaction = reaction;
        
        Log.Message("Creation of AbstractLocalParameter " + this.getId() + " completed.");
    }

    public void setValue(double newValue)
    {
        this.value = newValue;
    }

    public void setUnit(UnitDefinition newUnit)
    {
        if (newUnit == null)
        {
            this.unit = new UnitDefinition();
        	Unit u = this.unit.createUnit();
        	u.setKind(org.sbml.jsbml.Unit.Kind.INVALID);
        	u.setExponent(1.0);
        	u.setMultiplier(1);
        }
        else
            this.unit = newUnit.clone();
    }

    public double getValue()
    {
        return this.value;
    }

    public UnitDefinition getUnit()
    {
        if (this.unit == null)
            return null;
        else
            return this.unit.clone();
    }

    public AbstractReaction getReaction()
    {
        return reaction;
    }

}
