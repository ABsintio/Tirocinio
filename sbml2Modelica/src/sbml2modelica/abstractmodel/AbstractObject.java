/**
 * AbstractObject.java
 *
 * This file contains the definition of the class <code>AbstractObject</code>, that represents an 
 * identifiable element in an <code>AbstractModel</code>.
 * An <code>AbstractObject</code> must have an identifier and could have a name, and must refers
 * to an <code>AbstractModel</code>, in which it is located. 
 *
 * @author  Maggioli Filippo
 * @project SBML2Modelica
 */
package sbml2modelica.abstractmodel;

import javax.xml.stream.XMLStreamException;

import org.sbml.jsbml.Annotation;

import sbml2modelica.utils.Log;
import sbml2modelica.utils.exceptions.InvalidAbstractIdentifierException;
import sbml2modelica.utils.exceptions.NullAbstractModelException;

/**
 * The <code>AbstractObject</code> is the core class of <code>SBML2Modelica</code>.
 * It is the main component of an <code>AbstractModel</code>, because every element of the
 * latter is an <code>AbstractObject</code>.
 * An <code>AbstractObject</code> is uniquely identified by a <code>String</code> identifier,
 * and also it could have an optional name. Note that an <code>AbstractObject</code> MUST have
 * an identifier and two <code>AbstractObject</code>s with the same identifier are considered
 * equals.
 * 
 * @author Maggioli Filippo
 */
public abstract class AbstractObject
{
    /**
     * The identifier of the <code>AbstractObject</code>.
     */
    private String _id;
    
    /**
     * The name of the <code>AbstractObject</code>.
     */
    private String _name;
    
    /**
     * The SBML annotations for this <code>AbstractObject</code>.
     */
    private Annotation _notes;
    
    /**
     * The SBML notes for this <code>AbstractObject</code>.
     */
    private String _info;
    
    /**
     * The <code>AbstractModel</code> in which the <code>AbstractObject</code> is defined.
     */
    private final AbstractModel _model;
    
    /**
     * Constructor initializes an <code>AbstractObject</code> in the given <code>AbstractModel</code>
     * and with the given identifier and name.
     * Constructor ensures that the <code>AbstractObject</code> is not initialized with an undefined
     * <code>AbstractModel</code> or with an undefined or empty identifier. In those cases, the
     * <code>AbstractObject</code> is not created and an appropriate exception is thrown.
     * 
     * @param model The <code>AbstractModel</code> in which the <code>AbstractObject</code>
     *              is defined.
     * @param id    The identifier of the <code>AbstractObject</code>.
     * @param name  The name of the <code>AbstractObject</code>.
     * @throws NullAbstractModelException When <code>model == null</code>.
     * @throws InvalidAbstractIdentifierException When <code>id == null</code> or <code>id</code>
     *                                            is empty.
     */
    public AbstractObject(final AbstractModel model, final String id, final String name) 
            throws NullAbstractModelException, InvalidAbstractIdentifierException
    {
        _setId(id);
        _setName(name);
        if (model == null)
        {
            throw new NullAbstractModelException("AbstractObject " + _id + " is declared in" +
                                                 " a NULL AbstractModel");
        }
        
        _model = model;
    }
    
    /**
     * Constructor initializes an <code>AbstractObject</code> in the given <code>AbstractModel</code>
     * and with the given identifier.
     * Constructor ensures that the <code>AbstractObject</code> is not initialized with an undefined
     * <code>AbstractModel</code> or with an undefined or empty identifier. In those cases, the
     * <code>AbstractObject</code> is not created and an appropriate exception is thrown.
     * A call to this constructor is equivalent to a call with the complete constructor where the
     * name is <code>null</code> or an empty string.
     * 
     * @param model The <code>AbstractModel</code> in which the <code>AbstractObject</code>
     *              is defined.
     * @param id    The identifier of the <code>AbstractObject</code>.
     * @throws NullAbstractModelException When <code>model == null</code>.
     * @throws InvalidAbstractIdentifierException When <code>id == null</code> or <code>id</code>
     *                                            is empty.
     */
    public AbstractObject(final AbstractModel model, final String id) 
            throws NullAbstractModelException, InvalidAbstractIdentifierException
    {
        this(model, id, "");
    }

    /**
     * This method tries to set the identifier of the <code>AbstractObject</code> to a copy of 
     * the given <code>String</code>.
     * If the given string is <code>null</code> or empty, then the method fails and an appropriate
     * exception is thrown.
     * 
     * @param id The new identifier of the <code>AbstractObject</code>.
     * @throws InvalidAbstractIdentifierException When <code>id == null</code> or <code>id</code>
     *                                            is empty.
     */
    private void _setId(final String id) throws InvalidAbstractIdentifierException
    {
        if (id == null)
        {
            throw new InvalidAbstractIdentifierException("Trying to set a NULL identifier to an "
                    + "AbstractObject.");
        }
        if (id.equals(""))
        {
            throw new InvalidAbstractIdentifierException("Trying to set an empty identifier to an "
                    + "AbstractObject.");
        }
        _id = new String(id);
    }
    
    /**
     * This method sets the name of the <code>AbstractObject</code> to the given <code>String</code>.
     * If the given <code>String</code> is <code>null</code>, then the name is set to an empty
     * string.
     * 
     * @param name The new name of the <code>AbstractObject</code>
     */
    private void _setName(final String name)
    {
        if (name == null)
            _name = "";
        else
            _name = new String(name);
    }
    
    public void setNotes(Annotation notes) { _notes = notes; }
    
    public Annotation getNotes() { return _notes; }
    
    public String getNotesString()
    {
    	if (_notes == null || _notes.getXMLNode() == null)
    		return null;
    	
    	try {
			return _notes.getXMLNode().toXMLString().replace("\"", "\\\"");
		} catch (XMLStreamException e) {
			StringBuilder msg = new StringBuilder();
			msg.append("Some error occurred while generating the XML annotation for ")
			   .append("The AbstractObject ").append(getId()).append(".");
			Log.Error(msg.toString());
			return null;
		}
    }
    
    public void setInfo(String info) { _info = info; }
    
    public String getInfo() { return _info; }

    /**
     * This method returns the <code>String</code> that represents the identifier of the
     * <code>AbstractObject</code>.
     * 
     * @return The identifier of the <code>AbstractObject</code>. 
     */
    public String getId()
    {
        return new String(this._id);
    }

    /**
     * This method returns the <code>String</code> that represents the name of the
     * <code>AbstractObject</code>.
     * 
     * @return The name of the <code>AbstractObject</code>. 
     */
    public String getName()
    {
        return new String(this._name);
    }

    /**
     * This method returns the <code>AbstractModel</code> in which the
     * <code>AbstractObject</code> is defined.
     * @return The <code>AbstractModel</code> in which the <code>AbstractObject</code> 
     *         is defined.
     */
    public AbstractModel getModel()
    {
        return _model;
    }
    
    /**
     * The hash code of an <code>AbstractObject</code> is the same hash code of the
     * <code>String</code> representing its identifier.
     * 
     * @return The hash code of the <code>AbstractObject</code>.
     */
    @Override
    public int hashCode()
    {
        return getId().hashCode();
    }
    
    /**
     * Two <code>AbstractObject</code>s are considered equals if they are both 
     * <code>AbstractObject</code>s and they have the same identifier.
     * 
     * @param other An <code>Object</code> to compare with the <code>AbstractObject</code>.
     * @return <code>true</code> if and only if <code>other</code> is an <code>AbstractObject</code>
     *         with the same identifier as the <code>AbstractObject</code>.
     */
    @Override
    public boolean equals(Object other)
    {
        if (other == null)
            return false;
        if (!(other instanceof AbstractObject))
            return false;
        
        AbstractObject o = (AbstractObject) other;
        return getId().equals(o.getId());
    }
    
    /**
     * This method returns a <code>String</code> that represents the main informations about the
     * <code>AbstractObject</code>. The format of the string is:<br>
     *     <code>< AbstractObject 'identifier', 'name' ></code>
     *     
     * @return A <code>String</code> representing the <code>AbstractObject</code>.
     */
    @Override
    public String toString()
    {
        StringBuilder sb = new StringBuilder();
        sb.append('<').append(' ').append("AbstractObject").append(' ');
        sb.append('\'').append(getId()).append('\'').append(',').append(' ');
        sb.append('\'').append(getName()).append('\'').append(' ').append('>');
        
        return sb.toString();
        
    }
}
