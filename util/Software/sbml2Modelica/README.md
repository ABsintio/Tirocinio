# SBML2Modelica

## What is *SBML2Modelica*?
SBML2Modelica is a tool which translates biochemical models written in *System Biology Markup Language* (SBML) Version 3 Level 2 into well-structured, user-intelligible, easily-modifiable *Modelica* models.  

As one of the most popular open-standard simulation ecosystems for virtually all application domains, Modelica is supported by several simulators (commercial as well as open-source), and is especially suited for the definition of complex networks of heterogeneous models.

The code of SBML2Modelica can also be used as a library, which provides a language-independent data structure to represent an input SBML model, as well as classes and methods for the generation of *Modelica* code.  

## Dependencies
SBML2Modelica has been developed in a *Java 8* environment, but it should also work with older versions of Java.  
The parsing of SBML files comes from the library [JSBML](http://sbml.org/Software/JSBML) available at the [official SBML site](https://sbml.org).  

## Instructions
### Launching SBML2Modelica
In this repository we provide the source code of "SBML2Modelica", as well as the precompiled ``.jar``, which can be executed with the following command:

    java -jar SBML2Modelica.jar

No additional installation (beyond Java 8) is required to run the precompiled binary. All the dependency libraries have been packaged inside the JAR archive.

### *SBML2Modelica* Usage
*SBML2Modelica* can be executed with options according to the following syntax:

    java -jar SBML2Modelica.jar <SBML file> <output directory> [--log <log file>] [--prefix <prefix>]
                                    [--encoding <n>] [--verbosity <n>]
        java -jar SBML2Modelica.jar [--help]
        java -jar SBML2Modelica.jar [--version]
        java -jar SBML2Modelica.jar [--license]

where command arguments and options are as follows:

    <SBML file>                         Input SBML file.
        
    <output directory>                  Directory where to store generated Modelica files.
                                        If the directory does not exists, it will be created.
                                            
    [--log <log file>]                  Redirects the log output to the given file.
                                        Default is '<SBML file>.log'.
                                            
    [--prefix <prefix>]                 Common prefix (possibly, the empty string) for all the
                                        Modelica variables.
                                        Default is 'elmt_'.
                                            
    [--encoding <n>]                    Chosen Modelica encoding.
                                        0: recommended for maximum compliance to the SBML Test
                                           Suite (default).
                                        1: SBML constants are converted to Modelica constants with
                                           connectors to allow access from other Modelica objects.
                                           Recommended for SBML models with many constants.
                                            
    [--verbosity <n>]                   Logger verbosity level:
                                        0: Only fatal error messages.
                                        1: All error messages.
                                        2: All error messages and warnings (default).
                                        3: All error messages, warnings and informative messages.
                                            
    [--version]                         Print the version of SBML2Modelica.
        
    [--help]                            Print this message.
        
    [--license]                         Outputs the SBML2Modelica user license.


### Output
The results of running SBML2Modelica on an SBML model will be available in the user-specified output directory as the following set of Modelica files:

  *  `package.mo`: model package definition
  *  `<SBML file name>.mo`: a Modelica object defining the *entire model* and linking the remaining objects
  *  `Constants.mo`: definition of all the model constants
  *  `Functions.mo`: definition of auxiliary and utility functions
  *  `Parameters.mo`: definition of model parameters
  *  `Reactions.mo`: definition of all the model reactions
  *  One `.mo` file per model compartment
  *  One `.mo` file per model event.


### SBML Model Simulation
After the conversion of a SBML model to a *Modelica* project, it is possible to simulate it using a *Modelica* simulator, e.g., [OpenModelica](http://www.openmodelica.org) or [JModelica](http://www.jmodelica.org).

Just as an example, below we sketch two simulation options when using OpenModelica.

#### Simulating via the OpenModelica GUI
This is the simplest way to simulate a SBML model using OpenModelica: 

  1.  Open the file `package.mo` using the *OpenModelica Connection Editor*
  2.  Select the model inside the package
  3.  Set the simulation parameters using the GUI
  4.  Start the simulation.

#### Simulating via the *OpenModelica* Scripting Language
The user needs to write a file using the following template:

  1.  A command adding to the *Modelica* `PATH` variable the directory containing the model **OR** a command to move the current working directory to the directory containing the model
  2.  A `loadFile` command to load the file `package.mo`
  3.  A `loadFile` command to load any other file with `.mo` extension
  4.  A `loadModel` command to load the model (in general it is `package_name.model_name`)
  5.  A set of commands to setup the simulation parameters
  6.  The `simulate` command to run the simulation.
  
# SBML2FMU
SBML2FMU is a helper tool which produces, in one shot, a [Functional Mockup Unit (FMU)](http://fmi-standard.org) from an SBML model, by leveraging the JModelica API.

SBML2FMU has the following requirements to be run:

  * [JModelica](http://www.jmodelica.org) is correctly installed on the user machine
  * [Python](http://www.python.org) is correctly installed on the user machine
  * SBML2Modelica.jar has been downloaded.
  
In order to run SBML2FMU, from a shell:

    cd <directory where SBML2Modelica.jar resides>
    python SBML2FMU.py <SBML file> <output directory>

SBML2FMU will generate in the output directory both the Modelica files resulting from the translation of the input SBML model and the corresponding opaque FMU, as generated leveraging the JModelica API.


# SBML Test Suite
To ensure the correct translation of SBML models, we tested SBML2Modelica against the [SBML Test Suite 3.3.0](https://github.com/sbmlteam/sbml-test-suite/releases/tag/3.3.0). 
Folder `test/testsuite` contains suitable wrappers the can be used to run the Test Suite Core 3.3.0 on SBML2Modelica using a working installation of OpenModelica.

To reproduce the results you need the following requirements:

  * The [SBML Test Suite 3.3.0](https://github.com/sbmlteam/sbml-test-suite/releases/tag/3.3.0)
  * A working installation of [OpenModelica](http://www.openmodelica.org)
  * The JAR archive `SBML2Modelica.jar` we provide in this repository

Since we only provide support for SBML core and we focused on *SBML Level 3 Version 2*, we filtered test cases containing deprecated constructs or referring to SBM extensions. In particular, we filtered the following:

  * All the test cases referring to the [Hierarchical Model Composition](http://sbml.org/Documents/Specifications/SBML_Level_3/Packages/comp) package (test and component tags starting with `comp:`)
  * All the test cases referring to the [Flux Balance Constraints](http://sbml.org/Documents/Specifications/SBML_Level_3/Packages/fbc) package (test and component tags starting with `fbc:`)
  * All the test cases containing the deprecated construct of fast reactions (test tag `FastReaction`)
  

# Authors and contacts

  * Filippo Maggioli (<maggioli@di.uniroma1.it>) 
  * Toni Mancini  (<tmancini@di.uniroma1.it>)
  * Enrico Tronci  (<tronci@di.uniroma1.it>)

Model Checking Lab ([website](http://mclab.di.uniroma1.it))  
Computer Science Department  
Sapienza University of Rome, Italy


# Publication
SBML2Modelica is presented in the following article:

F. Maggioli, T. Mancini, and E. Tronci:   
"SBML2Modelica: Integrating biochemical models within openstandard simulation ecosystems".  
Bioinformatics, 2019. Oxford University Press.
DOI: [10.1093/bioinformatics/btz860](http://doi.org/10.1093/bioinformatics/btz860)

When referring to SBML2Modelica in your research articles, please refer to the publication above.