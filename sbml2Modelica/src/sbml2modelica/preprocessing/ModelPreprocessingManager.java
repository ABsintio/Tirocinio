/**
 * SBMLPreprocessing.java
 *
 * TODO
 *
 * @author  filippo
 * @project SBML2Modelica
 */
package sbml2modelica.preprocessing;

import org.sbml.jsbml.Model;

import sbml2modelica.utils.Log;
import sbml2modelica.utils.exceptions.NullSBMLModelException;

/**
 * A <code>ModelPreprocessingManager</code> examines a SBML <code>Model</code> and sets up or 
 * deletes some informations and structures that simplify the conversion into the 
 * <code>AbstractModel</code>. 
 * 
 * @author Maggioli Filippo
 */
public class ModelPreprocessingManager extends PreprocessingManager
{
    
    /**
     * Constructor initializes a <code>ModelPreprocessingManager</code> with a deep copy of the
     * input SBML <code>Model</code>.
     * 
     * @param model The SBML <code>Model</code> that must be pre-processed.
     * @throws NullSBMLModelException When <code>model == null</code>.
     */
    public ModelPreprocessingManager(Model model) throws NullSBMLModelException
    {
        super(model);
    }
    
    /**
     * This method perform a complete pre-processing of the SBML <code>Model</code>.<br>
     * The pre-processing performed by this method is the combination of all the pre-processing
     * procedures defined in the package.
     */
    public void preprocessModel(String elementPrefix)
    {
        try
        {
            SupportPreprocessingManager supppm = new SupportPreprocessingManager(getModel());
            supppm.searchFastsDelaysAndNANs();
            supppm.examineTrigger();
            supppm.examinePriority();
            
            
            EquationPreprocessingManager eqpm           = new EquationPreprocessingManager(getModel());
            ParameterPreprocessingManager ppm           = new ParameterPreprocessingManager(getModel());
            CompartmentPreprocessingManager cpm         = new CompartmentPreprocessingManager(getModel());
            SpeciesPreprocessingManager spm             = new SpeciesPreprocessingManager(getModel());
            SpeciesReferencePreprocessingManager srpm   = new SpeciesReferencePreprocessingManager(getModel());
            EventPreprocessingManager epm               = new EventPreprocessingManager(getModel());
            FunctionPreprocessingManager fpm            = new FunctionPreprocessingManager(getModel());
            SyntaxPreprocessingManager syntax           = new SyntaxPreprocessingManager(getModel(), elementPrefix);
            
            eqpm.preprocessEquations();
            ppm.preprocessParameters();
            cpm.preprocessCompartments();
            spm.preprocessSpecies();
            srpm.preprocessSpeciesReferences();
            epm.preprocessEvents();
            fpm.preprocessFunctions();
            syntax.preprocessIdentifiersPrefixes();
            syntax.preprocessFormulaPrefixes();
        }
        catch (NullSBMLModelException e)
        {
            Log.FatalError("SBML Model nullyfied somewhere...", 1);
        }
    }
    
    public void preprocessModel()
    {
        preprocessModel(SyntaxPreprocessingManager.ELEMENT_ID_PREFIX_DEFAULT);
    }
}
