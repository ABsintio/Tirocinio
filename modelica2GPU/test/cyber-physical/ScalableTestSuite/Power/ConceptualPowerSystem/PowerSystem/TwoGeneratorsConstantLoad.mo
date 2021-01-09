within ConceptualPowerSystem.PowerSystem;
model TwoGeneratorsConstantLoad
  "One generator with constant load at equilibrium"
  extends PowerSystem_model(
    N = 2,
    generator(each P_t_0=P_nom), P_load=P_nom*ones(N));
end TwoGeneratorsConstantLoad;