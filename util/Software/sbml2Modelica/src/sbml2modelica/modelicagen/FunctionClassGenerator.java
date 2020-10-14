/**
 * Functionjava
 *
 * TODO
 *
 * @author  filippo
 * @project SBML2Modelica
 */
package sbml2modelica.modelicagen;

import java.io.File;
import java.util.HashSet;

import sbml2modelica.abstractmodel.AbstractFunction;
import sbml2modelica.abstractmodel.AbstractModel;
import sbml2modelica.utils.exceptions.NullAbstractModelException;

/**
 * @author Maggioli Filippo
 *
 */
public class FunctionClassGenerator extends ClassGenerator
{
    private HashSet<AbstractFunction>   funcs;
    
    public FunctionClassGenerator(AbstractModel model, int efficiency) 
            throws NullAbstractModelException
    {
        super(model, efficiency);
        this.funcs = this._model.getFunctions();
    }
    
    private void classHeader()
    {
        _strcls.append("class ").append(FUNCTION_CLASS_NAME);
        _strcls.append(System.lineSeparator());
        _strcls.append("    extends Modelica.Icons.UtilitiesPackage;").append(System.lineSeparator());
        _strcls.append(System.lineSeparator()).append(System.lineSeparator());
    }
    
    private void classCustomFunctions()
    {
        for (AbstractFunction f : this.funcs)
        {
            _strcls.append("    function ").append(f.getId()).append(System.lineSeparator());
            for (String arg : f)
            {
                _strcls.append("        input Real ").append(arg).append(';');
                _strcls.append(System.lineSeparator());
            }
            _strcls.append(System.lineSeparator());
            if (f.isRealValued())
                _strcls.append("        output Real result;").append(System.lineSeparator());
            else
                _strcls.append("        output Boolean result;").append(System.lineSeparator());
            _strcls.append("        algorithm").append(System.lineSeparator());
            _strcls.append("            result := ");
            _strcls.append(ModelicaRealRepresentation(f.getBody()));
            _strcls.append(';').append(System.lineSeparator());
            _strcls.append("    end ").append(f.getId()).append(';');
            _strcls.append(System.lineSeparator()).append(System.lineSeparator());
        }
        if (this.funcs.size() > 0)
            _strcls.append(System.lineSeparator());
    }
    
    private void classDefaultFunctions()
    {
        _strcls.append("    function ").append(ARCCOSH_FUNCTION_LOCAL_NAME);
        _strcls.append(System.lineSeparator());
        _strcls.append("        input  Real x;").append(System.lineSeparator());
        _strcls.append("        output Real y;").append(System.lineSeparator());
        _strcls.append("        algorithm").append(System.lineSeparator());
        _strcls.append("            y := log(x + sqrt(x^2 - 1));");
        _strcls.append(System.lineSeparator());
        _strcls.append("    end ").append(ARCCOSH_FUNCTION_LOCAL_NAME);
        _strcls.append(';').append(System.lineSeparator()).append(System.lineSeparator());

        _strcls.append("    function ").append(ARCCOT_FUNCTION_LOCAL_NAME);
        _strcls.append(System.lineSeparator());
        _strcls.append("        input  Real x;").append(System.lineSeparator());
        _strcls.append("        output Real y;").append(System.lineSeparator());
        _strcls.append("        algorithm").append(System.lineSeparator());
        _strcls.append("            if abs(x) < ").append(EPSILON_CONSTANT_NAME);
        _strcls.append(" then").append(System.lineSeparator());
        _strcls.append("                y := atan(sign(x) * ").append(INFINITY_CONSTANT_NAME);
        _strcls.append(");").append(System.lineSeparator()).append("            else");
        _strcls.append(System.lineSeparator());
        _strcls.append("                y := atan(1 / x);");
        _strcls.append(System.lineSeparator()).append("            end if;");
        _strcls.append(System.lineSeparator());
        _strcls.append("    end ").append(ARCCOT_FUNCTION_LOCAL_NAME);
        _strcls.append(';').append(System.lineSeparator()).append(System.lineSeparator());

        _strcls.append("    function ").append(ARCCOTH_FUNCTION_LOCAL_NAME);
        _strcls.append(System.lineSeparator());
        _strcls.append("        input  Real x;").append(System.lineSeparator());
        _strcls.append("        output Real y;").append(System.lineSeparator());
        _strcls.append("        algorithm").append(System.lineSeparator());
        _strcls.append("            y := (1 / 2) * log((x + 1) / (x - 1));");
        _strcls.append(System.lineSeparator());
        _strcls.append("    end ").append(ARCCOTH_FUNCTION_LOCAL_NAME);
        _strcls.append(';').append(System.lineSeparator()).append(System.lineSeparator());

        _strcls.append("    function ").append(ARCCSC_FUNCTION_LOCAL_NAME);
        _strcls.append(System.lineSeparator());
        _strcls.append("        input  Real x;").append(System.lineSeparator());
        _strcls.append("        output Real y;").append(System.lineSeparator());
        _strcls.append("        algorithm").append(System.lineSeparator());
        _strcls.append("            y := asin(1 / x);");
        _strcls.append(System.lineSeparator());
        _strcls.append("    end ").append(ARCCSC_FUNCTION_LOCAL_NAME);
        _strcls.append(';').append(System.lineSeparator()).append(System.lineSeparator());

        _strcls.append("    function ").append(ARCCSCH_FUNCTION_LOCAL_NAME);
        _strcls.append(System.lineSeparator());
        _strcls.append("        input  Real x;").append(System.lineSeparator());
        _strcls.append("        output Real y;").append(System.lineSeparator());
        _strcls.append("        algorithm").append(System.lineSeparator());
        _strcls.append("            y := sign(x) * log((1 + sqrt(1 + x^2)) / abs(x));");
        _strcls.append(System.lineSeparator());
        _strcls.append("    end ").append(ARCCSCH_FUNCTION_LOCAL_NAME);
        _strcls.append(';').append(System.lineSeparator()).append(System.lineSeparator());

        _strcls.append("    function ").append(ARCSEC_FUNCTION_LOCAL_NAME);
        _strcls.append(System.lineSeparator());
        _strcls.append("        input  Real x;").append(System.lineSeparator());
        _strcls.append("        output Real y;").append(System.lineSeparator());
        _strcls.append("        algorithm").append(System.lineSeparator());
        _strcls.append("            y := acos(1 / x);");
        _strcls.append(System.lineSeparator());
        _strcls.append("    end ").append(ARCSEC_FUNCTION_LOCAL_NAME);
        _strcls.append(';').append(System.lineSeparator()).append(System.lineSeparator());

        _strcls.append("    function ").append(ARCSECH_FUNCTION_LOCAL_NAME);
        _strcls.append(System.lineSeparator());
        _strcls.append("        input  Real x;").append(System.lineSeparator());
        _strcls.append("        output Real y;").append(System.lineSeparator());
        _strcls.append("        algorithm").append(System.lineSeparator());
        _strcls.append("            y := log((1 + sqrt(1 - x^2)) / x);");
        _strcls.append(System.lineSeparator());
        _strcls.append("    end ").append(ARCSECH_FUNCTION_LOCAL_NAME);
        _strcls.append(';').append(System.lineSeparator()).append(System.lineSeparator());

        _strcls.append("    function ").append(ARCSINH_FUNCTION_LOCAL_NAME);
        _strcls.append(System.lineSeparator());
        _strcls.append("        input  Real x;").append(System.lineSeparator());
        _strcls.append("        output Real y;").append(System.lineSeparator());
        _strcls.append("        algorithm").append(System.lineSeparator());
        _strcls.append("            y := log(x + sqrt(x^2 + 1));");
        _strcls.append(System.lineSeparator());
        _strcls.append("    end ").append(ARCSINH_FUNCTION_LOCAL_NAME);
        _strcls.append(';').append(System.lineSeparator()).append(System.lineSeparator());

        _strcls.append("    function ").append(ARCTANH_FUNCTION_LOCAL_NAME);
        _strcls.append(System.lineSeparator());
        _strcls.append("        input  Real x;").append(System.lineSeparator());
        _strcls.append("        output Real y;").append(System.lineSeparator());
        _strcls.append("        algorithm").append(System.lineSeparator());
        _strcls.append("            y := (1 / 2) * log((1 + x) / (1 - x));");
        _strcls.append(System.lineSeparator());
        _strcls.append("    end ").append(ARCTANH_FUNCTION_LOCAL_NAME);
        _strcls.append(';').append(System.lineSeparator()).append(System.lineSeparator());

        _strcls.append("    function ").append(COT_FUNCTION_LOCAL_NAME);
        _strcls.append(System.lineSeparator());
        _strcls.append("        input  Real x;").append(System.lineSeparator());
        _strcls.append("        output Real y;").append(System.lineSeparator());
        _strcls.append("        algorithm").append(System.lineSeparator());
        _strcls.append("            y := 1 / tan(x);");
        _strcls.append(System.lineSeparator());
        _strcls.append("    end ").append(COT_FUNCTION_LOCAL_NAME);
        _strcls.append(';').append(System.lineSeparator()).append(System.lineSeparator());

        _strcls.append("    function ").append(COTH_FUNCTION_LOCAL_NAME);
        _strcls.append(System.lineSeparator());
        _strcls.append("        input  Real x;").append(System.lineSeparator());
        _strcls.append("        output Real y;").append(System.lineSeparator());
        _strcls.append("        algorithm").append(System.lineSeparator());
        _strcls.append("            y := 1 / tanh(x);");
        _strcls.append(System.lineSeparator());
        _strcls.append("    end ").append(COTH_FUNCTION_LOCAL_NAME);
        _strcls.append(';').append(System.lineSeparator()).append(System.lineSeparator());

        _strcls.append("    function ").append(CSC_FUNCTION_LOCAL_NAME);
        _strcls.append(System.lineSeparator());
        _strcls.append("        input  Real x;").append(System.lineSeparator());
        _strcls.append("        output Real y;").append(System.lineSeparator());
        _strcls.append("        algorithm").append(System.lineSeparator());
        _strcls.append("            y := 1 / sin(x);");
        _strcls.append(System.lineSeparator());
        _strcls.append("    end ").append(CSC_FUNCTION_LOCAL_NAME);
        _strcls.append(';').append(System.lineSeparator()).append(System.lineSeparator());

        _strcls.append("    function ").append(CSCH_FUNCTION_LOCAL_NAME);
        _strcls.append(System.lineSeparator());
        _strcls.append("        input  Real x;").append(System.lineSeparator());
        _strcls.append("        output Real y;").append(System.lineSeparator());
        _strcls.append("        algorithm").append(System.lineSeparator());
        _strcls.append("            y := 1 / sinh(x);");
        _strcls.append(System.lineSeparator());
        _strcls.append("    end ").append(CSCH_FUNCTION_LOCAL_NAME);
        _strcls.append(';').append(System.lineSeparator()).append(System.lineSeparator());

        _strcls.append("    function ").append(FACTORIAL_FUNCTION_LOCAL_NAME);
        _strcls.append(System.lineSeparator());
        _strcls.append("        input  Real n;").append(System.lineSeparator());
        _strcls.append("        output Real y;").append(System.lineSeparator());
        _strcls.append("        algorithm").append(System.lineSeparator());
        _strcls.append("            if eq(n, 0) then").append(System.lineSeparator());
        _strcls.append("                y := 1;").append(System.lineSeparator());
        _strcls.append("            else").append(System.lineSeparator());
        _strcls.append("                y := n * factorial(n - 1);").append(System.lineSeparator());
        _strcls.append("            end if;").append(System.lineSeparator());
        _strcls.append("    end ").append(FACTORIAL_FUNCTION_LOCAL_NAME);
        _strcls.append(';').append(System.lineSeparator()).append(System.lineSeparator());

        _strcls.append("    function ").append(LOGARITHM_FUNCTION_LOCAL_NAME);
        _strcls.append(System.lineSeparator());
        _strcls.append("        input  Real base;").append(System.lineSeparator());
        _strcls.append("        input  Real arg;").append(System.lineSeparator());
        _strcls.append("        output Real y;").append(System.lineSeparator());
        _strcls.append("        algorithm").append(System.lineSeparator());
        _strcls.append("            y := log(arg) / log(base);");
        _strcls.append(System.lineSeparator());
        _strcls.append("    end ").append(LOGARITHM_FUNCTION_LOCAL_NAME);
        _strcls.append(';').append(System.lineSeparator()).append(System.lineSeparator());

        _strcls.append("    function ").append(POWER_FUNCTION_LOCAL_NAME);
        _strcls.append(System.lineSeparator());
        _strcls.append("        input  Real x;").append(System.lineSeparator());
        _strcls.append("        input  Real power;").append(System.lineSeparator());
        _strcls.append("        output Real y;").append(System.lineSeparator());
        _strcls.append("        algorithm").append(System.lineSeparator());
        _strcls.append("            y := x^power;");
        _strcls.append(System.lineSeparator());
        _strcls.append("    end ").append(POWER_FUNCTION_LOCAL_NAME);
        _strcls.append(';').append(System.lineSeparator()).append(System.lineSeparator());

        _strcls.append("    function ").append(ROOT_FUNCTION_LOCAL_NAME);
        _strcls.append(System.lineSeparator());
        _strcls.append("        input  Real degree;").append(System.lineSeparator());
        _strcls.append("        input  Real x;").append(System.lineSeparator());
        _strcls.append("        output Real y;").append(System.lineSeparator());
        _strcls.append("        algorithm").append(System.lineSeparator());
        _strcls.append("            y := x^(1 / degree);");
        _strcls.append(System.lineSeparator());
        _strcls.append("    end ").append(ROOT_FUNCTION_LOCAL_NAME);
        _strcls.append(';').append(System.lineSeparator()).append(System.lineSeparator());

        _strcls.append("    function ").append(SEC_FUNCTION_LOCAL_NAME);
        _strcls.append(System.lineSeparator());
        _strcls.append("        input  Real x;").append(System.lineSeparator());
        _strcls.append("        output Real y;").append(System.lineSeparator());
        _strcls.append("        algorithm").append(System.lineSeparator());
        _strcls.append("            y := 1 / cos(x);");
        _strcls.append(System.lineSeparator());
        _strcls.append("    end ").append(SEC_FUNCTION_LOCAL_NAME);
        _strcls.append(';').append(System.lineSeparator()).append(System.lineSeparator());

        _strcls.append("    function ").append(SECH_FUNCTION_LOCAL_NAME);
        _strcls.append(System.lineSeparator());
        _strcls.append("        input  Real x;").append(System.lineSeparator());
        _strcls.append("        output Real y;").append(System.lineSeparator());
        _strcls.append("        algorithm").append(System.lineSeparator());
        _strcls.append("            y := 1 / cosh(x);");
        _strcls.append(System.lineSeparator());
        _strcls.append("    end ").append(SECH_FUNCTION_LOCAL_NAME);
        _strcls.append(';').append(System.lineSeparator()).append(System.lineSeparator());

        _strcls.append("    function ").append(IMPLICATION_FUNCTION_LOCAL_NAME);
        _strcls.append(System.lineSeparator());
        _strcls.append("        input  Boolean x1;").append(System.lineSeparator());
        _strcls.append("        input  Boolean x2;").append(System.lineSeparator());
        _strcls.append("        output Boolean y;").append(System.lineSeparator());
        _strcls.append("        algorithm").append(System.lineSeparator());
        _strcls.append("            y := not x1 or x2;");
        _strcls.append(System.lineSeparator());
        _strcls.append("    end ").append(IMPLICATION_FUNCTION_LOCAL_NAME);
        _strcls.append(';').append(System.lineSeparator()).append(System.lineSeparator());

        _strcls.append("    function ").append(XOR_FUNCTION_LOCAL_NAME);
        _strcls.append(System.lineSeparator());
        _strcls.append("        input  Boolean x1;").append(System.lineSeparator());
        _strcls.append("        input  Boolean x2;").append(System.lineSeparator());
        _strcls.append("        output Boolean y;").append(System.lineSeparator());
        _strcls.append("        algorithm").append(System.lineSeparator());
        _strcls.append("            y := (x1 and not x2) or (not x1 and x2);");
        _strcls.append(System.lineSeparator());
        _strcls.append("    end ").append(XOR_FUNCTION_LOCAL_NAME);
        _strcls.append(';').append(System.lineSeparator()).append(System.lineSeparator());

        _strcls.append("    function ").append(EQUALITY_FUNCTION_LOCAL_NAME);
        _strcls.append(System.lineSeparator());
        _strcls.append("        input  Real x1;").append(System.lineSeparator());
        _strcls.append("        input  Real x2;").append(System.lineSeparator());
        _strcls.append("        output Boolean y;").append(System.lineSeparator());
        _strcls.append("        algorithm").append(System.lineSeparator());
        _strcls.append("            y := abs(x1 - x2) / max(abs(x1), ");
        _strcls.append(ETA_CONSTANT_NAME).append(')');
        _strcls.append(" < ").append(EPSILON_CONSTANT_NAME).append(';');
        _strcls.append(System.lineSeparator());
        _strcls.append("    end ").append(EQUALITY_FUNCTION_LOCAL_NAME);
        _strcls.append(';').append(System.lineSeparator()).append(System.lineSeparator());
        
        _strcls.append("    function real2bool").append(System.lineSeparator());
        _strcls.append("        input  Real    x;").append(System.lineSeparator());
        _strcls.append("        output Boolean y;").append(System.lineSeparator());
        _strcls.append("        algorithm").append(System.lineSeparator());
        _strcls.append("            y := (not eq(x, 0));").append(System.lineSeparator());
        _strcls.append("    end real2bool;").append(System.lineSeparator());
        _strcls.append(System.lineSeparator());
        
        _strcls.append("    function bool2real").append(System.lineSeparator());
        _strcls.append("        input  Boolean x;").append(System.lineSeparator());
        _strcls.append("        output Real    y;").append(System.lineSeparator());
        _strcls.append("        algorithm").append(System.lineSeparator());
        _strcls.append("            if x then").append(System.lineSeparator());
        _strcls.append("                y := 1.0;").append(System.lineSeparator());
        _strcls.append("            else").append(System.lineSeparator());
        _strcls.append("                y := 0.0;").append(System.lineSeparator());
        _strcls.append("            end if;").append(System.lineSeparator());
        _strcls.append("    end bool2real;").append(System.lineSeparator());
    }
    
    private void classEnd()
    {
        _strcls.append("end ").append(FUNCTION_CLASS_NAME);
        _strcls.append(';').append(System.lineSeparator());
    }

    @Override
    public String generateClass()
    {
        this._strcls = new StringBuilder();
        
        this.classHeader();
        this.classCustomFunctions();
        this.classDefaultFunctions();
        this.classEnd();
        
        return this._strcls.toString();
    }

    @Override
    public void writeClass(File dir)
    {
        String filename = FUNCTION_CLASS_NAME
                          + MODELICA_FILE_EXTENSION;
        this.writeClass(dir, filename);
    }
}
