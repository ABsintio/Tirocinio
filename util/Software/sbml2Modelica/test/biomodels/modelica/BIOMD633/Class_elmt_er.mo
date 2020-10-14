within BIOMD633;
class Class_elmt_er

    input Real elmt_G6P_ER;
    input Real elmt_product23;
    input Real elmt_product12;
    input Real elmt_reactant16;
    input Real elmt_GLCT_ER;
    input Real elmt_G6PT_ER;
    input Real elmt_product17;

    Real elmt_er(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_glc6p_er_conc(unit = "");
    Real elmt_glc6p_er_amount(unit = "");
    Real elmt_glc6p_er(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_glc_er_conc(unit = "");
    Real elmt_glc_er_amount(unit = "");
    Real elmt_glc_er(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	
	
	
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_er = 1.0;
        elmt_glc6p_er_conc = 0.189929893608775;
        elmt_glc_er_conc = 4.92256224638738;


    equation
        assert(elmt_er >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_er) = 0;
        elmt_glc6p_er = elmt_glc6p_er_conc;
        elmt_glc_er = elmt_glc_er_conc;
        der(elmt_glc6p_er_amount) = ((- (elmt_G6P_ER * elmt_reactant16)) + (elmt_G6PT_ER * elmt_product23));
        der(elmt_glc_er_amount) = ((elmt_G6P_ER * elmt_product17) + (elmt_GLCT_ER * elmt_product12));

    algorithm
        elmt_glc6p_er_conc := elmt_glc6p_er_amount / elmt_er;
        elmt_glc_er_conc := elmt_glc_er_amount / elmt_er;
end Class_elmt_er;
