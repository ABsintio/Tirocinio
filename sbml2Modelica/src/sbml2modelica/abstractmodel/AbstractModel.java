/**
 * AbstractModel.java
 *
 * TODO
 *
 * @author  filippo
 * @project SBML2Modelica
 */
package sbml2modelica.abstractmodel;

import java.util.HashSet;

import javax.xml.stream.XMLStreamException;

import org.sbml.jsbml.Annotation;
import org.sbml.jsbml.UnitDefinition;

import sbml2modelica.abstractmodel.values.AbstractFormula;
import sbml2modelica.utils.Log;
import sbml2modelica.utils.exceptions.InvalidAbstractIdentifierException;
import sbml2modelica.utils.exceptions.NullAbstractModelException;
import sbml2modelica.utils.exceptions.NullFormulaException;

/**
 * @author Maggioli Filippo
 *
 */
public class AbstractModel
{
    private static final String DEFAULT_ID = "S2MModel";
    
    private String id;
    private String name;
    
    private Annotation notes;
    private String info;
    
    private UnitDefinition time;
    private UnitDefinition length;
    private UnitDefinition area;
    private UnitDefinition volume;
    private UnitDefinition substance;
    private UnitDefinition extent;
    
    private AbstractParameter convfactor;
    
    private HashSet<AbstractParameter>          params;
    private HashSet<AbstractCompartment>        comps;
    private HashSet<AbstractReaction>           reacs;
    private HashSet<AbstractEvent>              events;
    private HashSet<AbstractAlgebraicEquation>  algeqs;
    private HashSet<AbstractFunction>           funcs;
    
    
    public AbstractModel(final String id, final String name)
    {
        this.setId(id);
        this.setName(name);
        
        this.params = new HashSet<AbstractParameter>();
        this.comps  = new HashSet<AbstractCompartment>();
        this.reacs  = new HashSet<AbstractReaction>();
        this.events = new HashSet<AbstractEvent>();
        this.algeqs = new HashSet<AbstractAlgebraicEquation>();
        this.funcs  = new HashSet<AbstractFunction>();
    }
    
    public AbstractModel(final String id)
    {
        this(id, "");
    }
    
    public AbstractModel()
    {
        this("", "");
    }

    public void setId(final String newId)
    {
        if (newId == null || newId.equals(""))
            this.id = new String(DEFAULT_ID);
        else
            this.id = new String(newId);
    }

    public void setName(final String newName)
    {
        this.name = new String(newName);
    }
    
    public String getId()
    {
        return this.id;
    }

    public String getName()
    {
        return this.name;
    }
    
    public void setNotes(Annotation notes) { this.notes = notes; }
    
    public Annotation getNotes() { return notes; }
    
    public String getNotesString()
    {
    	if (notes == null || notes.getXMLNode() == null)
    		return null;
    	
    	try {
			return notes.getXMLNode().toXMLString().replace("\"", "\\\"");
		} catch (XMLStreamException e) {
			StringBuilder msg = new StringBuilder();
			msg.append("Some error occurred while generating the XML annotation for ")
			   .append("The AbstractObject ").append(getId()).append(".");
			Log.Error(msg.toString());
			return null;
		}
    }
    
    public void setInfo(String info) { this.info = info; }
    
    public String getInfo() { return info; }

    public UnitDefinition getTimeUnit()
    {
        if (this.time == null)
            return null;
        else
            return this.time.clone();
    }

    public void setTimeUnit(UnitDefinition newTime)
    {
        if (newTime == null)
            this.time = null;
        else
            this.time = newTime.clone();
    }

    public UnitDefinition getLengthUnit()
    {
        if (this.length == null)
            return null;
        else
            return this.length.clone();
    }

    public void setLengthUnit(UnitDefinition newLength)
    {
        if (newLength == null)
            this.time = null;
        else
            this.time = newLength.clone();
    }

    public UnitDefinition getAreaUnit()
    {
        if (this.area == null)
            return null;
        else
            return this.area.clone();
    }

    public void setAreaUnit(UnitDefinition newArea)
    {
        if (newArea == null)
            this.area = null;
        else
            this.area = newArea.clone();
    }

    public UnitDefinition getVolumeUnit()
    {
        if (this.volume == null)
            return null;
        else
            return this.volume.clone();
    }

    public void setVolumeUnit(UnitDefinition newVolume)
    {
        if (newVolume == null)
            this.volume = null;
        else
            this.volume = newVolume.clone();
    }

    public UnitDefinition getSubstanceUnit()
    {
        if (this.substance == null)
            return null;
        else
            return this.substance.clone();
    }

    public void setSubstanceUnit(UnitDefinition newSubstance)
    {
        if (newSubstance == null)
            this.substance = null;
        else
            this.substance = newSubstance.clone();
    }

    public UnitDefinition getExtentUnit()
    {
        if (this.extent == null)
            return null;
        else
            return this.extent.clone();
    }

    public void setExtentUnit(UnitDefinition newExtent)
    {
        if (newExtent == null)
            this.extent = null;
        else
            this.extent = newExtent.clone();
    }
    
    public AbstractParameter getConversionFactor()
    {
        return convfactor;
    }
    
    public void setConversionFactor(AbstractParameter newConvFactor)
    {
        if (newConvFactor == null)
            convfactor = null;
        else if (getParameterById(newConvFactor.getId()) == null)
            convfactor = null;
        else
            convfactor = newConvFactor;
    }
    
    public AbstractParameter createParameter(final String id, final String name)
    {
        AbstractParameter p = null;
        try
        {
            p = new AbstractParameter(this, id, name);
        }
        catch (NullAbstractModelException | InvalidAbstractIdentifierException e)
        {
            return null;
        }
        
        this.params.add(p);
        return p;
    }
    
    public AbstractCompartment createCompartment(final String id, final String name)
    {
        AbstractCompartment c = null;
        try
        {
            c = new AbstractCompartment(this, id, name);
        }
        catch (NullAbstractModelException | InvalidAbstractIdentifierException e)
        {
            return null;
        }
        
        this.comps.add(c);
        return c;
    }
    
    public AbstractReaction createReaction(final String id, final String name)
    {
        AbstractReaction r = null;
        try
        {
            r = new AbstractReaction(this, id, name);
        }
        catch (NullAbstractModelException | InvalidAbstractIdentifierException e)
        {
            return null;
        }
        
        this.reacs.add(r);
        return r;
    }
    
    public AbstractEvent createEvent(final String id, final String name)
    {
        AbstractEvent e = null;
        try
        {
            e = new AbstractEvent(this, id, name);
        }
        catch (NullAbstractModelException | InvalidAbstractIdentifierException e1)
        {
            return null;
        }
        
        this.events.add(e);
        return e;
    }
    
    public AbstractAlgebraicEquation createAlgebraicEquation(final String id, final String name, 
                                                             final AbstractFormula formula)
    {
        AbstractAlgebraicEquation algeq = null;
        try
        {
            algeq = new AbstractAlgebraicEquation(this, id, name, formula);
        }
        catch (NullAbstractModelException 
               | InvalidAbstractIdentifierException 
               | NullFormulaException e)
        {
            return null;
        }
        
        this.algeqs.add(algeq);
        return algeq;
    }
    
    public AbstractFunction createFunction(final String id, final String name)
    {
        AbstractFunction f = null;
        try
        {
            f = new AbstractFunction(this, id, name);
        }
        catch (NullAbstractModelException | InvalidAbstractIdentifierException e)
        {
            return null;
        }
        
        this.funcs.add(f);
        return f;
    }
    
    public HashSet<AbstractParameter> getParameters()
    {
        return new HashSet<AbstractParameter>(this.params);
    }
    
    public int getNumParameters()
    {
        return this.params.size();
    }
    
    public HashSet<AbstractCompartment> getCompartments()
    {
        return new HashSet<AbstractCompartment>(this.comps);
    }
    
    public int getNumCompartments()
    {
        return this.comps.size();
    }
    
    public int getNumSpecies()
    {
        int numSpecs = 0;
        for (AbstractCompartment c : this.comps)
        {
            numSpecs += c.getNumSpecies();
        }
        return numSpecs;
    }
    
    public HashSet<AbstractReaction> getReactions()
    {
        return new HashSet<AbstractReaction>(this.reacs);
    }
    
    public int getNumReactions()
    {
        return this.reacs.size();
    }
    
    public int getNumSpeciesReferences()
    {
        int numSR = 0;
        for (AbstractReaction r : this.reacs)
        {
            numSR += r.getNumReactants() + r.getNumProducts();
        }
        return numSR;
    }
    
    public HashSet<AbstractEvent> getEvents()
    {
        return new HashSet<AbstractEvent>(this.events);
    }
    
    public int getNumEvents()
    {
        return this.events.size();
    }
    
    public HashSet<AbstractAlgebraicEquation> getAlgebraicEquations()
    {
        return new HashSet<AbstractAlgebraicEquation>(this.algeqs);
    }
    
    public HashSet<AbstractFunction> getFunctions()
    {
        return new HashSet<AbstractFunction>(this.funcs);
    }
    
    public AbstractParameter getParameterById(final String id)
    {
        HashSet<AbstractParameter> params = this.getParameters();
        for (AbstractParameter p : params)
        {
            if (p.getId().equals(id))
                return p;
        }
        
        return null;
    }
    
    public AbstractCompartment getCompartmentById(final String id)
    {
        HashSet<AbstractCompartment> comps = this.getCompartments();
        for (AbstractCompartment c : comps)
        {
            if (c.getId().equals(id))
                return c;
        }
        
        return null;
    }
    
    public AbstractReaction getReactionById(final String id)
    {
        HashSet<AbstractReaction> reacs = this.getReactions();
        for (AbstractReaction r : reacs)
        {
            if (r.getId().equals(id))
                return r;
        }
        
        return null;
    }
    
    public AbstractEvent getEventById(final String id)
    {
        HashSet<AbstractEvent> events = this.getEvents();
        for (AbstractEvent e : events)
        {
            if (e.getId().equals(id))
                return e;
        }
        
        return null;
    }
    
    public AbstractAlgebraicEquation getAlgebraicEquationById(final String id)
    {
        HashSet<AbstractAlgebraicEquation> algeqs = this.getAlgebraicEquations();
        for (AbstractAlgebraicEquation algeq : algeqs)
        {
            if (algeq.getId().equals(id))
                return algeq;
        }
        
        return null;
    }
    
    public AbstractFunction getFunctionById(final String id)
    {
        HashSet<AbstractFunction> funcs = this.getFunctions();
        for (AbstractFunction f : funcs)
        {
            if (f.getId().equals(id))
                return f;
        }
        
        return null;
    }
    
    public AbstractObject getObjectById(final String id)
    {
        AbstractParameter p = this.getParameterById(id);
        if (p != null)
            return p;
        
        AbstractCompartment c = this.getCompartmentById(id);
        if (c != null)
            return c;
        
        AbstractReaction r = this.getReactionById(id);
        if (r != null)
            return r;
        
        AbstractEvent e = this.getEventById(id);
        if (e != null)
            return e;
        
        AbstractAlgebraicEquation algeq = this.getAlgebraicEquationById(id);
        if (algeq != null)
            return algeq;
        
        AbstractFunction f = this.getFunctionById(id);
        if (f != null)
            return f;
        
        HashSet<AbstractCompartment> comps = this.getCompartments();
        for (AbstractCompartment cc : comps)
        {
            for (AbstractSpecies s : cc)
            {
                if (s.getId().equals(id))
                    return s;
            }
        }
        
        HashSet<AbstractReaction> reacs = this.getReactions();
        for (AbstractReaction rr : reacs)
        {
            HashSet<AbstractSpeciesReference> specrefs = rr.getReactants();
            specrefs.addAll(rr.getProducts());
            for (AbstractSpeciesReference sr : specrefs)
            {
                if (sr.getId().equals(id))
                    return sr;
            }
        }
        
        return null;
    }
    
    
    @Override
    public String toString()
    {
        StringBuilder sb = new StringBuilder();
        sb.append("AbstractModel ").append(this.getId());
        
        return sb.toString();
    }
}
