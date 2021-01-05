omc run_$1.mos > out
python3 OMCPlot.py --csv HeatExchanger.CocurrentHeatExchangerEquations.CocurrentHeatExchangerEquations_N_$1_res.csv --model CounterCurrentHeatExchangerEquations_N_$1 --dimension $1
sh clear.sh HeatExchanger.CocurrentHeatExchangerEquations.CocurrentHeatExchangerEquations_N_$1
