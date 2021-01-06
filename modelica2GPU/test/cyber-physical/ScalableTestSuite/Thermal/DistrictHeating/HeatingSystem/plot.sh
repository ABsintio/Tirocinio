omc run_$1.mos > out
python3 OMCPlot.py --csv DistrictHeating.HeatingSystem.HeatingSystem_N_$1_res.csv --model HeatingSystem_N_$1 --dimension $1
sh clear.sh DistrictHeating.HeatingSystem.HeatingSystem_N_$1
