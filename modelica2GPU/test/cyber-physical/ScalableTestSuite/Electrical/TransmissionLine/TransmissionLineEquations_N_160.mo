within TransmissionLine;
model TransmissionLineEquations_N_160
    extends TransmissionLineEquations_N_10(N = 160);
      annotation(experiment(StopTime = 4e-6, Interval=2e-9, Tolerance = 1e-8),
                 __OpenModelica_simulationFlags(s = "ida"));
end TransmissionLineEquations_N_160;