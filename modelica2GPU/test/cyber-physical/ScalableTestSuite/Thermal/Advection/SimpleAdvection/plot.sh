omc run_$1.mos > out
python3 OMCPlot.py --csv Advection.SimpleAdvection.SimpleAdvection_N_$1_res.csv --model SimpleAdvection_N_$1 --dimension $1
sh clear.sh Advection.SimpleAdvection.SimpleAdvection_N_$1
