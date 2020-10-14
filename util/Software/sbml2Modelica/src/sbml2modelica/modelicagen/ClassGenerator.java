/**
 * ClassGenerator.java
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
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.sbml.jsbml.ASTNode;
import org.sbml.jsbml.Unit;
import org.sbml.jsbml.UnitDefinition;

import sbml2modelica.abstractmodel.AbstractCompartment;
import sbml2modelica.abstractmodel.AbstractFunction;
import sbml2modelica.abstractmodel.AbstractLocalParameter;
import sbml2modelica.abstractmodel.AbstractModel;
import sbml2modelica.abstractmodel.AbstractObject;
import sbml2modelica.abstractmodel.AbstractParameter;
import sbml2modelica.abstractmodel.AbstractReaction;
import sbml2modelica.abstractmodel.AbstractSpecies;
import sbml2modelica.abstractmodel.AbstractSpeciesReference;
import sbml2modelica.utils.Constants;
import sbml2modelica.utils.Log;
import sbml2modelica.utils.exceptions.NullAbstractModelException;

/**
 * @author Maggioli Filippo
 *
 */
public abstract class ClassGenerator
{
    protected AbstractModel _model;
    protected StringBuilder _strcls;
    protected int           _efficiency;
    
    protected static List<AbstractObject> _constants = new ArrayList<AbstractObject>();
    
    public ClassGenerator(AbstractModel model, int efficiency) throws NullAbstractModelException
    {
        if (model == null)
        {
            throw new NullAbstractModelException("Cannot initialize a ClassGenerator"
                                                 + " with a NULL AbstractModel.");
        }
        this._model  = model;
        this._strcls = new StringBuilder();
        this._efficiency = efficiency;
    }
    
    public abstract String generateClass();
    
    protected void writeClass(File dir, String filename)
    {
        if (! dir.exists())
        {
            if (! dir.mkdirs())
            {
                Log.FatalError("Cannot create directory " + dir.getAbsolutePath() + ".", 
                               Constants.ERRCODE_NON_WRITABLE_FILE);
            }
        }
        if (! dir.isDirectory())
        {
            Log.FatalError(dir.getAbsolutePath() + " is not a directory.", 
                           Constants.ERRCODE_NON_WRITABLE_FILE);
        }
        
        File file = new File(dir, filename);
        try
        {
            BufferedWriter stream = new BufferedWriter(new FileWriter(file));
            stream.write("within " + dir.getName() + ";" + System.lineSeparator());
            stream.write(this.generateClass());
            stream.close();
        }
        catch (IOException e)
        {
            Log.FatalError("Cannot write on file " + filename + ".", 
                           Constants.ERRCODE_NON_WRITABLE_FILE);
        }
    }
    
    public abstract void writeClass(File dir);
    
    public void writeClass(String dir)  { this.writeClass(new File(dir)); }
    public void writeClass()            { this.writeClass("."); }
    
    
    private static ASTNode.Type[] realTypes = {ASTNode.Type.REAL,
                                               ASTNode.Type.REAL_E,
                                               ASTNode.Type.INTEGER,
                                               ASTNode.Type.RATIONAL,
                                               ASTNode.Type.CONSTANT_E,
                                               ASTNode.Type.CONSTANT_PI,
                                               ASTNode.Type.NAME_AVOGADRO};
    
    public static final String PARAMETER_CLASS_NAME             = "Parameters";
    public static final String PARAMETER_CLASS_INSTANCE         = "Params"; 
    public static final String REACTION_CLASS_NAME              = "Reactions";
    public static final String REACTION_CLASS_INSTANCE          = "Reacs";
    public static final String FUNCTION_CLASS_NAME              = "Functions";
    public static final String CONSTANT_CLASS_NAME              = "Constants";
    public static final String MODELICA_FILE_EXTENSION          = ".mo";
    public static final String NAN_NAME                         = "NaN";
    public static final String NEPERO_CONSTANT_LOCAL_NAME       = "E";
    public static final String NEPERO_CONSTANT_NAME             = CONSTANT_CLASS_NAME + "." +
                                                                  NEPERO_CONSTANT_LOCAL_NAME;
    public static final String PI_CONSTANT_LOCAL_NAME           = "PI";
    public static final String PI_CONSTANT_NAME                 = CONSTANT_CLASS_NAME + "." +
                                                                  PI_CONSTANT_LOCAL_NAME;
    public static final String AVOGADRO_CONSTANT_LOCAL_NAME     = "AVOGADRO";
    public static final String AVOGADRO_CONSTANT_NAME           = CONSTANT_CLASS_NAME + "." +
                                                                  AVOGADRO_CONSTANT_LOCAL_NAME;
    public static final String INFINITY_CONSTANT_LOCAL_NAME     = "INFINITY";
    public static final String INFINITY_CONSTANT_NAME           = CONSTANT_CLASS_NAME + "." +
                                                                  INFINITY_CONSTANT_LOCAL_NAME;
    public static final String NEG_INFINITY_CONSTANT_LOCAL_NAME = "NEGATIVE_INFINITY";
    public static final String NEG_INFINITY_CONSTANT_NAME       = CONSTANT_CLASS_NAME + "." +
                                                                  NEG_INFINITY_CONSTANT_LOCAL_NAME;
    public static final String EPSILON_CONSTANT_LOCAL_NAME      = "EPSILON";
    public static final String EPSILON_CONSTANT_NAME            = CONSTANT_CLASS_NAME + "." +
                                                                  EPSILON_CONSTANT_LOCAL_NAME;
    public static final String ETA_CONSTANT_LOCAL_NAME          = "ETA";
    public static final String ETA_CONSTANT_NAME                = CONSTANT_CLASS_NAME + "." +
                                                                  ETA_CONSTANT_LOCAL_NAME;
    public static final String TRUE_CONSTANT_NAME               = "true";
    public static final String FALSE_CONSTANT_NAME              = "false";
    public static final String TIME_VARIABLE_NAME               = "time";
    public static final String DIVISION_OPERATOR                = "/";
    public static final String ABSOLUTE_VALUE_FUNCTION_NAME     = "abs";
    public static final String ARCCOS_FUNCTION_NAME             = "acos";
    public static final String ARCCOSH_FUNCTION_LOCAL_NAME      = "acosh";
    public static final String ARCCOSH_FUNCTION_NAME            = FUNCTION_CLASS_NAME + "." +
                                                                  ARCCOSH_FUNCTION_LOCAL_NAME;
    public static final String ARCCOT_FUNCTION_LOCAL_NAME       = "acot";
    public static final String ARCCOT_FUNCTION_NAME             = FUNCTION_CLASS_NAME + "." +
                                                                  ARCCOT_FUNCTION_LOCAL_NAME;
    public static final String ARCCOTH_FUNCTION_LOCAL_NAME      = "acoth";
    public static final String ARCCOTH_FUNCTION_NAME            = FUNCTION_CLASS_NAME + "." +
                                                                  ARCCOTH_FUNCTION_LOCAL_NAME;
    public static final String ARCCSC_FUNCTION_LOCAL_NAME       = "acsc";
    public static final String ARCCSC_FUNCTION_NAME             = FUNCTION_CLASS_NAME + "." +
                                                                  ARCCSC_FUNCTION_LOCAL_NAME;
    public static final String ARCCSCH_FUNCTION_LOCAL_NAME      = "acsch";
    public static final String ARCCSCH_FUNCTION_NAME            = FUNCTION_CLASS_NAME + "." +
                                                                  ARCCSCH_FUNCTION_LOCAL_NAME;
    public static final String ARCSEC_FUNCTION_LOCAL_NAME       = "asec";
    public static final String ARCSEC_FUNCTION_NAME             = FUNCTION_CLASS_NAME + "." +
                                                                  ARCSEC_FUNCTION_LOCAL_NAME;
    public static final String ARCSECH_FUNCTION_LOCAL_NAME      = "asech";
    public static final String ARCSECH_FUNCTION_NAME            = FUNCTION_CLASS_NAME + "." +
                                                                  ARCSECH_FUNCTION_LOCAL_NAME;
    public static final String ARCSIN_FUNCTION_NAME             = "asin";
    public static final String ARCSINH_FUNCTION_LOCAL_NAME      = "asinh";
    public static final String ARCSINH_FUNCTION_NAME            = FUNCTION_CLASS_NAME + "." +
                                                                  ARCSINH_FUNCTION_LOCAL_NAME;
    public static final String ARCTAN_FUNCTION_NAME             = "atan";
    public static final String ARCTANH_FUNCTION_LOCAL_NAME      = "atanh";
    public static final String ARCTANH_FUNCTION_NAME            = FUNCTION_CLASS_NAME + "." +
                                                                  ARCTANH_FUNCTION_LOCAL_NAME;
    public static final String CEILING_FUNCTION_NAME            = "ceil";
    public static final String COS_FUNCTION_NAME                = "cos";
    public static final String COSH_FUNCTION_NAME               = "cosh";
    public static final String COT_FUNCTION_LOCAL_NAME          = "cot";
    public static final String COT_FUNCTION_NAME                = FUNCTION_CLASS_NAME + "." + 
                                                                  COT_FUNCTION_LOCAL_NAME;
    public static final String COTH_FUNCTION_LOCAL_NAME         = "coth";
    public static final String COTH_FUNCTION_NAME               = FUNCTION_CLASS_NAME + "." + 
                                                                  COTH_FUNCTION_LOCAL_NAME;
    public static final String CSC_FUNCTION_LOCAL_NAME          = "csc";
    public static final String CSC_FUNCTION_NAME                = FUNCTION_CLASS_NAME + "." + 
                                                                  CSC_FUNCTION_LOCAL_NAME;
    public static final String CSCH_FUNCTION_LOCAL_NAME         = "csch";
    public static final String CSCH_FUNCTION_NAME               = FUNCTION_CLASS_NAME + "." + 
                                                                  CSCH_FUNCTION_LOCAL_NAME;
    public static final String DELAY_FUNCTION_NAME              = "delay";
    public static final String EXP_FUNCTION_NAME                = "exp";
    public static final String FACTORIAL_FUNCTION_LOCAL_NAME    = "factorial";
    public static final String FACTORIAL_FUNCTION_NAME          = FUNCTION_CLASS_NAME + "." + 
                                                                  FACTORIAL_FUNCTION_LOCAL_NAME;
    public static final String FLOOR_FUNCTION_NAME              = "floor";
    public static final String NATURAL_LOGARITHM_FUNCTION_NAME  = "log";
    public static final String LOGARITHM_FUNCTION_LOCAL_NAME    = "logarithm";
    public static final String LOGARITHM_FUNCTION_NAME          = FUNCTION_CLASS_NAME + "." +
                                                                  LOGARITHM_FUNCTION_LOCAL_NAME;
    public static final String MAXIMUM_FUNCTION_NAME            = "max";
    public static final String MINIMUM_FUNCTION_NAME            = "min";
    public static final String POWER_FUNCTION_LOCAL_NAME        = "pow";
    public static final String POWER_FUNCTION_NAME              = FUNCTION_CLASS_NAME + "." + 
                                                                  POWER_FUNCTION_LOCAL_NAME;
    public static final String QUOTIENT_FUNCTION_NAME           = "div";
    public static final String RATE_OF_FUNCTION_NAME            = "der";
    public static final String REMAINDER_FUNCTION_NAME          = "rem";
    public static final String ROOT_FUNCTION_LOCAL_NAME         = "root";
    public static final String ROOT_FUNCTION_NAME               = FUNCTION_CLASS_NAME + "." +
                                                                  ROOT_FUNCTION_LOCAL_NAME;
    public static final String SEC_FUNCTION_LOCAL_NAME          = "sec";
    public static final String SEC_FUNCTION_NAME                = FUNCTION_CLASS_NAME + "." +
                                                                  SEC_FUNCTION_LOCAL_NAME;
    public static final String SECH_FUNCTION_LOCAL_NAME         = "sech";
    public static final String SECH_FUNCTION_NAME               = FUNCTION_CLASS_NAME + "." +
                                                                  SECH_FUNCTION_LOCAL_NAME;
    public static final String SIN_FUNCTION_NAME                = "sin";
    public static final String SINH_FUNCTION_NAME               = "sinh";
    public static final String TAN_FUNCTION_NAME                = "tan";
    public static final String TANH_FUNCTION_NAME               = "tanh";
    public static final String AND_OPERATOR                     = "and";
    public static final String IMPLICATION_FUNCTION_LOCAL_NAME  = "implies";
    public static final String IMPLICATION_FUNCTION_NAME        = FUNCTION_CLASS_NAME + "." + 
                                                                  IMPLICATION_FUNCTION_LOCAL_NAME;
    public static final String NOT_OPERATOR                     = "not";
    public static final String OR_OPERATOR                      = "or";
    public static final String XOR_FUNCTION_LOCAL_NAME          = "xor";
    public static final String XOR_FUNCTION_NAME                = FUNCTION_CLASS_NAME + "." +
                                                                  XOR_FUNCTION_LOCAL_NAME;
    public static final String SUBTRACTION_OPERATOR             = "-";
    public static final String SUM_OPERATOR                     = "+";
    public static final String POWER_OPERATOR                   = "^";
    public static final String EQUALITY_FUNCTION_LOCAL_NAME     = "eq";
    public static final String EQUALITY_FUNCTION_NAME           = FUNCTION_CLASS_NAME + "." +
                                                                  EQUALITY_FUNCTION_LOCAL_NAME;
    public static final String GEQ_OPERATOR                     = ">=";
    public static final String GT_OPERATOR                      = ">";
    public static final String LEQ_OPERATOR                     = "<=";
    public static final String LT_OPERATOR                      = "<";
    public static final String INEQUALITY_OPERATOR              = "!=";
    public static final String MULTIPLICATION_OPERATOR          = "*";
    
    public static boolean realEvaluation(ASTNode formula)
    {
        if (formula == null)
            return true;
        
        ASTNode.Type type = formula.getType();
        if (Arrays.asList(realTypes).contains(type))
            return true;
        else if (type == ASTNode.Type.NAME || type == ASTNode.Type.NAME_TIME)
            return false;
        
        int chlength = formula.getNumChildren();
        for (int i = 0; i < chlength; i++)
        {
            if (! realEvaluation(formula.getChild(i)))
                return false;
        }
        
        return true;
    }
    
    private static String _ModelicaRealRepresentation(ASTNode real)
    {
        double value = real.getReal();
        if (real.getType() == ASTNode.Type.RATIONAL)
            value = ((double) real.getNumerator()) / ((double) real.getDenominator());
        String res = Double.toString(value);
        if (value < 0)
            res = "(" + res + ")";
        if (res.contains("e") || res.contains("."))
            return res;
        
        return res.concat(".0");
    }
    
    private StringBuilder _ModelicaRepresentation(ASTNode formula, boolean realContext)
    {
        StringBuilder sb = new StringBuilder();
        
        if (formula.isInfinity())
            return sb.append(INFINITY_CONSTANT_NAME);
        else if (formula.isNegInfinity())
            return sb.append(NEG_INFINITY_CONSTANT_NAME);
        else if (formula.isNaN())
            return sb.append(NAN_NAME);
        
        ASTNode.Type type = formula.getType();
        
        if (Arrays.asList(realTypes).contains(type))
        {
            if (! realContext)
                sb.append("Functions.real2bool(");
            sb.append(_ModelicaRealRepresentation(formula));
            if (! realContext)
                sb.append(')');
            return sb; 
        }
        
        int chlength = formula.getNumChildren();
        switch(type)
        {
        case CONSTANT_E:
            if (realContext)
                sb.append(NEPERO_CONSTANT_NAME);
            else
                sb.append(TRUE_CONSTANT_NAME);
            break;
            
        case CONSTANT_FALSE:
            if (realContext)
                sb.append(0.0);
            else
                sb.append(FALSE_CONSTANT_NAME);
            break;
            
        case CONSTANT_PI:
            if (realContext)
                sb.append(PI_CONSTANT_NAME);
            else
                sb.append(TRUE_CONSTANT_NAME);
            break;
            
        case CONSTANT_TRUE:
            if (realContext)
                sb.append(1.0);
            else
                sb.append(TRUE_CONSTANT_NAME);
            break;
            
        case DIVIDE:
            if (! realContext)
                sb.append("Functions.real2bool");
            sb.append('(');
            sb.append(_ModelicaRepresentation(formula.getChild(0), true));
            sb.append(' ').append(DIVISION_OPERATOR).append(' ');
            sb.append(_ModelicaRepresentation(formula.getChild(1), true));
            sb.append(')');
            break;
            
        case FUNCTION:
            List<ASTNode> args = new ArrayList<ASTNode>();
            for (int i = 0; i < chlength; i++)
                args.add(formula.getChild(i));
            AbstractFunction fun = _model.getFunctionById(formula.getName());
            sb.append('(');
            sb.append(_ModelicaRepresentation(fun.getExpansion(args), realContext));
            sb.append(')');
            break;
//            sb.append(FUNCTION_CLASS_NAME).append('.');
//            sb.append(formula.getName());
//            sb.append('(');
//            for (int i = 0; i < chlength; i++)
//            {
//                sb.append(_ModelicaRepresentation(formula.getChild(i)));
//                if (i < chlength - 1)
//                    sb.append(',').append(' ');
//            }
//            sb.append(')');
//            break;
            
        case FUNCTION_ABS:
            if (!realContext)
                sb.append("Functions.real2bool(");
            sb.append(ABSOLUTE_VALUE_FUNCTION_NAME);
            sb.append('(');
            sb.append(_ModelicaRepresentation(formula.getChild(0), true));
            sb.append(')');
            if (!realContext)
                sb.append(')');
            break;
           
        case FUNCTION_ARCCOS:
            if (!realContext)
                sb.append("Functions.real2bool(");
            sb.append(ARCCOS_FUNCTION_NAME);
            sb.append('(');
            sb.append(_ModelicaRepresentation(formula.getChild(0), true));
            sb.append(')');
            if (!realContext)
                sb.append(')');
            break;
            
         case FUNCTION_ARCCOSH:
             if (!realContext)
                 sb.append("Functions.real2bool(");
             sb.append(ARCCOSH_FUNCTION_NAME);
             sb.append('(');
             sb.append(_ModelicaRepresentation(formula.getChild(0), true));
             sb.append(')');
             if (!realContext)
                 sb.append(')');
             break;
             
         case FUNCTION_ARCCOT:
             if (!realContext)
                 sb.append("Functions.real2bool(");
             sb.append(ARCCOT_FUNCTION_NAME);
             sb.append('(');
             sb.append(_ModelicaRepresentation(formula.getChild(0), true));
             sb.append(')');
             if (!realContext)
                 sb.append(')');
             break;
             
         case FUNCTION_ARCCOTH:
             if (!realContext)
                 sb.append("Functions.real2bool(");
             sb.append(ARCCOTH_FUNCTION_NAME);
             sb.append('(');
             sb.append(_ModelicaRepresentation(formula.getChild(0), true));
             sb.append(')');
             if (!realContext)
                 sb.append(')');
             break;
             
         case FUNCTION_ARCCSC:
             if (!realContext)
                 sb.append("Functions.real2bool(");
             sb.append(ARCCSC_FUNCTION_NAME);
             sb.append('(');
             sb.append(_ModelicaRepresentation(formula.getChild(0), true));
             sb.append(')');
             if (!realContext)
                 sb.append(')');
             break;
             
         case FUNCTION_ARCCSCH:
             if (!realContext)
                 sb.append("Functions.real2bool(");
             sb.append(ARCCSCH_FUNCTION_NAME);
             sb.append('(');
             sb.append(_ModelicaRepresentation(formula.getChild(0), true));
             sb.append(')');
             if (!realContext)
                 sb.append(')');
             break;
             
         case FUNCTION_ARCSEC:
             if (!realContext)
                 sb.append("Functions.real2bool(");
             sb.append(ARCSEC_FUNCTION_NAME);
             sb.append('(');
             sb.append(_ModelicaRepresentation(formula.getChild(0), true));
             sb.append(')');
             if (!realContext)
                 sb.append(')');
             break;
             
         case FUNCTION_ARCSECH:
             if (!realContext)
                 sb.append("Functions.real2bool(");
             sb.append(ARCSECH_FUNCTION_NAME);
             sb.append('(');
             sb.append(_ModelicaRepresentation(formula.getChild(0), true));
             sb.append(')');
             if (!realContext)
                 sb.append(')');
             break;
             
         case FUNCTION_ARCSIN:
             if (!realContext)
                 sb.append("Functions.real2bool(");
             sb.append(ARCSIN_FUNCTION_NAME);
             sb.append('(');
             sb.append(_ModelicaRepresentation(formula.getChild(0), true));
             sb.append(')');
             if (!realContext)
                 sb.append(')');
             break;
             
         case FUNCTION_ARCSINH:
             if (!realContext)
                 sb.append("Functions.real2bool(");
             sb.append(ARCSINH_FUNCTION_NAME);
             sb.append('(');
             sb.append(_ModelicaRepresentation(formula.getChild(0), true));
             sb.append(')');
             if (!realContext)
                 sb.append(')');
             break;
             
         case FUNCTION_ARCTAN:
             if (!realContext)
                 sb.append("Functions.real2bool(");
             sb.append(ARCTAN_FUNCTION_NAME);
             sb.append('(');
             sb.append(_ModelicaRepresentation(formula.getChild(0), true));
             sb.append(')');
             if (!realContext)
                 sb.append(')');
             break;
             
         case FUNCTION_ARCTANH:
             if (!realContext)
                 sb.append("Functions.real2bool(");
             sb.append(ARCTANH_FUNCTION_NAME);
             sb.append('(');
             sb.append(_ModelicaRepresentation(formula.getChild(0), true));
             sb.append(')');
             if (!realContext)
                 sb.append(')');
             break;
             
         case FUNCTION_CEILING:
             if (!realContext)
                 sb.append("Functions.real2bool(");
             sb.append(CEILING_FUNCTION_NAME);
             sb.append('(');
             sb.append(_ModelicaRepresentation(formula.getChild(0), true));
             sb.append(')');
             if (!realContext)
                 sb.append(')');
             break;
             
         case FUNCTION_COS:
             if (!realContext)
                 sb.append("Functions.real2bool(");
             sb.append(COS_FUNCTION_NAME);
             sb.append('(');
             sb.append(_ModelicaRepresentation(formula.getChild(0), true));
             sb.append(')');
             if (!realContext)
                 sb.append(')');
             break;
             
         case FUNCTION_COSH:
             if (!realContext)
                 sb.append("Functions.real2bool(");
             sb.append(COSH_FUNCTION_NAME);
             sb.append('(');
             sb.append(_ModelicaRepresentation(formula.getChild(0), true));
             sb.append(')');
             if (!realContext)
                 sb.append(')');
             break;
             
         case FUNCTION_COT:
             if (!realContext)
                 sb.append("Functions.real2bool(");
             sb.append(COT_FUNCTION_NAME);
             sb.append('(');
             sb.append(_ModelicaRepresentation(formula.getChild(0), true));
             sb.append(')');
             if (!realContext)
                 sb.append(')');
             break;
             
         case FUNCTION_COTH:
             if (!realContext)
                 sb.append("Functions.real2bool(");
             sb.append(COTH_FUNCTION_NAME);
             sb.append('(');
             sb.append(_ModelicaRepresentation(formula.getChild(0), true));
             sb.append(')');
             if (!realContext)
                 sb.append(')');
             break;
             
         case FUNCTION_CSC:
             if (!realContext)
                 sb.append("Functions.real2bool(");
             sb.append(CSC_FUNCTION_NAME);
             sb.append('(');
             sb.append(_ModelicaRepresentation(formula.getChild(0), true));
             sb.append(')');
             if (!realContext)
                 sb.append(')');
             break;
             
         case FUNCTION_CSCH:
             if (!realContext)
                 sb.append("Functions.real2bool(");
             sb.append(CSCH_FUNCTION_NAME);
             sb.append('(');
             sb.append(_ModelicaRepresentation(formula.getChild(0), true));
             sb.append(')');
             if (!realContext)
                 sb.append(')');
             break;
             
         case FUNCTION_DELAY:
             if (!realContext)
                 sb.append("Functions.real2bool(");
             sb.append(DELAY_FUNCTION_NAME);
             sb.append('(');
             sb.append(_ModelicaRepresentation(formula.getChild(0), true));
             sb.append(',').append(' ');
             sb.append(_ModelicaRepresentation(formula.getChild(1), true));
             if (! realEvaluation(formula.getChild(1)))
             {
                 sb.append(',').append(' ');
                 sb.append(INFINITY_CONSTANT_NAME);
             }
             sb.append(')');
             if (!realContext)
                 sb.append(')');
             break;
             
         case FUNCTION_EXP:
             if (!realContext)
                 sb.append("Functions.real2bool(");
             sb.append(EXP_FUNCTION_NAME);
             sb.append('(');
             sb.append(_ModelicaRepresentation(formula.getChild(0), true));
             sb.append(')');
             if (!realContext)
                 sb.append(')');
             break;
             
         case FUNCTION_FACTORIAL:
             if (!realContext)
                 sb.append("Functions.real2bool(");
             sb.append(FACTORIAL_FUNCTION_NAME);
             sb.append('(');
             sb.append(_ModelicaRepresentation(formula.getChild(0), true));
             sb.append(')');
             if (!realContext)
                 sb.append(')');
             break;
             
         case FUNCTION_FLOOR:
             if (!realContext)
                 sb.append("Functions.real2bool(");
             sb.append(FLOOR_FUNCTION_NAME);
             sb.append('(');
             sb.append(_ModelicaRepresentation(formula.getChild(0), true));
             sb.append(')');
             if (!realContext)
                 sb.append(')');
             break;
             
         case FUNCTION_LN:
             if (!realContext)
                 sb.append("Functions.real2bool(");
             sb.append(NATURAL_LOGARITHM_FUNCTION_NAME);
             sb.append('(');
             sb.append(_ModelicaRepresentation(formula.getChild(0), true));
             sb.append(')');
             if (!realContext)
                 sb.append(')');
             break;
             
         case FUNCTION_LOG:
             if (!realContext)
                 sb.append("Functions.real2bool(");
             sb.append(LOGARITHM_FUNCTION_NAME);
             sb.append('(');
             if (formula.getNumChildren() == 1)
             {
                 sb.append(10);
                 sb.append(',').append(' ');
                 sb.append(_ModelicaRepresentation(formula.getChild(0), true));
             }
             else
             {
                 sb.append(_ModelicaRepresentation(formula.getChild(0), true));
                 sb.append(',').append(' ');
                 sb.append(_ModelicaRepresentation(formula.getChild(1), true));
             }
             sb.append(')');
             if (!realContext)
                 sb.append(')');
             break;
             
         case FUNCTION_MAX:
             if (!realContext)
                 sb.append("Functions.real2bool(");
             sb.append(MAXIMUM_FUNCTION_NAME);
             sb.append('(');
             if (chlength == 1)
             {
                 sb.append(_ModelicaRepresentation(formula.getChild(0), true));
                 sb.append(',').append(' ');
                 sb.append(NEG_INFINITY_CONSTANT_NAME);
             }
             else if (chlength == 2)
             {
                 sb.append(_ModelicaRepresentation(formula.getChild(0), true));
                 sb.append(',').append(' ');
                 sb.append(_ModelicaRepresentation(formula.getChild(1), true));
             }
             else
             {
                 ASTNode formularep = new ASTNode(formula);
                 formularep.removeChild(0);
                 sb.append(_ModelicaRepresentation(formula.getChild(0), true));
                 sb.append(',').append(' ');
                 sb.append(_ModelicaRepresentation(formularep, true));
             }
             sb.append(')');
             if (!realContext)
                 sb.append(')');
             break;
             
         case FUNCTION_MIN:
             if (!realContext)
                 sb.append("Functions.real2bool(");
             sb.append(MINIMUM_FUNCTION_NAME);
             sb.append('(');
             if (chlength == 1)
             {
                 sb.append(_ModelicaRepresentation(formula.getChild(0), true));
                 sb.append(',').append(' ');
                 sb.append(INFINITY_CONSTANT_NAME);
             }
             else 
             if (chlength == 2)
             {
                 sb.append(_ModelicaRepresentation(formula.getChild(0), true));
                 sb.append(',').append(' ');
                 sb.append(_ModelicaRepresentation(formula.getChild(1), true));
             }
             else
             {
                 ASTNode formularep = new ASTNode(formula);
                 formularep.removeChild(0);
                 sb.append(_ModelicaRepresentation(formula.getChild(0), true));
                 sb.append(',').append(' ');
                 sb.append(_ModelicaRepresentation(formularep, true));
             }
             sb.append(')');
             if (!realContext)
                 sb.append(')');
             break;
             
         case FUNCTION_POWER:
             if (!realContext)
                 sb.append("Functions.real2bool(");
             sb.append(POWER_FUNCTION_NAME);
             sb.append('(');
             sb.append(_ModelicaRepresentation(formula.getChild(0), true));
             sb.append(',').append(' ');
             sb.append(_ModelicaRepresentation(formula.getChild(1), true));
             sb.append(')');
             if (!realContext)
                 sb.append(')');
             break;
             
         case FUNCTION_QUOTIENT:
             if (!realContext)
                 sb.append("Functions.real2bool(");
             sb.append(QUOTIENT_FUNCTION_NAME);
             sb.append('(');
             sb.append(_ModelicaRepresentation(formula.getChild(0), true));
             sb.append(',').append(' ');
             sb.append(_ModelicaRepresentation(formula.getChild(1), true));
             sb.append(')');
             if (!realContext)
                 sb.append(')');
             break;
             
         case FUNCTION_RATE_OF:
             if (!realContext)
                 sb.append("Functions.real2bool(");
             sb.append(RATE_OF_FUNCTION_NAME);
             sb.append('(');
             sb.append(_ModelicaRepresentation(formula.getChild(0), true));
             sb.append(')');
             if (!realContext)
                 sb.append(')');
             break;
             
         case FUNCTION_REM:
             if (!realContext)
                 sb.append("Functions.real2bool(");
             sb.append(REMAINDER_FUNCTION_NAME);
             sb.append('(');
             sb.append(_ModelicaRepresentation(formula.getChild(0), true));
             sb.append(',').append(' ');
             sb.append(_ModelicaRepresentation(formula.getChild(1), true));
             sb.append(')');
             if (!realContext)
                 sb.append(')');
             break;
             
         case FUNCTION_ROOT:
             if (!realContext)
                 sb.append("Functions.real2bool(");
             sb.append(ROOT_FUNCTION_NAME);
             sb.append('(');
             if (formula.getNumChildren() == 1)
             {
                 sb.append(2);
                 sb.append(',').append(' ');
                 sb.append(_ModelicaRepresentation(formula.getChild(0), true));
             }
             else
             {
                 sb.append(_ModelicaRepresentation(formula.getChild(0), true));
                 sb.append(',').append(' ');
                 sb.append(_ModelicaRepresentation(formula.getChild(1), true));
             }
             sb.append(')');
             if (!realContext)
                 sb.append(')');
             break;
             
         case FUNCTION_SEC:
             if (!realContext)
                 sb.append("Functions.real2bool(");
             sb.append(SEC_FUNCTION_NAME);
             sb.append('(');
             sb.append(_ModelicaRepresentation(formula.getChild(0), true));
             sb.append(')');
             if (!realContext)
                 sb.append(')');
             break;
             
         case FUNCTION_SECH:
             if (!realContext)
                 sb.append("Functions.real2bool(");
             sb.append(SECH_FUNCTION_NAME);
             sb.append('(');
             sb.append(_ModelicaRepresentation(formula.getChild(0), true));
             sb.append(')');
             if (!realContext)
                 sb.append(')');
             break;
             
         case FUNCTION_SIN:
             if (!realContext)
                 sb.append("Functions.real2bool(");
             sb.append(SIN_FUNCTION_NAME);
             sb.append('(');
             sb.append(_ModelicaRepresentation(formula.getChild(0), true));
             sb.append(')');
             if (!realContext)
                 sb.append(')');
             break;
             
         case FUNCTION_SINH:
             if (!realContext)
                 sb.append("Functions.real2bool(");
             sb.append(SINH_FUNCTION_NAME);
             sb.append('(');
             sb.append(_ModelicaRepresentation(formula.getChild(0), true));
             sb.append(')');
             if (!realContext)
                 sb.append(')');
             break;
             
         case FUNCTION_TAN:
             if (!realContext)
                 sb.append("Functions.real2bool(");
             sb.append(TAN_FUNCTION_NAME);
             sb.append('(');
             sb.append(_ModelicaRepresentation(formula.getChild(0), true));
             sb.append(')');
             if (!realContext)
                 sb.append(')');
             break;
             
         case FUNCTION_TANH:
             if (!realContext)
                 sb.append("Functions.real2bool(");
             sb.append(TANH_FUNCTION_NAME);
             sb.append('(');
             sb.append(_ModelicaRepresentation(formula.getChild(0), true));
             sb.append(')');
             if (!realContext)
                 sb.append(')');
             break;
             
         case LOGICAL_AND:
             if (chlength == 0)
             {
                 if (realContext)
                     sb.append(1.0);
                 else
                     sb.append(TRUE_CONSTANT_NAME);
                 break;
             }
             if (chlength == 1)
             {
                 sb.append(_ModelicaRepresentation(formula.getChild(0), realContext));
                 break;
             }
             if (realContext)
                 sb.append("Functions.bool2real");
             sb.append('(');
             for (int i = 0; i < chlength; i++)
             {
                 sb.append(_ModelicaRepresentation(formula.getChild(i), false));
                 if (i < chlength - 1)
                     sb.append(' ').append(AND_OPERATOR).append(' ');
             }
             sb.append(')');
             break;
             
         case LOGICAL_IMPLIES:
             if (realContext)
                 sb.append("Functions.bool2real(");
             sb.append(IMPLICATION_FUNCTION_NAME);
             sb.append('(');
             sb.append(_ModelicaRepresentation(formula.getChild(0), false));
             sb.append(',').append(' ');
             sb.append(_ModelicaRepresentation(formula.getChild(1), false));
             sb.append(')');
             if (realContext)
                 sb.append(")");
             break;
             
         case LOGICAL_NOT:
             if (realContext)
                 sb.append("Functions.bool2real");
             sb.append('(');
             sb.append(NOT_OPERATOR).append(' ');
             sb.append(_ModelicaRepresentation(formula.getChild(0), false));
             sb.append(')');
             break;
             
         case LOGICAL_OR:
             if (chlength == 0)
             {
                 if (realContext)
                     sb.append(0.0);
                 else
                     sb.append(FALSE_CONSTANT_NAME);
                 break;
             }
             if (chlength == 1)
             {
                 sb.append(_ModelicaRepresentation(formula.getChild(0), realContext));
                 break;
             }
             if (realContext)
                 sb.append("Functions.bool2real");
             sb.append('(');
             for (int i = 0; i < chlength; i++)
             {
                 sb.append(_ModelicaRepresentation(formula.getChild(i), false));
                 if (i < chlength - 1)
                     sb.append(' ').append(OR_OPERATOR).append(' ');
             }
             sb.append(')');
             break;
             
         case LOGICAL_XOR:
             if (chlength == 0)
             {
                 if (realContext)
                     sb.append(0.0);
                 else
                     sb.append(FALSE_CONSTANT_NAME);
                 break;
             }
             if (chlength == 1)
             {
                 sb.append(_ModelicaRepresentation(formula.getChild(0), realContext));
                 break;
             }
             if (realContext)
                 sb.append("Functions.bool2real(");
             sb.append(XOR_FUNCTION_NAME);
             sb.append('(');
             if (chlength == 2)
             {
                 sb.append(_ModelicaRepresentation(formula.getChild(0), false));
                 sb.append(',').append(' ');
                 sb.append(_ModelicaRepresentation(formula.getChild(1), false));
             }
             else
             {
                 ASTNode formularep = new ASTNode(formula);
                 formularep.removeChild(0);
                 sb.append(_ModelicaRepresentation(formula.getChild(0), false));
                 sb.append(',').append(' ');
                 sb.append(_ModelicaRepresentation(formularep, false));
             }
             sb.append(')');
             if (realContext)
                 sb.append(")");
             break;
             
         case MINUS:
             if (!realContext)
                 sb.append("Functions.real2bool");
             if (chlength == 2)
             {
                 sb.append('(');
                 sb.append(_ModelicaRepresentation(formula.getChild(0), true));
                 sb.append(' ').append(SUBTRACTION_OPERATOR).append(' ');
                 sb.append(_ModelicaRepresentation(formula.getChild(1), true));
                 sb.append(')');
             }
             else
             {
                 sb.append('(');
                 sb.append(SUBTRACTION_OPERATOR).append(' ');
                 sb.append(_ModelicaRepresentation(formula.getChild(0), true));
                 sb.append(')');
             }
             break;
             
         case NAME:
             String name = formula.getName();
             if (_efficiency == 2)
             {
                 for (AbstractObject o : _constants)
                 {
                     if (o.getId().equals(name))
                     {
                         if (o instanceof AbstractParameter)
                             sb.append(PARAMETER_CLASS_NAME).append('.');
                         else if (o instanceof AbstractCompartment)
                             sb.append("Class_").append(o.getId()).append('.');
                         else if (o instanceof AbstractSpecies)
                         {
                             AbstractCompartment c = ((AbstractSpecies) o).getCompartment();
                             sb.append("Class_").append(c.getId()).append('.');
                         }
                         else if (o instanceof AbstractReaction)
                             sb.append(REACTION_CLASS_NAME).append('.');
                         else if (o instanceof AbstractSpeciesReference)
                             sb.append(REACTION_CLASS_NAME).append('.');
                         
                         break;
                     }
                 }
             }
             sb.append(formula.getName());
             break;
             
         case NAME_TIME:
             if (!realContext)
                 sb.append("Functions.real2bool(");
             sb.append(TIME_VARIABLE_NAME);
             break;
             
         case PLUS:
             if (chlength == 0)
             {
                 if (!realContext)
                     sb.append(FALSE_CONSTANT_NAME);
                 else
                     sb.append('0');
                 break;
             }
             if (chlength == 1)
             {
                 sb.append(_ModelicaRepresentation(formula.getChild(0), true));
                 break;
             }
             if (!realContext)
                 sb.append("Functions.real2bool");
             sb.append('(');
             for (int i = 0; i < chlength; i++)
             {
                 sb.append(_ModelicaRepresentation(formula.getChild(i), true));
                 if (i < chlength - 1)
                     sb.append(' ').append(SUM_OPERATOR).append(' ');
             }
             sb.append(')');
             break;
             
         case POWER:
             if (!realContext)
                 sb.append("Functions.real2bool");
             sb.append('(');
             sb.append(_ModelicaRepresentation(formula.getChild(0), true));
             sb.append(' ').append(POWER_OPERATOR).append(' ');
             sb.append(_ModelicaRepresentation(formula.getChild(1), true));
             sb.append(')');
             break;
             
         case RELATIONAL_EQ:
             if (realContext)
                 sb.append("Functions.bool2real(");
             else if (chlength > 2)
                 sb.append('(');
             for (int i = 0; i < chlength - 1; i++)
             {
                 sb.append(EQUALITY_FUNCTION_NAME);
                 sb.append('(');
                 sb.append(_ModelicaRepresentation(formula.getChild(i), true));
                 sb.append(',').append(' ');
                 sb.append(_ModelicaRepresentation(formula.getChild(i + 1), true));
                 sb.append(')');
                 if (i < chlength - 2)
                 {
                     sb.append(' ').append(AND_OPERATOR).append(' ');
                 }
             }
             if (realContext)
                 sb.append(")");
             else if (chlength > 2) 
                 sb.append(')');
             break;
             
         case RELATIONAL_GEQ:
             if (realContext)
                 sb.append("Functions.bool2real(");
             else if (chlength > 2)
                 sb.append('(');
             for (int i = 0; i < chlength - 1; i++)
             {
                 sb.append('(');
                 sb.append(_ModelicaRepresentation(formula.getChild(i), true));
                 sb.append(' ').append(GEQ_OPERATOR).append(' ');
                 sb.append(_ModelicaRepresentation(formula.getChild(i + 1), true));
                 sb.append(')');
                 if (i < chlength - 2)
                 {
                     sb.append(' ').append(AND_OPERATOR).append(' ');
                 }
             }
             if (realContext)
                 sb.append(')');
             else if (chlength > 2) 
                 sb.append(')');
             break;
             
         case RELATIONAL_GT:
             if (realContext)
                 sb.append("Functions.bool2real(");
             else if (chlength > 2)
                 sb.append('(');
             for (int i = 0; i < chlength - 1; i++)
             {
                 sb.append('(');
                 sb.append(_ModelicaRepresentation(formula.getChild(i), true));
                 sb.append(' ').append(GT_OPERATOR).append(' ');
                 sb.append(_ModelicaRepresentation(formula.getChild(i + 1), true));
                 sb.append(')');
                 if (i < chlength - 2)
                 {
                     sb.append(' ').append(AND_OPERATOR).append(' ');
                 }
             }
             if (realContext)
                 sb.append(")");
             else if (chlength > 2) 
                 sb.append(')');
             break;
             
         case RELATIONAL_LEQ:
             if (realContext)
                 sb.append("Functions.bool2real(");
             else if (chlength > 2)
                 sb.append('(');
             for (int i = 0; i < chlength - 1; i++)
             {
                 sb.append('(');
                 sb.append(_ModelicaRepresentation(formula.getChild(i), true));
                 sb.append(' ').append(LEQ_OPERATOR).append(' ');
                 sb.append(_ModelicaRepresentation(formula.getChild(i + 1), true));
                 sb.append(')');
                 if (i < chlength - 2)
                 {
                     sb.append(' ').append(AND_OPERATOR).append(' ');
                 }
             }
             if (realContext)
                 sb.append(")");
             else if (chlength > 2) 
                 sb.append(')');
             break;
             
         case RELATIONAL_LT:
             if (realContext)
                 sb.append("Functions.bool2real(");
             else if (chlength > 2)
                 sb.append('(');
             for (int i = 0; i < chlength - 1; i++)
             {
                 sb.append('(');
                 sb.append(_ModelicaRepresentation(formula.getChild(i), true));
                 sb.append(' ').append(LT_OPERATOR).append(' ');
                 sb.append(_ModelicaRepresentation(formula.getChild(i + 1), true));
                 sb.append(')');
                 if (i < chlength - 2)
                 {
                     sb.append(' ').append(AND_OPERATOR).append(' ');
                 }
             }
             if (realContext)
                 sb.append(")");
             else if (chlength > 2) 
                 sb.append(')');
             break;
             
         case RELATIONAL_NEQ:
             if (realContext)
                 sb.append("Functions.bool2real(");
             sb.append('(');
             sb.append(NOT_OPERATOR).append(' ').append(EQUALITY_FUNCTION_NAME);
             sb.append('(');
             sb.append(_ModelicaRepresentation(formula.getChild(0), true));
             sb.append(',').append(' ');
             sb.append(_ModelicaRepresentation(formula.getChild(1), true));
             sb.append(')');
             sb.append(')');
             break;
             
         case TIMES:
             if (chlength == 0)
             {
                 if (!realContext)
                     sb.append(TRUE_CONSTANT_NAME);
                 else
                     sb.append('1');
                 break;
             }
             if (chlength == 1)
             {
                 sb.append(_ModelicaRepresentation(formula.getChild(0), true));
                 break;
             }
             if (!realContext)
                 sb.append("Functions.real2bool");
             sb.append('(');
             for (int i = 0; i < chlength; i++)
             {
                 sb.append(_ModelicaRepresentation(formula.getChild(i), true));
                 if (i < chlength - 1)
                     sb.append(' ').append(MULTIPLICATION_OPERATOR).append(' ');
             }
             sb.append(')');
             break;
             
         case FUNCTION_PIECEWISE:
             sb.append('(');
             for (int i = 0; i < chlength - 1; i += 2)
             {
                 sb.append("if ");
                 sb.append(_ModelicaRepresentation(formula.getChild(i + 1), false));
                 sb.append(" then ");
                 sb.append(_ModelicaRepresentation(formula.getChild(i), realContext));
                 sb.append(" else");
             }
             sb.append(' ');
             if (chlength % 2 == 1)
                 sb.append(_ModelicaRepresentation(formula.getChild(chlength - 1), realContext));
             else if (realContext)
                 sb.append(0.0);
             else
                 sb.append(FALSE_CONSTANT_NAME);
             sb.append(')');
             break;
             
         default: throw new Error("Not recognized case: " + type);
        }
        
        return sb;
    }
    
    public String ModelicaRealRepresentation(ASTNode formula)
    {
        return _ModelicaRepresentation(formula, true).toString();
    }
    
    public String ModelicaBooleanRepresentation(ASTNode formula)
    {
        return _ModelicaRepresentation(formula, false).toString();
    }
    
    public static String ModelicaUnitRepresentation(UnitDefinition unit)
    {
        if (unit == null)
            return "";
        
        UnitDefinition ud = unit.clone();
        ud.convertToSIUnits();
        String repr = "";
        double totmult = 1;
        int ulength = ud.getNumUnits();
        for (int i = 0; i < ulength; i++)
        {
            Unit u = ud.getUnit(i);
            String name = "";
            switch(u.getKind())
            {
            case AMPERE:         name = "A";     break;
            case KELVIN:         name = "K";     break;
            case SECOND:         name = "s";     break;
            case METRE:          name = "m";     break;
            case KILOGRAM:       name = "kg";    break;
            case CANDELA:        name = "cd";    break;
            case MOLE:           name = "mol";   break;
            case DIMENSIONLESS:  name = "1";     break;
            default:                                                        return "";
            }
            
            double scale = u.getScale();
            double exp = u.getExponent();
            double mult = u.getMultiplier();
            mult = mult * Math.pow(10, scale);
            mult = Math.pow(mult, exp);
            totmult = totmult * mult;
            
            if (u.getExponent() != 1)
                repr += name + u.getExponent();
            
            if (i < ulength - 1)
                repr += '.';
        }
        
        return repr;
    }
    
    public static ASTNode RenameLocalParameter(AbstractReaction r, ASTNode formula)
    {
        if (formula.getType() == ASTNode.Type.NAME)
        {
            String name = formula.getName();
            AbstractLocalParameter lp = r.getLocalParameterById(name);
            if (lp != null)
            {
                formula.setName(r.getId() + "_" + lp.getId());
            }
        }
        
        int chlength = formula.getNumChildren();
        for (int i = 0; i < chlength; i++)
        {
            RenameLocalParameter(r, formula.getChild(i));
        }
        
        return formula;
    }

    public static ASTNode RenameVariable(ASTNode formula, String oldname, String newname)
    {
        if (formula.getType() == ASTNode.Type.NAME)
        {
            if (formula.getName().equals(oldname))
                formula.setName(newname);
        }
        
        int chlength = formula.getNumChildren();
        for (int i = 0; i < chlength; i++)
        {
            //formula.replaceChild(i, RenameVariable(formula.getChild(i), oldname, newname));
            RenameVariable(formula.getChild(i), oldname, newname);
        }
        
        return formula;
    }
}
