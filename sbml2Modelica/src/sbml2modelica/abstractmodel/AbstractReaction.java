/**
 * AbstractReaction.java
 *
 * TODO
 *
 * @author  filippo
 * @project SBML2Modelica
 */
package sbml2modelica.abstractmodel;

import java.util.HashSet;

import sbml2modelica.abstractmodel.values.AbstractAssignmentValue;
import sbml2modelica.utils.Log;
import sbml2modelica.utils.exceptions.InvalidAbstractIdentifierException;
import sbml2modelica.utils.exceptions.NullAbstractModelException;
import sbml2modelica.utils.exceptions.NullReactionException;
import sbml2modelica.utils.exceptions.NullSpeciesException;

/**
 * @author Maggioli Filippo
 *
 */
public class AbstractReaction extends AbstractObject
{
    private AbstractAssignmentValue             kinetic;
    private HashSet<AbstractSpeciesReference>   reactants;
    private HashSet<AbstractSpeciesReference>   products;
    private HashSet<AbstractLocalParameter>     locals;
    
    public AbstractReaction(final AbstractModel model, final String id, final String name) 
            throws NullAbstractModelException, InvalidAbstractIdentifierException
    {
        super(model, id, name);
        reactants = new HashSet<AbstractSpeciesReference>();
        products  = new HashSet<AbstractSpeciesReference>();
        locals    = new HashSet<AbstractLocalParameter>();
        
        Log.Message("Creation of AbstractReaction " + this.getId() + " completed.");
    }
    
    public AbstractReaction(final AbstractModel model, final String id) 
            throws NullAbstractModelException, InvalidAbstractIdentifierException
    {
        this(model, id, "");
    }

    public void setKinetic(AbstractAssignmentValue newKinetic)
    {
        this.kinetic = newKinetic;
    }

    public AbstractAssignmentValue getKinetic()
    {
        return this.kinetic;
    }
    
    public HashSet<AbstractSpeciesReference> getReactants()
    {
        return new HashSet<AbstractSpeciesReference>(this.reactants);
    }
    
    public int getNumReactants()
    {
        return this.reactants.size();
    }
    
    public HashSet<AbstractSpeciesReference> getProducts()
    {
        return new HashSet<AbstractSpeciesReference>(this.products);
    }
    
    public int getNumProducts()
    {
        return this.products.size();
    }
    
    public HashSet<AbstractLocalParameter> getLocalParameters()
    {
        return new HashSet<AbstractLocalParameter>(this.locals);
    }
    
    public int getNumLocalParameters()
    {
        return this.locals.size();
    }
    
    public AbstractSpeciesReference createReactant(final String id, final String name, 
                                                   final AbstractSpecies species)
    {
        AbstractSpeciesReference s = null;
        try
        {
            s = new AbstractSpeciesReference(this, id, name, species, true);
        }
        catch (NullAbstractModelException 
               | InvalidAbstractIdentifierException 
               | NullReactionException
               | NullSpeciesException e)
        {
            return null;
        }
        
        this.reactants.add(s);
        
        return s;
    }
    
    public AbstractSpeciesReference createProduct(final String id, final String name, 
                                                   final AbstractSpecies species)
    {
        AbstractSpeciesReference s = null;
        try
        {
            s = new AbstractSpeciesReference(this, id, name, species, false);
        }
        catch (NullAbstractModelException 
               | InvalidAbstractIdentifierException 
               | NullReactionException
               | NullSpeciesException e)
        {
            return null;
        }
        
        this.products.add(s);
        
        return s;
    }
    
    public AbstractLocalParameter createLocalParameter(final String id)
    {
        AbstractLocalParameter lp = null;
        try
        {
            lp = new AbstractLocalParameter(this, id);
        }
        catch (NullAbstractModelException 
               | InvalidAbstractIdentifierException 
               | NullReactionException e)
        {
            return null;
        }
        
        this.locals.add(lp);
        return lp;
    }
    
    public AbstractLocalParameter createLocalParameter(final String id, double value)
    {
        AbstractLocalParameter lp = this.createLocalParameter(id);
        if (lp == null)
        {
            return null;
        }
        
        lp.setValue(value);
        return lp;
    }
    
    public AbstractSpeciesReference getReactantById(final String id)
    {
        HashSet<AbstractSpeciesReference> reacs = this.getReactants();
        for (AbstractSpeciesReference sr : reacs)
        {
            if (sr.getId().equals(id))
                return sr;
        }
        
        return null;
    }
    
    public AbstractSpeciesReference getProductById(final String id)
    {
        HashSet<AbstractSpeciesReference> prods = this.getProducts();
        for (AbstractSpeciesReference sr : prods)
        {
            if (sr.getId().equals(id))
                return sr;
        }
        
        return null;
    }
    
    public AbstractLocalParameter getLocalParameterById(final String id)
    {
        HashSet<AbstractLocalParameter> locs = this.getLocalParameters();
        for (AbstractLocalParameter lp : locs)
        {
            if (lp.getId().equals(id))
                return lp;
        }
        
        return null;
    }

}
