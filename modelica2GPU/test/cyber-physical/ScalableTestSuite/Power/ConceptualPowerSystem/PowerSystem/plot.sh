omc run_$1.mos > out
python3 OMCPlot.py --csv Advection.AdvectionReaction.AdvectionReaction_N_$1_res.csv --model AdvectionReaction_N_$1 --dimension $1
sh clear.sh Advection.AdvectionReaction.AdvectionReaction_N_$1
