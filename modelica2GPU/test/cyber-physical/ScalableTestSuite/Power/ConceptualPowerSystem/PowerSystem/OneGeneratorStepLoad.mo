within ConceptualPowerSystem.PowerSystem;
model OneGeneratorStepLoad
	"One generator with 5% step reduction from equilibrium"
	extends OneGeneratorConstantLoad(
	P_load=cat(1, {P_nom*0.95}, P_nom*ones(N - 1)));
end OneGeneratorStepLoad;