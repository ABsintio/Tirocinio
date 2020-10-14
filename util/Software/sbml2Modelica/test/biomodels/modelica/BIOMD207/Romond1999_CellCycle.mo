within BIOMD207;
model Romond1999_CellCycle "Romond1999_CellCycle" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment elmt_compartment;

    equation
        Params.elmt_M2 = elmt_compartment.elmt_M2;
        Params.elmt_M1 = elmt_compartment.elmt_M1;
        Params.elmt_C2 = elmt_compartment.elmt_C2;
        Params.elmt_C1 = elmt_compartment.elmt_C1;
        Reacs.elmt_kd1 = Params.elmt_kd1;
        Reacs.elmt_M2 = elmt_compartment.elmt_M2;
        Reacs.elmt_Kim2 = Params.elmt_Kim2;
        Reacs.elmt_compartment = elmt_compartment.elmt_compartment;
        Reacs.elmt_M1 = elmt_compartment.elmt_M1;
        Reacs.elmt_K_d1 = Params.elmt_K_d1;
        Reacs.elmt_Kim1 = Params.elmt_Kim1;
        Reacs.elmt_K_d2 = Params.elmt_K_d2;
        Reacs.elmt_vi2 = Params.elmt_vi2;
        Reacs.elmt_C1 = elmt_compartment.elmt_C1;
        Reacs.elmt_vi1 = Params.elmt_vi1;
        Reacs.elmt_kd2 = Params.elmt_kd2;
        Reacs.elmt_vd2 = Params.elmt_vd2;
        Reacs.elmt_vd1 = Params.elmt_vd1;
        Reacs.elmt_C2 = elmt_compartment.elmt_C2;
        Reacs.elmt_X1 = elmt_compartment.elmt_X1;
        Reacs.elmt_X2 = elmt_compartment.elmt_X2;
        elmt_compartment.elmt_K1 = Params.elmt_K1;
        elmt_compartment.elmt_R10 = Reacs.elmt_R10;
        elmt_compartment.elmt_U4 = Params.elmt_U4;
        elmt_compartment.elmt_K4 = Params.elmt_K4;
        elmt_compartment.elmt_K2 = Params.elmt_K2;
        elmt_compartment.elmt_K3 = Params.elmt_K3;
        elmt_compartment.elmt_U2 = Params.elmt_U2;
        elmt_compartment.elmt_U3 = Params.elmt_U3;
        elmt_compartment.elmt_U1 = Params.elmt_U1;
        elmt_compartment.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_compartment.elmt_R8 = Reacs.elmt_R8;
        elmt_compartment.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_compartment.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_compartment.elmt_R3 = Reacs.elmt_R3;
        elmt_compartment.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_compartment.elmt_R1 = Reacs.elmt_R1;
        elmt_compartment.elmt_R2 = Reacs.elmt_R2;
        elmt_compartment.elmt_product0 = Reacs.elmt_product0;
        elmt_compartment.elmt_H3 = Params.elmt_H3;
        elmt_compartment.elmt_H4 = Params.elmt_H4;
        elmt_compartment.elmt_H1 = Params.elmt_H1;
        elmt_compartment.elmt_H2 = Params.elmt_H2;
        elmt_compartment.elmt_product3 = Reacs.elmt_product3;
        elmt_compartment.elmt_R9 = Reacs.elmt_R9;
        elmt_compartment.elmt_V3 = Params.elmt_V3;
        elmt_compartment.elmt_V4 = Params.elmt_V4;
        elmt_compartment.elmt_V1 = Params.elmt_V1;
        elmt_compartment.elmt_V2 = Params.elmt_V2;

end Romond1999_CellCycle;
