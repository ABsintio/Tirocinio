within ConceptualPowerSystem.PowerSystem;
model TwoGeneratorsStepLoad "Description"
	extends TwoGeneratorsConstantLoad(P_load=cat(1, {0.0}, P_nom*ones(N-1)));
end TwoGeneratorsStepLoad;
