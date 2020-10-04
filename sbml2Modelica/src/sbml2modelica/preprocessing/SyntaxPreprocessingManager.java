/**
 * SyntaxPreprocessingManager.java
 *
 * TODO
 *
 * @author  filippo
 * @project SBML2Modelica
 */
package sbml2modelica.preprocessing;

import org.sbml.jsbml.ASTNode;
import org.sbml.jsbml.AssignmentRule;
import org.sbml.jsbml.Compartment;
import org.sbml.jsbml.Delay;
import org.sbml.jsbml.Event;
import org.sbml.jsbml.EventAssignment;
import org.sbml.jsbml.FunctionDefinition;
import org.sbml.jsbml.InitialAssignment;
import org.sbml.jsbml.KineticLaw;
import org.sbml.jsbml.LocalParameter;
import org.sbml.jsbml.Model;
import org.sbml.jsbml.Parameter;
import org.sbml.jsbml.Priority;
import org.sbml.jsbml.RateRule;
import org.sbml.jsbml.Reaction;
import org.sbml.jsbml.Rule;
import org.sbml.jsbml.Species;
import org.sbml.jsbml.SpeciesReference;
import org.sbml.jsbml.Trigger;

import sbml2modelica.utils.exceptions.NullSBMLModelException;

/**
 * A <code>SyntaxPreprocessingManager</code> pre-processes a SBML <code>Model</code> in order to
 * handle those identifiers that could conflict with some Modelica keyword.<br>
 * It recomputes all the identifiers of the elements of a SBML <code>Model</code> adding them a
 * prefix. The same operation, with a different prefix, is applied to the arguments of the
 * functions.<br>
 * Note that a <code>SyntaxPreprocessingManager</code> also adds the prefixes to the variables 
 * in every formula appearing in the SBML <code>Model</code>.
 * 
 * @author Maggioli Filippo
 */
public class SyntaxPreprocessingManager extends PreprocessingManager
{
    /**
     * The default prefix that will be added to every element of the SBML {@link Model}.
     */
    public static final String  ELEMENT_ID_PREFIX_DEFAULT = "elmt_";
    
    /**
     * The prefix that will be added to every element of the SBML <code>Model</code>.
     */
    private static String       ELEMENT_ID_PREFIX = ELEMENT_ID_PREFIX_DEFAULT;
    
    /**
     * The prefix that will be added to every argument of a SBML <code>FunctionDefinition</code>
     * of a SBML <code>Model</code>.
     */
    public static final String  ARGUMENT_ID_PREFIX = "arg_";
    
    /**
     * Constructor initializes the <code>SyntaxPreprocessingManager</code> with the given SBML
     * <code>Model</code>.
     * 
     * @param model The SBML <code>Model</code> to pre-process. 
     * @throws NullSBMLModelException When <code>model == null</code>.
     */
    public SyntaxPreprocessingManager(Model model) throws NullSBMLModelException
    {
        this(model, ELEMENT_ID_PREFIX_DEFAULT);
    }
    
    /**
     * Constructor initializes the <code>SyntaxPreprocessingManager</code> with the given SBML
     * <code>Model</code>.
     * 
     * @param model The SBML <code>Model</code> to pre-process. 
     * @throws NullSBMLModelException When <code>model == null</code>.
     */
    public SyntaxPreprocessingManager(Model model, String elementPrefix) 
            throws NullSBMLModelException
    {
        super(model);
        ELEMENT_ID_PREFIX = elementPrefix;
    }
    
    /**
     * This method add the given prefix to every variable in the given <code>ASTNode</code>, 
     * that is to every node with type <code>AST_NAME</code>.<br>
     * Further, it adds the prefix <code>ELEMENT_ID_PREFIX</code> to every user defined function,
     * that is to any node with type <code>AST_FUNCTION</code>.
     * 
     * @param formula The <code>ASTNode</code> whose the prefixes must be added.
     * @param prefix The prefix to add to the variables.
     * @return The given <code>ASTNode</code>, with the prefixes. 
     */
    private static ASTNode addPrefixes(ASTNode formula, String prefix)
    {
        ASTNode result = new ASTNode(formula.getType());
        if (formula.isNumber())
            result.setValue(formula.getReal());
        if (formula.getType() == ASTNode.Type.NAME)
            result.setName(prefix + formula.getName());
        else if (formula.getType() == ASTNode.Type.FUNCTION)
            result.setName(ELEMENT_ID_PREFIX + formula.getName());
        
        for (int i = 0; i < formula.getNumChildren(); i++)
            result.addChild(addPrefixes(formula.getChild(i), prefix));
        
        return result;
    }

    /**
     * This method adds the proper prefixes to every element of the SBML <code>Model</code>.
     */
    public void preprocessIdentifiersPrefixes()
    {
        // Add the prefixes to the parameters
        for (int i = 0; i < getModel().getNumParameters(); i++)
        {
            Parameter p = getModel().getParameter(i);
            p.setId(ELEMENT_ID_PREFIX + p.getId());
        }
        // Add the prefixes to the compartments
        for (int i = 0; i < getModel().getNumCompartments(); i++)
        {
            Compartment c = getModel().getCompartment(i);
            c.setId(ELEMENT_ID_PREFIX + c.getId());
        }
        // Add the prefixes to the species and to their conversion factors, if any
        for (int i = 0; i < getModel().getNumSpecies(); i++)
        {
            Species s = getModel().getSpecies(i);
            s.setId(ELEMENT_ID_PREFIX + s.getId());
            s.setCompartment(ELEMENT_ID_PREFIX + s.getCompartment());
            if (s.isSetConversionFactor())
            {
                String cfactid = s.getConversionFactor();
                s.setConversionFactor(ELEMENT_ID_PREFIX + cfactid);
            }
        }
        // Add the prefixes to the reactions and its reactants, products and
        // local parameters
        for (int i = 0; i < getModel().getNumReactions(); i++)
        {
            Reaction r = getModel().getReaction(i);
            r.setId(ELEMENT_ID_PREFIX + r.getId());
            for (int j = 0; j < r.getNumReactants(); j++)
            {
                SpeciesReference sr = r.getReactant(j);
                sr.setId(ELEMENT_ID_PREFIX + sr.getId());
                sr.setSpecies(ELEMENT_ID_PREFIX + sr.getSpecies());
            }
            for (int j = 0; j < r.getNumProducts(); j++)
            {
                SpeciesReference sr = r.getProduct(j);
                sr.setId(ELEMENT_ID_PREFIX + sr.getId());
                sr.setSpecies(ELEMENT_ID_PREFIX + sr.getSpecies());
            }
            for (int j = 0; j < r.getKineticLaw().getLocalParameterCount(); j++)
            {
                LocalParameter p = r.getKineticLaw().getLocalParameter(j);
                p.setId(ELEMENT_ID_PREFIX + p.getId());
            }
        }
        // Add the prefixes to the events
        int unnamedEvents = 0;
        for (int i = 0; i < getModel().getNumEvents(); i++)
        {
            Event e = getModel().getEvent(i);
            if (! e.isSetId())
                e.setId("event" + unnamedEvents++);
            e.setId(ELEMENT_ID_PREFIX + e.getId());
            for (int j = 0; j < e.getNumEventAssignments(); j++)
            {
                EventAssignment ea = e.getEventAssignment(j);
                ea.setVariable(ELEMENT_ID_PREFIX + ea.getVariable());
            }
        }
        // Add the prefixes to the function definitions
        for (int i = 0; i < getModel().getNumFunctionDefinitions(); i++)
        {
            FunctionDefinition fd = getModel().getFunctionDefinition(i);
            fd.setId(ELEMENT_ID_PREFIX + fd.getId());
            for (int j = 0; j < fd.getNumArguments(); j++)
            {
                fd.getArgument(j).setName(ARGUMENT_ID_PREFIX + fd.getArgument(j).getName());
            }
        }
        // Add the prefix to the conversion factor
        if (getModel().isSetConversionFactor())
        {
            String cfactid = getModel().getConversionFactor();
            getModel().setConversionFactor(ELEMENT_ID_PREFIX + cfactid);
        }
    }
    
    /**
     * This method adds the proper prefixes to every formula in the SBML <code>Model</code>.
     */
    public void preprocessFormulaPrefixes()
    {
        for (int i = 0; i < getModel().getNumInitialAssignments(); i++)
        {
            InitialAssignment ia = getModel().getInitialAssignment(i);
            ASTNode math = new ASTNode(ia.getMath());
            ia.setMath(addPrefixes(math, ELEMENT_ID_PREFIX));
            ia.setVariable(ELEMENT_ID_PREFIX + ia.getVariable());
        }
        
        for (int i = 0; i < getModel().getNumRules(); i++)
        {
            Rule r = getModel().getRule(i);
            ASTNode math = new ASTNode(r.getMath());
            r.setMath(addPrefixes(math, ELEMENT_ID_PREFIX));
            if (r.isAssignment())
            {
                AssignmentRule ar = (AssignmentRule) r;
                ar.setVariable(ELEMENT_ID_PREFIX + ar.getVariable());
            }
            else if (r.isRate())
            {
                RateRule rr = (RateRule) r;
                rr.setVariable(ELEMENT_ID_PREFIX + rr.getVariable());
            }
        }
        
        for (int i = 0; i < getModel().getNumReactions(); i++)
        {
            Reaction r = getModel().getReaction(i);
            KineticLaw kl = r.getKineticLaw();
            ASTNode math = new ASTNode(kl.getMath());
            kl.setMath(addPrefixes(math, ELEMENT_ID_PREFIX));
        }
        
        for (int i = 0; i < getModel().getNumEvents(); i++)
        {
            Event e = getModel().getEvent(i);
            Trigger t = e.getTrigger();
            ASTNode triggermath = new ASTNode(t.getMath());
            t.setMath(addPrefixes(triggermath, ELEMENT_ID_PREFIX));
            Delay d = e.getDelay();
            if (d != null)
            {
                ASTNode delaymath = new ASTNode(d.getMath());
                d.setMath(addPrefixes(delaymath, ELEMENT_ID_PREFIX));
            }
            Priority p = e.getPriority();
            if (p != null)
            {
                ASTNode priormath = new ASTNode(p.getMath());
                p.setMath(addPrefixes(priormath, ELEMENT_ID_PREFIX));
            }
            for (int j = 0; j < e.getNumEventAssignments(); j++)
            {
                EventAssignment ea = e.getEventAssignment(j);
                ASTNode math = new ASTNode(ea.getMath());
                ea.setMath(addPrefixes(math, ELEMENT_ID_PREFIX));
            }
        }
        
        for (int i = 0; i < getModel().getNumFunctionDefinitions(); i++)
        {
            FunctionDefinition fd = getModel().getFunctionDefinition(i);
            ASTNode body = new ASTNode(fd.getBody());
            ASTNode math = new ASTNode(fd.getMath());
            math.replaceChild(math.getNumChildren() - 1, addPrefixes(body, ARGUMENT_ID_PREFIX));
            fd.setMath(math);
        }
    }
}
