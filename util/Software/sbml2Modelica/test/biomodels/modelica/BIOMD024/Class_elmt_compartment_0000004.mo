within BIOMD024;
class Class_elmt_compartment_0000004

    input Real elmt_reactant4;
    input Real elmt_Pd;
    input Real elmt_reactant6;
    input Real elmt_TC;
    input Real elmt_product1;
    input Real elmt_product3;
    input Real elmt_Md;
    input Real elmt_TL;

    Real elmt_compartment_0000004(unit = "") "cytoplasm";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_P_conc(unit = "");
    Real elmt_P_amount(unit = "");
    Real elmt_P(unit = "") "protein";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_M_conc(unit = "");
    Real elmt_M_amount(unit = "");
    Real elmt_M(unit = "") "mRNA";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_EmptySet_conc(unit = "");
    Real elmt_EmptySet_amount(unit = "");
    Real elmt_EmptySet(unit = "") "";

    initial equation
        elmt_compartment_0000004 = 1.0E-15;
        elmt_P_conc = (1.0E-15 / elmt_compartment_0000004);
        elmt_M_conc = (1.0E-15 / elmt_compartment_0000004);
        elmt_EmptySet_conc = (0.0 / elmt_compartment_0000004);


    equation
        assert(elmt_compartment_0000004 >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment_0000004) = 0;
        elmt_P = elmt_P_conc;
        elmt_M = elmt_M_conc;
        elmt_EmptySet = elmt_EmptySet_conc;
        der(elmt_EmptySet_amount) = 0;
        der(elmt_P_amount) = ((- (elmt_Pd * elmt_reactant6)) + (elmt_TL * elmt_product3));
        der(elmt_M_amount) = ((elmt_TC * elmt_product1) + (- (elmt_Md * elmt_reactant4)));

    algorithm
        elmt_P_conc := elmt_P_amount / elmt_compartment_0000004;
        elmt_M_conc := elmt_M_amount / elmt_compartment_0000004;
        elmt_EmptySet_conc := elmt_EmptySet_amount / elmt_compartment_0000004;
end Class_elmt_compartment_0000004;
