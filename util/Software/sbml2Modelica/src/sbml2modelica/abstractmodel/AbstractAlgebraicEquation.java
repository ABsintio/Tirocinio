/**
 * AbstractAlgebraicEquation.java
 *
 * TODO
 *
 * @author  filippo
 * @project SBML2Modelica
 */
package sbml2modelica.abstractmodel;

import sbml2modelica.abstractmodel.values.AbstractFormula;
import sbml2modelica.utils.Log;
import sbml2modelica.utils.exceptions.InvalidAbstractIdentifierException;
import sbml2modelica.utils.exceptions.NullAbstractModelException;
import sbml2modelica.utils.exceptions.NullFormulaException;

/**
 * @author Maggioli Filippo
 *
 */
public class AbstractAlgebraicEquation extends AbstractObject
{
    private AbstractFormula formula;
    
    private static int serialId = 0;
    
    private static String fixId(final String unfixedId)
    {
        if (! unfixedId.equals(""))
            return unfixedId;
        StringBuilder sb = new StringBuilder();
        sb.append("algeq").append(serialId++);
        
        return sb.toString();
    }
    
    public AbstractAlgebraicEquation(final AbstractModel model, 
                                     final String id, final String name, 
                                     AbstractFormula formula) 
                                             throws NullAbstractModelException, 
                                                    InvalidAbstractIdentifierException, 
                                                    NullFormulaException
    {
        super(model, fixId(id), name);
        
        if (formula == null)
        {
            throw new NullFormulaException("Trying to initialize an AbstractAlgebraicEquation"
                                           + " with a NULL formula.");
        }
        
        this.formula = formula;
        
        Log.Message("Creation of AbstractAlgebraicEquation " + this.getId() + " completed.");
    }

    public AbstractFormula getFormula()
    {
        return this.formula;
    }
}
