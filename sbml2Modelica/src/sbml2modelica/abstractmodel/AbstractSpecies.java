/**
 * AbstractSpecies.java
 *
 * TODO
 *
 * @author  filippo
 * @project SBML2Modelica
 */
package sbml2modelica.abstractmodel;

import org.sbml.jsbml.Unit;
import org.sbml.jsbml.UnitDefinition;

import sbml2modelica.abstractmodel.values.AbstractValue;
import sbml2modelica.utils.Log;
import sbml2modelica.utils.exceptions.InvalidAbstractIdentifierException;
import sbml2modelica.utils.exceptions.NullAbstractModelException;
import sbml2modelica.utils.exceptions.NullCompartmentException;

/**
 * @author filippo
 *
 */
public class AbstractSpecies extends AbstractObject
{
    private AbstractValue       quantity;
    private UnitDefinition      quantityUnit;
    private AbstractCompartment compartment;
    private AbstractParameter   convfactor;
    private boolean             amountReferenced;
    private boolean             boundary;
    
    private static AbstractCompartment notNull(final AbstractCompartment c) 
            throws NullCompartmentException
    {
        if (c == null)
        {
            throw new NullCompartmentException("Trying to initialize an AbstractSpecies "
                                               + "in a NULL AbstractCompartment.");
        }
        
        return c;
    }

    public AbstractSpecies(final AbstractCompartment compartment, 
                           final String id, 
                           final String name) 
                                   throws NullAbstractModelException, 
                                          InvalidAbstractIdentifierException, 
                                          NullCompartmentException
    {
        super(notNull(compartment).getModel(), id, name);
        this.compartment = compartment;
        this.makeAmountReferenced();
        this.unsetBoundaryCondition();
        Log.Message("Creation of AbstractSpecies " + this.getId() + " completed.");
    }
    
    public AbstractSpecies(final AbstractCompartment compartment, final String id) 
            throws NullAbstractModelException, 
                   InvalidAbstractIdentifierException, 
                   NullCompartmentException
    {
        this(compartment, id, "");
    }
    
    public void setQuantity(AbstractValue newQuantity)
    {
        this.quantity = newQuantity;
    }
    
    public void setQuantityUnit(UnitDefinition newQuantityUnit)
    {
        if (newQuantityUnit == null)
        {
            this.quantityUnit = new UnitDefinition();
        	Unit u = this.quantityUnit.createUnit();
        	u.setKind(org.sbml.jsbml.Unit.Kind.INVALID);
        	u.setExponent(1.0);
        	u.setMultiplier(1);
        }
        else
            this.quantityUnit = newQuantityUnit.clone();
    }
    
    public AbstractValue getQuantity()
    {
        return this.quantity;
    }
    
    public UnitDefinition getQuantityUnit()
    {
        if (this.quantityUnit != null)
            return this.quantityUnit.clone();
        
        UnitDefinition ud = this.getModel().getSubstanceUnit();
        if (ud == null)
            return null;
        if (this.isAmountReferenced())
            return ud;
        
        UnitDefinition compunit = this.getCompartment().getSizeUnit();
        if (compunit == null)
            return null;
        return ud.divideBy(compunit);
    }
    
    public AbstractCompartment getCompartment()
    {
        return this.compartment;
    }
    
    public void setConversionFactor(AbstractParameter newConvFactor)
    {
        if (newConvFactor == null)
            convfactor = null;
        else if (getModel().getParameterById(newConvFactor.getId()) == null)
            convfactor = null;
        else
            convfactor = newConvFactor;
    }
    
    public AbstractParameter getConversionFactor()
    {
        if (convfactor != null)
            return convfactor;
        else
            return getModel().getConversionFactor();
    }
    
    public void makeAmountReferenced()
    {
        this.amountReferenced = true;
    }
    
    public void makeConcentrationReferenced()
    {
        this.amountReferenced = false;
    }
    
    public boolean isAmountReferenced()
    {
        return this.amountReferenced;
    }
    
    public void setBoundaryCondition()
    {
        this.boundary = true;
    }
    
    public void unsetBoundaryCondition()
    {
        this.boundary = false;
    }
    
    public boolean hasBoundaryCondition()
    {
        return this.boundary;
    }
    
    @Override
    public String toString()
    {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("    ").append("Type:                  Species");
        sb.append(System.lineSeparator());
        sb.append("    ").append("Boundary Condition:    ").append(this.hasBoundaryCondition());
        sb.append(System.lineSeparator());
        sb.append("    ").append("Amount Referenced:     ").append(this.isAmountReferenced());
        return sb.toString();
    }
}
