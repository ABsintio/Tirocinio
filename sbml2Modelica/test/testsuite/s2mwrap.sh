alias sbml2modelica="java -Djava.library.path=/usr/local/lib  -cp .:/usr/local/share/java/libsbmlj.jar -jar /home/filippo/eclipse-workspace/SBML2Modelica/SBML2Modelica.jar"

echo ${@} > /tmp/log-${2}.txt

python2.7 /home/filippo/eclipse-workspace/SBML2Modelica/s2mwrap.py ${@} 2>> /tmp/log-${2}.txt