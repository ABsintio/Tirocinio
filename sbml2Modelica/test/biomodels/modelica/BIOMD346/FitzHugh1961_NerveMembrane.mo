within BIOMD346;
model FitzHugh1961_NerveMembrane "FitzHugh1961_NerveMembrane" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment elmt_compartment;

    equation
        elmt_compartment.elmt_z = Params.elmt_z;
        elmt_compartment.elmt_c = Params.elmt_c;
        elmt_compartment.elmt_a = Params.elmt_a;
        elmt_compartment.elmt_b = Params.elmt_b;

end FitzHugh1961_NerveMembrane;
