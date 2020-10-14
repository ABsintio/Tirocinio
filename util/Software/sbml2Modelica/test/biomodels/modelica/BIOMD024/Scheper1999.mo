within BIOMD024;
model Scheper1999 "Scheper1999_CircClock" annotation(Documentation(info="<annotation>
  <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
  </rdf:RDF>
</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment_0000004 elmt_compartment_0000004;

    equation
        Reacs.elmt_P = elmt_compartment_0000004.elmt_P;
        Reacs.elmt_compartment_0000004 = elmt_compartment_0000004.elmt_compartment_0000004;
        Reacs.elmt_M = elmt_compartment_0000004.elmt_M;
        elmt_compartment_0000004.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_compartment_0000004.elmt_Pd = Reacs.elmt_Pd;
        elmt_compartment_0000004.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_compartment_0000004.elmt_TC = Reacs.elmt_TC;
        elmt_compartment_0000004.elmt_product1 = Reacs.elmt_product1;
        elmt_compartment_0000004.elmt_product3 = Reacs.elmt_product3;
        elmt_compartment_0000004.elmt_Md = Reacs.elmt_Md;
        elmt_compartment_0000004.elmt_TL = Reacs.elmt_TL;

end Scheper1999;
