import yaml
import os
import sys
import pycuda.driver as cuda
import pycuda.autoinit


def extract_data_from_yaml(yaml_file):
    print(f"Extracting data from file: {yaml_file}")
    try:
        return yaml.load(open(yaml_file, mode="r"), Loader=yaml.FullLoader)
    except FileExistsError:
        print("Il file yaml inserito non esiste ... ")
        sys.exit(1)


def checkGPUexists(ccapability):
    """ Controlla l'esistenza della GPU con la capability data in input """
    assert cuda.Device.count() > 0, "Non sembrano essere presenti GPU nVidia sul dispositivo"
    capabilities = [cuda.Device(count - 1).compute_capability() for count in range(cuda.Device.count())]
    assert any(list(filter(lambda x: x == ccapability, capabilities))), "La GPU scelta non esiste"


class YAMLChecker:

    TYPER_DICT = {
        "generateXML"               : bool,
        "omlibrary"                 : str,
        "xml"                       : (str, type(None)),
        "workingdir"                : str,
        "modelfilename"             : str,
        "notifier"                  : bool,
        "filelogger"                : bool,
        "MPGOSsourcedir"            : str,
        "usedefaultoptions"         : bool,
        "major"                     : (float, type(None)),
        "minor"                     : (float, type(None)),
        "numberOfThreads"           : (float, type(None)),
        "numberOfProblems"          : (float, type(None)),
        "numberOfDenseOutput"       : (float, type(None)),
        "threadsPerBlock"           : (float, type(None)),
        "initialTimeStep"           : (float, type(None)),
        "preferSharedMemory"        : (bool, type(None)),
        "maximumTimeStep"           : (float, type(None)),
        "minimumTimeStep"           : (float, type(None)),
        "eventDirection"            : (dict, type(None)),
        "denseOutputMinimumTimeStep": (float, type(None)),
        "denseOutputSaveFrequency"  : (float, type(None)),
        "tolerance"                 : (dict, type(None)),
        "timeDomainInit"            : (float, type(None)),
        "timeDomainEnd"             : (float, type(None))
    }
    
    def __init__(self, yaml_file):
        self.yaml_file = yaml_file
        self.data = extract_data_from_yaml(yaml_file)
        self.modelica2gpu_settings = self.data["modelica2gpu"]
        self.builder_settings = self.data["builder"]

    def get_type_dict(self):
        type_dict = {
            "MPGOSsourcedir" : (self.TYPER_DICT["MPGOSsourcedir"], type(self.builder_settings["MPGOSsourcedir"])),
            "usedefaultoptions" : (self.TYPER_DICT["usedefaultoptions"], type(self.builder_settings["usedefaultoptions"])),
            "minor" : (self.TYPER_DICT["minor"], type(self.builder_settings["gpu"]["minor"])),
            "major" : (self.TYPER_DICT["major"], type(self.builder_settings["gpu"]["major"])),
        }
        self.modelica2gpu_settings.update(self.builder_settings["modeldefinition"])
        for k, v in self.modelica2gpu_settings.items():
            type_dict[k] = (self.TYPER_DICT[k], type(v))
        return type_dict
    
    def check_correctness(self):
        bool_list = [
            self.check_modelica2gpu_generateXML(),
            self.check_modelica2gpu_omlibrary(),
            self.check_modelica2gpu_xml(),
            self.check_modelica2gpu_workingdir(),
            self.check_modelica2gpu_modelfilename(),
            self.check_modelica2gpu_notifier(),
            self.check_modelica2gpu_filelogger(),
            self.check_build_MPGOSsourcedir(),
            self.check_build_usedefaultoptions(),
            self.check_build_major_and_minor(),
            self.check_build_numberOfThreads(),
            self.check_build_numberOfProblems(),
            self.check_build_numberOfDenseOutputs(),
            self.check_build_threadsPerBlock(),
            self.check_build_initialTimeStep(),
            self.check_build_preferSharedMemory(),
            self.check_build_maximumTimeStep(),
            self.check_build_minimumTimeStep(),
            self.check_build_eventDirection(),
            self.check_build_denseOutputSaveFrequency(),
            self.check_build_denseOutputMinimumTimeStep(),
            self.check_build_tolerance(),
            self.check_build_timeDomainInit(),
            self.check_build_timeDomainEnd()
        ]
        result = all(bool_list)
        if not result:
            print("Errore: L'XML non è formattato nel modo corretto!! Errore nei tipi...")
            print("Consultare la seguente stampa di confronto per trovare l'errore e correggerlo\n")
            string = ""
            type_dict = self.get_type_dict()
            for key, value in type_dict.items():
                string += f"{key}: {value[0]} -> {value[1]}\n"
            print(bool_list)
            return string, result
        return "", result

    def check_modelica2gpu_generateXML(self):
        return isinstance(self.modelica2gpu_settings["generateXML"], self.TYPER_DICT["generateXML"])
    
    def check_modelica2gpu_omlibrary(self):
        return isinstance(self.modelica2gpu_settings["omlibrary"], self.TYPER_DICT["omlibrary"]) and \
            os.path.isdir(self.modelica2gpu_settings["omlibrary"])
    
    def check_modelica2gpu_xml(self):
        return type(self.modelica2gpu_settings["xml"]) in self.TYPER_DICT["xml"] and \
            ((self.modelica2gpu_settings["xml"] is None and self.modelica2gpu_settings["generateXML"]) or \
            (self.modelica2gpu_settings["xml"] is not None and not self.modelica2gpu_settings["generateXML"] and \
                os.path.isfile(self.modelica2gpu_settings["xml"])))
    
    def check_modelica2gpu_workingdir(self):
        return isinstance(self.modelica2gpu_settings["workingdir"], self.TYPER_DICT["workingdir"]) and \
            os.path.isdir(self.modelica2gpu_settings["workingdir"])
        
    def check_modelica2gpu_modelfilename(self):
        return isinstance(self.modelica2gpu_settings["modelfilename"], self.TYPER_DICT["modelfilename"]) and \
            os.path.isfile(os.path.join(self.modelica2gpu_settings["workingdir"], self.modelica2gpu_settings["modelfilename"]))
        
    def check_modelica2gpu_notifier(self):
        return isinstance(self.modelica2gpu_settings["notifier"], self.TYPER_DICT["notifier"])
    
    def check_modelica2gpu_filelogger(self):
        return isinstance(self.modelica2gpu_settings["filelogger"], self.TYPER_DICT["filelogger"])

    def check_build_MPGOSsourcedir(self):
        return isinstance(self.builder_settings["MPGOSsourcedir"], self.TYPER_DICT["MPGOSsourcedir"]) and \
            os.path.isdir(self.builder_settings["MPGOSsourcedir"])
    
    def check_build_usedefaultoptions(self):
        return isinstance(self.builder_settings["usedefaultoptions"], self.TYPER_DICT["usedefaultoptions"])

    def check_build_option(self, option_name):
        return type(self.builder_settings["modeldefinition"][option_name]) in self.TYPER_DICT[option_name] and \
            ((self.builder_settings["modeldefinition"][option_name] is None and self.builder_settings["usedefaultoptions"]) or \
             (self.builder_settings["modeldefinition"][option_name] is not None))

    def check_build_major_and_minor(self):
        minor_control_type = type(self.builder_settings["gpu"]["minor"]) in self.TYPER_DICT["minor"] and \
            ((self.builder_settings["gpu"]["minor"] is None and self.builder_settings["usedefaultoptions"]) or \
             (self.builder_settings["gpu"]["minor"] is not None))
        major_control_type = type(self.builder_settings["gpu"]["major"]) in self.TYPER_DICT["major"] and \
            ((self.builder_settings["gpu"]["major"] is None and self.builder_settings["usedefaultoptions"]) or \
             (self.builder_settings["gpu"]["major"] is not None))
        both_exsistance_control = (self.builder_settings["gpu"]["major"] is None and self.builder_settings["gpu"]["minor"] is None) or \
            (self.builder_settings["gpu"]["major"] is not None and self.builder_settings["gpu"]["minor"] is not None)
        gpu_exsist = True
        if self.builder_settings["gpu"]["major"] is not None:
            gpu_exsist = checkGPUexists((self.builder_settings["gpu"]["major"], self.builder_settings["gpu"]["minor"]))
        return minor_control_type and major_control_type and both_exsistance_control and gpu_exsist
    
    def check_build_numberOfThreads(self):
        return self.check_build_option("numberOfThreads")
    
    def check_build_numberOfProblems(self):
        return self.check_build_option("numberOfProblems")

    def check_build_numberOfDenseOutputs(self):
        return self.check_build_option("numberOfDenseOutput")

    def check_build_threadsPerBlock(self):
        return self.check_build_option("threadsPerBlock")
    
    def check_build_initialTimeStep(self):
        return self.check_build_option("initialTimeStep")
    
    def check_build_preferSharedMemory(self):
        return self.check_build_option("preferSharedMemory")
    
    def check_build_maximumTimeStep(self):
        return self.check_build_option("maximumTimeStep")

    def check_build_minimumTimeStep(self):
        return self.check_build_option("minimumTimeStep")

    def check_build_eventDirection(self):
        return self.check_build_option("eventDirection")
    
    def check_build_denseOutputMinimumTimeStep(self):
        return self.check_build_option("denseOutputMinimumTimeStep")

    def check_build_denseOutputSaveFrequency(self):
        return self.check_build_option("denseOutputSaveFrequency")

    def check_build_tolerance(self):
        return self.check_build_option("tolerance")

    def check_build_timeDomainInit(self):
        return self.check_build_option("timeDomainInit")

    def check_build_timeDomainEnd(self):
        return self.check_build_option("timeDomainEnd")