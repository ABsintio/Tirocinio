within BIOMD125;
class Class_elmt_compartment_0000001

    input Real elmt_reaction_0000007;
    input Real elmt_reactant4;
    input Real elmt_reaction_0000006;
    input Real elmt_reaction_0000005;
    input Real elmt_reactant6;
    input Real elmt_reactant5;
    input Real elmt_product1;
    input Real elmt_product0;
    input Real elmt_product3;
    input Real elmt_product2;
    input Real elmt_reaction_0000004;
    input Real elmt_reaction_0000003;
    input Real elmt_reaction_0000002;
    input Real elmt_reaction_0000001;

    input Boolean elmt_event_0000001;

    input Real assign_elmt_x0;

    Real elmt_compartment_0000001(unit = "") "cell";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_x1_conc(unit = "");
    Real elmt_x1_amount(unit = "");
    Real elmt_x1(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_y2_conc(unit = "");
    Real elmt_y2_amount(unit = "");
    Real elmt_y2(unit = "") "";
    Real elmt_x2_conc(unit = "");
    Real elmt_x2_amount(unit = "");
    Real elmt_x2(unit = "") "";
    Real elmt_y0_conc(unit = "");
    Real elmt_y0_amount(unit = "");
    Real elmt_y0(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_x0_conc(unit = "");
    Real elmt_x0_amount(unit = "");
    Real elmt_x0(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_compartment_0000001 = 1.0;
        elmt_x1_conc = 0.0;
        elmt_y2_conc = 0.0;
        elmt_x2_conc = 0.0;
        elmt_y0_conc = 0.0;
        elmt_x0_conc = 1.0;


    equation
        assert(elmt_compartment_0000001 >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment_0000001) = 0;
        elmt_x1 = elmt_x1_conc;
        elmt_y2 = elmt_y2_conc;
        elmt_x2 = elmt_x2_conc;
        elmt_y0 = elmt_y0_conc;
        elmt_x0 = elmt_x0_conc;
        der(elmt_y0_amount) = 0;
        der(elmt_x0_amount / elmt_compartment_0000001) = 0.0;
        der(elmt_x1_amount) = ((- (elmt_reaction_0000005 * elmt_reactant4)) + (elmt_reaction_0000002 * elmt_product1) + (elmt_reaction_0000001 * elmt_product0));
        der(elmt_y2_amount) = ((- (elmt_reaction_0000007 * elmt_reactant6)) + (elmt_reaction_0000004 * elmt_product3));
        der(elmt_x2_amount) = ((- (elmt_reaction_0000006 * elmt_reactant5)) + (elmt_reaction_0000003 * elmt_product2));

        when elmt_event_0000001 then
            reinit(elmt_x0_amount, assign_elmt_x0 * pre(elmt_compartment_0000001));
        end when;
    algorithm
        elmt_x1_conc := elmt_x1_amount / elmt_compartment_0000001;
        elmt_y2_conc := elmt_y2_amount / elmt_compartment_0000001;
        elmt_x2_conc := elmt_x2_amount / elmt_compartment_0000001;
        elmt_y0_conc := elmt_y0_amount / elmt_compartment_0000001;
        elmt_x0_conc := elmt_x0_amount / elmt_compartment_0000001;
end Class_elmt_compartment_0000001;
