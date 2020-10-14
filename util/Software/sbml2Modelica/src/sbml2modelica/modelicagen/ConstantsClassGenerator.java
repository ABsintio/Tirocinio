/**
 * ConstantsClassGenerator.java
 *
 * TODO
 *
 * @author  filippo
 * @project SBML2Modelica
 */
package sbml2modelica.modelicagen;

import java.io.File;

import sbml2modelica.abstractmodel.AbstractModel;
import sbml2modelica.utils.exceptions.NullAbstractModelException;

/**
 * @author filippo
 *
 */
public class ConstantsClassGenerator extends ClassGenerator
{
    private static final String INFINITY_VALUE      = "Modelica.Constants.inf";
    private static final String NEPERO_CONST_VALUE  = "Modelica.Constants.e";
    private static final String PI_CONST_VALUE      = "Modelica.Constants.pi";
    private static final double AVOGADRO_CONSTANT   = 6.022141e+23;
    private static final String EPSILON             = "Modelica.Constants.eps";
    private static final double ETA                 = 1e-4;
    
    public ConstantsClassGenerator(AbstractModel model, int efficiency) 
            throws NullAbstractModelException
    {
        super(model, efficiency);
    }

    private void classHeader()
    {
        _strcls.append("class ").append(ClassGenerator.CONSTANT_CLASS_NAME);
        _strcls.append(System.lineSeparator());
        _strcls.append("    extends Modelica.Constants;").append(System.lineSeparator());
        _strcls.append(System.lineSeparator()).append(System.lineSeparator());
    }
    
    private void classDeclarations()
    {
        _strcls.append("    constant Real ").append(ClassGenerator.AVOGADRO_CONSTANT_LOCAL_NAME);
        _strcls.append("(unit = \"mol-1\") = ").append(AVOGADRO_CONSTANT);
        _strcls.append(';').append(System.lineSeparator());
        
        _strcls.append("    constant Real ").append(ClassGenerator.INFINITY_CONSTANT_LOCAL_NAME);
        _strcls.append(" = ").append(INFINITY_VALUE).append(';').append(System.lineSeparator());
        
        _strcls.append("    constant Real ");
        _strcls.append(ClassGenerator.NEG_INFINITY_CONSTANT_LOCAL_NAME);
        _strcls.append(" = ").append("- ").append(ClassGenerator.INFINITY_CONSTANT_LOCAL_NAME);
        _strcls.append(';').append(System.lineSeparator());
        
        _strcls.append("    constant Real ").append(ClassGenerator.NEPERO_CONSTANT_LOCAL_NAME);
        _strcls.append(" = ").append(NEPERO_CONST_VALUE).append(';').append(System.lineSeparator());
        
        _strcls.append("    constant Real ").append(ClassGenerator.PI_CONSTANT_LOCAL_NAME);
        _strcls.append(" = ").append(PI_CONST_VALUE).append(';').append(System.lineSeparator());
        
        _strcls.append("    constant Real ").append(ClassGenerator.EPSILON_CONSTANT_LOCAL_NAME);
        _strcls.append(" = ").append(EPSILON).append(';').append(System.lineSeparator());
        
        _strcls.append("    constant Real ").append(ClassGenerator.ETA_CONSTANT_LOCAL_NAME);
        _strcls.append(" = ").append(ETA).append(';').append(System.lineSeparator());
        
        _strcls.append(System.lineSeparator());
    }
    
    private void classEnd()
    {
        _strcls.append("end ").append(ClassGenerator.CONSTANT_CLASS_NAME);
        _strcls.append(';').append(System.lineSeparator());
    }

    @Override
    public String generateClass()
    {
        _strcls = new StringBuilder();
        
        this.classHeader();
        this.classDeclarations();
        this.classEnd();
        
        return _strcls.toString();
    }
    
    @Override
    public void writeClass(File dir)
    {
        String filename = ClassGenerator.CONSTANT_CLASS_NAME
                          + ClassGenerator.MODELICA_FILE_EXTENSION;
        this.writeClass(dir, filename);
    }

}
