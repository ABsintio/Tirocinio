/**
 * AbstractSpeciesReference.java
 *
 * TODO
 *
 * @author  filippo
 * @project SBML2Modelica
 */
package sbml2modelica.abstractmodel;

import sbml2modelica.abstractmodel.values.AbstractValue;
import sbml2modelica.utils.Log;
import sbml2modelica.utils.exceptions.InvalidAbstractIdentifierException;
import sbml2modelica.utils.exceptions.NullAbstractModelException;
import sbml2modelica.utils.exceptions.NullReactionException;
import sbml2modelica.utils.exceptions.NullSpeciesException;

/**
 * @author Maggioli Filippo
 *
 */
public class AbstractSpeciesReference extends AbstractObject
{
    private final AbstractSpecies   species;
    private final AbstractReaction  reaction;
    private final boolean           reactant;
    private AbstractValue           value;
    
    static long serialId = 0;
    
    private static AbstractReaction notNull(final AbstractReaction r)
            throws NullReactionException
    {
        if (r == null)
        {
            throw new NullReactionException("Trying to initialize an AbstractSpeciesReference "
                                            + "in a NULL AbstractReaction.");
        }
        
        return r;
    }
    
    private static String fixId(final String unfixedId)
    {
        if (unfixedId.equals(""))
        {
            StringBuilder sb = new StringBuilder();
            sb.append("specref").append(serialId++);
            
            return sb.toString();
        }
        else
            return unfixedId;
    }
    
    public AbstractSpeciesReference(final AbstractReaction reaction,
                                           final String id,
                                           final String name,
                                           final AbstractSpecies species,
                                           boolean isReactant)
                                                   throws NullAbstractModelException, 
                                                          InvalidAbstractIdentifierException, 
                                                          NullReactionException, 
                                                          NullSpeciesException
    {
        super(notNull(reaction).getModel(), fixId(id), name);
        
        if (species == null)
        {
            throw new NullSpeciesException("Trying to initialize an AbstractSpeciesReference "
                                           + "with a NULL AbstractSpecies.");
        }
        
        this.reaction = reaction;
        this.species = species;
        this.reactant = isReactant;
        
        Log.Message("Creation of AbstractSpeciesReference " + this.getId() + " completed.");
    }
    
    public AbstractSpeciesReference(final AbstractReaction reaction,
                                    final String id,
                                    final AbstractSpecies species,
                                    boolean isReactant)
                                            throws NullAbstractModelException, 
                                                   InvalidAbstractIdentifierException, 
                                                   NullReactionException, 
                                                   NullSpeciesException
    {
        this(reaction, id, "", species, isReactant);
    }

    public void setValue(AbstractValue value)
    {
        this.value = value;
    }

    public AbstractValue getValue()
    {
        return value;
    }

    public AbstractReaction getReaction()
    {
        return reaction;
    }

    public AbstractSpecies getSpecies()
    {
        return species;
    }
    
    public boolean isReactant()
    {
        return this.reactant;
    }
    
    public boolean isProduct()
    {
        return ! this.isReactant();
    }
}
