omc run_$1.mos > out
python3 OMCPlot.py --csv DistrictHeating.HeatingSystemExplicit.HeatingSystemExplicit_N_$1_res.csv --model HeatingSystemExplicit_N_$1 --dimension $1
sh clear.sh DistrictHeating.HeatingSystemExplicit.HeatingSystemExplicit_N_$1
