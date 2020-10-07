package mpgos;

import biomodel.math.equation.odes.ODESystem;

public class SystemDefinition {
    public ODESystem ode;
    private String MPGOS_PerThread_OdeFunction; // Si otteniene una volta aver buildato oggetto Ode.
    // TODO: Aggiungere le altre funzioni
    public SystemDefinition(ODESystem system) {
        this.ode = system;
    }

    private void setMPGOS_PerThread_OdeFunction() {
        this.ode.buildMPGOS_PerThread_String();
        this.MPGOS_PerThread_OdeFunction = this.ode.getMPGOS_PerThread_OdeFunction();
    }

    public void builtSystemDefinition() {
        this.setMPGOS_PerThread_OdeFunction();
        // TODO: Aggiungere altri metodi per le altre funzioni
    }
}
