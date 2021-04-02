echo ${@} > /tmp/log-${2}.txt
python3.9 /home/lmriccardo/Scrivania/Tirocinio/modelica2GPU/test/biological/TestSBML2M/wrapper.py ${@} 2>> /tmp/log-${2}.txt