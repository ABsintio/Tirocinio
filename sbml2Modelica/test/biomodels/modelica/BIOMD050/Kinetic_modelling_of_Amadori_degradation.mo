within BIOMD050;
model Kinetic_modelling_of_Amadori_degradation "Martins2003_AmadoriDegradation" annotation(Documentation(info="<annotation>
  <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
  </rdf:RDF>
</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment elmt_compartment;

    equation
        Reacs.elmt_DFG = elmt_compartment.elmt_DFG;
        Reacs.elmt_Gly = elmt_compartment.elmt_Gly;
        Reacs.elmt__3DG = elmt_compartment.elmt__3DG;
        Reacs.elmt__1DG = elmt_compartment.elmt__1DG;
        Reacs.elmt_E2 = elmt_compartment.elmt_E2;
        Reacs.elmt_Glu = elmt_compartment.elmt_Glu;
        Reacs.elmt_Cn = elmt_compartment.elmt_Cn;
        Reacs.elmt_E1 = elmt_compartment.elmt_E1;
        Reacs.elmt_Man = elmt_compartment.elmt_Man;
        elmt_compartment.elmt_product30 = Reacs.elmt_product30;
        elmt_compartment.elmt_v9 = Reacs.elmt_v9;
        elmt_compartment.elmt_v7 = Reacs.elmt_v7;
        elmt_compartment.elmt_product33 = Reacs.elmt_product33;
        elmt_compartment.elmt_v8 = Reacs.elmt_v8;
        elmt_compartment.elmt_v5 = Reacs.elmt_v5;
        elmt_compartment.elmt_v6 = Reacs.elmt_v6;
        elmt_compartment.elmt_v3 = Reacs.elmt_v3;
        elmt_compartment.elmt_v4 = Reacs.elmt_v4;
        elmt_compartment.elmt_product26 = Reacs.elmt_product26;
        elmt_compartment.elmt_product25 = Reacs.elmt_product25;
        elmt_compartment.elmt_v1 = Reacs.elmt_v1;
        elmt_compartment.elmt_v2 = Reacs.elmt_v2;
        elmt_compartment.elmt_product28 = Reacs.elmt_product28;
        elmt_compartment.elmt_product40 = Reacs.elmt_product40;
        elmt_compartment.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_compartment.elmt_reactant17 = Reacs.elmt_reactant17;
        elmt_compartment.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_compartment.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_compartment.elmt_product37 = Reacs.elmt_product37;
        elmt_compartment.elmt_product36 = Reacs.elmt_product36;
        elmt_compartment.elmt_product35 = Reacs.elmt_product35;
        elmt_compartment.elmt_product39 = Reacs.elmt_product39;
        elmt_compartment.elmt_product11 = Reacs.elmt_product11;
        elmt_compartment.elmt_reactant27 = Reacs.elmt_reactant27;
        elmt_compartment.elmt_reactant21 = Reacs.elmt_reactant21;
        elmt_compartment.elmt_reactant24 = Reacs.elmt_reactant24;
        elmt_compartment.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt_compartment.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_compartment.elmt_v13 = Reacs.elmt_v13;
        elmt_compartment.elmt_product9 = Reacs.elmt_product9;
        elmt_compartment.elmt_product8 = Reacs.elmt_product8;
        elmt_compartment.elmt_v12 = Reacs.elmt_v12;
        elmt_compartment.elmt_v11 = Reacs.elmt_v11;
        elmt_compartment.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_compartment.elmt_v10 = Reacs.elmt_v10;
        elmt_compartment.elmt_reactant31 = Reacs.elmt_reactant31;
        elmt_compartment.elmt_product6 = Reacs.elmt_product6;
        elmt_compartment.elmt_product23 = Reacs.elmt_product23;
        elmt_compartment.elmt_product22 = Reacs.elmt_product22;
        elmt_compartment.elmt_product20 = Reacs.elmt_product20;
        elmt_compartment.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_compartment.elmt_product1 = Reacs.elmt_product1;
        elmt_compartment.elmt_reactant38 = Reacs.elmt_reactant38;
        elmt_compartment.elmt_product5 = Reacs.elmt_product5;
        elmt_compartment.elmt_reactant32 = Reacs.elmt_reactant32;
        elmt_compartment.elmt_v16 = Reacs.elmt_v16;
        elmt_compartment.elmt_v15 = Reacs.elmt_v15;
        elmt_compartment.elmt_product3 = Reacs.elmt_product3;
        elmt_compartment.elmt_reactant34 = Reacs.elmt_reactant34;
        elmt_compartment.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_compartment.elmt_v14 = Reacs.elmt_v14;
        elmt_compartment.elmt_reactant29 = Reacs.elmt_reactant29;
        elmt_compartment.elmt_product16 = Reacs.elmt_product16;
        elmt_compartment.elmt_product15 = Reacs.elmt_product15;
        elmt_compartment.elmt_product13 = Reacs.elmt_product13;
        elmt_compartment.elmt_product18 = Reacs.elmt_product18;

end Kinetic_modelling_of_Amadori_degradation;
