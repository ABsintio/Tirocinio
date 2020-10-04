within BIOMD044;
model Goldbeter_Calcium_Oscillation_based_on_CICR_AND_CA_Activated_degradation_of_IP3 "Borghans1997 - Calcium Oscillation - Model 2" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_intravesicular elmt_intravesicular;
    Class_elmt_extracellular elmt_extracellular;
    Class_elmt_cytosol elmt_cytosol;

    equation
        Reacs.elmt_beta = Params.elmt_beta;
        Reacs.elmt_Y = elmt_intravesicular.elmt_Y;
        Reacs.elmt_Z = elmt_cytosol.elmt_Z;
        Reacs.elmt_intravesicular = elmt_intravesicular.elmt_intravesicular;
        Reacs.elmt_cytosol = elmt_cytosol.elmt_cytosol;
        Reacs.elmt_extracellular = elmt_extracellular.elmt_extracellular;
        Reacs.elmt_A = elmt_cytosol.elmt_A;
        elmt_intravesicular.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_intravesicular.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_intravesicular.elmt_v3 = Reacs.elmt_v3;
        elmt_intravesicular.elmt_v4 = Reacs.elmt_v4;
        elmt_intravesicular.elmt_v2 = Reacs.elmt_v2;
        elmt_intravesicular.elmt_product3 = Reacs.elmt_product3;
        elmt_cytosol.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_cytosol.elmt_product7 = Reacs.elmt_product7;
        elmt_cytosol.elmt_v7 = Reacs.elmt_v7;
        elmt_cytosol.elmt_v8 = Reacs.elmt_v8;
        elmt_cytosol.elmt_v5 = Reacs.elmt_v5;
        elmt_cytosol.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_cytosol.elmt_product10 = Reacs.elmt_product10;
        elmt_cytosol.elmt_v6 = Reacs.elmt_v6;
        elmt_cytosol.elmt_product1 = Reacs.elmt_product1;
        elmt_cytosol.elmt_product5 = Reacs.elmt_product5;
        elmt_cytosol.elmt_vin = Reacs.elmt_vin;
        elmt_cytosol.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_cytosol.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_cytosol.elmt_v3 = Reacs.elmt_v3;
        elmt_cytosol.elmt_v4 = Reacs.elmt_v4;
        elmt_cytosol.elmt_v2 = Reacs.elmt_v2;
        elmt_extracellular.elmt_product9 = Reacs.elmt_product9;
        elmt_extracellular.elmt_v5 = Reacs.elmt_v5;
        elmt_extracellular.elmt_vin = Reacs.elmt_vin;
        elmt_extracellular.elmt_reactant0 = Reacs.elmt_reactant0;

end Goldbeter_Calcium_Oscillation_based_on_CICR_AND_CA_Activated_degradation_of_IP3;
