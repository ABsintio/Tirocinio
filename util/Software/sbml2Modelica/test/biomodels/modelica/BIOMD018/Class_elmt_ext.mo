within BIOMD018;
class Class_elmt_ext

    Real elmt_ext(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_EMTX_conc(unit = "");
    Real elmt_EMTX_amount(unit = "");
    Real elmt_EMTX(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
      </rdf:RDF>
    </annotation>"));

    initial equation
        elmt_ext = 1.0;
        elmt_EMTX_conc = 0.0;


    equation
        assert(elmt_ext >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_ext) = 0;
        elmt_EMTX = elmt_EMTX_conc;
        der(elmt_EMTX_amount) = 0;

    algorithm
        elmt_EMTX_conc := elmt_EMTX_amount / elmt_ext;
end Class_elmt_ext;
