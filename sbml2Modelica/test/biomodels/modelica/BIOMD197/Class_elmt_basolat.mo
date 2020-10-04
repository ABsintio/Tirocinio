within BIOMD197;
class Class_elmt_basolat

    input Real elmt_endo_in_bl;
    input Real elmt_reactant4;
    input Real elmt_product7;
    input Real elmt_product11;
    input Real elmt_OATP1B3;
    input Real elmt_bl_BSP_dissoc;
    input Real elmt_endo_ex_bl;
    input Real elmt_reactant10;
    input Real elmt_reactant0;
    input Real elmt_reactant12;
    input Real elmt_reactant18;
    input Real elmt_paracell_transp;
    input Real elmt_bl_BSP_binding;
    input Real elmt_product13;

    Real elmt_basolat(unit = "") "basolateral extrocellular space";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_x1_amount(unit = "");
    Real elmt_x1_conc(unit = "");
    Real elmt_x1(unit = "") "free basolateral BSP";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_x2_amount(unit = "");
    Real elmt_x2_conc(unit = "");
    Real elmt_x2(unit = "") "basolateral bound BSP";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    initial equation
        elmt_basolat = 1.0;
        elmt_x1_amount = 88.0;
        elmt_x2_amount = 0.0;


    equation
        assert(elmt_basolat >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_basolat) = 0;
        elmt_x1 = elmt_x1_amount;
        elmt_x2 = elmt_x2_amount;
        der(elmt_x1_amount) = ((- (elmt_endo_in_bl * elmt_reactant4)) + (- (elmt_paracell_transp * elmt_reactant18)) + (- (elmt_OATP1B3 * elmt_reactant0)) + (elmt_bl_BSP_dissoc * elmt_product13) + (- (elmt_bl_BSP_binding * elmt_reactant10)) + (elmt_endo_ex_bl * elmt_product7));
        der(elmt_x2_amount) = ((- (elmt_bl_BSP_dissoc * elmt_reactant12)) + (elmt_bl_BSP_binding * elmt_product11));

    algorithm
        elmt_x1_conc := elmt_x1_amount / elmt_basolat;
        elmt_x2_conc := elmt_x2_amount / elmt_basolat;
end Class_elmt_basolat;
