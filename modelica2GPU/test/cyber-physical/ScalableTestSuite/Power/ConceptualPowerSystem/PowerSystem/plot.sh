omc run_$1_$2.mos > out
python3 OMCPlot.py --csv ConceptualPowerSystem.PowerSystem.PowerSystemStepLoad_N_$1_M_$2_res.csv --model PowerSystemStepLoad_N_$1_M_$2 -n $1 -m $2
sh clear.sh ConceptualPowerSystem.PowerSystem.PowerSystemStepLoad_N_$1_M_$2
