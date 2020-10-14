/**
 * CompartmentPreprocessingManager.java
 *
 * @author  Maggioli Filippo
 * @project SBML2Modelica
 */
package sbml2modelica.preprocessing;

import org.sbml.jsbml.ASTNode;
import org.sbml.jsbml.AlgebraicRule;
import org.sbml.jsbml.AssignmentRule;
import org.sbml.jsbml.Compartment;
import org.sbml.jsbml.Event;
import org.sbml.jsbml.InitialAssignment;
import org.sbml.jsbml.Model;
import org.sbml.jsbml.RateRule;
import org.sbml.jsbml.Rule;

import sbml2modelica.utils.Log;
import sbml2modelica.utils.exceptions.NullSBMLModelException;

/**
 * A {@link CompartmentPreprocessingManager} manipulates data in an SBML {@link Model}
 * in order to make it easier the conversion of SBML {@link Compartment}s into
 * {@link AbstractCompartment}s.
 * 
 * @author Maggioli Filippo
 */
public class CompartmentPreprocessingManager extends PreprocessingManager
{

    /**
     * Constructor initializes the {@link CompartmentPreprocessingManager} with the given
     * SBML {@link Model}.
     * 
     * @param model The SBML {@link Model} to pre-process.
     * @throws NullSBMLModelException When {@link model == null}.
     */
    public CompartmentPreprocessingManager(Model model) throws NullSBMLModelException
    {
        super(model);
    }
    
    /**
     * This method pre-process a SBML {@link Compartment} in order to setup its initial
     * conditions. <br>
     * If the {@link Compartment} is defined by an {@link AssignmentRule}, the method 
     * does nothing. <br>
     * If the {@link Compartment} is not affected by any {@link InitialAssignment}, 
     * but its field {@link size} is defined, an {@link InitialAssignment} with that
     * value is created in the model. <br>
     * If the {@link Compartment} does not appear in any {@link AlgebraicRule} and
     * nothing else defines its initial value, then it is assumed to be zero.
     * 
     * @param c The SBML {@link Compartment} to analyze.
     */
    public void preprocessInitialConditions(Compartment c)
    {
        if (c == null)
            return;
        
        String cid = c.getId();
        AssignmentRule ar = getModel().getAssignmentRuleByVariable(cid);
        if (ar != null)
        {
            return;
        }
        
        InitialAssignment init = getModel().getInitialAssignmentBySymbol(cid);
        if (init == null && (c.isSetSize() || c.getConstant()))
        {
            init = getModel().createInitialAssignment();
            init.setVariable(cid);
            ASTNode val = new ASTNode(ASTNode.Type.REAL);
            if (c.isSetSize())
                val.setValue(c.getSize());
            else
                val.setValue(1);
            init.setMath(new ASTNode(val));
            
            Log.Message("Created an InitialAssignment for Compartment " + cid + " with value "
                        + c.getSize() + ".");
            
            return;
        }
        
        int rlength = getModel().getNumRules();
        for (int i = 0; i < rlength; i++)
        {
            Rule r = getModel().getRule(i);
            if (! r.isAlgebraic())
                continue;
            AlgebraicRule algr = (AlgebraicRule) r;
            if (formulaContainsVariable(algr.getMath(), cid))
                return;
        }
        
        init = getModel().createInitialAssignment();
        init.setVariable(cid);
        ASTNode val = new ASTNode(ASTNode.Type.REAL);
        val.setValue(0);
        init.setMath(new ASTNode(val));
        
        Log.Message("Missing initial value for Parameter " + cid + ". Created an "
                    + "InitialAssignment with value 0.");
    }

    /**
     * This method pre-process a SBML {@link Compartment} in order to setup the missing
     * informations about its variability.<br>
     * If the {@link Compartment} is constant, then the method does nothing.<br>
     * If there exists an {@link AssignmentRule} that defines the {@link Compartment},
     * then the method does nothing.<br>
     * If there exists a {@link RateRule} that defines the {@link Compartment}, then 
     * the method does nothing.<br>
     * If the {@link Compartment} does not appears in any {@link AlgebraicRule}, then 
     * it is declared constant, if there is no {@link Event} that affect it, otherwise, a 
     * new {@link RateRule} with formula equals to zero is created to define the derivative
     * of the {@link Compartment}.
     * 
     * @param c The SBML {@link Compartment} to analyze.
     */
    public void preprocessDerivative(Compartment c)
    {
        if (c == null)
            return;
        
        if (c.getConstant())
            return;
        String pid = c.getId();
        AssignmentRule ar = getModel().getAssignmentRuleByVariable(pid);
        if (ar != null)
            return;
        RateRule rr = getModel().getRateRuleByVariable(pid);
        if (rr != null)
            return;
        
        int rlength = getModel().getNumRules();
        for (int i = 0; i < rlength; i++)
        {
            Rule r = getModel().getRule(i);
            if (! r.isAlgebraic())
                continue;
            AlgebraicRule algr = (AlgebraicRule) r;
            if (formulaContainsVariable(algr.getMath(), pid))
                return;
        }
        
        int elength = getModel().getNumEvents();
        for (int i = 0; i < elength; i++)
        {
            Event e = getModel().getEvent(i);
            int ealength = e.getNumEventAssignments();
            for (int j = 0; j < ealength; j++)
            {
                if (e.getEventAssignment(j).getVariable().equals(pid))
                {
                    rr = getModel().createRateRule();
                    rr.setVariable(pid);
                    ASTNode val = new ASTNode(ASTNode.Type.REAL);
                    val.setValue(0);
                    rr.setMath(new ASTNode(val));
                    
                    Log.Message("Missing derivative for Parameter " + pid + ". "
                                + "Created a RateRule with value 0.");
                    
                    return;
                }
            }
        }
        
        c.setConstant(true);
        
        Log.Message("There is nothing that defines the variability of Parameter " + pid
                    + ". It is declared constant.");
    }
    
    /**
     * This method applies the pre-proecssing procedures to every {@link Compartment}
     * in the {@link Model}.
     */
    public void preprocessCompartments()
    {
        int clength = getModel().getNumCompartments();
        for (int i = 0; i < clength; i++)
        {
            Compartment c = getModel().getCompartment(i);
            preprocessInitialConditions(c);
            preprocessDerivative(c);
        }
    }
}
