/**
 * FunctionAbstraction.java
 *
 * TODO
 *
 * @author  filippo
 * @project SBML2Modelica
 */
package sbml2modelica.sbmlabstraction;

import org.sbml.jsbml.FunctionDefinition;
import org.sbml.jsbml.Model;

import sbml2modelica.abstractmodel.AbstractFunction;
import sbml2modelica.abstractmodel.AbstractModel;
import sbml2modelica.utils.exceptions.NullAbstractModelException;
import sbml2modelica.utils.exceptions.NullSBMLModelException;

/**
 * A <code>FunctionAbstractionManager</code> provides functionalities for generation of
 * <code>AbstractFunction</code>s in an <code>AbstractModel</code> from the informations
 * provided by a SBML <code>Model</code>.<br>
 * The <code>FunctionAbstractionManager</code> works under the assumption that the SBML
 * <code>Model</code> has been pre-processed with a <code>ModelPreprocessingManager</code>.
 * 
 * @author Maggioli Filippo
 */
public class FunctionAbstractionManager
{
    /**
     * The <code>AbstractModel</code> where the generated <code>AbstractFunction</code>s
     * will be stored.
     */
    private AbstractModel _model;
    
    /**
     * The SBML <code>Model</code> from which the informations are retrieved.
     */
    private Model         _sbmlmodel;
    
    /**
     * Constructor initializes the <code>FunctionAbstractionManager</code> with the given
     * <code>AbstractModel</code> and SBML <code>Model</code>.<br>
     * If one between the two inputs is <code>null</code>, then a proper exception is
     * thrown.
     * 
     * @param model The <code>AbstractModel</code> where the informations must be stored.
     * @param sbmlmodel The SBML <code>Model</code> from which the informations are retrieved.
     * @throws NullAbstractModelException When <code>model == null</code>.
     * @throws NullSBMLModelException When <code>sbmlmodel == null</code>.
     */
    FunctionAbstractionManager(final AbstractModel model, final Model sbmlmodel) 
            throws NullAbstractModelException, NullSBMLModelException
    {
        if (model == null)
        {
            throw new NullAbstractModelException("Trying to initialize an"
                                                 + " FunctionAbstractionManager with a NULL"
                                                 + " AbstractModel.");
        }
        if (sbmlmodel == null)
        {
            throw new NullSBMLModelException("Trying to initialize an FunctionAbstractionManager"
                                             + " with a NULL SBML model.");
        }
        
        _model = model;
        _sbmlmodel = sbmlmodel;
    }
    
    /**
     * This method generates the body of the given <code>AbstractFunction</code> from the body
     * of the given SBML <code>Function</code>.
     * 
     * @param af The <code>AbstractFunction</code> whose the body must be generated.
     * @param fd The SBML <code>Function</code> that contains the informations.
     */
    private void generateFunctionBody(AbstractFunction af, FunctionDefinition fd)
    {
        af.setBody(fd.getBody());
    }
    
    /**
     * This method generates the list of <code>String</code>s that represents the vector of
     * arguments of the given <code>AbstractFunction</code>.
     * <br>
     * The vector of arguments of the given <code>AbstractFunction</code> is built accordingly
     * with the vector of arguments of the given SBML <code>Function</code>.
     *  
     * @param af The <code>AbstractFunction</code> whose the vector of arguments must be generated.
     * @param fd The SBML <code>Function</code> that contains the informations.
     */
    private void generateFunctionArguments(AbstractFunction af, FunctionDefinition fd)
    {
        int arglength = fd.getNumArguments();
        for (int i = 0; i < arglength; i++)
        {
            af.addArgument(fd.getArgument(i).getName());
        }
    }
    
    /**
     * This method generates the <code>AbstractFunction</code> in the <code>AbstractModel</code>
     * that represents the given SBML <code>Function</code> in the SBML <code>Model</code>.
     * 
     * @param fd The SBML <code>Function</code> that must be represented.
     * @return An <code>AbstractFunction</code> that represents the given SBML <code>Function</code>.
     */
    private AbstractFunction generateFunction(FunctionDefinition fd)
    {
        AbstractFunction af = _model.createFunction(fd.getId(), fd.getName());
        generateFunctionArguments(af, fd);
        generateFunctionBody(af, fd);
        
        return af;
    }
    
    /**
     * This method generates all the <code>AbstractFunction</code>s in the <code>AbstractModel</code>
     * that represent the SBML <code>Function</code>s in the SBML <code>Model</code>.
     */
    void generateFunctions()
    {
        int flength = _sbmlmodel.getNumFunctionDefinitions();
        for (int i = 0; i < flength; i++)
        {
            generateFunction(_sbmlmodel.getFunctionDefinition(i));
        }
    }
}
