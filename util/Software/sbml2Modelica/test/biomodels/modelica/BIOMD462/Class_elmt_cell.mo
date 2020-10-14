within BIOMD462;
class Class_elmt_cell

    input Real elmt_product9;
    input Real elmt_reactant2;
    input Real elmt_AbetaPlaqueGrowth;
    input Real elmt_product7;
    input Real elmt_reactant3;
    input Real elmt_reactant6;
    input Real elmt_AbetaDisaggregation;
    input Real elmt_product11;
    input Real elmt_reactant8;
    input Real elmt_product1;
    input Real elmt_reactant15;
    input Real elmt_reactant17;
    input Real elmt_product5;
    input Real elmt_reactant10;
    input Real elmt_reactant12;
    input Real elmt_AbetaDimerisation;
    input Real elmt_reactant13;
    input Real elmt_NepDegradation;
    input Real elmt_AbetaDedimerisation;
    input Real elmt_product16;
    input Real elmt_product14;
    input Real elmt_Abetaproduction;
    input Real elmt_AbetaDegradation;
    input Real elmt_AbetaPlaqueFormation;

    Real elmt_cell(unit = "") "";
    Real elmt_AbP_amount(unit = "");
    Real elmt_AbP_conc(unit = "");
    Real elmt_AbP(unit = "") "AbetaPlaque";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Abeta_amount(unit = "");
    Real elmt_Abeta_conc(unit = "");
    Real elmt_Abeta(unit = "") "AbetaMonomer";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Source_amount(unit = "");
    Real elmt_Source_conc(unit = "");
    Real elmt_Source(unit = "") "";
    Real elmt_Sink_amount(unit = "");
    Real elmt_Sink_conc(unit = "");
    Real elmt_Sink(unit = "") "";
    Real elmt_Nep_amount(unit = "");
    Real elmt_Nep_conc(unit = "");
    Real elmt_Nep(unit = "") "Neprilysin";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_AbDim_amount(unit = "");
    Real elmt_AbDim_conc(unit = "");
    Real elmt_AbDim(unit = "") "AbetaDimer";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_cell = 1.0;
        elmt_AbP_amount = 0.0;
        elmt_Abeta_amount = 0.0;
        elmt_Source_amount = 1.0;
        elmt_Sink_amount = 1.0;
        elmt_Nep_amount = 1000.0;
        elmt_AbDim_amount = 0.0;


    equation
        assert(elmt_cell >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cell) = 0;
        elmt_AbP = elmt_AbP_amount;
        elmt_Abeta = elmt_Abeta_amount;
        elmt_Source = elmt_Source_amount;
        elmt_Sink = elmt_Sink_amount;
        elmt_Nep = elmt_Nep_amount;
        elmt_AbDim = elmt_AbDim_amount;
        der(elmt_Source_amount) = 0;
        der(elmt_Sink_amount) = 0;
        der(elmt_AbP_amount) = ((elmt_AbetaPlaqueGrowth * elmt_product14) + (- (elmt_AbetaPlaqueGrowth * elmt_reactant13)) + (- (elmt_AbetaDisaggregation * elmt_reactant15)) + (elmt_AbetaPlaqueFormation * elmt_product11));
        der(elmt_Abeta_amount) = ((- (elmt_AbetaPlaqueGrowth * elmt_reactant12)) + (elmt_AbetaDedimerisation * elmt_product9) + (elmt_AbetaDisaggregation * elmt_product16) + (elmt_Abetaproduction * elmt_product1) + (- (elmt_AbetaDegradation * elmt_reactant2)) + (- (elmt_AbetaDimerisation * elmt_reactant6)));
        der(elmt_Nep_amount) = ((- (elmt_NepDegradation * elmt_reactant17)) + (- (elmt_AbetaDegradation * elmt_reactant3)) + (elmt_AbetaDegradation * elmt_product5));
        der(elmt_AbDim_amount) = ((- (elmt_AbetaDedimerisation * elmt_reactant8)) + (elmt_AbetaDimerisation * elmt_product7) + (- (elmt_AbetaPlaqueFormation * elmt_reactant10)));

    algorithm
        elmt_AbP_conc := elmt_AbP_amount / elmt_cell;
        elmt_Abeta_conc := elmt_Abeta_amount / elmt_cell;
        elmt_Source_conc := elmt_Source_amount / elmt_cell;
        elmt_Sink_conc := elmt_Sink_amount / elmt_cell;
        elmt_Nep_conc := elmt_Nep_amount / elmt_cell;
        elmt_AbDim_conc := elmt_AbDim_amount / elmt_cell;
end Class_elmt_cell;
