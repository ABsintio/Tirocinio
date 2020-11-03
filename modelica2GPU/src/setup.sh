#!/bin/bash -f

pyinstaller modelica2GPU.py --onefile
rm -rf build modelica2GPU.spec 
mv dist/modelica2GPU ../bin/
rm -rf dist