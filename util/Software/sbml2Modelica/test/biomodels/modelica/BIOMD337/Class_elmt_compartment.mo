within BIOMD337;
class Class_elmt_compartment

    input Real elmt_reactant1;
    input Real elmt_r5;
    input Real elmt_reactant3;
    input Real elmt_reactant6;
    input Real elmt_r3;
    input Real elmt_r4;
    input Real elmt_reactant5;
    input Real elmt_r1;
    input Real elmt_r2;
    input Real elmt_product0;
    input Real elmt_product4;
    input Real elmt_product2;

    input Boolean elmt_event0;

    input Real assign_elmt_N2;

    Real elmt_compartment(unit = "") "";
    Real elmt_N1_conc(unit = "");
    Real elmt_N1_amount(unit = "");
    Real elmt_N1(unit = "") "N1";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_N2_conc(unit = "");
    Real elmt_N2_amount(unit = "");
    Real elmt_N2(unit = "") "N2";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_S_conc(unit = "");
    Real elmt_S_amount(unit = "");
    Real elmt_S(unit = "") "S";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_compartment = 1.0;
        elmt_N1_conc = 100.0;
        elmt_N2_conc = 0.0;
        elmt_S_conc = 0.111111111111111;


    equation
        assert(elmt_compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment) = 0;
        elmt_N1 = elmt_N1_conc;
        elmt_N2 = elmt_N2_conc;
        elmt_S = elmt_S_conc;
        der(elmt_N1_amount) = ((- (elmt_r4 * elmt_reactant5)) + (elmt_r2 * elmt_product2));
        der(elmt_N2_amount) = ((- (elmt_r5 * elmt_reactant6)) + (elmt_r3 * elmt_product4));
        der(elmt_S_amount) = ((- (elmt_r3 * elmt_reactant3)) + (elmt_r1 * elmt_product0) + (- (elmt_r2 * elmt_reactant1)));

        when elmt_event0 then
            reinit(elmt_N2_amount, assign_elmt_N2 * pre(elmt_compartment));
        end when;
    algorithm
        elmt_N1_conc := elmt_N1_amount / elmt_compartment;
        elmt_N2_conc := elmt_N2_amount / elmt_compartment;
        elmt_S_conc := elmt_S_amount / elmt_compartment;
end Class_elmt_compartment;
