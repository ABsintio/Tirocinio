/**
 * CompartmentAbstractionManager.java
 *
 * TODO
 *
 * @author  filippo
 * @project SBML2Modelica
 */
package sbml2modelica.sbmlabstraction;

import java.util.HashSet;

import javax.xml.stream.XMLStreamException;

import org.sbml.jsbml.ASTNode;
import org.sbml.jsbml.AssignmentRule;
import org.sbml.jsbml.Compartment;
import org.sbml.jsbml.InitialAssignment;
import org.sbml.jsbml.Model;
import org.sbml.jsbml.RateRule;
import org.sbml.jsbml.Species;
import org.sbml.jsbml.UnitDefinition;

import sbml2modelica.abstractmodel.AbstractCompartment;
import sbml2modelica.abstractmodel.AbstractModel;
import sbml2modelica.abstractmodel.AbstractReaction;
import sbml2modelica.abstractmodel.AbstractSpecies;
import sbml2modelica.abstractmodel.AbstractSpeciesReference;
import sbml2modelica.abstractmodel.values.AbstractAssignmentValue;
import sbml2modelica.abstractmodel.values.AbstractConstantValue;
import sbml2modelica.abstractmodel.values.AbstractDerivativeValue;
import sbml2modelica.abstractmodel.values.AbstractFormula;
import sbml2modelica.utils.Log;
import sbml2modelica.utils.exceptions.NullAbstractModelException;
import sbml2modelica.utils.exceptions.NullFormulaException;
import sbml2modelica.utils.exceptions.NullSBMLModelException;
import sbml2modelica.utils.exceptions.NullTargetException;

/**
 * A <code>CompartmentAbstractionManager</code> provides functionalities for generation of
 * <code>AbstractCompartment</code>s, and their related <code>AbstractSpecies</code>, in an
 * <code>AbstractModel</code> from the informations provided by a SBML <code>Model</code>.
 * <br>
 * The <code>CompartmentAbstractionManager</code> works under the assumption that the SBML
 * <code>Model</code> has been pre-processed with a <code>ModelPreprocessingManager</code>.
 * 
 * @author Maggioli Filippo
 */
public class CompartmentAbstractionManager
{
    /**
     * The <code>AbstractModel</code> where the generated <code>AbstractCompartment</code>s
     * and their <code>AbstractSpecies</code> will be stored.
     */
    private AbstractModel   _model;
    
    /**
     * The SBML <code>Model</code> from which the informations are retrieved.
     */
    private Model           _sbmlmodel;
    
    /**
     * Constructor initializes the <code>CompartmentAbstractionManager</code> with the given
     * <code>AbstractModel</code> and SBML <code>Model</code>.<br>
     * If one between the two inputs is <code>null</code>, then a proper exception is
     * thrown.
     * 
     * @param model The <code>AbstractModel</code> where the informations must be stored.
     * @param sbmlmodel The SBML <code>Model</code> from which the informations are retrieved.
     * @throws NullAbstractModelException When <code>model == null</code>.
     * @throws NullSBMLModelException When <code>sbmlmodel == null</code>.
     */
    CompartmentAbstractionManager(AbstractModel model, Model sbmlmodel) 
            throws NullAbstractModelException, NullSBMLModelException
    {
        if (model == null)
        {
            throw new NullAbstractModelException("Trying to initialize a"
                                                 + " CompartmentAbstractionManager with a NULL"
                                                 + " AbstractModel.");
        }
        if (sbmlmodel == null)
        {
            throw new NullSBMLModelException("Trying to initialize a CompartmentAbstractionManager"
                                             + " with a NULL SBML model.");
        }
        
        _model = model;
        _sbmlmodel = sbmlmodel;
    }
    
    /**
     * This method generates an <code>AbstractSpecies</code>, that represents the given SBML
     * <code>Species</code>, in the given <code>AbstractCompartment</code>, if it represents
     * the SBML <code>Compartment</code> in which the given SBML <code>Species</code> is
     * located.
     * <br>
     * Note that after the call of this method, the generated <code>AbstractSpecies</code>
     * encodes all the informations about the given SBML <code>Species</code>, except for the
     * unit of measurement and the value.
     * 
     * @param ac The <code>AbstractCompartment</code> in which the <code>AbstractSpecies</code>
     *           must be created.
     * @param s The SBML <code>Species</code> that must be represented by the
     *          <code>AbstractSpecies</code>.
     * @return The generated <code>AbstractSpecies</code>.
     */
    private AbstractSpecies generateSpecies(AbstractCompartment ac, Species s)
    {
        AbstractSpecies as = ac.createSpecies(s.getId(), s.getName());
        as.setNotes(s.getAnnotation());
        try {
			as.setInfo(s.getNotesString());
		} catch (XMLStreamException e) {
			as.setInfo(null);
		}
        if (s.getHasOnlySubstanceUnits())
            as.makeAmountReferenced();
        else
            as.makeConcentrationReferenced();
        if (s.getBoundaryCondition())
            as.setBoundaryCondition();
        else
            as.unsetBoundaryCondition();
        if (s.isSetConversionFactor())
            as.setConversionFactor(_model.getParameterById(s.getConversionFactor()));
        
        return as;
    }
    
    /**
     * This method computes the <code>UnitDefinition</code> that represents the unit of
     * measurement of the given SBML <code>Species</code>. The unit is then adjusted to match
     * the reference to the amount or the concentration of the SBML <code>Species</code> and
     * it is finally assigned to the given <code>AbstractSpecies</code>.
     * 
     * @param as The <code>AbstractSpecies</code> that represents the SBML <code>Species</code>.
     * @param s The SBML <code>Species</code> that contains the informations about the unit of
     *          measurement.
     */
    private void computeSpeciesQuantityUnit(AbstractSpecies as, Species s)
    {
        UnitDefinition ud = _sbmlmodel.getUnitDefinition(s.getSubstanceUnits());
        if (! as.isAmountReferenced() && ud != null)
        {
            if (as.getCompartment().getSizeUnit() != null)
                ud = ud.divideBy(as.getCompartment().getSizeUnit());
        }
        as.setQuantityUnit(ud);
    }
    
    /**
     * This method computes the <code>UnitDefinition</code> that represents the unit of
     * measurement of the size of the given SBML <code>Compartment</code>. The unit is then 
     * assigned to the given <code>AbstractCompartment</code>.
     * 
     * @param ac The <code>AbstractCompartment</code> that represents the SBML 
     *           <code>Compartment</code>.
     * @param c The SBML <code>Compartment</code> that contains the informations about the unit 
     *          of measurement of its size.
     */
    private void computeCompartmentSizeUnit(AbstractCompartment ac, Compartment c)
    {
        UnitDefinition ud = _sbmlmodel.getUnitDefinition(c.getUnits());
        ac.setSizeUnit(ud);
    }
    
    /**
     * This method generates an <code>AbstractCompartment</code>, in the <code>AbstractModel</code>,
     * that represents the given SBML <code>Compartment</code>.
     * <br>
     * Note that after the call of this method, the generated <code>AbstractCompartment</code> only
     * represents informations about the identifier, the name, the unit of measurement and the
     * spatial dimensions of the given SBML <code>Compartment</code>. Furthermore, the method also
     * generates the <code>AbstractSpecies</code> that represent the SBML <code>Species</code>
     * whose the <code>Compartment</code> is represented by the generated 
     * <code>AbstractCompartment</code>.
     * 
     * @param c The SBML <code>Compartment</code> that must be represented.
     * @return The <code>AbstractCompartment</code> that represents the given SBML 
     *         <code>Compartment</code>.
     */
    private AbstractCompartment generateCompartment(Compartment c)
    {
        AbstractCompartment ac = _model.createCompartment(c.getId(), c.getName());
        ac.setNotes(c.getAnnotation());
        try {
			ac.setInfo(c.getNotesString());
		} catch (XMLStreamException e) {
			ac.setInfo(null);
		}
        computeCompartmentSizeUnit(ac, c);
        if (c.isSetSpatialDimensions())
            ac.setDimensions(c.getSpatialDimensions());
        else
            ac.setDimensions(-1);
        
        int slength = _sbmlmodel.getNumSpecies();
        for (int i = 0; i < slength; i++)
        {
            Species s = _sbmlmodel.getSpecies(i);
            if (! s.getCompartment().equals(ac.getId()))
            {
                continue;
            }
            
            AbstractSpecies as = generateSpecies(ac, s);
            computeSpeciesQuantityUnit(as, s);
        }
        
        return ac;
    }
    
    /**
     * This method generates all the <code>AbstractCompartment</code>s and their
     * <code>AbstractSpecies</code> in the <code>AbstractModel</code> that represent the SBML
     * <code>Compartment</code>s and <code>Species</code> in the SBML <code>Model</code>.
     */
    void generateCompartmentsAndSpecies()
    {
        int clength = _sbmlmodel.getNumCompartments();
        for (int i = 0; i < clength; i++)
        {
            Compartment c = _sbmlmodel.getCompartment(i);
            this.generateCompartment(c);
        }
    }
    
    /**
     * This method computes an <code>AbstractValue</code> that represents the value of the given
     * SBML <code>Species</code> in the SBML <code>Model</code>. The value computed by this method
     * is according with the type of reference to the SBML <code>Species</code>.
     * <br>
     * Once the <code>AbstractValue</code> has been computed, it is assigned to the given
     * <code>AbstractSpecies</code>, that represents the given SBML <code>Species</code>.
     *  
     * @param s The SBML <code>Species</code> that contains informations about the value.
     * @param as The <code>AbstractSpecies</code> that represents the given <code>Species</code> 
     *           and whose the value must be computed.
     */
    private void computeSpeciesValue(Species s, AbstractSpecies as)
    {
        // If the species is affected by an assignment rule, we are done
        AssignmentRule ar = _sbmlmodel.getAssignmentRuleByVariable(s.getId());
        if (ar != null)
        {
            // Compute the abstract assignment value and return
            try
            {
                AbstractFormula formula = null;
                formula = new AbstractFormula(_model, new ASTNode(ar.getMath()));
                AbstractAssignmentValue value = new AbstractAssignmentValue(as, formula);
                as.setQuantity(value);
            }
            catch (NullAbstractModelException | NullFormulaException | NullTargetException e)
            {
                Log.Error(e.getMessage());
                Log.FatalError("Something went wrong when trying to compute the value of "
                               + "the AbstractSpecies " + as.getId(), 1);
            }
            
            return;
        }
        // Get an eventual initial condition
        ASTNode init = null;
        // Search for an initial assignment
        InitialAssignment ia = _sbmlmodel.getInitialAssignmentBySymbol(s.getId());
        if (ia != null)
            init = new ASTNode(ia.getMath());
        else
        {
            // If there is no InitialAssignment, then the Species is defined through an
            // AlgebraicRule or not defined at all.
            // Pre-processing procedure ensure this assumption.
            as.setQuantity(null);
            Log.Warning("Species " + s.getId() + " seems to not have an"
                    + " initial value.");
            return;
        }
        
        // If the species is constant, then we are done
        if (s.getConstant())
        {
            try
            {
                AbstractFormula formula = new AbstractFormula(_model, init);
                AbstractConstantValue value = new AbstractConstantValue(as, formula);
                as.setQuantity(value);
            }
            catch (NullAbstractModelException | NullFormulaException | NullTargetException e)
            {
                Log.Error(e.getMessage());
                Log.FatalError("Something went wrong when trying to compute the value of "
                               + "the AbstractSpecies " + as.getId(), 1);
            }
            
            return;
        }
        
        // Otherwise, it could be affected by a rate rule
        RateRule rr = _sbmlmodel.getRateRuleByVariable(s.getId());
        // If the rule exists, then the species has a well defined derivative
        if (rr != null)
        {
            try
            {
                ASTNode der = new ASTNode(rr.getMath());
                AbstractFormula initForm = new AbstractFormula(_model, init);
                AbstractFormula derForm = new AbstractFormula(_model, der);
                AbstractDerivativeValue value = new AbstractDerivativeValue(as, initForm, derForm);
                as.setQuantity(value);
            }
            catch (NullAbstractModelException | NullFormulaException | NullTargetException e)
            {
                Log.Error(e.getMessage());
                Log.FatalError("Something went wrong when trying to compute the value of "
                               + "the AbstractSpecies " + as.getId(), 1);
            }
            
            return;
        }
        
        // Otherwise, the species is defined through reactions
        // Search for a reaction in which the species is involved
        HashSet<AbstractReaction> reacs = _model.getReactions();
        // This search makes sense only if species has no boundary condition
        // In case of boundary condition, empty the set
        if (as.hasBoundaryCondition())
            reacs = new HashSet<AbstractReaction>();
        for (AbstractReaction r : reacs)
        {
            HashSet<AbstractSpeciesReference> srefs = r.getReactants();
            srefs.addAll(r.getProducts());
            for (AbstractSpeciesReference sr : srefs)
            {
                if (sr.getSpecies().equals(as))
                {
                    try
                    {
                        AbstractFormula initForm = new AbstractFormula(_model, init);
                        AbstractDerivativeValue value = null;
                        value = new AbstractDerivativeValue(as, initForm, null);
                        as.setQuantity(value);
                    }
                    catch (NullAbstractModelException 
                           | NullFormulaException 
                           | NullTargetException e1)
                    {
                        Log.Error(e1.getMessage());
                        Log.FatalError("Something went wrong when trying to compute the value "
                                       + "of the AbstractSpecies " + as.getId(), 1);
                    }
                    
                    return;
                }
            }
        }
    }
    
    /**
     * This method computes an <code>AbstractValue</code> that represents the value of the
     * given SBML <code>Compartment</code> in the SBML <code>Model</code> and associates that
     * <code>AbstractValue</code> with the given <code>AbstractCompartment</code>.
     * 
     * @param c A SBML <code>Compartment</code> in the SBML <code>Model</code>.
     * @param ac An <code>AbstractCompartment</code> in the <code>AbstractModel</code> that
     *           represents the given SBML <code>Compartment</code>.
     */
    private void computeCompartmentValue(Compartment c, AbstractCompartment ac)
    {
        // If the compartment is affected by an assignment rule, we are done
        AssignmentRule ar = _sbmlmodel.getAssignmentRuleByVariable(c.getId());
        if (ar != null)
        {
            // Compute the abstract assignment value and return
            try
            {
                AbstractFormula formula = null;
                formula = new AbstractFormula(_model, new ASTNode(ar.getMath()));
                AbstractAssignmentValue value = new AbstractAssignmentValue(ac, formula);
                ac.setSize(value);
            }
            catch (NullAbstractModelException | NullFormulaException | NullTargetException e)
            {
                Log.FatalError("Something went wrong when trying to compute the value of the "
                               + "AbstractCompartment " + ac.getId() + ".", 1);
            }
            
            return;
        }
        // Get an eventual initial condition
        ASTNode init = null;
        // Search for an initial assignment
        InitialAssignment ia = _sbmlmodel.getInitialAssignmentBySymbol(c.getId());
        if (ia != null)
            init = new ASTNode(ia.getMath());
        else
        {
            // If no InitialAssignment is found, then the size of the Compartment is defined through
            // an AlgebraicRule or not defined at all
            ac.setSize(null);
            return;
        }
        
        // If the compartment is constant, then we are done
        if (c.getConstant())
        {
            try
            {
                AbstractFormula formula = new AbstractFormula(_model, init);
                AbstractConstantValue value = new AbstractConstantValue(ac, formula);
                ac.setSize(value);
            }
            catch (NullAbstractModelException | NullFormulaException | NullTargetException e)
            {
                Log.FatalError("Something went wrong when trying to compute the value of the "
                               + "AbstractCompartment " + ac.getId() + ".", 1);
            }
            
            return;
        }
        
        // Otherwise, it is affected by a rate rule
        RateRule rr = _sbmlmodel.getRateRuleByVariable(c.getId());
        // If the rule exists, then the compartment has a well defined derivative
        if (rr != null)
        {
            try
            {
                ASTNode der = new ASTNode(rr.getMath());
                AbstractFormula initForm = new AbstractFormula(_model, init);
                AbstractFormula derForm = new AbstractFormula(_model, der);
                AbstractDerivativeValue value = new AbstractDerivativeValue(ac, initForm, derForm);
                ac.setSize(value);
            }
            catch (NullAbstractModelException | NullFormulaException | NullTargetException e)
            {
                Log.FatalError("Something went wrong when trying to compute the value of the "
                               + "AbstractCompartment " + ac.getId() + ".", 1);
            }
            
            return;
        }
    }

    /**
     * This method computes the <code>AbstractValue</code>s that represent the values of the
     * SBML <code>Compartment</code>s and <code>Species</code> in the SBML <code>Model</code>
     * and assign them to the <code>AbstractCompartment</code>s and <code>AbstractSpecies</code>
     * that represent them.
     */
    void computeCompartmentsAndSpeciesValues()
    {
        int clength = _sbmlmodel.getNumCompartments();
        for (int i = 0; i < clength; i++)
        {
            Compartment c = _sbmlmodel.getCompartment(i);
            AbstractCompartment ac = _model.getCompartmentById(c.getId());
            computeCompartmentValue(c, ac);
            
            int slength = _sbmlmodel.getNumSpecies();
            for (int j = 0; j < slength; j++)
            {
                Species s = _sbmlmodel.getSpecies(j);
                AbstractSpecies as = ac.getSpeciesById(s.getId());
                if (as != null)
                    computeSpeciesValue(s, as);
            }
        }
    }
}
