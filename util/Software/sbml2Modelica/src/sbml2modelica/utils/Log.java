/**
 * Log.java
 * 
 * @author  Filippo Maggioli
 * @project SBML2Modelica
 */
package sbml2modelica.utils;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.time.LocalDateTime;

/**
 * This class provides a set of methods which allows logging operations.<br>
 * Using this class it is possible to write four kinds of log message to the
 * log file
 * <ul>
 * <li><b>Regular message</b>:  This kind of message writes in the log file a
 *                              message with its timestamp.</li>
 * <li><b>Warning</b>:          This kind of message writes in the log file a
 *                              regular message labeled as a warning.</li>
 * <li><b>Error</b>:            This kind of message writes in the log file a
 *                              regular message labeled as an error.</li>
 * <li><b>Fatal Error</b>:      This kind of message writes in the log file a
 *                              regular message labeled as a fatal error.</li>
 *  </ul>
 * 
 * @author  Filippo Maggioli
 */
public class Log
{
    /**
     * This enumeration type defines the allowed kinds of message which can be
     * written in the log file.
     * 
     * @author  Filippo Maggioli
     */
    static enum MessageType
    {
        /**
         * Regular message type.
         */
        MESSAGE, 
        /**
         * Warning message type.
         */
        WARNING,
        /**
         * Error message type.
         */
        ERROR,
        /**
         * Fatal error message type.
         */
        FATAL_ERROR
    }
    
    /**
     * The default name for the log file.
     */
    private static final String     LOG_FILE_NAME_DEFAULT = "log.dat";
    /**
     * The current name of the log file.
     */
    private static String           LOG_FILE_NAME = null;
    /**
     * The current log file.
     */
    private static File             logFile = null;
    /**
     * The write buffer to the current log file.
     */
    private static BufferedWriter   logBuffer = null;
    /**
     * The default value for the logger's verbosity.
     */
    private static final int        VERBOSITY_DEFAULT = 2;
    /**
     * The verbosity level of the logger.
     */
    private static int              verbosity = VERBOSITY_DEFAULT;
    
    /**
     * This method initializes the log file.<br>
     * The initialization consists in creating the {@link java.io.File} object
     * representing the file and then associating to it a
     * {@link java.io.BufferedWriter} object.<br>
     * If no filename for the log file is provided, then default is assumed.
     */
    private static void initLogFile()
    {
        // If no filename is provided, assume default
        if (LOG_FILE_NAME == null)
            setLogFile(LOG_FILE_NAME_DEFAULT);
        
        // Create the file
        logFile = new File(LOG_FILE_NAME);
        if (logFile.exists())
        {
            // If the path already exists and does not refers to a file,
            // print an error to stderr and exit
            if (! logFile.isFile())
            {
                System.err.println("File " + LOG_FILE_NAME + " is not a file.");
                System.exit(1);
            }
            // Otherwise, delete the already existing file
            logFile.delete();
        }
        
        // Create the write buffer
        try
        {
            logBuffer = new BufferedWriter(new FileWriter(logFile));
        }
        // If an error occurs, print it to stderr and exit 
        catch (Exception e)
        {
            System.err.println("Cannot open the log file " + LOG_FILE_NAME + ".");
            e.printStackTrace();
            System.exit(1);
        }
        
        // Add a termination procedure which closes the file when the application
        // is terminated
        Runtime.getRuntime().addShutdownHook(new Thread(new Runnable() 
                                            {
                                                public void run() 
                                                {
                                                    try
                                                    {
                                                        logBuffer.close();
                                                    }
                                                    catch (IOException e) {}
                                                }
                                            }, "Shutdown-thread"));
    }
    
    /**
     * This method writes the given message to the log file, labeling it with
     * the given message type and associating it with the current timestamp.
     * 
     * @param msg   The message to write to the log file.
     * @param type  The type of the message.
     */
    private static void Line(String msg, MessageType type)
    {
        // If the log file has not yet been initialized, create it
        if (logBuffer == null)
            initLogFile();
        
        StringBuilder sb = new StringBuilder();
        // Compute the timestamp
        sb.append("[").append(LocalDateTime.now()).append("] ");
        // Add the eventual label
        switch(type)
        {
        case MESSAGE:       sb.append("         "); break;
        case WARNING:       sb.append("WARNING: "); break;
        case ERROR:         sb.append("ERROR:   "); break;
        case FATAL_ERROR:   sb.append("FATAL:   "); break;
        // If label is invalid, print it to stderr and cancel the operation
        default:    System.err.println("Called log function with an "
                                       + "invalid mode.");
                    return;
        }
        // Add the message and a newline character
        sb.append(msg);
        sb.append(System.lineSeparator());
        
        // Write the message to the log file
        try
        {
            logBuffer.write(sb.toString());
        }
        // If the operation fails, print the error on stderr
        catch (IOException e)
        {
            System.err.println("Cannot write to file " + LOG_FILE_NAME);
            e.printStackTrace();
        }
    }
    
    /**
     * This method writes to the log file a regular message, labeled with the
     * current timestamp.
     * 
     * @param msg   The message to write.
     */
    public static void Message(String msg)
    {
        if (verbosity > 2)
            Line(msg, MessageType.MESSAGE);
    }
    
    /**
     * This method writes to the log file a warning message, labeled with the
     * current timestamp.
     * 
     * @param msg   The warning to write.
     */
    public static void Warning(String msg)
    {
        if (verbosity > 1)
            Line(msg, MessageType.WARNING);
    }
    
    /**
     * This method writes to the log file an error message, labeled with the
     * current timestamp.
     * 
     * @param msg   The error to write.
     */
    public static void Error(String msg)
    {
        if (verbosity > 0)
            Line(msg, MessageType.ERROR);
    }
    
    /**
     * This method writes to the log file a fatal error message, labaled with
     * the current timestamp. Then, it terminate the application with the
     * given exit code.
     * 
     * @param msg       The fatal error to write.
     * @param errcode   The exit code with which the application must be
     *                  terminated.
     */
    public static void FatalError(String msg, int errcode)
    {
        Line(msg, MessageType.FATAL_ERROR);
        System.exit(errcode);
    }
    
    /**
     * This method sets the current log file to the file pointed by the given
     * filename and returns a boolean value identifying if the operation has
     * been completed correctly.<br>
     * <b>WARNING</b>: This method should be called before the log file is
     * initialized, otherwise the {@link Log} class will continue to operate on
     * the previous file, but the eventual error feedback given by the class
     * will refer to the newer one.
     * 
     * @param filename  The new log file.
     * 
     * @return  <code>true</code> if the operation is completed successfully,
     *          <code>false</code> otherwise.
     */
    public static boolean setLogFile(final String filename)
    {
        // Create the file object
        File file = new File(filename);
        if (file.exists() && ! file.isFile())
        {
            // If file exists and it is not a file, print a message to stderr
            // and return false
            System.err.println("Cannot use file " + file.getAbsolutePath()
                               + " as log file because it is not a file. "
                               + "Default assumed ("
                               + LOG_FILE_NAME_DEFAULT + ").");
            LOG_FILE_NAME = LOG_FILE_NAME_DEFAULT;
            
            return false;
        }
        // Otherwise, set the filename of the log file and return true
        else
        {
            LOG_FILE_NAME = file.getAbsolutePath();
            
            return true;
        }
    }
    
    /**
     * This method sets the current verbosity of the logger to the given value and
     * returns a boolean value which informs the caller about the success of the
     * operation.<br>
     * The admissible values for the verbosity are <b>0</b>, <b>1</b>, <b>2</b>
     * and <b>3</b>. If the given value is smaller than 0, the verbosity is set to
     * 0 and the method returns {@code false}. If the given value is greater than
     * 3, the verbosity is set to 3 and the methos returns {@code false}. Otherwise,
     * the verbosity is set to the given value and the method returns {@code true}.
     * 
     * @param verbosity The verbosity value to set. 
     * @return          {@code true} if the given value is valid, {@code false}
     *                  otherwise.
     */
    public static boolean setVerbosity(int verbosity)
    {
        if (verbosity < 0)
        {
            String errmsg = "Cannot set the logger\'s verbosity to values smaller than zero. "
                            + "Setting verbosity to 0.";
            System.err.println(errmsg);
            
            Log.verbosity = 0;
            return false;
        }
        else if (verbosity > 3)
        {
            String errmsg = "Cannot set the logger\'s verbosity to values greater than three. "
                    + "Setting verbosity to 3.";
            System.err.println(errmsg);
            
            Log.verbosity = 3;
            return false;
        }
        else
        {
            Log.verbosity = verbosity;
            return true;
        }
    }
}






