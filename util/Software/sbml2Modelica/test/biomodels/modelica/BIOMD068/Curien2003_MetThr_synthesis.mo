within BIOMD068;
model Curien2003_MetThr_synthesis "Curien2003_MetThr_synthesis" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment elmt_compartment;

    equation
        Reacs.elmt_AdoMet = elmt_compartment.elmt_AdoMet;
        Reacs.elmt_compartment = elmt_compartment.elmt_compartment;
        Reacs.elmt_TS = elmt_compartment.elmt_TS;
        Reacs.elmt_Phi = elmt_compartment.elmt_Phi;
        Reacs.elmt_Phser = elmt_compartment.elmt_Phser;
        Reacs.elmt_CGS = elmt_compartment.elmt_CGS;
        Reacs.elmt_Cys = elmt_compartment.elmt_Cys;
        elmt_compartment.elmt_vThr = Reacs.elmt_vThr;
        elmt_compartment.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_compartment.elmt_vCys = Reacs.elmt_vCys;
        elmt_compartment.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_compartment.elmt_product1 = Reacs.elmt_product1;
        elmt_compartment.elmt_v1 = Reacs.elmt_v1;

end Curien2003_MetThr_synthesis;
