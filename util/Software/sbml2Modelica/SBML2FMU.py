import os, sys
from pymodelica import compile_fmu
from pyfmi import load_fmu


def sbml2modelica(input, output, s2mjar = "SBML2Modelica.jar"):
    os.system("java -jar {0} {1} {2}".format(s2mjar, input, output))

def clean_annotations(filename):
    with open(filename, "r") as fp:
        content = fp.read()

    while "annotation(" in content:
        noteidx = content.find("annotation(")
        endl = content.find(");", noteidx)
        content = content[:noteidx] + content[endl + 2:]

    with open(filename, "w") as fp:
        fp.write(content)

def get_model_name(mo_files):
    res = None
    for name in mo_files:
        clean_annotations(name)
        if name.startswith("Class_"):
            continue
        if name in ["Parameters.mo", "Reactions.mo", "Constants.mo", "Functions.mo", "package.mo"]:
            continue
        res = name
    return res

def create_fmu(directory):
    ROOT_DIR = os.getcwd()
    os.chdir(directory)
    _mo_files = os.listdir('.')
    mo_files = list()
    for name in _mo_files:
        if name.endswith(".mo"):
            mo_files.append(name)
    model_name = get_model_name(mo_files).replace(".mo", "")
    try:
        fmu_name = compile_fmu("{0}.{1}".format(directory, model_name), "{0}.mo".format(model_name))
        # fmu_name = compile_fmu(model_name, mo_files)
    except:
        sys.stderr.write("Error in compiling FMU for model {0}\n".format(os.path.basename(directory)))
        fmu_name = None
    os.chdir(ROOT_DIR)
    return fmu_name


def usage():
    sys.stdout.write("SBML2FMU Usage:{}".format(os.linesep))
    sys.stdout.write("    python SBML2FMU.py <input_sbml> <output_dir>{}".format(os.linesep))


def main(argc, argv):
    if argc < 3:
        sys.stderr.write("Not enough arguments.")
        usage()

    sbml        = argv[1]
    directory   = argv[2]

    sbml2modelica(sbml, directory)
    fmu_name = create_fmu(directory)
    if fmu_name is not None:
        sys.stdout.write("FMU created. Saved to {0}{1}".format(fmu_name, os.linesep))

if __name__ == '''__main__''':
    main(len(sys.argv), sys.argv)
