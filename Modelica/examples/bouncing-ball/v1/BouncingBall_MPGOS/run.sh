#!/bin/bash

for f in $(ls DenseOutput_*.txt); do
	python3 plot.py $f
done
