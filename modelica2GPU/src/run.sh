#!/bin/bash

python3 modelica2GPU.py --logger config/logger.yaml --config /home/yorunoomo/Scrivania/Tirocinio/modelica2GPU/test/sampling/sampling.yaml
python3 modelica2GPU.py --logger config/logger.yaml --config /home/yorunoomo/Scrivania/Tirocinio/modelica2GPU/test/ifmodel/ifmodel.yaml
python3 modelica2GPU.py --logger config/logger.yaml --config /home/yorunoomo/Scrivania/Tirocinio/modelica2GPU/test/TestModel/testmodel.yaml
python3 modelica2GPU.py --logger config/logger.yaml --config /home/yorunoomo/Scrivania/Tirocinio/modelica2GPU/test/Bouncingball/v1/bouncingball.yaml
python3 modelica2GPU.py --logger config/logger.yaml --config /home/yorunoomo/Scrivania/Tirocinio/modelica2GPU/test/secondOrderSystem/secondordersystem.yaml
python3 modelica2GPU.py --logger config/logger.yaml --config /home/yorunoomo/Scrivania/Tirocinio/modelica2GPU/test/newtonCooling/newtoncooling.yaml
python3 modelica2GPU.py --logger config/logger.yaml --config /home/yorunoomo/Scrivania/Tirocinio/modelica2GPU/test/electrical/electrical.yaml
python3 modelica2GPU.py --logger config/logger.yaml --config /home/yorunoomo/Scrivania/Tirocinio/modelica2GPU/test/loktaVolterra/loktavolterra.yaml
python3 modelica2GPU.py --logger config/logger.yaml --config /home/yorunoomo/Scrivania/Tirocinio/modelica2GPU/test/switchedRLC/switchedrlc.yaml
python3 modelica2GPU.py --logger config/logger.yaml --config /home/yorunoomo/Scrivania/Tirocinio/modelica2GPU/test/speedMeasurement/sampleHold/samplehold.yaml
python3 modelica2GPU.py --logger config/logger.yaml --config /home/yorunoomo/Scrivania/Tirocinio/modelica2GPU/test/speedMeasurement/intervalMeasurement/intervalmeasurement.yaml