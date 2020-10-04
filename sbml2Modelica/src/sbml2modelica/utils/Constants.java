/**
 * Constants.java
 *
 * @author  Maggioli Filippo
 * @project SBML2Modelica
 */
package sbml2modelica.utils;

/**
 * The {@link Constants} class contains a set of useful constant values used over the
 * project.
 */
public class Constants
{
    public static final int ERRCODE_SUCCESS                                 = 0;
    public static final int ERRCODE_NO_SBML_ID_PROVIDED                     = 128;
    public static final int ERRCODE_NO_MODEL_PROVIDED                       = 129;
    public static final int ERRCODE_NO_KINETIC_LAW_FOUND                    = 130;
    public static final int ERRCODE_NO_TRIGGER_FOUND                        = 131;
    public static final int ERRCODE_ABSTRACTION_MANAGER_CREATION_FAILURE    = 132;
    public static final int ERRCODE_NON_WRITABLE_FILE                       = 133;
    public static final int ERRCODE_LIBSBML_PARSE_ERROR                     = 134;
    public static final int ERRCODE_FAST_REACTIONS                          = 135;
    public static final int ERRCODE_L3V2_INCOPATIBILITY                     = 136;
    public static final int ERRCODE_NO_ARGUMENTS							= 137;
    public static final int ERRCODE_ILLEGAL_ARGUMENT						= 138;
    public static final int ERRCODE_INCOMPLETE_ARGUMENT						= 139;
    
    
    public static final String LOCAL_PARAMETER_ID_PREFIX                    = "lp_";
    public static final String SPECIES_AMOUNT_SUFFIX                        = "_amount";
    public static final String SPECIES_CONCENTRATION_SUFFIX                 = "_conc";
    public static final String EVENT_TRIGGER_SUFFIX                         = "_trig";
    public static final String EVENT_TRIGGER_TIME_SUFFIX                    = "_trigtime";
    public static final String EVENT_TRIGGER_ACTIVE_SUFFIX                  = "_active";
    public static final String EVENT_DELAY_SUFFIX                           = "_delay";
    public static final String EVENT_PRIORITY_SUFFIX                        = "_priority";
}
