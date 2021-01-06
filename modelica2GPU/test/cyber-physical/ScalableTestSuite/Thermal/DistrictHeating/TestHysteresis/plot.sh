omc run_$1.mos > out
python3 OMCPlot.py --csv DistrictHeating.TestHysteresis.TestHysteresis_model_res.csv --model TestHysteresis_model --dimension 1
sh clear.sh DistrictHeating.TestHysteresis.TestHysteresis_model
