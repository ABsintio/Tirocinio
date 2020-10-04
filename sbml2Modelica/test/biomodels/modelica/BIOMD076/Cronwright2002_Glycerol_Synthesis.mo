within BIOMD076;
model Cronwright2002_Glycerol_Synthesis "Cronwright2002_Glycerol_Synthesis" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment elmt_compartment;

    equation
        Reacs.elmt_compartment = elmt_compartment.elmt_compartment;
        Reacs.elmt_G3P = elmt_compartment.elmt_G3P;
        Reacs.elmt_DHAP = elmt_compartment.elmt_DHAP;
        elmt_compartment.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_compartment.elmt_Gpp_p = Reacs.elmt_Gpp_p;
        elmt_compartment.elmt_product1 = Reacs.elmt_product1;
        elmt_compartment.elmt_Gpd_p = Reacs.elmt_Gpd_p;

end Cronwright2002_Glycerol_Synthesis;
