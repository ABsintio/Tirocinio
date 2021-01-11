omc run_$1.mos > out
python3 OMCPlot.py --csv HarmonicOscillatorNetwork.HarmonicOscillatorNetwork_N_$1_res.csv --model HarmonicOscillatorNetwork_N_$1 -n $1
sh clear.sh HarmonicOscillatorNetwork.HarmonicOscillatorNetwork_N_$1
