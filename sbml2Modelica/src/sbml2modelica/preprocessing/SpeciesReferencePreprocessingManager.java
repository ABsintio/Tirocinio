/**
 * SpeciesReferencePreprocessingManager.java
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
import org.sbml.jsbml.SpeciesReference;

import sbml2modelica.utils.Log;
import sbml2modelica.utils.exceptions.NullSBMLModelException;

/**
 * A <code>SpeciesReferencePreprocessingManager</code> manipulates data in an SBML 
 * <code>Model</code> in order to make it easier the conversion of SBML 
 * <code>SpeciesReference</code>s into <code>AbstractSpeciesReference</code>s.
 * 
 * @author Maggioli Filippo
 */
public class SpeciesReferencePreprocessingManager extends PreprocessingManager
{
    /**
     * The serial integer that is used to generate the identifiers of the SBML
     * <code>SpeciesReference</code>s wgose the identifier has not been specified by the SBML
     * <code>Model</code> itself.
     */
    private int _serial = 0;
    
    /**
     * The default identifier of a SBML <code>SpeciesReference</code>. It is combined with the
     * serial to obtain a unique identifier for reactants.
     */
    private static final String SPECIES_REFERENCE_DEFAULT_REACTANT_ID = "reactant";
    
    /**
     * The default identifier of a SBML <code>SpeciesReference</code>. It is combined with the
     * serial to obtain a unique identifier for products.
     */
    private static final String SPECIES_REFERENCE_DEFAULT_PRODUCT_ID = "product";
    
    /**
     * This method returns the next serial default identifier for a SBML 
     * <code>SpeciesReference</code>. It continues to produce identifiers until it produces one 
     * that is not contained into the SBML <code>Model</code>.<br>
     * The method produces different identifiers for reactants and products.
     * 
     * @param isReactant A boolean value that allows distinction between reactants and products
     *                   when the identifier is generated.
     * @return The next serial default identifier for a SBML <code>SpeciesReference</code>.
     */
    private String getNextDefaultId(boolean isReactant)
    {
        String next = "";
        do
        {
            if (isReactant)
                next = SPECIES_REFERENCE_DEFAULT_REACTANT_ID + (_serial++);
            else
                next = SPECIES_REFERENCE_DEFAULT_PRODUCT_ID + (_serial++);
        } while (getModel().getElementBySId(next) != null);
        
        return next;
    }
    
    /**
     * Constructor initializes the <code>SpeciesReferencePreprocessingManager</code> with the 
     * given SBML <code>Model</code>.
     * 
     * @param model The SBML <code>Model</code> to pre-process.
     * @throws NullSBMLModelException When <code>model == null</code>
     */
    public SpeciesReferencePreprocessingManager(Model model) throws NullSBMLModelException
    {
        super(model);
    }
    
    /**
     * This method sets the identifiers of all those <code>SpeciesReference</code>s with an
     * undefined one to the serial default identifier.
     */
    public void preprocessIdentifiers()
    {
        int reaclength = getModel().getNumReactions();
        for (int i = 0; i < reaclength; i++)
        {
            Reaction r = getModel().getReaction(i);
            int srlength = r.getNumReactants();
            for (int j = 0; j < srlength; j++)
            {
                SpeciesReference sr = r.getReactant(j);
                if (! sr.isSetId())
                    sr.setId(getNextDefaultId(true));
            }
            srlength = r.getNumProducts();
            for (int j = 0; j < srlength; j++)
            {
                SpeciesReference sr = r.getProduct(j);
                if (! sr.isSetId())
                    sr.setId(getNextDefaultId(false));
            }
        }
    }
    
    /**
     * This method pre-process a SBML <code>SpeciesReference</code> in order to setup its initial
     * conditions. <br>
     * If the <code>SpeciesReference</code> is defined by an <code>AssignmentRule</code>, the method 
     * does nothing. <br>
     * If the <code>SpeciesReference</code> is not affected by any <code>InitialAssignment</code>,
     * but its field <code>stoichiometry</code> is defined, an <code>InitialAssignment</code> with
     * that value is created in the model.<br>
     * If the <code>SpeciesReference</code> does not appear in any <code>AlgebraicRule</code> and
     * nothing else defines its initial value, then it is assumed to be zero.
     * 
     * @param sr The SBML <code>SpeciesReference</code> to analyze.
     */
    @SuppressWarnings("deprecation")
    public void preprocessInitialConditions(SpeciesReference sr)
    {
        if (sr == null)
            return;
        
        String pid = sr.getId();
        AssignmentRule ar = getModel().getAssignmentRuleByVariable(pid);
        if (ar != null)
        {
            return;
        }
        
        InitialAssignment init = getModel().getInitialAssignmentBySymbol(pid);
        if (init != null)
            return;
        if (sr.isSetStoichiometryMath())
        {
            String errmsg = "Species Reference " +pid + " uses \'stoichiometryMath\' attribute. "
                            + "This is no more supported since SBML L3V1.";
            Log.Warning(errmsg);
            if (sr.getStoichiometryMath().isSetMath())
            {
                ASTNode formula = new ASTNode(sr.getStoichiometryMath().getMath());
                if (formulaIsNumeric(formula))
                {
                    init = getModel().createInitialAssignment();
                    init.setVariable(pid);
                    init.setMath(formula);
                }
                else
                {
                    ar = getModel().createAssignmentRule();
                    ar.setVariable(pid);
                    ar.setMath(formula);
                }
                return;
            }
            
            init = getModel().createInitialAssignment();
            init.setMath(new ASTNode(ASTNode.Type.REAL));
            init.getMath().setValue(0.0);
            
            Log.Message("Created an InitialAssignment for SpeciesReference " + pid + " with value "
                        + JSBML.formulaToString(init.getMath()) + ".");
            
            return;
        }
        else if (sr.isSetStoichiometry())
        {
            if (sr.getId().contains("generatedId"))
                System.out.print("Generation of an IA");
            init = getModel().createInitialAssignment();
            init.setVariable(pid);
            ASTNode val = new ASTNode(ASTNode.Type.REAL);
            val.setValue(sr.getStoichiometry());
            init.setMath(new ASTNode(val));
            
            Log.Message("Created an InitialAssignment for SpeciesReference " + pid + " with value "
                        + sr.getStoichiometry() + ".");
            
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
        
        init = getModel().createInitialAssignment();
        init.setVariable(pid);
        ASTNode val = new ASTNode(ASTNode.Type.REAL);
        val.setValue(1);
        init.setMath(new ASTNode(val));
        
        Log.Message("Missing initial value for SpeciesReference " + pid + ". Created an "
                    + "InitialAssignment with value 1.");
    }
    
    /**
     * This method pre-process a SBML <code>SpeciesReference</code> in order to setup the missing
     * informations about its variability.<br>
     * If the <code>SpeciesReference</code> is constant, then the method does nothing.<br>
     * If there exists an <code>AssignmentRule</code> that defines the <code>SpeciesReference</code>,
     * then the method does nothing.<br>
     * If there exists a <code>RateRule</code> that defines the <code>SpeciesReference</code>, then
     * the method does nothing.<br>
     * If the <code>SpeciesReference</code> does not appears in any <code>AlgebraicRule</code>, then
     * it is declared constant, if there is no <code>Event</code> that affect it, otherwise, a new
     * <code>RateRule</code> with formula equals to zero is created to define the derivative of
     * the <code>SpeciesReference</code>.
     * 
     * @param sr The SBML <code>SpeciesReference</code> to analyze.
     */
    public void preprocessDerivative(SpeciesReference sr)
    {
        if (sr == null)
            return;
        
        if (sr.getConstant())
            return;
        String pid = sr.getId();
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
                    
                    Log.Message("Missing derivative for SpeciesReference " + pid + ". "
                                + "Created a RateRule with value 0.");
                    
                    return;
                }
            }
        }
        
        sr.setConstant(true);
        
        Log.Message("There is nothing that defines the variability of SpeciesReference " + pid
                    + ". It is declared constant.");
    }
    
    /**
     * This method applies the pre-proecssing procedures to every <code>SpeciesReference</code>
     * in the <code>Model</code>.
     */
    public void preprocessSpeciesReferences()
    {
        preprocessIdentifiers();
        int reaclength = getModel().getNumReactions();
        for (int i = 0; i < reaclength; i++)
        {
            Reaction r = getModel().getReaction(i);
            int rlength = r.getNumReactants();
            for (int j = 0; j < rlength; j++)
            {
                SpeciesReference sr = r.getReactant(j);
                preprocessInitialConditions(sr);
                preprocessDerivative(sr);
            }
            int plength = r.getNumProducts();
            for (int j = 0; j < plength; j++)
            {
                SpeciesReference sr = r.getProduct(j);
                preprocessInitialConditions(sr);
                preprocessDerivative(sr);
            }
        }
    }
}
