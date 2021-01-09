within ConceptualPowerSystem.PowerSystem;
model OneGeneratorConstantLoad
  "One generator with constant load at equilibrium"
  extends PowerSystem_model(generator(each P_t_0=P_nom), P_load=P_nom*ones(N));
end OneGeneratorConstantLoad;