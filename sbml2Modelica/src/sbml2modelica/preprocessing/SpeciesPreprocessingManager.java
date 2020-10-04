/**
 * SpeciesPreprocessingManager.java
 *
 * TODO
 *
 * @author  filippo
 * @project SBML2Modelica
 */
package sbml2modelica.preprocessing;

import org.sbml.jsbml.ASTNode;
import org.sbml.jsbml.AlgebraicRule;
import org.sbml.jsbml.AssignmentRule;
import org.sbml.jsbml.Event;
import org.sbml.jsbml.InitialAssignment;
import org.sbml.jsbml.JSBML;
import org.sbml.jsbml.Model;
import org.sbml.jsbml.RateRule;
import org.sbml.jsbml.Reaction;
import org.sbml.jsbml.Rule;
import org.sbml.jsbml.Species;

import sbml2modelica.utils.Log;
import sbml2modelica.utils.exceptions.NullSBMLModelException;

/**
 * A <code>SpeciesPreprocessingManager</code> manipulates data in an SBML <code>Model</code> in
 * order to make easier the conversion of SBML <code>Species</code>s into 
 * <code>AbstractSpecies</code>s.
 * 
 * @author Maggioli Filippo
 */
public class SpeciesPreprocessingManager extends PreprocessingManager
{
    /**
     * Constructor initializes the <code>SpeciesPreprocessingManager</code> with the given SBML
     * <code>Model</code>.
     * 
     * @param model The SBML <code>Model</code> to pre-process.
     * @throws NullSBMLModelException When <code>model == null</code>.
     */
    public SpeciesPreprocessingManager(Model model) throws NullSBMLModelException
    {
        super(model);
    }
    
    /**
     * This method pre-process a SBML <code>Species</code> in order to setup its initial
     * conditions.<br>
     * If the <code>Species</code> is defined by an <code>AssignmentRule</code>, then the method
     * does nothing.<br>
     * If the <code>Species</code> is not affected by an <code>InitialAssignment</code>, but it 
     * has one of the attributes <code>initialAmount</code> or <code>initialConcentration</code>
     * set, then an <code>InitialAssignment</code> for the <code>Species</code> is created
     * properly.<br>
     * If the <code>Species</code> does not appear in any <code>AlgebraicRule</code> and 
     * nothing else define its initial value, then it is assumed to be zero.
     * 
     * @param s The SBML <code>Species</code> to analyze. 
     */
    public void preprocessInitialConditions(Species s)
    {
        // Avoid null
        if (s == null)
            return;
        
        String sid = s.getId();
        // If the species has an assignment rule, then it don't have initial conditions 
        AssignmentRule ar = getModel().getAssignmentRuleByVariable(sid);
        if (ar != null)
            return;
        
        // If an initial assignment already exists for the species, then it does not
        // need one
        InitialAssignment init = getModel().getInitialAssignmentBySymbol(sid);
        if (init != null)
            return;
        
        // Create an initial assignment using the value set inside the species object
        if (s.isSetInitialAmount())
        {
            // If the set value is the amount...
            init = getModel().createInitialAssignment();
            init.setVariable(sid);
            ASTNode val = null;
            // If the species is defined by its amount, then use it as initial value
            if (s.getHasOnlySubstanceUnits())
            {
                val = new ASTNode(ASTNode.Type.REAL);
                val.setValue(s.getInitialAmount());
            }
            // Otherwise, create an initial assignment using that amount value divided
            // by the compartment's size
            else
            {
                val = new ASTNode(ASTNode.Type.DIVIDE);
                val.addChild(new ASTNode(ASTNode.Type.REAL));
                val.getChild(0).setValue(s.getInitialAmount());
                val.addChild(new ASTNode(ASTNode.Type.NAME));
                val.getChild(1).setName(s.getCompartment());
            }
            init.setMath(new ASTNode(val));
        }
        // Do the symmetric for the concentration
        else if (s.isSetInitialConcentration())
        {
            init = getModel().createInitialAssignment();
            init.setVariable(sid);
            ASTNode val = null;
            if (s.getHasOnlySubstanceUnits())
            {
                val = new ASTNode(ASTNode.Type.TIMES);
                val.addChild(new ASTNode(ASTNode.Type.REAL));
                val.getChild(0).setValue(s.getInitialConcentration());
                val.addChild(new ASTNode(ASTNode.Type.NAME));
                val.getChild(1).setName(s.getCompartment());
            }
            else
            {
                val = new ASTNode(ASTNode.Type.REAL);
                val.setValue(s.getInitialConcentration());
            }
            init.setMath(new ASTNode(val));
        }
        // If an initial assignment has been successfully created, then we are done
        if (init != null)
        {
            Log.Message("Created an InitialAssignment for the Species " + sid + " with value "
                        + JSBML.formulaToString(init.getMath()));
            return;
        }
        
        // Otherwise, check if the species could be defined by some algebraic rule.
        // In this case, the rule will define its initial value, so it is not safe to
        // create another one for the species.
        int rlength = getModel().getNumRules();
        for (int i = 0; i < rlength; i++)
        {
            Rule r = getModel().getRule(i);
            if (! r.isAlgebraic())
                continue;
            
            AlgebraicRule algr = (AlgebraicRule) r;
            if (formulaContainsVariable(algr.getMath(), sid))
                return;
        }
        
        // If all the previous failed, assume the species has initial value equals to 0
        // and create an initial assignment for value.
        init = getModel().createInitialAssignment();
        init.setVariable(sid);
        ASTNode val = new ASTNode(ASTNode.Type.REAL);
        val.setValue(0);
        init.setMath(new ASTNode(val));
        
        Log.Message("Missing initial value for Species " + sid + ". Created an "
                    + "InitialAssignment with value 0.");
    }
    
    /**
     * This method pre-process a SBML <code>Species</code> in order to setup the missing
     * informations.<br>
     * If the <code>Species</code> is constant, then the method does nothing.<br>
     * If the <code>Species</code> is defined by an <code>AssignmentRule</code>, then the 
     * method does nothing.<br>
     * If the <code>Species</code> is defined by a <code>RateRule</code>, then the method
     * does nothing.<br>
     * If the <code>Species</code> has not a boundary condition and it appears in some
     * <code>Reaction</code>, then the method does nothing.<br>
     * If the <code>Species</code> does not appear in any <code>AlgebraicRule</code>, then
     * it is declared constant, if no <code>Event</code> affect it, otherwise a new 
     * <code>RateRule</code> with formula zero is created to define the derivative of the
     * <code>Species</code>.
     * 
     * @param s The SBML <code>Species</code> to analyze.
     */
    public void preprocessDerivative(Species s)
    {
        // Avoid null
        if (s == null)
            return;
        
        // If species is constant, it has no derivative
        if (s.getConstant())
            return;
        
        String sid = s.getId();
        // Search for an assignment rule. If the species has one of it, it has no derivative
        AssignmentRule ar = getModel().getAssignmentRuleByVariable(sid);
        if (ar != null)
            return;
        // If the species is defined by a rate rule, it don't need another one
        RateRule rr = getModel().getRateRuleByVariable(sid);
        if (rr != null)
            return;
        // If species has a boundary condition, it cannot be affected by reactions
        if (! s.getBoundaryCondition())
        {
            // Search if the species appears in some reactions
            int reaclength = getModel().getNumReactions();
            for (int i = 0; i < reaclength; i++)
            {
                // If it appears in some reactions, its derivative will be defined by
                //that reaction
                Reaction r = getModel().getReaction(i);
                int srlength = r.getNumReactants();
                for (int j = 0; j < srlength; j++)
                {
                    if (r.getReactant(j).getSpecies().equals(sid))
                        return;
                }
                srlength = r.getNumProducts();
                for (int j = 0; j < srlength; j++)
                {
                    if (r.getProduct(j).getSpecies().equals(sid))
                        return;
                }
            }
        }
        
        int rlength = getModel().getNumRules();
        for (int i = 0; i < rlength; i++)
        {
            Rule r = getModel().getRule(i);
            if (! r.isAlgebraic())
                continue;
            
            // If a species appears in some algebraic rule, then it could be possible that
            // that algebraic rules defines the species. It is not possible to add safely
            // a derivative for the species
            AlgebraicRule algr = (AlgebraicRule) r;
            if (formulaContainsVariable(algr.getMath(), sid))
                return;
        }
        
        // If the species does not appear in any algebraic rule, but it still appears
        // in some event assignment, then it is safe to assume that its derivative is 0
        int elength = getModel().getNumEvents();
        for (int i = 0; i < elength; i++)
        {
            Event e = getModel().getEvent(i);
            int ealength = e.getNumEventAssignments();
            for (int j = 0; j < ealength; j++)
            {
                if (e.getEventAssignment(j).getVariable().equals(sid))
                {
                    rr = getModel().createRateRule();
                    rr.setVariable(sid);
                    ASTNode val = new ASTNode(ASTNode.Type.REAL);
                    val.setValue(0);
                    rr.setMath(new ASTNode(val));
                    
                    Log.Message("Missing derivative for Species " + sid + ". Created RateRule with"
                                + " formula 0.");
                    
                    return;
                }
            }
        }
        
        // If nothing defines how a species can vary, then it should be declared constant
        s.setConstant(true);
        
        Log.Message("There is nothing that defines the variability of Species " + sid
                    + ". It is declared constant.");
    }
    
    /**
     * This method applies the pre-processing procedures to every SBML <code>Species</code> in
     * the SBML <code>Model</code>.
     */
    public void preprocessSpecies()
    {
        int slength = getModel().getNumSpecies();
        for (int i = 0; i < slength; i++)
        {
            Species s = getModel().getSpecies(i);
            preprocessInitialConditions(s);
            preprocessDerivative(s);
        }
    }
}
