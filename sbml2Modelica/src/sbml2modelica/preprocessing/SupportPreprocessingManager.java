package sbml2modelica.preprocessing;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
import java.util.Stack;

import org.sbml.jsbml.ASTNode;
import org.sbml.jsbml.AssignmentRule;
import org.sbml.jsbml.Delay;
import org.sbml.jsbml.Event;
import org.sbml.jsbml.EventAssignment;
import org.sbml.jsbml.InitialAssignment;
import org.sbml.jsbml.Model;
import org.sbml.jsbml.Priority;
import org.sbml.jsbml.RateRule;
import org.sbml.jsbml.Reaction;
import org.sbml.jsbml.Rule;
import org.sbml.jsbml.Trigger;

import sbml2modelica.utils.Constants;
import sbml2modelica.utils.Log;
import sbml2modelica.utils.exceptions.NullSBMLModelException;

public class SupportPreprocessingManager extends PreprocessingManager
{
    /**
     * The dependency graph of the model.<br>
     * In this graph each node represents a variable or a {@link Trigger} of an {@link Event}
     * in the {@link Model}.<br>
     * Given two nodes <i>u, v</i>, a connection from <i>u</i> to <i>v</i> exists if there's
     * some formula defining <i>v</i> where <i>u</i> appears.
     */
    private HashMap<String, Set<String>> graph = null;

    public SupportPreprocessingManager(Model model) throws NullSBMLModelException
    {
        super(model);
    }
    
    @SuppressWarnings("deprecation")
    public void searchFastsDelaysAndNANs()
    {
        int length = 0;
        length = getModel().getInitialAssignmentCount();
        for (int i = 0; i < length; i++)
            searchDelaysAndNANs(getModel().getInitialAssignment(i).getMath());
        length = getModel().getRuleCount();
        for (int i = 0; i < length; i++)
            searchDelaysAndNANs(getModel().getRule(i).getMath());
        length = getModel().getReactionCount();
        for (int i = 0; i < length; i++)
        {
            Reaction r = getModel().getReaction(i);
            if (r.isSetFast() && r.isFast())
            {
                String errmsg = "Reaction " + r.getId() + " is marked as \'fast\'. This "
                                + "is not supported, since it is not part of the current "
                                + "SBML standard.";
                Log.FatalError(errmsg, Constants.ERRCODE_FAST_REACTIONS);
            }
            if (! r.isSetKineticLaw())
            {
                String errmsg = "Reaction " + r.getId() + " has no kinetic law. The model is "
                                + "not written in legal SBML.";
                Log.FatalError(errmsg, Constants.ERRCODE_NO_KINETIC_LAW_FOUND);
            }
            searchDelaysAndNANs(r.getKineticLaw().getMath());
        }
        length = getModel().getEventCount();
        for (int i = 0; i < length; i++)
        {
            Event e = getModel().getEvent(i);
            Trigger t = e.isSetTrigger() ? e.getTrigger() : null;
            Delay d = e.isSetDelay() ? e.getDelay() : null;
            Priority p = e.isSetPriority() ? e.getPriority() : null;
            if (t != null)
                searchDelaysAndNANs(t.getMath());
            if (d != null)
                searchDelaysAndNANs(d.getMath());
            if (p != null)
                searchDelaysAndNANs(p.getMath());
            int ealength = e.getEventAssignmentCount();
            for (int j = 0; j < ealength; j++)
                searchDelaysAndNANs(e.getEventAssignment(j).getMath());
        }
    }
    
    private void searchDelaysAndNANs(ASTNode formula)
    {
        if (formula == null)
            return;
        if (formula.isNaN())
        {
            String errmsg = "Found NaN in a formula. This is unsupported. The model "
                            + "will be generated, but it will not be simulable.";
            Log.Error(errmsg);
        }
        if (formula.getType() == ASTNode.Type.FUNCTION_DELAY)
        {
            String errmsg = "Found a delay in a formula. If the dalyed function "
                            + "is defined also for t < startTime, or changes its value in the "
                            + "interval [startTime - delta, startTime), the generated model will "
                            + "not simulate the initial part of the function correctly.";
            Log.Warning(errmsg);
        }
        
        int chlength = formula.getChildCount();
        for (int i = 0; i < chlength; i++)
            searchDelaysAndNANs(formula.getChild(i));
    }

    /**
     * This method examine the given formula and adds the given variable to the
     * out adjacency list of each variable appearing in the formula. 
     * 
     * @param varname
     * @param formula
     */
    private void addDependencies(String varname, ASTNode formula)
    {
        if (formula == null)
            return;
        
        if (formula.getType() == ASTNode.Type.NAME)
        {
            // Ignore myself
            if (! formula.getName().equals(varname))
            {
                // Create the node of the current variable, if it does not exists
                if (! graph.containsKey(formula.getName()))
                    graph.put(formula.getName(), new HashSet<String>());
                // Add the given variable as an exit node of the current one
                graph.get(formula.getName()).add(varname);
            }
        }
        
        // Recursively call the funciton on children
        int chlength = formula.getChildCount();
        for (int i = 0; i < chlength; i++)
        {
            addDependencies(varname, formula.getChild(i));
        }
    }
    
    /**
     * This method returns the set of all the variable names appearing in the given
     * formula.
     * 
     * @param formula
     * @return
     */
    private Set<String> getDependencies(ASTNode formula)
    {
        HashSet<String> res = new HashSet<String>();
        if (formula == null)
            return res;
        
        if (formula.getType() == ASTNode.Type.NAME)
        {
            res.add(formula.getName());
        }
        
        int chlength = formula.getChildCount();
        for (int i = 0; i < chlength; i++)
        {
            res.addAll(getDependencies(formula.getChild(i)));
        }
        
        return res;
    }
    
    private void generateTriggerGraph()
    {
        graph = new HashMap<String, Set<String>>();
        // Each variable v target of an initial assignment gets assignment from all
        // the variables in the assignment
        int length = getModel().getNumInitialAssignments();
        for (int i = 0; i < length; i++)
        {
            InitialAssignment ia = getModel().getInitialAssignment(i);
            String varname  = ia.getVariable();
            ASTNode formula = ia.isSetMath() ? ia.getMath() : null;
            addDependencies(varname, formula);
        }
        length = getModel().getRuleCount();
        for (int i = 0; i < length; i++)
        {
            Rule r = getModel().getRule(i);
            String varname = null;
            ASTNode formula = r.isSetMath() ? r.getMath() : null;
            // Each variable v target of an assignment rule gets assignment from all
            // the variables in the rule
            if (r.isAssignment())
            {
                AssignmentRule ar = (AssignmentRule) r;
                varname = ar.getVariable();
            }
            // Each variable v target of an rate rule gets assignment from all
            // the variables in the rule
            else if (r.isRate())
            {
                RateRule rr = (RateRule) r;
                varname = rr.getVariable();
            }
            // Each variable appearing in an algebraic rule is a dependency for each other
            // variable appearing in the same rule
            else
            {
                Set<String> content = getDependencies(formula);
                for (String var : content)
                {
                    addDependencies(var, formula);
                }
            }
            if (varname != null)
            {
                addDependencies(varname, formula);
            }
        }
        length = getModel().getReactionCount();
        for (int i = 0; i < length; i++)
        {
            Reaction r = getModel().getReaction(i);
            if (! graph.containsKey(r.getId()))
                graph.put(r.getId(), new HashSet<String>());
            if (r.isSetKineticLaw())
                addDependencies(r.getId(), r.getKineticLaw().getMath());
            int rlength = r.getNumReactants();
            for (int j = 0; j < rlength; j++)
            {
                String reactant = r.getReactant(j).getSpecies();
                graph.get(r.getId()).add(reactant);
                if (! graph.containsKey(reactant))
                    graph.put(reactant, new HashSet<String>());
                graph.get(reactant).add(r.getId());
            }
            int plength = r.getNumProducts();
            for (int j = 0; j < plength; j++)
            {
                String product = r.getProduct(j).getSpecies();
                graph.get(r.getId()).add(product);
                if (! graph.containsKey(product))
                    graph.put(product, new HashSet<String>());
                graph.get(product).add(r.getId());
            }
        }
        length = getModel().getEventCount();
        for (int i = 0; i < length; i++)
        {
            Event e  = getModel().getEvent(i);
            if (! graph.containsKey(e.getId()))
                graph.put(e.getId(), new HashSet<String>());
            int ealength = e.getEventAssignmentCount();
            for (int j = 0; j < ealength; j++)
            {
                EventAssignment ea = e.getEventAssignment(j);
                // A target of an event assignment is an out node for the event
                graph.get(e.getId()).add(ea.getVariable());
                // Also, a target of an event assignment is an out node for each variable
                // appearing in the assignment formula
                addDependencies(ea.getVariable(), ea.isSetMath() ? ea.getMath() : null);
            }
            // The event is an out node for each variable appearing in its trigger
            Trigger t = e.getTrigger();
            ASTNode trig = t.isSetMath() ? t.getMath() : null;
            addDependencies(e.getId(), trig);
        }
    }
    
    public void examineTrigger()
    {
        generateTriggerGraph();
        // Get the list of nodes and associate a status to each
        // 0 means unvisited, 1 means visited
        HashMap<String, Integer> visit = new HashMap<String, Integer>();
        for (String var : graph.keySet())
        {
            visit.put(var, 0);
        }
        
        // For each event, check if it can be reached by another event. If true, log
        // a warning
        int elength = getModel().getEventCount();
        for (int i = 0; i < elength; i++)
        {
            // Get the event id
            String ename = getModel().getEvent(i).getId();
            // Zero out the visit
            for (String var : visit.keySet())
            {
                visit.put(var, 0);
            }
            // Create a stack and put the event inside it
            Stack<String> s = new Stack<String>();
            s.add(ename);
            // While the stack is not empty
            while (! s.isEmpty())
            {
                String cur = s.pop();
                visit.put(cur, 1);
                for (String out : graph.get(cur))
                {
                    // Nodes reached but not flowing out are not interesting
                    if (! graph.containsKey(out))
                        continue;
                    
                    Event targ = getModel().getEvent(out);
                    if (targ != null)
                    {
                        String errmsg = "The event " + ename + " could change through an "
                                        + "assignment the trigger of event " + targ.getId()
                                        + ". This could produce inconsistencies in the "
                                        + "simulation, since if the two events are triggered "
                                        + "and executed concurrently, one of them could change"
                                        + " the trigger evaluation of the other. This will not "
                                        + "be caught by the generated model.";
                        Log.Warning(errmsg);
                    }
                    if (visit.get(out) == 1)
                        continue;
                    s.push(out);
                }
            }
        }
    }

    private void generatePriorityGraph()
    {
        graph = new HashMap<String, Set<String>>();
        // Each variable v target of an initial assignment gets assignment from all
        // the variables in the assignment
        int length = getModel().getNumInitialAssignments();
        for (int i = 0; i < length; i++)
        {
            InitialAssignment ia = getModel().getInitialAssignment(i);
            String varname  = ia.getVariable();
            ASTNode formula = ia.isSetMath() ? ia.getMath() : null;
            addDependencies(varname, formula);
        }
        length = getModel().getRuleCount();
        for (int i = 0; i < length; i++)
        {
            Rule r = getModel().getRule(i);
            String varname = null;
            ASTNode formula = r.isSetMath() ? r.getMath() : null;
            // Each variable v target of an assignment rule gets assignment from all
            // the variables in the rule
            if (r.isAssignment())
            {
                AssignmentRule ar = (AssignmentRule) r;
                varname = ar.getVariable();
            }
            // Each variable v target of an rate rule gets assignment from all
            // the variables in the rule
            else if (r.isRate())
            {
                RateRule rr = (RateRule) r;
                varname = rr.getVariable();
            }
            // Each variable appearing in an algebraic rule is a dependency for each other
            // variable appearing in the same rule
            else
            {
                Set<String> content = getDependencies(formula);
                for (String var : content)
                {
                    addDependencies(var, formula);
                }
            }
            if (varname != null)
            {
                addDependencies(varname, formula);
            }
        }
        length = getModel().getReactionCount();
        for (int i = 0; i < length; i++)
        {
            Reaction r = getModel().getReaction(i);
            if (! graph.containsKey(r.getId()))
                graph.put(r.getId(), new HashSet<String>());
            if (r.isSetKineticLaw())
                addDependencies(r.getId(), r.getKineticLaw().getMath());
            int rlength = r.getNumReactants();
            for (int j = 0; j < rlength; j++)
            {
                String reactant = r.getReactant(j).getSpecies();
                graph.get(r.getId()).add(reactant);
                if (! graph.containsKey(reactant))
                    graph.put(reactant, new HashSet<String>());
                graph.get(reactant).add(r.getId());
            }
            int plength = r.getNumProducts();
            for (int j = 0; j < plength; j++)
            {
                String product = r.getProduct(j).getSpecies();
                graph.get(r.getId()).add(product);
                if (! graph.containsKey(product))
                    graph.put(product, new HashSet<String>());
                graph.get(product).add(r.getId());
            }
        }
        length = getModel().getEventCount();
        for (int i = 0; i < length; i++)
        {
            Event e  = getModel().getEvent(i);
            if (! graph.containsKey(e.getId()))
                graph.put(e.getId(), new HashSet<String>());
            int ealength = e.getEventAssignmentCount();
            for (int j = 0; j < ealength; j++)
            {
                EventAssignment ea = e.getEventAssignment(j);
                // A target of an event assignment is an out node for the event
                graph.get(e.getId()).add(ea.getVariable());
                // Also, a target of an event assignment is an out node for each variable
                // appearing in the assignment formula
                addDependencies(ea.getVariable(), ea.isSetMath() ? ea.getMath() : null);
            }
            // The event is an out node for each variable appearing in its priority
            Priority p = e.getPriority();
            if (p != null)
            {
                ASTNode trig = p.isSetMath() ? p.getMath() : null;
                addDependencies(e.getId(), trig);
            }
        }
    }
    
    public void examinePriority()
    {
        generatePriorityGraph();
        // Get the list of nodes and associate a status to each
        // 0 means unvisited, 1 means visited
        HashMap<String, Integer> visit = new HashMap<String, Integer>();
        for (String var : graph.keySet())
        {
            visit.put(var, 0);
        }
        
        // For each event, check if it can be reached by another event. If true, log
        // a warning
        int elength = getModel().getEventCount();
        for (int i = 0; i < elength; i++)
        {
            // Get the event id
            String ename = getModel().getEvent(i).getId();
            // Zero out the visit
            for (String var : visit.keySet())
            {
                visit.put(var, 0);
            }
            // Create a stack and put the event inside it
            Stack<String> s = new Stack<String>();
            s.add(ename);
            // While the stack is not empty
            while (! s.isEmpty())
            {
                String cur = s.pop();
                visit.put(cur, 1);
                for (String out : graph.get(cur))
                {
                    // Nodes reached but not flowing out are not interesting
                    if (! graph.containsKey(out))
                        continue;
                    
                    Event targ = getModel().getEvent(out);
                    if (targ != null)
                    {
                        String errmsg = "The event " + ename + " could change through an "
                                        + "assignment the priority of event " + targ.getId()
                                        + ". This could produce inconsistencies in the "
                                        + "simulation, since if the two events are "
                                        + "executed concurrently, one of them could change "
                                        + "the priority evaluation of the other. This will not "
                                        + "be caught by the generated model.";
                        Log.Warning(errmsg);
                    }
                    if (visit.get(out) == 1)
                        continue;
                    s.push(out);
                }
            }
        }
    }

}
