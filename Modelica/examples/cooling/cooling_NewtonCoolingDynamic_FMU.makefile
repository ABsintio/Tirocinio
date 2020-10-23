# FIXME: before you push into master...
RUNTIMEDIR=/usr/bin/../include/omc/c/
#COPY_RUNTIMEFILES=$(FMI_ME_OBJS:%= && (OMCFILE=% && cp $(RUNTIMEDIR)/$$OMCFILE.c $$OMCFILE.c))

fmu:
	rm -f cooling_NewtonCoolingDynamic.fmutmp/sources/cooling_NewtonCoolingDynamic_init.xml
	cp -a "/usr/bin/../share/omc/runtime/c/fmi/buildproject/"* cooling_NewtonCoolingDynamic.fmutmp/sources
	cp -a cooling_NewtonCoolingDynamic_FMU.libs cooling_NewtonCoolingDynamic.fmutmp/sources/

