within BIOMD180;
model Kim2007_CellularMemory_SymmetricModel "Kim2007_CellularMemory_SymmetricModel" annotation(Documentation(info="<annotation>
  <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
  </rdf:RDF>
</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment elmt_compartment;

    equation
        Reacs.elmt_n = Params.elmt_n;
        Reacs.elmt_sP1_prime_P1 = Params.elmt_sP1_prime_P1;
        Reacs.elmt_d_R1 = Params.elmt_d_R1;
        Reacs.elmt_d_P4_prime = Params.elmt_d_P4_prime;
        Reacs.elmt_d_P1 = Params.elmt_d_P1;
        Reacs.elmt_d_R2 = Params.elmt_d_R2;
        Reacs.elmt_d_P2 = Params.elmt_d_P2;
        Reacs.elmt_P3_prime = elmt_compartment.elmt_P3_prime;
        Reacs.elmt_sP2_prime_P2 = Params.elmt_sP2_prime_P2;
        Reacs.elmt_d_P2_prime = Params.elmt_d_P2_prime;
        Reacs.elmt_sP1R1 = Params.elmt_sP1R1;
        Reacs.elmt_d_P1_prime = Params.elmt_d_P1_prime;
        Reacs.elmt_P1 = elmt_compartment.elmt_P1;
        Reacs.elmt_sP2R2 = Params.elmt_sP2R2;
        Reacs.elmt_P2 = elmt_compartment.elmt_P2;
        Reacs.elmt_sP4_prime_P1_prime = Params.elmt_sP4_prime_P1_prime;
        Reacs.elmt_s2 = Params.elmt_s2;
        Reacs.elmt_R1 = elmt_compartment.elmt_R1;
        Reacs.elmt_R2 = elmt_compartment.elmt_R2;
        Reacs.elmt_s3 = Params.elmt_s3;
        Reacs.elmt_sP3_prime_P2_prime = Params.elmt_sP3_prime_P2_prime;
        Reacs.elmt_P1_prime = elmt_compartment.elmt_P1_prime;
        Reacs.elmt_i2 = Params.elmt_i2;
        Reacs.elmt_i1 = Params.elmt_i1;
        Reacs.elmt_P2_prime = elmt_compartment.elmt_P2_prime;
        Reacs.elmt_d_P3_prime = Params.elmt_d_P3_prime;
        Reacs.elmt_s1 = Params.elmt_s1;
        Reacs.elmt_P4_prime = elmt_compartment.elmt_P4_prime;
        elmt_compartment.elmt_product12 = Reacs.elmt_product12;
        elmt_compartment.elmt_product10 = Reacs.elmt_product10;
        elmt_compartment.elmt_React11 = Reacs.elmt_React11;
        elmt_compartment.elmt_React12 = Reacs.elmt_React12;
        elmt_compartment.elmt_React10 = Reacs.elmt_React10;
        elmt_compartment.elmt_React19 = Reacs.elmt_React19;
        elmt_compartment.elmt_React17 = Reacs.elmt_React17;
        elmt_compartment.elmt_React18 = Reacs.elmt_React18;
        elmt_compartment.elmt_React15 = Reacs.elmt_React15;
        elmt_compartment.elmt_React16 = Reacs.elmt_React16;
        elmt_compartment.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt_compartment.elmt_React13 = Reacs.elmt_React13;
        elmt_compartment.elmt_React14 = Reacs.elmt_React14;
        elmt_compartment.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_compartment.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_compartment.elmt_product8 = Reacs.elmt_product8;
        elmt_compartment.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_compartment.elmt_product6 = Reacs.elmt_product6;
        elmt_compartment.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_compartment.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_compartment.elmt_product0 = Reacs.elmt_product0;
        elmt_compartment.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_compartment.elmt_React20 = Reacs.elmt_React20;
        elmt_compartment.elmt_product5 = Reacs.elmt_product5;
        elmt_compartment.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_compartment.elmt_product4 = Reacs.elmt_product4;
        elmt_compartment.elmt_product2 = Reacs.elmt_product2;
        elmt_compartment.elmt_React6 = Reacs.elmt_React6;
        elmt_compartment.elmt_React7 = Reacs.elmt_React7;
        elmt_compartment.elmt_React8 = Reacs.elmt_React8;
        elmt_compartment.elmt_React9 = Reacs.elmt_React9;
        elmt_compartment.elmt_React2 = Reacs.elmt_React2;
        elmt_compartment.elmt_product15 = Reacs.elmt_product15;
        elmt_compartment.elmt_React3 = Reacs.elmt_React3;
        elmt_compartment.elmt_React4 = Reacs.elmt_React4;
        elmt_compartment.elmt_product13 = Reacs.elmt_product13;
        elmt_compartment.elmt_React5 = Reacs.elmt_React5;
        elmt_compartment.elmt_product18 = Reacs.elmt_product18;
        elmt_compartment.elmt_product17 = Reacs.elmt_product17;
        elmt_compartment.elmt_React1 = Reacs.elmt_React1;

end Kim2007_CellularMemory_SymmetricModel;
