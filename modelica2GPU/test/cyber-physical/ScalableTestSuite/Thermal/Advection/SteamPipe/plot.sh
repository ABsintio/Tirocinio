omc run_$1.mos > out
python3 OMCPlot.py --csv Advection.SteamPipe.SteamPipe_N_$1_res.csv --model SteamPipe_N_$1 --dimension $1
sh clear.sh Advection.SteamPipe.SteamPipe_N_$1
