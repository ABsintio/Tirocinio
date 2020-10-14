within BIOMD062;
model Bhartiya2003_Tryptophan_operon "Bhartiya2003_Tryptophan_operon" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment elmt_compartment;

    equation
        Params.elmt_Ts = elmt_compartment.elmt_Ts;
        Params.elmt_Enz = elmt_compartment.elmt_Enz;
        Params.elmt_Tt = elmt_compartment.elmt_Tt;
        Params.elmt_To = elmt_compartment.elmt_To;
        Reacs.elmt_compartment = elmt_compartment.elmt_compartment;
        Reacs.elmt_Ts = elmt_compartment.elmt_Ts;
        Reacs.elmt_Enz = elmt_compartment.elmt_Enz;
        Reacs.elmt_Tt = elmt_compartment.elmt_Tt;
        elmt_compartment.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_compartment.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_compartment.elmt_tryptophan_consumption = Reacs.elmt_tryptophan_consumption;
        elmt_compartment.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_compartment.elmt_Tomax = Params.elmt_Tomax;
        elmt_compartment.elmt_f_val = Params.elmt_f_val;
        elmt_compartment.elmt_tryptophan_synthesis = Reacs.elmt_tryptophan_synthesis;
        elmt_compartment.elmt_product0 = Reacs.elmt_product0;
        elmt_compartment.elmt_Enzyme_dilution = Reacs.elmt_Enzyme_dilution;
        elmt_compartment.elmt_product2 = Reacs.elmt_product2;
        elmt_compartment.elmt_Tex = Params.elmt_Tex;
        elmt_compartment.elmt_e_val = Params.elmt_e_val;
        elmt_compartment.elmt_Enzyme_synthesis = Reacs.elmt_Enzyme_synthesis;
        elmt_compartment.elmt_tryptophan_dilution = Reacs.elmt_tryptophan_dilution;

end Bhartiya2003_Tryptophan_operon;
