/**
 * ReactionAbstractionManager.java
 *
 * TODO
 *
 * @author  filippo
 * @project SBML2Modelica
 */
package sbml2modelica.sbmlabstraction;

import javax.xml.stream.XMLStreamException;

import org.sbml.jsbml.ASTNode;
import org.sbml.jsbml.AssignmentRule;
import org.sbml.jsbml.InitialAssignment;
import org.sbml.jsbml.LocalParameter;
import org.sbml.jsbml.Model;
import org.sbml.jsbml.RateRule;
import org.sbml.jsbml.Reaction;
import org.sbml.jsbml.SpeciesReference;

import sbml2modelica.abstractmodel.AbstractLocalParameter;
import sbml2modelica.abstractmodel.AbstractModel;
import sbml2modelica.abstractmodel.AbstractReaction;
import sbml2modelica.abstractmodel.AbstractSpecies;
import sbml2modelica.abstractmodel.AbstractSpeciesReference;
import sbml2modelica.abstractmodel.values.AbstractAssignmentValue;
import sbml2modelica.abstractmodel.values.AbstractConstantValue;
import sbml2modelica.abstractmodel.values.AbstractDerivativeValue;
import sbml2modelica.abstractmodel.values.AbstractFormula;
import sbml2modelica.abstractmodel.values.AbstractKineticFormula;
import sbml2modelica.utils.Constants;
import sbml2modelica.utils.Log;
import sbml2modelica.utils.exceptions.NullAbstractModelException;
import sbml2modelica.utils.exceptions.NullFormulaException;
import sbml2modelica.utils.exceptions.NullReactionException;
import sbml2modelica.utils.exceptions.NullSBMLModelException;
import sbml2modelica.utils.exceptions.NullSpeciesException;
import sbml2modelica.utils.exceptions.NullTargetException;

/**
 * A <code>ReactionAbstractionManager</code> provides functionalities for generation of
 * <code>AbstractReaction</code>s, and their related <code>AbstractSpeciesReference</code>s, 
 * in an <code>AbstractModel</code> from the informations provided by a SBML <code>Model</code>.
 * <br>
 * The <code>ReactionAbstractionManager</code> works under the assumption that the SBML
 * <code>Model</code> has been pre-processed with a <code>ModelPreprocessingManager</code>.
 * 
 * @author Maggioli Filippo
 */
public class ReactionAbstractionManager
{
    /**
     * The <code>AbstractModel</code> where the generated <code>AbstractReaction</code>s
     * and their <code>AbstractSpeicesReference</code>s will be stored.
     */
    private AbstractModel   _model;
    
    /**
     * The SBML <code>Model</code> from which the informations are retrieved.
     */
    private Model           _sbmlmodel;
    
    /**
     * Constructor initializes the <code>ReactionAbstractionManager</code> with the given
     * <code>AbstractModel</code> and SBML <code>Model</code>.<br>
     * If one between the two inputs is <code>null</code>, then a proper exception is
     * thrown.
     * 
     * @param model The <code>AbstractModel</code> where the informations must be stored.
     * @param sbmlmodel The SBML <code>Model</code> from which the informations are retrieved.
     * @throws NullAbstractModelException When <code>model == null</code>.
     * @throws NullSBMLModelException When <code>sbmlmodel == null</code>.
     */
    ReactionAbstractionManager(final AbstractModel model, final Model sbmlmodel) 
            throws NullAbstractModelException, NullSBMLModelException
    {
        if (model == null)
        {
            throw new NullAbstractModelException("Trying to initialize a"
                                                 + " ReactionAbstractionManager with a NULL"
                                                 + " AbstractModel.");
        }
        if (sbmlmodel == null)
        {
            throw new NullSBMLModelException("Trying to initialize a ReactionAbstractionManager"
                                             + " with a NULL SBML model.");
        }
        
        _model = model;
        _sbmlmodel = sbmlmodel;
    }
    
    /**
     * This method generates the <code>AbstractSpeciesReference</code>, stoichiometry of a reactant 
     * in the <code>AbstractReaction</code>, that represents the given SBML
     * <code>SpeciesReference</code>.
     * <br>
     * After the call of this method, the generated <code>AbstractSpeciesReference</code> only
     * represents informations about the identifier, the name, the <code>AbstractReaction</code>
     * in which it is located and the <code>AbstractSpecies</code> that it refers.
     * <br>
     * Note that if there is no <code>AbstractSpecies</code> in the <code>AbstractModel</code>
     * that represents the SBML <code>Species</code> referred by the given SBML
     * <code>SpeciesReference</code>.
     * 
     * @param ar The <code>AbstractReaction</code> in which the <code>AbstractSpeciesReference</code>
     *           is defined.
     * @param sr The SBML <code>SpeciesReference</code> that contains the informations.
     * @return The <code>AbstractSpeciesReference</code> that represents the given SBML
     *         <code>SpeciesReference</code>.
     * @throws NullSpeciesException When there is no <code>AbstractSpecies</code> in the
     *                              <code>AbstractModel</code> with the same identifier as that of
     *                              the SBML <code>Species</code> referred by the given SBML
     *                              <code>SpeciesReference</code>.
     */
    private AbstractSpeciesReference generateReactant(AbstractReaction ar, SpeciesReference sr)
            throws NullSpeciesException
    {
        AbstractSpecies species = (AbstractSpecies) _model.getObjectById(sr.getSpecies());
        if (species == null)
        {
            throw new NullSpeciesException("Cannot find AbstractSpecies " + sr.getSpecies()
                                           + " in the AbstractModel " + _model.getId() + ".");
        }
        AbstractSpeciesReference asr = null;
        asr = ar.createReactant(sr.getId(), sr.getName(), species);
        asr.setNotes(sr.getAnnotation());
        try {
			asr.setInfo(sr.getNotesString());
		} catch (XMLStreamException e) {
			asr.setInfo(null);
		}
        
        return asr;
    }
    
    /**
     * This method generates the <code>AbstractSpeciesReference</code>, stoichiometry of a product 
     * in the <code>AbstractReaction</code>, that represents the given SBML
     * <code>SpeciesReference</code>.
     * <br>
     * After the call of this method, the generated <code>AbstractSpeciesReference</code> only
     * represents informations about the identifier, the name, the <code>AbstractReaction</code>
     * in which it is located and the <code>AbstractSpecies</code> that it refers.
     * <br>
     * Note that if there is no <code>AbstractSpecies</code> in the <code>AbstractModel</code>
     * that represents the SBML <code>Species</code> referred by the given SBML
     * <code>SpeciesReference</code>.
     * 
     * @param ar The <code>AbstractReaction</code> in which the <code>AbstractSpeciesReference</code>
     *           is defined.
     * @param sr The SBML <code>SpeciesReference</code> that contains the informations.
     * @return The <code>AbstractSpeciesReference</code> that represents the given SBML
     *         <code>SpeciesReference</code>.
     * @throws NullSpeciesException When there is no <code>AbstractSpecies</code> in the
     *                              <code>AbstractModel</code> with the same identifier as that of
     *                              the SBML <code>Species</code> referred by the given SBML
     *                              <code>SpeciesReference</code>.
     */
    private AbstractSpeciesReference generateProduct(AbstractReaction ar, SpeciesReference sr)
            throws NullSpeciesException
    {
        AbstractSpecies species = (AbstractSpecies) _model.getObjectById(sr.getSpecies());
        if (species == null)
        {
            throw new NullSpeciesException("Cannot find AbstractSpecies " + sr.getSpecies()
                                           + " in the AbstractModel " + _model.getId() + ".");
        }
        AbstractSpeciesReference asr = null;
        asr = ar.createProduct(sr.getId(), sr.getName(), species);
        asr.setNotes(sr.getAnnotation());
        try {
			asr.setInfo(sr.getNotesString());
		} catch (XMLStreamException e) {
			asr.setInfo(null);
		}
        
        return asr;
    }
    
    /**
     * This method generates an <code>AbstractLocalParameter</code>, in the given
     * <code>AbstractReaction</code>, that represents the given SBML <code>Parameter</code>.
     * <br>
     * Note that differently from the other generation methods in the
     * <code>AbstractionManager</code>s, this method generates an
     * <code>AbstractLocalParameter</code> that completely represents its SBML counterpart.
     * 
     * @param ar The <code>AbstractReaction</code> in which the <code>AbstractLocalParameter</code>
     *           must be generated.
     * @param p The SBML <code>Parameter</code> that contains the informations.
     * @return The <code>AbstractLocalParameter</code> that represents the given SBML
     *         <code>Parameter</code>. 
     */
    private AbstractLocalParameter generateLocalParameter(AbstractReaction ar, LocalParameter p)
    {
        AbstractLocalParameter lp = ar.createLocalParameter(p.getId());
        if (lp == null)
            return null;
        lp.setNotes(p.getAnnotation());
        try {
			lp.setInfo(p.getNotesString());
		} catch (XMLStreamException e) {
			lp.setInfo(null);
		}
        lp.setValue(p.getValue());
        lp.setUnit(_sbmlmodel.getUnitDefinition(p.getUnits()));
        
        return lp;
    }
    
    /**
     * This method generates the <code>AbstractReaction</code>, in the <code>AbstractModel</code>,
     * that represents the given SBML <code>Reaction</code>.
     * <br>
     * The method also generates all the <code>AbstractSpeciesReference</code>s and the
     * <code>AbstractLocalParameter</code>s associated with the <code>AbstractReaction</code>.
     * <br>
     * Note that after the call to this method the generated <code>AbstractReaction</code> and the
     * <code>AbstractSpeciesReference</code>s associated with it only represents generic
     * informations and nothing about values.
     * 
     * @param r The SBML <code>Reaction</code> that contains the informations.
     * @return The <code>AbstractReaction</code> that represents the SBML <code>Reaction</code>.
     */
    private AbstractReaction generateReaction(Reaction r)
    {
        AbstractReaction ar = _model.createReaction(r.getId(), r.getName());
        if (ar == null)
            return null;
        ar.setNotes(r.getAnnotation());
        try {
			ar.setInfo(r.getNotesString());
		} catch (XMLStreamException e) {
			ar.setInfo(null);
		}
        
        try
        {
            int length = r.getNumReactants();
            for (int i = 0; i < length; i++)
                generateReactant(ar, r.getReactant(i));
            length = r.getNumProducts();
            for (int i = 0; i < length; i++)
                generateProduct(ar, r.getProduct(i));
            length = r.getKineticLaw().getLocalParameterCount();
            for (int i = 0; i < length; i++)
                generateLocalParameter(ar, r.getKineticLaw().getLocalParameter(i));
        }
        catch (NullSpeciesException e)
        {
            Log.FatalError("Something went wrong in the generation of the AbstractReaction "
                           + r.getId(), 1);
        }

        return ar;
    }

    /**
     * This method generates all the <code>AbstractReaction</code>s in the <code>AbstractModel</code>
     * that represent the SBML <code>Reaction</code>s in the SBML <code>Model</code>.
     * <br>
     * After the call to this method, the <code>AbstractReaction</code>s and their associated
     * <code>AbstractSpeciesReference</code>s only contains informations not concerning values.
     * Differently, the <code>AbstractLocalParameter</code>s are completely defined. 
     */
    void generateReactions()
    {
        int rlength = _sbmlmodel.getNumReactions();
        for (int i = 0; i < rlength; i++)
        {
            generateReaction(_sbmlmodel.getReaction(i));
        }
    }
    
    /**
     * This method computes an <code>AbstractValue</code> that represents the value of the
     * given SBML <code>SpeciesReference</code> in the SBML <code>Model</code> and associates
     * that <code>AbstractValue</code> with the given <code>AbstractSpeciesReference</code>.
     * 
     * @param sr A SBML <code>SpeciesReference</code> in the SBML <code>Model</code>.
     * @param asr An <code>AbstractSpeciesReference</code> in the <code>AbstractModel</code> that
     *            represents the given SBML <code>SpeciesReference</code>.
     */
    private void computeSpeciesReferenceValue(AbstractSpeciesReference asr, SpeciesReference sr)
    {
        // If the species reference is affected by an assignment rule, we are done
        AssignmentRule ar = _sbmlmodel.getAssignmentRuleByVariable(sr.getId());
        if (ar != null)
        {
            // Compute the abstract assignment value and return
            try
            {
                AbstractFormula formula = null;
                formula = new AbstractFormula(_model, new ASTNode(ar.getMath()));
                AbstractAssignmentValue value = new AbstractAssignmentValue(asr, formula);
                asr.setValue(value);
            }
            catch (NullAbstractModelException | NullFormulaException | NullTargetException e)
            {
                Log.FatalError("Something went wrong when trying to compute the value of the "
                               + "AbstractSpeciesReference " + asr.getId() + ".", 1);
            }
            
            return;
        }
        // Get an eventual initial condition
        ASTNode init = null;
        // Search for an initial assignment
        InitialAssignment ia = this._sbmlmodel.getInitialAssignmentBySymbol(sr.getId());
        if (ia != null)
            init = new ASTNode(ia.getMath());
        else
        {
            // If no InitialAssignment is found, then the size of the SpeciesReference is defined
            // through an AlgebraicRule or not defined at all
            asr.setValue(null);
            return;
        }
        
        // If the species reference is constant, then we are done
        if (sr.getConstant())
        {
            try
            {
                AbstractFormula formula = new AbstractFormula(_model, init);
                AbstractConstantValue value = new AbstractConstantValue(asr, formula);
                asr.setValue(value);
            }
            catch (NullAbstractModelException | NullFormulaException | NullTargetException e)
            {
                Log.FatalError("Something went wrong when trying to compute the value of the "
                               + "AbstractSpeciesReference " + asr.getId() + ".", 1);
            }
            
            return;
        }
        
        // Otherwise, it is affected by a rate rule
        RateRule rr = _sbmlmodel.getRateRuleByVariable(sr.getId());
        // If the rule exists, then the species reference has a well defined derivative
        if (rr != null)
        {
            try
            {
                ASTNode der = new ASTNode(rr.getMath());
                AbstractFormula initForm = new AbstractFormula(_model, init);
                AbstractFormula derForm = new AbstractFormula(_model, der);
                AbstractDerivativeValue value = new AbstractDerivativeValue(asr, initForm, derForm);
                asr.setValue(value);
            }
            catch (NullAbstractModelException | NullFormulaException | NullTargetException e)
            {
                Log.FatalError("Something went wrong when trying to compute the value of the "
                               + "AbstractSpeciesReference " + asr.getId() + ".", 1);
            }
            
            return;
        }
    }

    /**
     * This method computes the <code>AbstractValue</code> that represents the kinetic law of
     * the given SBML <code>Reaction</code> and uses it as kinetic law for the given 
     * <code>AbstractReaction</code>.
     * 
     * @param ar The <code>AbstractReaction</code> whose the kinetic law has to be determined.
     * @param r The SBML <code>Reaction</code> that contains the informations.
     */
    private void computeReactionKineticLaw(AbstractReaction ar, Reaction r)
    {
        try
        {
            AbstractKineticFormula kf = new AbstractKineticFormula(ar, r.getKineticLaw().getMath());
            AbstractAssignmentValue kl = new AbstractAssignmentValue(ar, kf);
            ar.setKinetic(kl);
        }
        catch (NullAbstractModelException | NullFormulaException 
               | NullReactionException |NullTargetException e)
        {
            // Should not enter here
            Log.FatalError("Cannot create an AbstractModel in which an AbstractReaction "
                           + "has no kinetic law.", Constants.ERRCODE_NO_KINETIC_LAW_FOUND);
        }
    }
    
    /**
     * This method computes all the kinetic laws of the <code>AbstractReaction</code>s and the 
     * values of their <code>AbstractSpeciesReference</code>s in the <code>AbstractModel</code>.
     */
    void computeReactionsAndSpeciesReferencesValues()
    {
        int rlength = _sbmlmodel.getNumReactions();
        for (int i = 0; i < rlength; i++)
        {
            Reaction r = _sbmlmodel.getReaction(i);
            AbstractReaction ar = _model.getReactionById(r.getId());
            computeReactionKineticLaw(ar, r);
            
            int srlength = r.getNumReactants();
            for (int j = 0; j < srlength; j++)
            {
                SpeciesReference sr = r.getReactant(j);
                AbstractSpeciesReference asr = ar.getReactantById(sr.getId());
                computeSpeciesReferenceValue(asr, sr);
            }
            srlength = r.getNumProducts();
            for (int j = 0; j < srlength; j++)
            {
                SpeciesReference sr = r.getProduct(j);
                AbstractSpeciesReference asr = ar.getProductById(sr.getId());
                computeSpeciesReferenceValue(asr, sr);
            }
        }
    }
}
