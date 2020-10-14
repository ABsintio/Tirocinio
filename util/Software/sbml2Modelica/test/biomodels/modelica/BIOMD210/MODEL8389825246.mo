within BIOMD210;
model MODEL8389825246 "Chickarmane2008 - Stem cell lineage - NANOG GATA-6 switch" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell elmt_cell;

    equation
        Reacs.elmt_j0 = Params.elmt_j0;
        Reacs.elmt_d1 = Params.elmt_d1;
        Reacs.elmt_d2 = Params.elmt_d2;
        Reacs.elmt_b0 = Params.elmt_b0;
        Reacs.elmt_d0 = Params.elmt_d0;
        Reacs.elmt_h1 = Params.elmt_h1;
        Reacs.elmt_j1 = Params.elmt_j1;
        Reacs.elmt_h0 = Params.elmt_h0;
        Reacs.elmt_OCT4 = elmt_cell.elmt_OCT4;
        Reacs.elmt_a2 = Params.elmt_a2;
        Reacs.elmt_a3 = Params.elmt_a3;
        Reacs.elmt_c2 = Params.elmt_c2;
        Reacs.elmt_a0 = Params.elmt_a0;
        Reacs.elmt_a1 = Params.elmt_a1;
        Reacs.elmt_CDX2 = elmt_cell.elmt_CDX2;
        Reacs.elmt_SOX2 = elmt_cell.elmt_SOX2;
        Reacs.elmt_gamma5 = Params.elmt_gamma5;
        Reacs.elmt_gamma4 = Params.elmt_gamma4;
        Reacs.elmt_gamma2 = Params.elmt_gamma2;
        Reacs.elmt_gamma1 = Params.elmt_gamma1;
        Reacs.elmt_gamman = Params.elmt_gamman;
        Reacs.elmt_c0 = Params.elmt_c0;
        Reacs.elmt_c1 = Params.elmt_c1;
        Reacs.elmt_g0 = Params.elmt_g0;
        Reacs.elmt_i2 = Params.elmt_i2;
        Reacs.elmt_g1 = Params.elmt_g1;
        Reacs.elmt_gammag = Params.elmt_gammag;
        Reacs.elmt_A = elmt_cell.elmt_A;
        Reacs.elmt_i0 = Params.elmt_i0;
        Reacs.elmt_i1 = Params.elmt_i1;
        Reacs.elmt_GATA6 = elmt_cell.elmt_GATA6;
        Reacs.elmt_GCNF = elmt_cell.elmt_GCNF;
        Reacs.elmt_OCT4_SOX2 = elmt_cell.elmt_OCT4_SOX2;
        Reacs.elmt_b5 = Params.elmt_b5;
        Reacs.elmt_NANOG = elmt_cell.elmt_NANOG;
        Reacs.elmt_b3 = Params.elmt_b3;
        Reacs.elmt_b4 = Params.elmt_b4;
        Reacs.elmt_b1 = Params.elmt_b1;
        Reacs.elmt_d3 = Params.elmt_d3;
        Reacs.elmt_b2 = Params.elmt_b2;
        elmt_cell.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_cell.elmt_product9 = Reacs.elmt_product9;
        elmt_cell.elmt_R7 = Reacs.elmt_R7;
        elmt_cell.elmt_R8 = Reacs.elmt_R8;
        elmt_cell.elmt_R5 = Reacs.elmt_R5;
        elmt_cell.elmt_R6 = Reacs.elmt_R6;
        elmt_cell.elmt_R12 = Reacs.elmt_R12;
        elmt_cell.elmt_R3 = Reacs.elmt_R3;
        elmt_cell.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_cell.elmt_R4 = Reacs.elmt_R4;
        elmt_cell.elmt_product21 = Reacs.elmt_product21;
        elmt_cell.elmt_R10 = Reacs.elmt_R10;
        elmt_cell.elmt_R1 = Reacs.elmt_R1;
        elmt_cell.elmt_R11 = Reacs.elmt_R11;
        elmt_cell.elmt_R2 = Reacs.elmt_R2;
        elmt_cell.elmt_product1 = Reacs.elmt_product1;
        elmt_cell.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_cell.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_cell.elmt_product5 = Reacs.elmt_product5;
        elmt_cell.elmt_reactant22 = Reacs.elmt_reactant22;
        elmt_cell.elmt_R9 = Reacs.elmt_R9;
        elmt_cell.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_cell.elmt_product13 = Reacs.elmt_product13;
        elmt_cell.elmt_product17 = Reacs.elmt_product17;

end MODEL8389825246;
