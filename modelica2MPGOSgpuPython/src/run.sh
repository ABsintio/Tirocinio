#!/bin/bash

for xml in $(ls XMLs); do
    python3 parser.py XMLs/${xml} > test/${xml}.out
done
