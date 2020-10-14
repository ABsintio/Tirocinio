within BIOMD101;
model Vilar2006_TGFbeta "Vilar2006_TGFbeta" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_PM elmt_PM;
    Class_elmt_Endosome elmt_Endosome;
    Class_elmt_event_0000001 elmt_event_0000001;

    equation
        Params.elmt_event_0000001 = elmt_event_0000001.trigger;
        Reacs.elmt_RII_endo = elmt_Endosome.elmt_RII_endo;
        Reacs.elmt_lRIRII = elmt_PM.elmt_lRIRII;
        Reacs.elmt_RII = elmt_PM.elmt_RII;
        Reacs.elmt_RI_endo = elmt_Endosome.elmt_RI_endo;
        Reacs.elmt_klid = Params.elmt_klid;
        Reacs.elmt_ligand = Params.elmt_ligand;
        Reacs.elmt_kr = Params.elmt_kr;
        Reacs.elmt_pRI = Params.elmt_pRI;
        Reacs.elmt_ka = Params.elmt_ka;
        Reacs.elmt_lRIRII_endo = elmt_Endosome.elmt_lRIRII_endo;
        Reacs.elmt_pRII = Params.elmt_pRII;
        Reacs.elmt_ki = Params.elmt_ki;
        Reacs.elmt_kcd = Params.elmt_kcd;
        Reacs.elmt_RI = elmt_PM.elmt_RI;
        elmt_PM.elmt_v9 = Reacs.elmt_v9;
        elmt_PM.elmt_v7 = Reacs.elmt_v7;
        elmt_PM.elmt_product12 = Reacs.elmt_product12;
        elmt_PM.elmt_v8 = Reacs.elmt_v8;
        elmt_PM.elmt_v5 = Reacs.elmt_v5;
        elmt_PM.elmt_v6 = Reacs.elmt_v6;
        elmt_PM.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_PM.elmt_v3 = Reacs.elmt_v3;
        elmt_PM.elmt_v4 = Reacs.elmt_v4;
        elmt_PM.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_PM.elmt_v1 = Reacs.elmt_v1;
        elmt_PM.elmt_v2 = Reacs.elmt_v2;
        elmt_PM.elmt_v13 = Reacs.elmt_v13;
        elmt_PM.elmt_v12 = Reacs.elmt_v12;
        elmt_PM.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_PM.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_PM.elmt_v11 = Reacs.elmt_v11;
        elmt_PM.elmt_product7 = Reacs.elmt_product7;
        elmt_PM.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_PM.elmt_v10 = Reacs.elmt_v10;
        elmt_PM.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_PM.elmt_product21 = Reacs.elmt_product21;
        elmt_PM.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_PM.elmt_reactant17 = Reacs.elmt_reactant17;
        elmt_PM.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_PM.elmt_product2 = Reacs.elmt_product2;
        elmt_PM.elmt_product16 = Reacs.elmt_product16;
        elmt_PM.elmt_product15 = Reacs.elmt_product15;
        elmt_PM.elmt_product14 = Reacs.elmt_product14;
        elmt_Endosome.elmt_v13 = Reacs.elmt_v13;
        elmt_Endosome.elmt_v12 = Reacs.elmt_v12;
        elmt_Endosome.elmt_v9 = Reacs.elmt_v9;
        elmt_Endosome.elmt_reactant20 = Reacs.elmt_reactant20;
        elmt_Endosome.elmt_product6 = Reacs.elmt_product6;
        elmt_Endosome.elmt_v7 = Reacs.elmt_v7;
        elmt_Endosome.elmt_v8 = Reacs.elmt_v8;
        elmt_Endosome.elmt_product10 = Reacs.elmt_product10;
        elmt_Endosome.elmt_v4 = Reacs.elmt_v4;
        elmt_Endosome.elmt_product19 = Reacs.elmt_product19;
        elmt_Endosome.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_Endosome.elmt_reactant13 = Reacs.elmt_reactant13;

        Params.assign_elmt_ligand = elmt_event_0000001.value_elmt_ligand;
end Vilar2006_TGFbeta;
