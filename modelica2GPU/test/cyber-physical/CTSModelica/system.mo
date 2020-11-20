model system

    Controller ctr;
    cts CTS;
    Monitor monitor;
    
equation

    CTS.x = ctr.x; 
    CTS.u = ctr.u;
    monitor.x = CTS.x;
    monitor.n = ctr.n;

end system;