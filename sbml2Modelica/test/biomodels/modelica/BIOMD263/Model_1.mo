within BIOMD263;
model Model_1 "Fujita2010_Akt_Signalling_NGF" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_Cell elmt_Cell;

    equation
        Params.elmt_pAkt_S6 = elmt_Cell.elmt_pAkt_S6;
        Params.elmt_pTrkA_Akt = elmt_Cell.elmt_pTrkA_Akt;
        Params.elmt_pS6 = elmt_Cell.elmt_pS6;
        Params.elmt_pTrkA = elmt_Cell.elmt_pTrkA;
        Params.elmt_pAkt = elmt_Cell.elmt_pAkt;
        Reacs.elmt_Cell = elmt_Cell.elmt_Cell;
        Reacs.elmt_S6 = elmt_Cell.elmt_S6;
        Reacs.elmt_pTrkA_Akt = elmt_Cell.elmt_pTrkA_Akt;
        Reacs.elmt_pS6 = elmt_Cell.elmt_pS6;
        Reacs.elmt_pTrkA = elmt_Cell.elmt_pTrkA;
        Reacs.elmt_NGF_TrkA = elmt_Cell.elmt_NGF_TrkA;
        Reacs.elmt_pAkt = elmt_Cell.elmt_pAkt;
        Reacs.elmt_pAkt_S6 = elmt_Cell.elmt_pAkt_S6;
        Reacs.elmt_pro_TrkA = elmt_Cell.elmt_pro_TrkA;
        Reacs.elmt_NGF = elmt_Cell.elmt_NGF;
        Reacs.elmt_TrkA_turnover = Params.elmt_TrkA_turnover;
        Reacs.elmt_TrkA = elmt_Cell.elmt_TrkA;
        Reacs.elmt_Akt = elmt_Cell.elmt_Akt;
        elmt_Cell.elmt_NGF_conc_ramp = Params.elmt_NGF_conc_ramp;
        elmt_Cell.elmt_product12 = Reacs.elmt_product12;
        elmt_Cell.elmt_ramp_time = Params.elmt_ramp_time;
        elmt_Cell.elmt_NGF_conc_step = Params.elmt_NGF_conc_step;
        elmt_Cell.elmt_NGF_conc_pulse = Params.elmt_NGF_conc_pulse;
        elmt_Cell.elmt_reactant22 = Reacs.elmt_reactant22;
        elmt_Cell.elmt_reactant24 = Reacs.elmt_reactant24;
        elmt_Cell.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_Cell.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_Cell.elmt_product8 = Reacs.elmt_product8;
        elmt_Cell.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_Cell.elmt_product7 = Reacs.elmt_product7;
        elmt_Cell.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_Cell.elmt_pulse_time = Params.elmt_pulse_time;
        elmt_Cell.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_Cell.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_Cell.elmt_product23 = Reacs.elmt_product23;
        elmt_Cell.elmt_product21 = Reacs.elmt_product21;
        elmt_Cell.elmt_reaction_3 = Reacs.elmt_reaction_3;
        elmt_Cell.elmt_reaction_4 = Reacs.elmt_reaction_4;
        elmt_Cell.elmt_reaction_1 = Reacs.elmt_reaction_1;
        elmt_Cell.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_Cell.elmt_reaction_2 = Reacs.elmt_reaction_2;
        elmt_Cell.elmt_product5 = Reacs.elmt_product5;
        elmt_Cell.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_Cell.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_Cell.elmt_reactant13 = Reacs.elmt_reactant13;
        elmt_Cell.elmt_product2 = Reacs.elmt_product2;
        elmt_Cell.elmt_reaction_9 = Reacs.elmt_reaction_9;
        elmt_Cell.elmt_reaction_7 = Reacs.elmt_reaction_7;
        elmt_Cell.elmt_reaction_8 = Reacs.elmt_reaction_8;
        elmt_Cell.elmt_reaction_5 = Reacs.elmt_reaction_5;
        elmt_Cell.elmt_reaction_6 = Reacs.elmt_reaction_6;
        elmt_Cell.elmt_product15 = Reacs.elmt_product15;
        elmt_Cell.elmt_product14 = Reacs.elmt_product14;
        elmt_Cell.elmt_product19 = Reacs.elmt_product19;
        elmt_Cell.elmt_reaction_10 = Reacs.elmt_reaction_10;
        elmt_Cell.elmt_reaction_11 = Reacs.elmt_reaction_11;
        elmt_Cell.elmt_product17 = Reacs.elmt_product17;

end Model_1;
