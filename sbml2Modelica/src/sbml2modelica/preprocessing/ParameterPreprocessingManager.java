/**
 * ParameterPreprocessing.java
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
import org.sbml.jsbml.Model;
import org.sbml.jsbml.Parameter;
import org.sbml.jsbml.RateRule;
import org.sbml.jsbml.Rule;

import sbml2modelica.utils.Log;
import sbml2modelica.utils.exceptions.NullSBMLModelException;

/**
 * A <code>ParameterPreprocessingManager</code> manipulates data in an SBML <code>Model</code> in
 * order to make it easier the conversion of SBML <code>Parameter</code>s into
 * <code>AbstractParameter</code>s.
 * 
 * @author Maggioli Filippo
 */
public class ParameterPreprocessingManager extends PreprocessingManager
{
    
    /**
     * Constructor initializes the <code>ParameterPreprocessingManager</code> with the given SBML
     * <code>Model</code>.
     * 
     * @param model The SBML <code>Model</code> to pre-process.
     * @throws NullSBMLModelException When <code>model == null</code>.
     */
    public ParameterPreprocessingManager(Model model) throws NullSBMLModelException
    {
        super(model);
    }
    
    /**
     * This method pre-process a SBML <code>Parameter</code> in order to setup its initial
     * conditions. <br>
     * If the <code>Parameter</code> is defined by an <code>AssignmentRule</code>, the method 
     * does nothing. <br>
     * If the <code>Parameter</code> is not affected by any <code>InitialAssignment</code>, but
     * its field <code>value</code> is defined, an <code>InitialAssignment</code> with that
     * value is created in the model. <br>
     * If the <code>Parameter</code> does not appear in any <code>AlgebraicRule</code> and
     * nothing else defines its initial value, then it is assumed to be zero.
     * 
     * @param p The SBML <code>Parameter</code> to analyze.
     */
    public void preprocessInitialConditions(Parameter p)
    {
        if (p == null)
            return;
        
        String pid = p.getId();
        //boolean assignmentNoMath = false;
        AssignmentRule ar = getModel().getAssignmentRuleByVariable(pid);
        if (ar != null)
        {
//            if (ar.isSetMath())
//                return;
//            assignmentNoMath = true;
            return;
        }
        
        InitialAssignment init = getModel().getInitialAssignmentBySymbol(pid);
        if (init == null && p.isSetValue())
        {
            ASTNode val = new ASTNode(ASTNode.Type.REAL);
            val.setValue(p.getValue());
            init = getModel().createInitialAssignment();
            init.setVariable(pid);
            init.setMath(new ASTNode(val));
        }
//        if ((init == null || ! init.isSetMath()) && p.isSetValue())
//        {
//            ASTNode val = new ASTNode(ASTNode.Type.REAL);
//            val.setValue(p.getValue());
//            
//            if (! assignmentNoMath)
//            {
//                if (init == null)
//                    init = getModel().createInitialAssignment();
//                init.setSymbol(pid);
//                init.setMath(new ASTNode(val));
//                
//                Log.Message("Created an InitialAssignment for Parameter " + pid + " with value "
//                            + p.getValue() + ".");
//            }
//            else
//            {
//                ar.setMath(new ASTNode(val));
//                
//                Log.Message("AssignmentRule's math for Parameter " + pid + " set to "
//                            + "the value given by the Parameter itself.");
//            }
//            
//            return;
//        }
        
        if (init != null)
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
        
        init = getModel().createInitialAssignment();
        init.setVariable(pid);
        ASTNode val = new ASTNode(ASTNode.Type.REAL);
        val.setValue(0);
        init.setMath(new ASTNode(val));
        
        Log.Message("Missing initial value for Parameter " + pid + ". Created an "
                    + "InitialAssignment with value 0.");
    }
    
    /**
     * This method pre-process a SBML <code>Parameter</code> in order to setup the missing
     * informations about its variability.<br>
     * If the <code>Parameter</code> is constant, then the method does nothing.<br>
     * If there exists an <code>AssignmentRule</code> that defines the <code>Parameter</code>,
     * then the method does nothing.<br>
     * If there exists a <code>RateRule</code> that defines the <code>Parameter</code>, then the
     * method does nothing.<br>
     * If the <code>Parameter</code> does not appears in any <code>AlgebraicRule</code>, then it
     * is declared constant, if there is no <code>Event</code> that affect it, otherwise, a new
     * <code>RateRule</code> with formula equals to zero is created to define the derivative of
     * the <code>Parameter</code>.
     * 
     * @param p The SBML <code>Parameter</code> to analyze.
     */
    public void preprocessDerivative(Parameter p)
    {
        if (p == null)
            return;
        
        if (p.getConstant())
            return;
        String pid = p.getId();
        AssignmentRule ar = getModel().getAssignmentRuleByVariable(pid);
        if (ar != null)
            return;
        RateRule rr = getModel().getRateRuleByVariable(pid);
        if (rr != null)
        {
//            if (! rr.isSetMath())
//            {
//                ASTNode rate = new ASTNode(ASTNode.Type.REAL);
//                rate.setValue(0);
//                rr.setMath(rate);
//            }
            return;
        }
        
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
        
        p.setConstant(true);
        
        Log.Message("There is nothing that defines the variability of Parameter " + pid
                    + ". It is declared constant.");
    }
    
    /**
     * This method applies the pre-proecssing procedures to every <code>Parameter</code>
     * in the <code>Model</code>.
     */
    public void preprocessParameters()
    {
        int plength = getModel().getNumParameters();
        for (int i = 0; i < plength; i++)
        {
            Parameter p = getModel().getParameter(i);
            preprocessInitialConditions(p);
            preprocessDerivative(p);
        }
    }
}
