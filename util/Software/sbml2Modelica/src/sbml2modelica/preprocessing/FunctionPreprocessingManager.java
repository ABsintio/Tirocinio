package sbml2modelica.preprocessing;

import org.sbml.jsbml.FunctionDefinition;
import org.sbml.jsbml.Model;

import sbml2modelica.utils.exceptions.NullSBMLModelException;

public class FunctionPreprocessingManager extends PreprocessingManager
{

    public FunctionPreprocessingManager(Model model) throws NullSBMLModelException
    {
        super(model);
    }
    
    public void preprocessFunctions()
    {
        int flength = getModel().getNumFunctionDefinitions();
        for (int i = 0; i < flength; i++)
        {
            FunctionDefinition fd = getModel().getFunctionDefinition(i);
            // If the math attribute is set, we are done
            if (fd.isSetMath())
                continue;
            // Otherwise, the function is useless and can be safely eliminated
            getModel().removeFunctionDefinition(i);
            // Update the iteration index and the number of functions
            i--;
            flength = getModel().getNumFunctionDefinitions();
        }
    }
}
