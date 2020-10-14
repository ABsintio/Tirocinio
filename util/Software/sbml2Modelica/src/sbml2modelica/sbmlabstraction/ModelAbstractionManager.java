/**
 * ModelAbstractionManager.java
 *
 * TODO
 *
 * @author  filippo
 * @project SBML2Modelica
 */
package sbml2modelica.sbmlabstraction;

import javax.xml.stream.XMLStreamException;

import org.sbml.jsbml.Model;

import sbml2modelica.abstractmodel.AbstractModel;
import sbml2modelica.abstractmodel.AbstractParameter;
import sbml2modelica.utils.Log;
import sbml2modelica.utils.exceptions.NullAbstractModelException;
import sbml2modelica.utils.exceptions.NullSBMLModelException;

/**
 * A <code>ModelAbstractionManager</code> provides functionalities for the generation of an
 * <code>AbstractModel</code> from a given SBML <code>Model</code>.
 * <br>
 * At first it computes the informations about the model. Then it generates the elements of
 * the <code>AbstractModel</code> and, once every element has been generated, it generates all
 * the values.
 * 
 * @author Maggioli Filippo
 */
public class ModelAbstractionManager
{
    /**
     * The <code>AbstractModel</code> that must be generated.
     */
    private AbstractModel   _model;
    
    /**
     * The SBML <code>Model</code> that contains the informations.
     */
    private Model           _sbmlmodel;
    
    /**
     * Constructor initializes the <code>ModelAbstractionManager</code> with the given SBML
     * <code>Model</code>. If the given SBML <code>Model</code> is <code>null</code>, then an
     * exception is thrown.
     * 
     * @param sbmlmodel The SBML <code>Model</code> from which the informations are retrieved.
     * @throws NullSBMLModelException When <code>sbmlmodel == null</code>.
     */
    public ModelAbstractionManager(final Model sbmlmodel) throws NullSBMLModelException
    {
        if (sbmlmodel == null)
        {
            throw new NullSBMLModelException("Trying to initialize a ModelAbstractionManmager "
                                             + "with a NULL SBML model.");
        }
        _sbmlmodel = sbmlmodel;
        _model = null;
    }
    
    /**
     * This method generates the <code>AbstractModel</code> that represents the SBML
     * <code>Model</code>.
     * <br>
     * Generations involves three steps:
     * <ul> 
     *  <li>
     *      General informations about the model (default unit of measurements, parameters, ecc.).
     *  </li>
     *  <li>
     *      Generation of the <code>AbstractObject</code>s that define the elements of the
     *      <code>AbstractModel</code>.
     *  </li>
     *  <li>
     *      Generation of the <code>AbstractValue</code>s that define the quantities and the
     *      equations in the <code>AbstractModel</code>.
     *  </li>
     * </ul>
     */
    public void generateModel()
    {
        _model = new AbstractModel(_sbmlmodel.getId(), _sbmlmodel.getName());
        _model.setNotes(_sbmlmodel.getAnnotation());
        try {
			_model.setInfo(_sbmlmodel.getNotesString());
		} catch (XMLStreamException e) {
			_model.setInfo(null);
		}
        String unitname = "";
        unitname = _sbmlmodel.getTimeUnits();
        _model.setTimeUnit(_sbmlmodel.getUnitDefinition(unitname));
        unitname = _sbmlmodel.getLengthUnits();
        _model.setLengthUnit(_sbmlmodel.getUnitDefinition(unitname));
        unitname = _sbmlmodel.getAreaUnits();
        _model.setAreaUnit(_sbmlmodel.getUnitDefinition(unitname));
        unitname = _sbmlmodel.getVolumeUnits();
        _model.setVolumeUnit(_sbmlmodel.getUnitDefinition(unitname));
        unitname = _sbmlmodel.getSubstanceUnits();
        _model.setSubstanceUnit(_sbmlmodel.getUnitDefinition(unitname));
        unitname = _sbmlmodel.getExtentUnits();
        _model.setExtentUnit(_sbmlmodel.getUnitDefinition(unitname));
        
        try
        {
            // Create the abstraction manager of the elements of the model
            ParameterAbstractionManager pam = null;
            pam = new ParameterAbstractionManager(_model, _sbmlmodel);
            CompartmentAbstractionManager cam = null;
            cam = new CompartmentAbstractionManager(_model, _sbmlmodel);
            ReactionAbstractionManager ram = null;
            ram = new ReactionAbstractionManager(_model, _sbmlmodel);
            EventAbstractionManager eam = null;
            eam = new EventAbstractionManager(_model, _sbmlmodel);
            AlgebraicEquationAbstractionManager aeam = null;
            aeam = new AlgebraicEquationAbstractionManager(_model, _sbmlmodel);
            FunctionAbstractionManager fam = null;
            fam = new FunctionAbstractionManager(_model, _sbmlmodel);
            
            // Generate the elements of the model...
            pam.generateParameters();
            cam.generateCompartmentsAndSpecies();
            ram.generateReactions();
            eam.generateEvents();
            aeam.generateAlgebraicEquations();
            fam.generateFunctions();
            // ... and eventually their values
            pam.computeParametersValues();
            cam.computeCompartmentsAndSpeciesValues();
            ram.computeReactionsAndSpeciesReferencesValues();

            // Once all the elements have been generated, set the conversion factor
            // of the model, if it exists
            String cfactid = _sbmlmodel.getConversionFactor();
            AbstractParameter cfact = _model.getParameterById(cfactid);
            _model.setConversionFactor(cfact);
        }
        catch (NullAbstractModelException | NullSBMLModelException e)
        {
            // Should never enter this block
            Log.Error("Something went wrong during the initialization of the "
                      + "AbstractionManagers.");
            
            this._model = null;
        }
    }
    
    /**
     * This method returns the <code>AbstractModel</code> that represents the SBML
     * <code>Model</code> with which the <code>ModelAbstractionManager</code> has been created.
     * <br>
     * If the <code>AbstractModel</code> has not yet been generated the first time this method is
     * called, then the <code>AbstractModel</code> is generated and then returned.
     * <br>
     * All the subsequent times it is called, it simply returns the same <code>AbstractModel</code>,
     * if it has not been recomputed or changed in other ways.
     * 
     * @return The <code>AbstractModel</code> that represents the SBML <code>Model</code> of the
     *         <code>ModelAbstractionManager</code>.
     */
    public AbstractModel getModel()
    {
        if (_model == null)
            generateModel();
        
        return _model;
    }
}
