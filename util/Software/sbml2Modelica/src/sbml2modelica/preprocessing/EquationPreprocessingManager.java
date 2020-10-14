/**
 * EquationPreprocessingManager.java
 * 
 * @author  Maggioli Filippo
 * @project SBML2Modelica
 */

package sbml2modelica.preprocessing;

import org.sbml.jsbml.ASTNode;
import org.sbml.jsbml.AlgebraicRule;
import org.sbml.jsbml.AssignmentRule;
import org.sbml.jsbml.Compartment;
import org.sbml.jsbml.InitialAssignment;
import org.sbml.jsbml.JSBML;
import org.sbml.jsbml.Model;
import org.sbml.jsbml.Parameter;
import org.sbml.jsbml.RateRule;
import org.sbml.jsbml.Reaction;
import org.sbml.jsbml.Rule;
import org.sbml.jsbml.Species;
import org.sbml.jsbml.SpeciesReference;

import sbml2modelica.utils.Log;
import sbml2modelica.utils.exceptions.NullSBMLModelException;

public class EquationPreprocessingManager extends PreprocessingManager
{

    public EquationPreprocessingManager(Model model) throws NullSBMLModelException
    {
        super(model);
    }

    /**
     * This method pre-processes a SBML {@link InitialAssignment}
     * of the associated {@link Model}.<br>
     * The {@link InitialAssignment}'s pre-processing ensure that its
     * {@code math} attribute will be set.<br>
     * If the {@code math} attribute is set, the method does nothing. Otherwise, it acts
     * depending on the type of object referred by the {@link InitialAssignment}.
     * <br>
     * In case of {ļink org.sbml.jsbml.Parameter}s, {@link Compartment}s
     * and {@link SpeciesReference}s, the value is the one set by, respectively,
     * the attributes {@code value}, {@code size} and {@code stoichiometry}.<br>
     * In case of {@link Species}, the value depends on which attribute
     * between {@code initialAmount} and {@code initialConcentration} is set and on the value
     * of the attribute {@code hasOnlySubstanceUnits}. If the latter is set to {@code true} and
     * {@code initialAmount} is set, then {@code initialAmount} will be the {@code math}
     * attribute of the {@link InitialAssignment} object. If
     * {@code initialConcentration} is set, then the {@code math} attribute will be defined as
     * {@code initialConcentration * comp}, where {@code comp} is the
     * {@link Compartment} where the {@link Species} is
     * contained. A symmetric procedure is applied if {@code hasOnlySubstanceUnits} is set
     * to {@code false}.
     * 
     * @param ia    The {@link InitialAssignment} to pre-process.
     */
    public void preprocessInitialAssignment(InitialAssignment ia)
    {
        // If the assignment has a math element, we are done
        if (ia.isSetMath())
            return;
        // Otherwise, search for the initial value of its target and use that value
        String oid = ia.getVariable();
        double initialValue = 0;
        // Try all the cases
        // Parameter
        Parameter p = getModel().getParameter(oid);
        if (p != null)
        {
            Log.Warning("Parameter " + oid + " is referred by an InitialAssignment "
                    + "with an undefined math. Trying to determine the assignment's value.");
            if (p.isSetValue())
                initialValue = p.getValue();
            else
            {
                Log.Error("Parameter " + oid + " does not define any initial value. "
                          + "Assuming 0.");
                return;
            }
            ASTNode init = new ASTNode(ASTNode.Type.REAL);
            init.setValue(initialValue);
            ia.setMath(init);
            Log.Message("Successfully created an InitialAssignment for Parameter " + oid
                        + " with value " + JSBML.formulaToString(init));
            return;
        }
        // Compartment
        Compartment c = getModel().getCompartment(oid);
        if (c != null)
        {
            Log.Warning("Compartment " + oid + " is referred by an InitialAssignment "
                    + "with an undefined math. Trying to determine the assignment's value.");
            if (c.isSetSize())
                initialValue = c.getSize();
            else
            {
                initialValue = 1;
                Log.Error("Compartment " + oid + " does not define any initial value. "
                          + "Assuming 1.");
                return;
            }
            ASTNode init = new ASTNode(ASTNode.Type.REAL);
            init.setValue(initialValue);
            ia.setMath(init);
            Log.Message("Successfully created an InitialAssignment for Compartment " + oid
                        + " with value " + JSBML.formulaToString(init));
            return;
        }
        // Species
        Species s = getModel().getSpecies(oid);
        if (s != null)
        {
            Log.Warning("Species " + oid + " is referred by an InitialAssignment "
                    + "with an undefined math. Trying to determine the assignment's value.");
            ASTNode init = null;
            if (s.isSetInitialAmount())
            {
                if (s.getHasOnlySubstanceUnits())
                {
                    initialValue = s.getInitialAmount();
                    init = new ASTNode(ASTNode.Type.REAL);
                    init.setValue(initialValue);
                    ia.setMath(init);
                }
                else
                {
                    double amnt = s.getInitialAmount();
                    String comp = s.getCompartment();
                    init = new ASTNode(ASTNode.Type.TIMES);
                    init.addChild(new ASTNode(ASTNode.Type.REAL));
                    init.getChild(0).setValue(amnt);
                    init.addChild(new ASTNode(ASTNode.Type.NAME));
                    init.getChild(1).setName(comp);
                    ia.setMath(init);
                }
            }
            else if (s.isSetInitialConcentration())
            {
                if (! s.getHasOnlySubstanceUnits())
                {
                    initialValue = s.getInitialConcentration();
                    init = new ASTNode(ASTNode.Type.REAL);
                    init.setValue(initialValue);
                    ia.setMath(init);
                }
                else
                {
                    double conc = s.getInitialConcentration();
                    String comp = s.getCompartment();
                    init = new ASTNode(ASTNode.Type.DIVIDE);
                    init.addChild(new ASTNode(ASTNode.Type.REAL));
                    init.getChild(0).setValue(conc);
                    init.addChild(new ASTNode(ASTNode.Type.NAME));
                    init.getChild(1).setName(comp);
                    ia.setMath(init);
                }
            }
            else
            {
                Log.Error("Species " + oid + " does not define any initial value. "
                          + "Assuming 0.");
                init = new ASTNode(ASTNode.Type.REAL);
                init.setValue(initialValue);
                ia.setMath(init);
                return;
            }
            Log.Message("Successfully created an InitialAssignment for Species " + oid
                        + " with value " + JSBML.formulaToString(init));
            return;
        }
        // SpeciesReference
        SpeciesReference sr = null;
        final int rlength = getModel().getNumReactions();
        for (int i = 0; i < rlength; i++)
        {
            Reaction r = getModel().getReaction(i);
            final int reactants = r.getNumReactants();
            final int products = r.getNumProducts();
            for (int j = 0; j < reactants; j++)
            {
                sr = r.getReactant(j);
                if (! sr.getId().equals(oid))
                {
                    sr = null;
                    continue;
                }
                break;
            }
            if (sr == null)
            {
                for (int j = 0; j < products; j++)
                {
                    sr = r.getProduct(j);
                    if (! sr.getId().equals(oid))
                    {
                        sr = null;
                        continue;
                    }
                    break;
                }
            }
            if (sr != null)
            {
                Log.Warning("SpeciesReference " + oid + " is referred by an InitialAssignment "
                        + "with an undefined math. Trying to determine the assignment's value.");
                if (sr.isSetStoichiometry())
                    initialValue = sr.getStoichiometry();
                else
                {
                    Log.Error("SpeciesReference " + oid + " does not define any initial value. "
                              + "Assuming 0.");
                }
                ASTNode init = new ASTNode(ASTNode.Type.REAL);
                init.setValue(initialValue);
                ia.setMath(init);

                Log.Message("Successfully created an InitialAssignment for SpeciesReference "
                            + oid + " with value " + JSBML.formulaToString(init));
                return;
            }
        }
    }
    
    /**
     * This method pre-processes a SBML {@link AssignmentRule}
     * of the associated {@link Model}.<br>
     * The {@link AssignmentRule}'s pre-processing ensure that its
     * {@code math} attribute will be set.<br>
     * If the {@code math} attribute is set, the method does nothing. Otherwise, it acts
     * depending on the type of object referred by the {@link AssignmentRule}.
     * <br>
     * In case of {ļink org.sbml.jsbml.Parameter}s, {@link Compartment}s
     * and {@link SpeciesReference}s, the value is the one set by, respectively,
     * the attributes {@code value}, {@code size} and {@code stoichiometry}.<br>
     * In case of {@link Species}, the value depends on which attribute
     * between {@code initialAmount} and {@code initialConcentration} is set and on the value
     * of the attribute {@code hasOnlySubstanceUnits}. If the latter is set to {@code true} and
     * {@code initialAmount} is set, then {@code initialAmount} will be the {@code math}
     * attribute of the {@link AssignmentRule} object. If
     * {@code initialConcentration} is set, then the {@code math} attribute will be defined as
     * {@code initialConcentration * comp}, where {@code comp} is the
     * {@link Compartment} where the {@link Species} is
     * contained. A symmetric procedure is applied if {@code hasOnlySubstanceUnits} is set
     * to {@code false}.
     * 
     * @param ar    The {@link AssignmentRule} to pre-process.
     */
    public void preprocessAssignmentRule(AssignmentRule ar)
    {
        // If the assignment has a math element, we are done
        if (ar.isSetMath())
            return;
        // Otherwise, search for the initial value of its target and use that value
        String oid = ar.getVariable();
        double initialValue = 0;
        // Try all the cases
        // Parameter
        Parameter p = getModel().getParameter(oid);
        if (p != null)
        {
            Log.Warning("Parameter " + oid + " is referred by an AssignmentRule "
                    + "with an undefined math. Trying to determine the assignment's value.");
            if (p.isSetValue())
                initialValue = p.getValue();
            else
            {
                Log.Error("Parameter " + oid + " does not define any initial value. "
                          + "Assuming 0.");
                return;
            }
            ASTNode init = new ASTNode(ASTNode.Type.REAL);
            init.setValue(initialValue);
            ar.setMath(init);

            Log.Message("Successfully created an AssignmentRule for Parameter " + oid
                        + " with value " + JSBML.formulaToString(init));
            return;
        }
        // Compartment
        Compartment c = getModel().getCompartment(oid);
        if (c != null)
        {
            Log.Warning("Compartment " + oid + " is referred by an AssignmentRule "
                    + "with an undefined math. Trying to determine the assignment's value.");
            if (c.isSetSize())
                initialValue = c.getSize();
            else
            {
                initialValue = 1;
                Log.Error("Compartment " + oid + " does not define any initial value. "
                          + "Assuming 1.");
                return;
            }
            ASTNode init = new ASTNode(ASTNode.Type.REAL);
            init.setValue(initialValue);
            ar.setMath(init);

            Log.Message("Successfully created an AssignmentRule for Compartment " + oid
                        + " with value " + JSBML.formulaToString(init));
            return;
        }
        // Species
        Species s = getModel().getSpecies(oid);
        if (s != null)
        {
            Log.Warning("Species " + oid + " is referred by an AssignmentRule "
                    + "with an undefined math. Trying to determine the assignment's value.");
            ASTNode init = null;
            if (s.isSetInitialAmount())
            {
                if (s.getHasOnlySubstanceUnits())
                {
                    initialValue = s.getInitialAmount();
                    init = new ASTNode(ASTNode.Type.REAL);
                    init.setValue(initialValue);
                    ar.setMath(init);
                }
                else
                {
                    double amnt = s.getInitialAmount();
                    String comp = s.getCompartment();
                    init = new ASTNode(ASTNode.Type.TIMES);
                    init.addChild(new ASTNode(ASTNode.Type.REAL));
                    init.getChild(0).setValue(amnt);
                    init.addChild(new ASTNode(ASTNode.Type.NAME));
                    init.getChild(1).setName(comp);
                    ar.setMath(init);
                }
            }
            else if (s.isSetInitialConcentration())
            {
                if (! s.getHasOnlySubstanceUnits())
                {
                    initialValue = s.getInitialConcentration();
                    init = new ASTNode(ASTNode.Type.REAL);
                    init.setValue(initialValue);
                    ar.setMath(init);
                }
                else
                {
                    double conc = s.getInitialConcentration();
                    String comp = s.getCompartment();
                    init = new ASTNode(ASTNode.Type.DIVIDE);
                    init.addChild(new ASTNode(ASTNode.Type.REAL));
                    init.getChild(0).setValue(conc);
                    init.addChild(new ASTNode(ASTNode.Type.NAME));
                    init.getChild(1).setName(comp);
                    ar.setMath(init);
                }
            }
            else
            {
                Log.Error("Species " + oid + " does not define any initial value. "
                          + "Assuming 0.");
                init = new ASTNode(ASTNode.Type.REAL);
                init.setValue(initialValue);
                ar.setMath(init);
                return;
            }

            Log.Message("Successfully created an AssignmentRule for Species " + oid
                        + " with value " + JSBML.formulaToString(init));
            return;
        }
        // SpeciesReference
        SpeciesReference sr = null;
        final int rlength = getModel().getNumReactions();
        for (int i = 0; i < rlength; i++)
        {
            Reaction r = getModel().getReaction(i);
            final int reactants = r.getNumReactants();
            final int products = r.getNumProducts();
            for (int j = 0; j < reactants; j++)
            {
                sr = r.getReactant(j);
                if (! sr.getId().equals(oid))
                {
                    sr = null;
                    continue;
                }
                break;
            }
            if (sr == null)
            {
                for (int j = 0; j < products; j++)
                {
                    sr = r.getProduct(j);
                    if (! sr.getId().equals(oid))
                    {
                        sr = null;
                        continue;
                    }
                    break;
                }
            }
            if (sr != null)
            {
                Log.Warning("SpeciesReference " + oid + " is referred by an AssignmentRule "
                        + "with an undefined math. Trying to determine the assignment's value.");
                if (sr.isSetStoichiometry())
                    initialValue = sr.getStoichiometry();
                else
                {
                    Log.Error("SpeciesReference " + oid + " does not define any initial value. "
                              + "Assuming 0.");
                    return;
                }
                ASTNode init = new ASTNode(ASTNode.Type.REAL);
                init.setValue(initialValue);
                ar.setMath(init);

                Log.Message("Successfully created an AssignmentRule for SpeciesReference " + oid
                            + " with value " + JSBML.formulaToString(init));
                return;
            }
        }
    }
    
    /**
     * This method pre-process a {@link RateRule} object in the
     * {@link Model}.<br>
     * The {@link RateRule}'s pre-processing ensure that its {@code math}
     * attribute will be set.<br>
     * In case of missing {@code math}, the attribute is set to 0.
     * 
     * @param rr    The {@link RateRule} to pre-process.
     */
    public void preprocessRateRule(RateRule rr)
    {
        // If math is set, we are done
        if (rr.isSetMath())
            return;
        
        // Otherwise, derivative is zero
        rr.setMath(new ASTNode(ASTNode.Type.REAL));
        rr.getMath().setValue(0);
    }
    
    /**
     * This method pre-processes all the {@link Rule} objects in the
     * {@link Model}.<br>
     * Each {@link Rule} is pre-processed in a specific way and the
     * procedure ensures that, when it is terminated, all the {@link Rule}s
     * in the {@link Model} will have a set {@code math} attribute.<br>
     * In particular, the procedure tries to determine a value for each
     * {@link AssignmentRule} with a missing {@code math} attribute, it sets
     * to 0 the missing {@code math} attribute of the {@link RateRule}s, and
     * finally, it removes any {@link AlgebraicRule} with a missing
     * {@code math} attribute. 
     */
    public void preprocessRules()
    {
        int rlength = getModel().getNumRules();
        for (int i = 0; i < rlength; i++)
        {
            Rule r = getModel().getRule(i);
            if (r.isAssignment())
                preprocessAssignmentRule((AssignmentRule) r);
            else if (r.isRate())
                preprocessRateRule((RateRule)r);
            else
            {
                // Algebraic rules with math are ok
                if (r.isSetMath())
                    continue;
                // Others, must be eliminated
                // Remove the rule
                getModel().removeRule(i);
                // Decrease the index and update the number of rules
                i--;
                rlength = getModel().getNumRules();
            }
        }
    }
    
    /**
     * This method pre-processes the {@link Rule}s and the
     * {@link InitialAssignment}s in the {@link Model}.<br>
     * At the end of the procedure, all the remaining {@link Rule}s and the
     * {@link InitialAssignment}s will have the {@code math} attribute set.
     */
    public void preprocessEquations()
    {
        final int ialength = getModel().getNumInitialAssignments();
        for (int i = 0; i < ialength; i++)
        {
            preprocessInitialAssignment(getModel().getInitialAssignment(i));
        }
        preprocessRules();
    }
}
