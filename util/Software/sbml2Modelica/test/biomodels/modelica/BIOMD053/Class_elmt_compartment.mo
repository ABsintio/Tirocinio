within BIOMD053;
class Class_elmt_compartment

    input Real elmt_product11;
    input Real elmt_v5;
    input Real elmt_v6;
    input Real elmt_v7a;
    input Real elmt_reactant22;
    input Real elmt_v1b;
    input Real elmt_v1a;
    input Real elmt_reactant18;
    input Real elmt_v5b;
    input Real elmt_v7c;
    input Real elmt_v7b;
    input Real elmt_v3;
    input Real elmt_v4;
    input Real elmt_product9;
    input Real elmt_reactant1;
    input Real elmt_product7;
    input Real elmt_reactant3;
    input Real elmt_reactant6;
    input Real elmt_reactant8;
    input Real elmt_product21;
    input Real elmt_product20;
    input Real elmt_reactant14;
    input Real elmt_reactant15;
    input Real elmt_reactant17;
    input Real elmt_product5;
    input Real elmt_reactant10;
    input Real elmt_product4;
    input Real elmt_reactant12;
    input Real elmt_reactant0;
    input Real elmt_product2;
    input Real elmt_v2b;
    input Real elmt_v2a;
    input Real elmt_product16;
    input Real elmt_product13;
    input Real elmt_product19;

    Real elmt_compartment(unit = "") "";
    Real elmt_Amadori_conc(unit = "");
    Real elmt_Amadori_amount(unit = "");
    Real elmt_Amadori(unit = "") "";
    Real elmt_Glucose_conc(unit = "");
    Real elmt_Glucose_amount(unit = "");
    Real elmt_Glucose(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_CML_conc(unit = "");
    Real elmt_CML_amount(unit = "");
    Real elmt_CML(unit = "") "";
    Real elmt_Lysine_conc(unit = "");
    Real elmt_Lysine_amount(unit = "");
    Real elmt_Lysine(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_Schiff_conc(unit = "");
    Real elmt_Schiff_amount(unit = "");
    Real elmt_Schiff(unit = "") "";
    Real elmt_Glyoxal_conc(unit = "");
    Real elmt_Glyoxal_amount(unit = "");
    Real elmt_Glyoxal(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    initial equation
        elmt_compartment = 1.0;
        elmt_Amadori_conc = 0.0;
        elmt_Glucose_conc = 0.25;
        elmt_CML_conc = 0.0;
        elmt_Lysine_conc = 0.0034;
        elmt_Schiff_conc = 0.0;
        elmt_Glyoxal_conc = 0.0;


    equation
        assert(elmt_compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment) = 0;
        elmt_Amadori = elmt_Amadori_conc;
        elmt_Glucose = elmt_Glucose_conc;
        elmt_CML = elmt_CML_conc;
        elmt_Lysine = elmt_Lysine_conc;
        elmt_Schiff = elmt_Schiff_conc;
        elmt_Glyoxal = elmt_Glyoxal_conc;
        der(elmt_Amadori_amount) = ((- (elmt_v2b * elmt_reactant8)) + (elmt_v2a * elmt_product7) + (- (elmt_v4 * elmt_reactant12)));
        der(elmt_Glucose_amount) = ((elmt_v1b * elmt_product5) + (- (elmt_v1a * elmt_reactant1)) + (- (elmt_v3 * elmt_reactant10)));
        der(elmt_CML_amount) = ((elmt_v5 * elmt_product16) + (elmt_v6 * elmt_product19) + (elmt_v4 * elmt_product13));
        der(elmt_Lysine_amount) = ((- (elmt_v5 * elmt_reactant14)) + (elmt_v7a * elmt_product20) + (elmt_v1b * elmt_product4) + (- (elmt_v1a * elmt_reactant0)));
        der(elmt_Schiff_amount) = ((- (elmt_v6 * elmt_reactant18)) + (- (elmt_v1b * elmt_reactant3)) + (elmt_v1a * elmt_product2) + (elmt_v2b * elmt_product9) + (- (elmt_v2a * elmt_reactant6)) + (- (elmt_v7c * elmt_reactant22)));
        der(elmt_Glyoxal_amount) = ((- (elmt_v5 * elmt_reactant15)) + (- (elmt_v5b * elmt_reactant17)) + (elmt_v7b * elmt_product21) + (elmt_v3 * elmt_product11));

    algorithm
        elmt_Amadori_conc := elmt_Amadori_amount / elmt_compartment;
        elmt_Glucose_conc := elmt_Glucose_amount / elmt_compartment;
        elmt_CML_conc := elmt_CML_amount / elmt_compartment;
        elmt_Lysine_conc := elmt_Lysine_amount / elmt_compartment;
        elmt_Schiff_conc := elmt_Schiff_amount / elmt_compartment;
        elmt_Glyoxal_conc := elmt_Glyoxal_amount / elmt_compartment;
end Class_elmt_compartment;
