from distutils.core import setup
import subprocess
import sys
import py2exe

try:
    # Installing dependencies
    dependencies = ["coloredlogs", "pycuda", "notify2", "pyyaml", "colorama", "lxml"]
    for dep in dependencies:
        cmd = f"py -m pip install {dep} --upgrade"
        print("Executing: " + cmd)
        subprocess.run(cmd, check=True, shell=True)
except subprocess.CalledProcessError:
    print("Errore nell'istallazione delle dipendeze")
    sys.exit(1)

# After installing dependencies is possible to setup the program
setup(["../../src/modelica2GPU.py"])
