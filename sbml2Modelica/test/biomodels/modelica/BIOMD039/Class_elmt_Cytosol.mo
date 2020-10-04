within BIOMD039;
class Class_elmt_Cytosol

    input Real elmt_v12;
    input Real elmt_v11;
    input Real elmt_v9;
    input Real elmt_product7;
    input Real elmt_reactant4;
    input Real elmt_product12;
    input Real elmt_v7;
    input Real elmt_product11;
    input Real elmt_reactant8;
    input Real elmt_v5;
    input Real elmt_reactant14;
    input Real elmt_product1;
    input Real elmt_reactant10;
    input Real elmt_product3;
    input Real elmt_reactant13;
    input Real elmt_v3;
    input Real elmt_product15;
    input Real elmt_v1;

    Real elmt_Cytosol(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_CaPr_conc(unit = "");
    Real elmt_CaPr_amount(unit = "");
    Real elmt_CaPr(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_Ca_cyt_conc(unit = "");
    Real elmt_Ca_cyt_amount(unit = "");
    Real elmt_Ca_cyt(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_Pr_conc(unit = "");
    Real elmt_Pr_amount(unit = "");
    Real elmt_Pr(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    initial equation
        elmt_Cytosol = 1.0;
        elmt_CaPr_conc = 85.45;
        elmt_Ca_cyt_conc = 0.35;
        elmt_Pr_conc = 34.55;


    equation
        assert(elmt_Cytosol >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Cytosol) = 0;
        elmt_CaPr = elmt_CaPr_conc;
        elmt_Ca_cyt = elmt_Ca_cyt_conc;
        elmt_Pr = elmt_Pr_conc;
        der(elmt_CaPr_amount) = ((elmt_v12 * elmt_product15) + (- (elmt_v11 * elmt_reactant10)));
        der(elmt_Ca_cyt_amount) = ((- (elmt_v12 * elmt_reactant14)) + (- (elmt_v9 * elmt_reactant8)) + (elmt_v11 * elmt_product12) + (elmt_v7 * elmt_product7) + (- (elmt_v5 * elmt_reactant4)) + (elmt_v3 * elmt_product3) + (elmt_v1 * elmt_product1));
        der(elmt_Pr_amount) = ((- (elmt_v12 * elmt_reactant13)) + (elmt_v11 * elmt_product11));

    algorithm
        elmt_CaPr_conc := elmt_CaPr_amount / elmt_Cytosol;
        elmt_Ca_cyt_conc := elmt_Ca_cyt_amount / elmt_Cytosol;
        elmt_Pr_conc := elmt_Pr_amount / elmt_Cytosol;
end Class_elmt_Cytosol;
