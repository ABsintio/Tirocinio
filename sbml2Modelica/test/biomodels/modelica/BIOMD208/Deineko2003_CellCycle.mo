within BIOMD208;
model Deineko2003_CellCycle "Deineko2003_CellCycle" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment elmt_compartment;

    equation
        Reacs.elmt_k4a = Params.elmt_k4a;
        Reacs.elmt_k1 = Params.elmt_k1;
        Reacs.elmt_k4_double_prime = Params.elmt_k4_double_prime;
        Reacs.elmt_k1_double_prime = Params.elmt_k1_double_prime;
        Reacs.elmt_k4i = Params.elmt_k4i;
        Reacs.elmt_k6 = Params.elmt_k6;
        Reacs.elmt_k4 = Params.elmt_k4;
        Reacs.elmt_k1_prime = Params.elmt_k1_prime;
        Reacs.elmt_k2 = Params.elmt_k2;
        Reacs.elmt_phi4a = Params.elmt_phi4a;
        Reacs.elmt_k3 = Params.elmt_k3;
        Reacs.elmt_phi6 = Params.elmt_phi6;
        Reacs.elmt_emax = Params.elmt_emax;
        Reacs.elmt_phi3 = Params.elmt_phi3;
        Reacs.elmt_phi2 = Params.elmt_phi2;
        Reacs.elmt_phi1 = Params.elmt_phi1;
        Reacs.elmt_F6 = Params.elmt_F6;
        Reacs.elmt_phi4i = Params.elmt_phi4i;
        Reacs.elmt_y6 = elmt_compartment.elmt_y6;
        Reacs.elmt_y4 = elmt_compartment.elmt_y4;
        Reacs.elmt_y5 = elmt_compartment.elmt_y5;
        Reacs.elmt_y2 = elmt_compartment.elmt_y2;
        Reacs.elmt_y3 = elmt_compartment.elmt_y3;
        Reacs.elmt_y1 = elmt_compartment.elmt_y1;
        elmt_compartment.elmt_R14 = Reacs.elmt_R14;
        elmt_compartment.elmt_R15 = Reacs.elmt_R15;
        elmt_compartment.elmt_product12 = Reacs.elmt_product12;
        elmt_compartment.elmt_R12 = Reacs.elmt_R12;
        elmt_compartment.elmt_R13 = Reacs.elmt_R13;
        elmt_compartment.elmt_R10 = Reacs.elmt_R10;
        elmt_compartment.elmt_product10 = Reacs.elmt_product10;
        elmt_compartment.elmt_R11 = Reacs.elmt_R11;
        elmt_compartment.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_compartment.elmt_R7 = Reacs.elmt_R7;
        elmt_compartment.elmt_R8 = Reacs.elmt_R8;
        elmt_compartment.elmt_product8 = Reacs.elmt_product8;
        elmt_compartment.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_compartment.elmt_product7 = Reacs.elmt_product7;
        elmt_compartment.elmt_R5 = Reacs.elmt_R5;
        elmt_compartment.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_compartment.elmt_R6 = Reacs.elmt_R6;
        elmt_compartment.elmt_R3 = Reacs.elmt_R3;
        elmt_compartment.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_compartment.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_compartment.elmt_R4 = Reacs.elmt_R4;
        elmt_compartment.elmt_R1 = Reacs.elmt_R1;
        elmt_compartment.elmt_R2 = Reacs.elmt_R2;
        elmt_compartment.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_compartment.elmt_product0 = Reacs.elmt_product0;
        elmt_compartment.elmt_reactant17 = Reacs.elmt_reactant17;
        elmt_compartment.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_compartment.elmt_product4 = Reacs.elmt_product4;
        elmt_compartment.elmt_R9 = Reacs.elmt_R9;
        elmt_compartment.elmt_reactant13 = Reacs.elmt_reactant13;
        elmt_compartment.elmt_product2 = Reacs.elmt_product2;
        elmt_compartment.elmt_product16 = Reacs.elmt_product16;
        elmt_compartment.elmt_product15 = Reacs.elmt_product15;

end Deineko2003_CellCycle;
