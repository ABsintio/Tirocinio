/**
 * ModelGenerator.java
 *
 * TODO
 *
 * @author  filippo
 * @project SBML2Modelica
 */
package sbml2modelica.modelicagen;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.HashMap;
import java.util.HashSet;

import org.sbml.jsbml.ASTNode;

import sbml2modelica.abstractmodel.AbstractAlgebraicEquation;
import sbml2modelica.abstractmodel.AbstractCompartment;
import sbml2modelica.abstractmodel.AbstractEvent;
import sbml2modelica.abstractmodel.AbstractModel;
import sbml2modelica.abstractmodel.AbstractObject;
import sbml2modelica.abstractmodel.AbstractParameter;
import sbml2modelica.abstractmodel.AbstractReaction;
import sbml2modelica.abstractmodel.AbstractSpecies;
import sbml2modelica.abstractmodel.AbstractSpeciesReference;
import sbml2modelica.abstractmodel.values.AbstractAssignment;
import sbml2modelica.abstractmodel.values.AbstractFormula;
import sbml2modelica.utils.Constants;
import sbml2modelica.utils.Log;
import sbml2modelica.utils.exceptions.NullAbstractModelException;
import sbml2modelica.utils.exceptions.NullCompartmentException;
import sbml2modelica.utils.exceptions.NullEventException;

/**
 * @author Maggioli Filippo
 *
 */
public class ModelGenerator extends ClassGenerator
{
    private ParameterClassGenerator             pcg;
    private ReactionClassGenerator              rcg;
    private FunctionClassGenerator              fcg;
    private ConstantsClassGenerator             constcg;
    private HashSet<CompartmentClassGenerator>  ccgs;
    private HashSet<EventClassGenerator>        ecgs;
    
    private HashMap<AbstractObject, HashSet<AbstractEvent>> affectionMap;

    public ModelGenerator(AbstractModel model, int efficiency) 
            throws NullAbstractModelException, NullCompartmentException, NullEventException
    {
        super(model, efficiency);
        pcg     = new ParameterClassGenerator(this._model, efficiency);
        rcg     = new ReactionClassGenerator(this._model, efficiency);
        fcg     = new FunctionClassGenerator(this._model, efficiency);
        constcg = new ConstantsClassGenerator(this._model, efficiency);
        ccgs    = new HashSet<CompartmentClassGenerator>();
        for (AbstractCompartment c : this._model.getCompartments())
        {
            ccgs.add(new CompartmentClassGenerator(c, efficiency));
        }
        ecgs    = new HashSet<EventClassGenerator>();
        for (AbstractEvent e : this._model.getEvents())
        {
            ecgs.add(new EventClassGenerator(e, efficiency));
        }
        
        affectionMap = new HashMap<AbstractObject, HashSet<AbstractEvent>>();
        for (AbstractEvent e : this._model.getEvents())
        {
            for (AbstractAssignment ae : e)
            {
                AbstractObject o = ae.getTarget();
                if (! affectionMap.containsKey(o))
                {
                    affectionMap.put(o, new HashSet<AbstractEvent>());
                }
                affectionMap.get(o).add(e);
            }
        }
    }

    private void classHeader()
    {
        _strcls.append("model ").append(this._model.getId());
        if (_model.getName() != null)
        	_strcls.append(" \"").append(_model.getName()).append("\"");
        _strcls.append(System.lineSeparator());
        _strcls.append("    extends Modelica.Icons.ExamplesPackage;").append(System.lineSeparator());
        String notes = _model.getNotesString();
        if (notes != null)
        	_strcls.append(" annotation(Documentation(info=\"").append(notes).append("\"));").append(System.lineSeparator());
        String info = _model.getInfo();
        if (info != null && ! info.equals(""))
        	_strcls.append("//").append(info.replace("\n", "\n//")).append(System.lineSeparator());
        _strcls.append(System.lineSeparator()).append(System.lineSeparator());
    }
    
    private void classVariables()
    {
        _strcls.append("    ").append(PARAMETER_CLASS_NAME);
        _strcls.append(" ").append(PARAMETER_CLASS_INSTANCE);
        _strcls.append(';').append(System.lineSeparator());
        _strcls.append("    ").append(REACTION_CLASS_NAME);
        _strcls.append(" ").append(REACTION_CLASS_INSTANCE);
        _strcls.append(';').append(System.lineSeparator());
        for (AbstractCompartment c : this._model.getCompartments())
        {
            _strcls.append("    Class_").append(c.getId()).append(" ");
            _strcls.append(c.getId()).append(';').append(System.lineSeparator());
        }
        for (AbstractEvent e : this._model.getEvents())
        {
            _strcls.append("    Class_").append(e.getId()).append(" ");
            _strcls.append(e.getId()).append(';').append(System.lineSeparator());
        }
        _strcls.append(System.lineSeparator());
    }
 
    private void classPrioritizationFunctions()
    {
        HashSet<Integer> sizes = new HashSet<Integer>();
        for (AbstractObject o : affectionMap.keySet())
        {
            sizes.add(affectionMap.get(o).size());
        }
        
        for (int size : sizes)
        {
            if (size == 1)
                continue;
            
            _strcls.append("    function prioritize_between_").append(size);
            _strcls.append(System.lineSeparator());
            _strcls.append("        input Real[").append(size).append("] prios;");
            _strcls.append(System.lineSeparator());
            _strcls.append("        input Real[").append(size).append("] values;");
            _strcls.append(System.lineSeparator());
            _strcls.append("        input Boolean[").append(size).append("] trigs;");
            _strcls.append(System.lineSeparator());
            _strcls.append("        output Real value;").append(System.lineSeparator());
            _strcls.append("        protected Real min_prio;").append(System.lineSeparator());
            _strcls.append("        algorithm").append(System.lineSeparator());
            _strcls.append("            value := 0;").append(System.lineSeparator());
            _strcls.append("            min_prio := ").append(INFINITY_CONSTANT_NAME).append(';');
            _strcls.append(System.lineSeparator());
            _strcls.append("            for i in 1:").append(size).append(" loop");
            _strcls.append(System.lineSeparator());
            _strcls.append("                if trigs[i] and prios[i] < min_prio then");
            _strcls.append(System.lineSeparator());
            _strcls.append("                    value := values[i];").append(System.lineSeparator());
            _strcls.append("                    min_prio := prios[i];");
            _strcls.append(System.lineSeparator());
            _strcls.append("                end if;").append(System.lineSeparator());
            _strcls.append("            end for;").append(System.lineSeparator());
            _strcls.append("    end prioritize_between_").append(size);
            _strcls.append(';').append(System.lineSeparator());
        }
    }
    
    private void classAlgebraicEquations()
    {
        for (AbstractAlgebraicEquation ae : this._model.getAlgebraicEquations())
        {
            AbstractFormula formula = ae.getFormula();
            ASTNode node = new ASTNode(formula.getFormula());
            for (AbstractObject o : formula)
            {
                String oldname = "";
                String newname = "";
                if (o instanceof AbstractParameter)
                {
                    oldname = o.getId();
                    newname = PARAMETER_CLASS_INSTANCE + "." + oldname;
                }
                else if (o instanceof AbstractCompartment)
                {
                    oldname = o.getId();
                    newname = oldname + "." + oldname;
                }
                else if (o instanceof AbstractSpecies)
                {
                    AbstractSpecies s = (AbstractSpecies) o;
                    oldname = s.getId();
                    newname = s.getCompartment().getId() + "." + oldname;
                }
                else if (o instanceof AbstractReaction || o instanceof AbstractSpeciesReference)
                {
                    oldname = o.getId();
                    newname = REACTION_CLASS_INSTANCE + "." + oldname;
                }
                RenameVariable(node, oldname, newname);
            }
            _strcls.append("    ").append(ModelicaRealRepresentation(node));
            _strcls.append(" = 0;").append(System.lineSeparator());
        }
        if (this._model.getAlgebraicEquations().size() > 0)
            _strcls.append(System.lineSeparator());
    }
    
    private void classParameterConnections()
    {
        for (AbstractObject o : this.pcg.getInputs())
        {
            if (_efficiency == 2 && _constants.contains(o))
                continue;
            
            _strcls.append("        ").append(PARAMETER_CLASS_INSTANCE);
            _strcls.append('.').append(o.getId()).append(" = ");
            if (o instanceof AbstractCompartment)
            {
                _strcls.append(o.getId()).append('.').append(o.getId());
                _strcls.append(';').append(System.lineSeparator());
            }
            else if (o instanceof AbstractSpecies)
            {
                _strcls.append(((AbstractSpecies) o).getCompartment().getId()).append('.');
                _strcls.append(o.getId()).append(';').append(System.lineSeparator());
            }
            else if (o instanceof AbstractReaction || o instanceof AbstractSpeciesReference)
            {
                _strcls.append(REACTION_CLASS_INSTANCE).append('.');
                _strcls.append(o.getId()).append(';').append(System.lineSeparator());
            }
        }
        
        for (AbstractEvent e : this.pcg.getInputEvents())
        {
            _strcls.append("        ").append(PARAMETER_CLASS_INSTANCE);
            _strcls.append('.').append(e.getId()).append(" = ");
            _strcls.append(e.getId()).append('.');
            if (e.getDelay() == null)
                _strcls.append("trigger");
            else
                _strcls.append("execution");
            _strcls.append(';').append(System.lineSeparator());
        }
    }
    
    private void classReactionConnections()
    {
        for (AbstractObject o : this.rcg.getInputs())
        {
            if (_efficiency == 2 && _constants.contains(o))
                continue;
            
            _strcls.append("        ").append(REACTION_CLASS_INSTANCE);
            _strcls.append('.').append(o.getId()).append(" = ");
            if (o instanceof AbstractCompartment)
            {
                _strcls.append(o.getId()).append('.').append(o.getId());
                _strcls.append(';').append(System.lineSeparator());
            }
            else if (o instanceof AbstractSpecies)
            {
                _strcls.append(((AbstractSpecies) o).getCompartment().getId()).append('.');
                _strcls.append(o.getId()).append(';').append(System.lineSeparator());
            }
            else if (o instanceof AbstractParameter)
            {
                _strcls.append(PARAMETER_CLASS_INSTANCE).append('.');
                _strcls.append(o.getId()).append(';').append(System.lineSeparator());
            }
        }
        for (AbstractEvent e : this.rcg.getInputEvents())
        {
            _strcls.append("        ").append(REACTION_CLASS_INSTANCE);
            _strcls.append('.').append(e.getId()).append(" = ");
            _strcls.append(e.getId()).append('.');
            if (e.getDelay() == null)
                _strcls.append("trigger");
            else
                _strcls.append("execution");
            _strcls.append(';').append(System.lineSeparator());
        }
    }
    
    private void classCompartmentConnections(CompartmentClassGenerator ccg)
    {
        for (AbstractObject o : ccg.getInputs())
        {
            if (_efficiency == 2 && _constants.contains(o))
                continue;
            
            _strcls.append("        ").append(ccg.getInstanceName());
            _strcls.append('.').append(o.getId()).append(" = ");
            if (o instanceof AbstractCompartment)
            {
                _strcls.append(o.getId()).append('.').append(o.getId());
                _strcls.append(';').append(System.lineSeparator());
            }
            else if (o instanceof AbstractSpecies)
            {
                _strcls.append(((AbstractSpecies) o).getCompartment().getId()).append('.');
                _strcls.append(o.getId()).append(';').append(System.lineSeparator());
            }
            else if (o instanceof AbstractParameter)
            {
                _strcls.append(PARAMETER_CLASS_INSTANCE).append('.');
                _strcls.append(o.getId()).append(';').append(System.lineSeparator());
            }
            else if (o instanceof AbstractReaction || o instanceof AbstractSpeciesReference)
            {
                _strcls.append(REACTION_CLASS_INSTANCE).append('.');
                _strcls.append(o.getId()).append(';').append(System.lineSeparator());
            }
        }
        for (AbstractEvent e : ccg.getInputEvents())
        {
            _strcls.append("        ").append(ccg.getInstanceName());
            _strcls.append('.').append(e.getId()).append(" = ");
            _strcls.append(e.getId()).append('.');
            if (e.getDelay() == null)
                _strcls.append("trigger");
            else
                _strcls.append("execution");
            _strcls.append(';').append(System.lineSeparator());
        }
    }
    
    private void classEventConnections(EventClassGenerator ecg)
    {
        for (AbstractObject o : ecg.getInputs())
        {
            if (_efficiency == 2 && _constants.contains(o))
                continue;
            
            _strcls.append("        ").append(ecg.getInstanceName());
            _strcls.append('.').append(o.getId()).append(" = ");
            if (o instanceof AbstractCompartment)
            {
                _strcls.append(o.getId()).append('.').append(o.getId());
                _strcls.append(';').append(System.lineSeparator());
            }
            else if (o instanceof AbstractSpecies)
            {
                _strcls.append(((AbstractSpecies) o).getCompartment().getId()).append('.');
                _strcls.append(o.getId()).append(';').append(System.lineSeparator());
            }
            else if (o instanceof AbstractParameter)
            {
                _strcls.append(PARAMETER_CLASS_INSTANCE).append('.');
                _strcls.append(o.getId()).append(';').append(System.lineSeparator());
            }
            else if (o instanceof AbstractReaction || o instanceof AbstractSpeciesReference)
            {
                _strcls.append(REACTION_CLASS_INSTANCE).append('.');
                _strcls.append(o.getId()).append(';').append(System.lineSeparator());
            }
        }
    }

    private void classConnections()
    {
        this.classParameterConnections();
        this.classReactionConnections();
        for (CompartmentClassGenerator ccg : ccgs)
        {
            this.classCompartmentConnections(ccg);
        }
        for (EventClassGenerator ecg : ecgs)
        {
            this.classEventConnections(ecg);
        }
        _strcls.append(System.lineSeparator());
    }
    
    private void classAssignmentConnections()
    {
        for (AbstractObject o : affectionMap.keySet())
        {
            _strcls.append("        ");
            if (o instanceof AbstractCompartment)
                _strcls.append(o.getId()).append('.');
            else if (o instanceof AbstractSpecies)
                _strcls.append(((AbstractSpecies) o).getCompartment().getId()).append('.');
            else if (o instanceof AbstractParameter)
                _strcls.append(PARAMETER_CLASS_INSTANCE).append('.');
            else if (o instanceof AbstractReaction || o instanceof AbstractSpeciesReference)
                _strcls.append(REACTION_CLASS_INSTANCE).append('.');
            _strcls.append("assign_").append(o.getId()).append(" = ");
            
            HashSet<AbstractEvent> affector = affectionMap.get(o);
            if (affector.size() == 1)
            {
                _strcls.append(affector.iterator().next().getId()).append(".value_");
                _strcls.append(o.getId()).append(';').append(System.lineSeparator());
                continue;
            }
            
            _strcls.append("prioritize_between_").append(affector.size()).append('(');
            String tmp = "{";
            for (AbstractEvent e : affector)
            {
                if (e.getPriority() != null)
                    tmp += e.getId() + ".priority, ";
                else
                    tmp += NEG_INFINITY_CONSTANT_NAME + ", ";
            }
            tmp = tmp.substring(0, tmp.length() - 2) + "}";
            _strcls.append(tmp).append(", ");
            tmp = "{";
            for (AbstractEvent e : affector)
            {
                tmp += e.getId() + ".value_" + o.getId() + ", "; 
            }
            tmp = tmp.substring(0, tmp.length() - 2) + "}";
            _strcls.append(tmp).append(", ");
            tmp = "{";
            for (AbstractEvent e : affector)
            {
                tmp += "edge(" + e.getId();
                if (e.getDelay() == null)
                    tmp += ".trigger";
                else
                    tmp += ".execution";
                tmp += "), ";
            }
            tmp = tmp.substring(0, tmp.length() - 2) + "}";
            _strcls.append(tmp).append(");").append(System.lineSeparator());
        }
    }

    @Override
    public String generateClass()
    {
        _strcls = new StringBuilder();
        
        this.classHeader();
        this.classVariables();
        this.classPrioritizationFunctions();
        _strcls.append("    equation").append(System.lineSeparator());
        this.classAlgebraicEquations();
        this.classConnections();
        this.classAssignmentConnections();
        this.classEnd();
        
        return _strcls.toString();
    }
    
    private void classEnd()
    {
        _strcls.append("end ").append(this._model.getId());
        _strcls.append(';').append(System.lineSeparator());
    }

    @Override
    public void writeClass(File dir)
    {
        String filename = this._model.getId() + MODELICA_FILE_EXTENSION;
        this.writeClass(dir, filename);
    }

    public void writeProject(String dir)
    {
        pcg.writeClass(dir);
        rcg.writeClass(dir);
        fcg.writeClass(dir);
        constcg.writeClass(dir);
        for (CompartmentClassGenerator ccg : ccgs)
            ccg.writeClass(dir);
        for (EventClassGenerator ecg : ecgs)
            ecg.writeClass(dir);
        this.writeClass(dir);
        
        File file = new File(dir, "package.mo");
        try
        {
            BufferedWriter stream = new BufferedWriter(new FileWriter(file));
            stream.write("within;" + System.lineSeparator());
            stream.write("package " + file.getParentFile().getName() + System.lineSeparator());
            stream.write(System.lineSeparator());
            stream.write("    extends Modelica.Icons.Package;");
            stream.write(System.lineSeparator());
            stream.write("end " + file.getParentFile().getName() + ";" + System.lineSeparator());
            stream.close();
        }
        catch (IOException e)
        {
            Log.FatalError("Cannot write on file " + file.getAbsolutePath() + ".", 
                           Constants.ERRCODE_NON_WRITABLE_FILE);
        }
    }
    
    public void writeProject()
    {
        this.writeProject(".");
    }
}
