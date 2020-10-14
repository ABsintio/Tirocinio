/**
 * AbstractCompartment.java
 *
 * TODO
 *
 * @author  filippo
 * @project SBML2Modelica
 */
package sbml2modelica.abstractmodel;

import java.util.HashSet;
import java.util.Iterator;

import org.sbml.jsbml.Unit;
import org.sbml.jsbml.UnitDefinition;

import sbml2modelica.abstractmodel.values.AbstractValue;
import sbml2modelica.utils.Log;
import sbml2modelica.utils.exceptions.InvalidAbstractIdentifierException;
import sbml2modelica.utils.exceptions.NullAbstractModelException;
import sbml2modelica.utils.exceptions.NullCompartmentException;

/**
 * @author Maggioli Filippo
 *
 */
public class AbstractCompartment extends AbstractObject implements Iterable<AbstractSpecies>
{
    private AbstractValue               size;
    private UnitDefinition              sizeUnit;
    private HashSet<AbstractSpecies>    species;
    private double                      dimensions;

    public AbstractCompartment(final AbstractModel model, final String id, final String name) 
            throws NullAbstractModelException, InvalidAbstractIdentifierException
    {
        super(model, id, name);
        this.species = new HashSet<AbstractSpecies>();
        this.setDimensions(-1);
        Log.Message("Creation of AbstractCompartment " + this.getId() + " completed.");
    }
    
    public AbstractCompartment(final AbstractModel model, final String id) 
            throws NullAbstractModelException, InvalidAbstractIdentifierException
    {
        this(model, id, "");
    }

    public void setSize(AbstractValue newSize)
    {
        this.size = newSize;
    }

    public void setSizeUnit(UnitDefinition newSizeUnit)
    {
        if (newSizeUnit == null)
        {
        	this.sizeUnit = new UnitDefinition();
        	Unit u = this.sizeUnit.createUnit();
        	u.setKind(org.sbml.jsbml.Unit.Kind.INVALID);
        	u.setExponent(1.0);
        	u.setMultiplier(1);
        }
        else
            this.sizeUnit = newSizeUnit.clone();
    }

    public void setDimensions(double newDimensions)
    {
        this.dimensions = newDimensions;
    }

    public double getDimensions()
    {
        return this.dimensions;
    }

    public UnitDefinition getSizeUnit()
    {
        if (this.sizeUnit != null)
            return this.sizeUnit.clone();
        
        else if (this.getDimensions() == 1)
            return this.getModel().getLengthUnit();
        else if (this.getDimensions() == 2)
            return this.getModel().getAreaUnit();
        else if (this.getDimensions() == 3)
            return this.getModel().getVolumeUnit();
        
        return null;
    }

    public AbstractValue getSize()
    {
        return this.size;
    }
    
    public AbstractSpecies createSpecies(final String id, final String name)
    {
        AbstractSpecies s = null;
        try
        {
            s = new AbstractSpecies(this, id, name);
        }
        catch (NullAbstractModelException | 
               InvalidAbstractIdentifierException | 
               NullCompartmentException e)
        {
            return null;
        }
        
        this.species.add(s);
        return s;
    }
    
    public AbstractSpecies getSpeciesById(final String id)
    {
        for (AbstractSpecies s : this)
        {
            if (s.getId().equals(id))
                return s;
        }
        
        return null;
    }
    
    public int getNumSpecies()
    {
        return this.species.size();
    }

    @Override
    public Iterator<AbstractSpecies> iterator()
    {
        return this.species.iterator();
    }

}
