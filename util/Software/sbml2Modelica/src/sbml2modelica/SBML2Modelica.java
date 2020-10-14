/**
 * SBML2Modelica.java
 *
 * The application takes in input the name of an SBML file and the name of a
 * directory and converts the model in the given SBML to a Modelica project, that
 * is saved in the given directory.
 *
 * @author  Maggioli Filippo
 * @project SBML2Modelica
 */
package sbml2modelica;

import java.io.IOException;

import javax.xml.stream.XMLStreamException;

import org.sbml.jsbml.Model;
import org.sbml.jsbml.SBMLDocument;
import org.sbml.jsbml.SBMLReader;

import sbml2modelica.abstractmodel.AbstractModel;
import sbml2modelica.modelicagen.ModelGenerator;
import sbml2modelica.preprocessing.ModelPreprocessingManager;
import sbml2modelica.sbmlabstraction.ModelAbstractionManager;
import sbml2modelica.utils.Constants;
import sbml2modelica.utils.Log;
import sbml2modelica.utils.exceptions.NullAbstractModelException;
import sbml2modelica.utils.exceptions.NullCompartmentException;
import sbml2modelica.utils.exceptions.NullEventException;
import sbml2modelica.utils.exceptions.NullSBMLModelException;

/**
 * @author Maggioli Filippo
 */
public class SBML2Modelica
{
    private static final int VERSION_MAJOR = 1;
    private static final int VERSION_MINOR = 0;
    private static final String VERSION_BUILD = "2019-03-04"; 
    
    private static final String VERSION_OPTION 		= "--version";
    private static final String LOG_OPTION 			= "--log";
    private static final String HELP_OPTION 		= "--help";
    private static final String PREFIX_OPTION 		= "--prefix";
    private static final String EFFICIENCY_OPTION 	= "--encoding";
    private static final String VERBOSITY_OPTION 	= "--verbosity";
    private static final String LICENSE_OPTION 		= "--license";
    
    private static String sbmlfile = null;
    private static String outdir = null;
    private static String logfile = null;
    private static String prefix = null;
    private static int efficiency = -1;
    private static int verbosity = -1;
    
    public static void main(String[] args) 
            throws NullAbstractModelException, NullSBMLModelException, 
                   NullCompartmentException, NullEventException, XMLStreamException, IOException
    {
        printLogo();
        
        long start = System.currentTimeMillis();
        
        parseArguments(args);
        
        if (logfile != null)
            Log.setLogFile(logfile);
        else
        {
        	String sbmlname = sbmlfile.substring(0, sbmlfile.lastIndexOf('.'));
        	Log.setLogFile(sbmlname + ".log");
        }
        if (verbosity != -1)
            Log.setVerbosity(verbosity);
        
        SBMLReader reader = new SBMLReader();
        SBMLDocument doc  = reader.readSBML(sbmlfile);
        if (doc.getNumErrors() > 0)
        {
            System.err.println("" + doc.getNumErrors() + " errors are occurred while reading "
                               + " SBML file " + sbmlfile);
            int errlength = doc.getNumErrors();
            for (int i = 0; i < errlength; i++)
            {
                Log.Error(doc.getError(i).getMessage());
            }
            Log.FatalError("" + doc.getNumErrors() + " errors are occurred while reading "
                           + " SBML file " + sbmlfile, Constants.ERRCODE_LIBSBML_PARSE_ERROR);
        }
        if (doc.getLevel() == 1 || (doc.getLevel() == 2 && doc.getVersion() == 1))
        {
            boolean success = doc.setLevelAndVersion(3, 2, true);
            if (! success)
            {
                Log.FatalError("Cannot convert model to SBML L3V2", 
                               Constants.ERRCODE_L3V2_INCOPATIBILITY);
            }
        }
        
        Model m = doc.getModel();
        ModelPreprocessingManager mpm = new ModelPreprocessingManager(m.clone());
        if (prefix != null)
            mpm.preprocessModel(prefix);
        else
            mpm.preprocessModel();
        ModelAbstractionManager mam = new ModelAbstractionManager(mpm.getModel());
        AbstractModel am = mam.getModel();
        ModelGenerator mg = new ModelGenerator(am, efficiency);
        mg.writeProject(outdir);
        
        System.out.println("Program terminated with inputs " + args[0] + " " + args[1] + ".");
        Log.Message("Program terminated in " + (System.currentTimeMillis() - start) + " ms.");
    }
    
    private static void printLogo()
    {
    	String logo = "";
    	logo += "SBML2Modelica v" + VERSION_MAJOR + "." + VERSION_MINOR + " ";
    	logo += "(Build: " + VERSION_BUILD + ")" + System.lineSeparator();
    	logo += "Filippo Maggioli, Toni Mancini, Enrico Tronci" + System.lineSeparator();
    	logo += "Model Checking Laboratory (MCLab)" + System.lineSeparator();
    	logo += "Computer Science Department" + System.lineSeparator();
    	logo += "\"La Sapienza\" - University of Rome, Italy" + System.lineSeparator();
    	logo += "http://mclab.di.uniroma1.it" + System.lineSeparator();
    	logo += "Contact author: tmancini@di.uniroma1.it" + System.lineSeparator();
    	logo += System.lineSeparator() + System.lineSeparator();
    	System.out.print(logo);
    	System.out.flush();
    }
    
    private static void printLicense()
    {
    	String license = 
			"SBML2Modelica: A software for translating SBML models to Modelica.\r\n" + 
			"\r\n" + 
			"Copyright (C) 2019 Maggioli Filippo, Mancini Toni, Tronci Enrico\r\n" + 
			"\r\n" + 
			"This library is free software; you can redistribute it and/or\r\n" + 
			"modify it under the terms of the GNU Lesser General Public\r\n" + 
			"License as published by the Free Software Foundation; either\r\n" + 
			"version 2.1 of the License, or (at your option) any later version.\r\n" + 
			"\r\n" + 
			"This library is distributed in the hope that it will be useful,\r\n" + 
			"but WITHOUT ANY WARRANTY; without even the implied warranty of\r\n" + 
			"MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU\r\n" + 
			"Lesser General Public License for more details.\r\n" + 
			"\r\n" + 
			"You should have received a copy of the GNU Lesser General Public\r\n" + 
			"License along with this library; if not, write to the Free Software\r\n" + 
			"Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA";
    	System.out.println(license);
    }
    
    private static void printVersion()
    {
    	String version = "";
    	version = "SBML2Modelica version " + VERSION_MAJOR + "." + VERSION_MINOR + " "
    			  + "(Build: " + VERSION_BUILD + ")";
    	System.out.println(version);
    }

    private static void usage()
    {
    	String usage = "";
    	usage +=  "Usage:" + System.lineSeparator();
    	usage +=  "    java -jar SBML2Modelica.jar <SBML file> <output directory> "
    			+ "[" + LOG_OPTION + " <log file>] [" + PREFIX_OPTION + " <prefix>]"
    			+ System.lineSeparator();
    	usage +=  "                                [" + EFFICIENCY_OPTION
    			+ " <n>] [" + VERBOSITY_OPTION + " <n>]"
    			+ System.lineSeparator();
        usage +=  "    java -jar SBML2Modelica.jar [" + HELP_OPTION + "]"
        		+ System.lineSeparator()
        		+ "    java -jar SBML2Modelica.jar [" + VERSION_OPTION + "]"
        		+ System.lineSeparator()
        		+ "    java -jar SBML2Modelica.jar [" + LICENSE_OPTION + "]"
        		+ System.lineSeparator() + System.lineSeparator();

        usage +=  "Arguments:" 
        		+ System.lineSeparator();
        
        usage +=  "  <SBML file>                         "
        		+ "Input SBML file."
        		+ System.lineSeparator() + System.lineSeparator();
        
        usage +=  "  <output directory>                  "
        		+ "Directory where to store generated Modelica files."
        		+ System.lineSeparator()
        		+ "                                      "
        		+ "If the directory does not exist, it will be created."
        		+ System.lineSeparator() + System.lineSeparator();
        
        usage +=  "  [" + LOG_OPTION + " <log file>]                  "
        		+ "Redirects the log output to the given file."
        		+ System.lineSeparator()
        		+ "                                      "
        		+ "Default is \'<SBML file>.log\'."
        		+ System.lineSeparator() + System.lineSeparator();
        
        usage +=  "  [" + PREFIX_OPTION + " <prefix>]                 "
        		+ "Common prefix (possibly, the empty string) for all the "
        		+ System.lineSeparator()
        		+ "                                      "
        		+ "Modelica variables."
        		+ System.lineSeparator()
        		+ "                                      "
        		+ "Default is \'elmt_\'."
        		+ System.lineSeparator() + System.lineSeparator();
        
        usage +=  "  [" + EFFICIENCY_OPTION + " <n>]                    "
        		+ "Chosen Modelica encoding."
        		+ System.lineSeparator()
        		+ "                                      "
        		+ "0: recommended for maximum compliance to the SBML Test "
        		+ System.lineSeparator()
        		+ "                                         "
        		+ "Suite (default)."
        		+ System.lineSeparator()
        		+ "                                      "
        		+ "1: SBML constants are converted to Modelica constants with"
        		+ System.lineSeparator()
        		+ "                                         "
        		+ "connectors to allow access from other Modelica objects."
        		+ System.lineSeparator()
        		+ "                                         "
        		+ "Recommended for SBML models with many constants."
        		+ System.lineSeparator() + System.lineSeparator();
        
        usage +=  "  [" + VERBOSITY_OPTION + " <n>]                   "
        		+ "Logger verbosity level:"
        		+ System.lineSeparator()
        		+ "                                      "
        		+ "0: Only fatal error messages."
        		+ System.lineSeparator()
        		+ "                                      "
        		+ "1: All error messages."
        		+ System.lineSeparator()
        		+ "                                      "
        		+ "2: All error messages and warnings (default)."
        		+ System.lineSeparator()
        		+ "                                      "
        		+ "3: All error messages, warnings and informative messages."
        		+ System.lineSeparator() + System.lineSeparator();
        
        usage +=  "  [" + VERSION_OPTION + "]                         "
        		+ "Print the version of SBML2Modelica."
        		+ System.lineSeparator() + System.lineSeparator();
        
        usage +=  "  [" + HELP_OPTION + "]                            "
        		+ "Print this message."
        		+ System.lineSeparator() + System.lineSeparator();
        
        usage +=  "  [" + LICENSE_OPTION + "]                         "
        		+ "Outputs the SBML2Modelica user license.";
        
        System.out.print(usage);
    }
    
    private static void parseArguments(String[] args)
    {
    	if (args.length == 0)
    	{
    		String errmsg = "Cannot execute SBML2Modelica with no arguments "
    						+ "and no options.";
    		System.err.println(errmsg);
    		usage();
    		System.exit(Constants.ERRCODE_NO_ARGUMENTS);
    	}
        // Check if the program is called in help mode
        if (args[0].equals(HELP_OPTION))
        {
            usage();
            System.exit(Constants.ERRCODE_SUCCESS);
        }
        // Or if it is called in version mode
        if (args[0].equals(VERSION_OPTION))
        {
            printVersion();
            System.exit(Constants.ERRCODE_SUCCESS);
        }
        // Or if it is called in license mode
        if (args[0].equals(LICENSE_OPTION))
        {
        	printLicense();
        	System.exit(Constants.ERRCODE_SUCCESS);
        }
        
        // Parse the mandatory arguments
        if (args.length < 2)
        {
            System.err.println("Cannot execute SBML2Modelica with less than two arguments.");
            usage();
            System.exit(1);
        }
        sbmlfile = args[0];
        outdir = args[1];

        // Parse the other arguments
        for (int i = 2; i < args.length; i++)
        {
            // If help option, print usage and exit
            if (args[i].equals(HELP_OPTION))
            {
                usage();
                System.exit(Constants.ERRCODE_SUCCESS);
            }
            
            // If log, set the log file to the next argument and continue
            if (args[i].equals(LOG_OPTION))
            {
            	if (args.length == i + 1)
            	{
            		String errmsg = "";
            		errmsg += "The option " 
            				  + LOG_OPTION 
            				  + " requires an additional argument";
            		System.err.println(errmsg);
            		System.exit(Constants.ERRCODE_INCOMPLETE_ARGUMENT);
            	}
                logfile = args[++i];
                continue;
            }
            
            // If prefix, set the prefix to the next argument and continue
            if (args[i].equals(PREFIX_OPTION))
            {
            	if (args.length == i + 1)
            	{
            		String errmsg = "";
            		errmsg += "The option " 
            				  + PREFIX_OPTION
            				  + " requires an additional argument";
            		System.err.println(errmsg);
            		System.exit(Constants.ERRCODE_INCOMPLETE_ARGUMENT);
            	}
                prefix = args[++i];
                continue;
            }
            
            // If efficiency, parse the next argument and continue
            if (args[i].equals(EFFICIENCY_OPTION))
            {
            	if (args.length == i + 1)
            	{
            		String errmsg = "";
            		errmsg += "The option " 
            				  + EFFICIENCY_OPTION 
            				  + " requires an additional argument";
            		System.err.println(errmsg);
            		System.exit(Constants.ERRCODE_INCOMPLETE_ARGUMENT);
            	}
                efficiency = Integer.parseInt(args[++i]);
                continue;
            }
            
            // If verbosity, parse the next argument and continue
            if (args[i].equals(VERBOSITY_OPTION))
            {
            	if (args.length == i + 1)
            	{
            		String errmsg = "";
            		errmsg += "The option " 
            				  + VERSION_OPTION 
            				  + " requires an additional argument";
            		System.err.println(errmsg);
            		System.exit(Constants.ERRCODE_INCOMPLETE_ARGUMENT);
            	}
                verbosity = Integer.parseInt(args[++i]);
                continue;
            }
            
            if (args[i].equals(VERSION_OPTION))
            {
                printVersion();
                System.exit(Constants.ERRCODE_SUCCESS);
            }
            
            if (args[i].equals(LICENSE_OPTION))
            {
            	printLicense();
            	System.exit(Constants.ERRCODE_SUCCESS);
            }
            
            // If no option is matched, raise an error
            String errmsg = "The option " + args[i] + " cannot be recognized.";
            System.err.println(errmsg);
            System.exit(Constants.ERRCODE_ILLEGAL_ARGUMENT);
        }
        
        // Unset values to default
        if (efficiency == -1)
            efficiency = 0;
        if (verbosity == -1)
            verbosity = 2;
    }
}
