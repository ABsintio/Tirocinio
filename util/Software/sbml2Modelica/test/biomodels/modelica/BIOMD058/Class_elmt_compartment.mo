within BIOMD058;
class Class_elmt_compartment

    input Real elmt_Jpump_Cell1;
    input Real elmt_reactant1;
    input Real elmt_product8;
    input Real elmt_product7;
    input Real elmt_reactant4;
    input Real elmt_Jpump_Cell2;
    input Real elmt_reactant6;
    input Real elmt_product11;
    input Real elmt_diffusion;
    input Real elmt_product0;
    input Real elmt_Inactivated_to_S_Cell1;
    input Real elmt_reactant10;
    input Real elmt_Jreceptor_Cell2;
    input Real elmt_product5;
    input Real elmt_Inactivated_to_S_Cell2;
    input Real elmt_product3;
    input Real elmt_Open_to_Inactivated_Cell2;
    input Real elmt_product2;
    input Real elmt_Jreceptor_Cell1;
    input Real elmt_Open_to_Inactivated_Cell1;
    input Real elmt_reactant9;
    input Real elmt_Jleak_Cell2;
    input Real elmt_Jleak_Cell1;

    Real elmt_compartment(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_c2_conc(unit = "");
    Real elmt_c2_amount(unit = "");
    Real elmt_c2(unit = "") "Calcium ion Cell2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_c1_conc(unit = "");
    Real elmt_c1_amount(unit = "");
    Real elmt_c1(unit = "") "Calcium ion Cell1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_h1_conc(unit = "");
    Real elmt_h1_amount(unit = "");
    Real elmt_h1(unit = "") "Receptor fraction Cell1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_h2_conc(unit = "");
    Real elmt_h2_amount(unit = "");
    Real elmt_h2(unit = "") "Receptor fraction Cell2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_compartment = 1.0;
        elmt_c2_conc = 0.1;
        elmt_c1_conc = 0.3;
        elmt_h1_conc = 0.8;
        elmt_h2_conc = 0.1;


    equation
        assert(elmt_compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment) = 0;
        elmt_c2 = elmt_c2_conc;
        elmt_c1 = elmt_c1_conc;
        elmt_h1 = elmt_h1_conc;
        elmt_h2 = elmt_h2_conc;
        der(elmt_c2_amount) = ((- (elmt_Jpump_Cell2 * elmt_reactant6)) + (- (elmt_diffusion * elmt_reactant10)) + (elmt_Jleak_Cell2 * elmt_product7) + (elmt_Jreceptor_Cell2 * elmt_product5));
        der(elmt_c1_amount) = ((- (elmt_Jpump_Cell1 * elmt_reactant1)) + (elmt_diffusion * elmt_product11) + (elmt_Jleak_Cell1 * elmt_product2) + (elmt_Jreceptor_Cell1 * elmt_product0));
        der(elmt_h1_amount) = ((elmt_Inactivated_to_S_Cell1 * elmt_product3) + (- (elmt_Open_to_Inactivated_Cell1 * elmt_reactant4)));
        der(elmt_h2_amount) = ((elmt_Inactivated_to_S_Cell2 * elmt_product8) + (- (elmt_Open_to_Inactivated_Cell2 * elmt_reactant9)));

    algorithm
        elmt_c2_conc := elmt_c2_amount / elmt_compartment;
        elmt_c1_conc := elmt_c1_amount / elmt_compartment;
        elmt_h1_conc := elmt_h1_amount / elmt_compartment;
        elmt_h2_conc := elmt_h2_amount / elmt_compartment;
end Class_elmt_compartment;
