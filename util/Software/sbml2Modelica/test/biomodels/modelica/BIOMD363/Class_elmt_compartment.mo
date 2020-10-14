within BIOMD363;
class Class_elmt_compartment

    input Real elmt_reactant2;
    input Real elmt_product7;
    input Real elmt_reactant4;
    input Real elmt_r3;
    input Real elmt_reactant6;
    input Real elmt_r4;
    input Real elmt_r1;
    input Real elmt_r2;
    input Real elmt_product1;
    input Real elmt_product5;
    input Real elmt_product3;
    input Real elmt_reactant0;

    Real elmt_compartment(unit = "") "compartment";
    Real elmt_M_conc(unit = "");
    Real elmt_M_amount(unit = "");
    Real elmt_M(unit = "") "M";
    Real elmt_P2_conc(unit = "");
    Real elmt_P2_amount(unit = "");
    Real elmt_P2(unit = "") "P2";
    Real elmt_IIa_conc(unit = "");
    Real elmt_IIa_amount(unit = "");
    Real elmt_IIa(unit = "") "IIa";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_II_conc(unit = "");
    Real elmt_II_amount(unit = "");
    Real elmt_II(unit = "") "II";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_compartment = 1.0;
        elmt_M_conc = 0.0;
        elmt_P2_conc = 0.0;
        elmt_IIa_conc = 0.0;
        elmt_II_conc = 1.0;


    equation
        assert(elmt_compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment) = 0;
        elmt_M = elmt_M_conc;
        elmt_P2 = elmt_P2_conc;
        elmt_IIa = elmt_IIa_conc;
        elmt_II = elmt_II_conc;
        der(elmt_M_amount) = ((elmt_r1 * elmt_product1) + (- (elmt_r2 * elmt_reactant2)));
        der(elmt_P2_amount) = ((elmt_r3 * elmt_product5) + (- (elmt_r4 * elmt_reactant6)));
        der(elmt_IIa_amount) = ((elmt_r4 * elmt_product7) + (elmt_r2 * elmt_product3));
        der(elmt_II_amount) = ((- (elmt_r3 * elmt_reactant4)) + (- (elmt_r1 * elmt_reactant0)));

    algorithm
        elmt_M_conc := elmt_M_amount / elmt_compartment;
        elmt_P2_conc := elmt_P2_amount / elmt_compartment;
        elmt_IIa_conc := elmt_IIa_amount / elmt_compartment;
        elmt_II_conc := elmt_II_amount / elmt_compartment;
end Class_elmt_compartment;
