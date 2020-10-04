/**
 * ReactionPreprocessingManager.java
 *
 * TODO
 *
 * @author  filippo
 * @project SBML2Modelica
 */
package sbml2modelica.preprocessing;

import org.sbml.jsbml.Model;

import sbml2modelica.utils.exceptions.NullSBMLModelException;

/**
 * A <code>ReactionPreprocessingManager</code> manipulates data in an SBML <code>Model</code> in
 * order to make it easier the conversion of SBML <code>Reaction</code>s into
 * <code>AbstractReaction</code>s.
 * 
 * @author Maggioli Filippo
 */
public class ReactionPreprocessingManager extends PreprocessingManager
{
    /**
     * Constructor initializes the <code>ReactionPreprocessingManager</code> with the given SBML
     * <code>Model</code>.
     * 
     * @param model The SBML <code>Model</code> to pre-process.
     * @throws NullSBMLModelException When <code>model == null</code>.
     */
    public ReactionPreprocessingManager(Model model) throws NullSBMLModelException
    {
        super(model);
    }
}
