import sys
import os
import re

import pandas as pd
import numpy as np
import xml.etree.ElementTree as ETree
from libsbml import readSBML

#sbml2modelica = "java -Djava.library.path=/usr/local/lib  -cp .:/usr/local/share/java/libsbmlj.jar -jar /home/filippo/eclipse-workspace/SBML2Modelica/SBML2Modelica.jar"
sbml2modelica = "java -jar /home/filippo/eclipse-workspace/SBML2Modelica/SBML2Modelica.jar"
log_file = "/home/filippo/eclipse-workspace/SBML2Modelica/log.dat"
MATCH_EPSILON   = 1e-8
NEXT_EPSILON    = 1e-9

def modelica_varnames(variables, amounts, concentrations, sbml):
    doc = readSBML(sbml)
    m = doc.getModel()
    varnames = list()
    for var in variables:
        o = m.getParameter(var)
        if o is not None:
            varnames.append('Params.elmt_{0}'.format(var))
            continue
        o = m.getCompartment(var)
        if o is not None:
            varnames.append("elmt_{0}.elmt_{0}".format(var))
            continue
        o = m.getSpecies(var)
        if o is not None:
            if var in amounts:
                varnames.append('elmt_{0}.elmt_{1}_amount'.format(o.getCompartment(), var))
            if var in concentrations:
                varnames.append('elmt_{0}.elmt_{1}_conc'.format(o.getCompartment(), var))
            continue
        o = m.getReaction(var)
        if o is not None:
            varnames.append('Reacs.elmt_{}'.format(var))
            continue
        for r in m.GetListOfReactions():
            if r.getReactant(var) or r.getProduct(var):
                varnames.append('Reacs.elmt_{}'.format(var))
    return varnames

def compile_modelica(out_dir, modelica_id, start, stop, step_size):
    _files = os.listdir(out_dir)
    files = list()
    for name in _files:
        if name.endswith('.mo') and name != '{0}.mo'.format(modelica_id):
            files.append(name)
    opts = str(files)[1:-1].replace(",", "")
    cwd = os.getcwd()
    os.chdir(out_dir)
    os.system('omc -s {0}.mo {1} Modelica'.format(modelica_id, opts))
    os.system('make -j4 -f {0}.makefile'.format(modelica_id))
    tree = ETree.parse("{0}_init.xml".format(modelica_id))
    root = tree.getroot()
    root.getchildren()[0].attrib['stepSize'] = step_size
    root.getchildren()[0].attrib['stopTime'] = stop
    root.getchildren()[0].attrib['startTime'] = start
    root.getchildren()[0].attrib['outputFormat'] = 'csv'
    root.getchildren()[0].attrib['solver'] = 'euler'#'dassl'
    tree.write("{0}_init.xml".format(modelica_id))
    os.chdir(cwd)

def simulate(out_dir, modelica_id):
    cwd = os.getcwd()
    os.chdir(out_dir)
    os.system('./{0} -maxStepSize=0.0001'.format(modelica_id))
    os.chdir(cwd)

def save_results(out_dir, modelica_id, model_id, variables, modelica_variables, step_size):
    cwd = os.getcwd()
    os.chdir(out_dir)

    res = pd.read_csv("{0}_res.csv".format(modelica_id))
    print "File loaded."
    res[variables] = res[modelica_variables]
    print "Variables renamed."
    res = res[['time'] + variables]
    print "Time added. Current variables number: " + str(len(res.columns))
    # res['future'] = res['time'].shift(-1)
    # to_drop = res[res['future'] - res['time'] < 0.5 * step_size].index
    # res.drop(to_drop, inplace=True)
    # res.drop(columns=['future'], inplace=True)
    start = res['time'][0]
    end = res['time'][len(res) - 1]
    time = np.arange(start, end + step_size, step_size)
    print "linspace computed."
    to_drop = list()
    for i in range(len(res)):
        if i > 0:
            if abs(res['time'][i - 1] - res['time'][i]) < NEXT_EPSILON:
                to_drop.append(i)
                continue
        found = False
        for val in time:
            if abs(res['time'][i] - val) < MATCH_EPSILON:
                found = True
                break
        if not found:
            to_drop.append(i)
    print "List of indices to drop created."
    res.drop(to_drop, inplace=True)
    print "Indices dropped."
    res[res > 1e59] = 'INF'
    res[res < -1e59] = '-INF'
    print "Ininifty values reformatted."
    res.to_csv('../{0}.csv'.format(model_id), index=False)
    print "Results saved."

    os.chdir(cwd)

def clean_out_dir(out_dir):
    files = os.listdir(out_dir)
    dfa = re.compile('[0-9][0-9][0-9][0-9][0-9]\\.csv')
    for name in files:
        if dfa.match(name) is None:
            os.remove(os.path.join(out_dir, name))



def main(argc, argv):
    test_dir = os.path.join(argv[1], argv[2])
    out_dir = os.path.join(argv[3], argv[2])
    settings = os.path.join(argv[1], argv[2], "{}-settings.txt".format(argv[2]))
    model = os.path.join(argv[1], argv[2], "{}-model.m".format(argv[2]))
    sbml = os.path.join(argv[1], argv[2], "{0}-sbml-l{1}v{2}.xml".format(argv[2], argv[4], argv[5]))

    doc = readSBML(sbml)
    m = doc.getModel()
    modelica_id = m.getIdAttribute()

    with open(model, 'r') as fp:
        mcont = fp.read().splitlines()
    for line in mcont:
        if line.startswith('testType'):
            if 'TimeCourse' not in line:
                exit(1)
        if line.startswith('packagesPresent'):
            if line.replace(" ", "") != 'packagesPresent:':
                exit(1)
    with open(settings, 'r') as fp:
        scont = fp.read().splitlines()
    start = scont[0].replace(" ", "").split(":")[1]
    horizon = scont[1].replace(" ", "").split(":")[1]
    step_size = str(float(horizon) / float(scont[2].replace(" ", "").split(":")[1]))
    variables = scont[3].replace(" ", "").split(":")[1].split(",")
    if type(variables) is str:
        variables = [variables]
    amnt = scont[6].replace(" ", "").split(":")[1].split(",")
    if type(amnt) is str:
        amnt = [amnt]
    conc = scont[7].replace(" ", "").split(":")[1].split(",")
    if type(conc) is str:
        conc = [conc]

    print os.system('{0} {1} {2} --log {3}'.format(sbml2modelica, sbml, out_dir, log_file))
    compile_modelica(out_dir, modelica_id, start, horizon, step_size)
    simulate(out_dir, modelica_id)
    print modelica_varnames(variables, amnt, conc, sbml)
    save_results(out_dir, modelica_id, argv[2], variables, modelica_varnames(variables, amnt, conc, sbml), float(step_size))
    #clean_out_dir(out_dir)

if __name__ == '__main__':
    main(len(sys.argv), sys.argv)