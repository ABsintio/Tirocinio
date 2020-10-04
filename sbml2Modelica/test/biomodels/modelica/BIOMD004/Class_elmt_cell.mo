within BIOMD004;
class Class_elmt_cell

    input Real elmt_reaction7;
    input Real elmt_reactant2;
    input Real elmt_reaction6;
    input Real elmt_product8;
    input Real elmt_reactant1;
    input Real elmt_product6;
    input Real elmt_reactant3;
    input Real elmt_reaction3;
    input Real elmt_reactant5;
    input Real elmt_reaction2;
    input Real elmt_reaction5;
    input Real elmt_product10;
    input Real elmt_reaction4;
    input Real elmt_reactant7;
    input Real elmt_product0;
    input Real elmt_reaction1;
    input Real elmt_product4;
    input Real elmt_reactant9;

    Real elmt_cell(unit = "m3.0") "cell";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_M_conc(unit = "m-6.0.");
    Real elmt_M_amount(unit = "m-3.0.");
    Real elmt_M(unit = "m-6.0.") "Active CDC-2 Kinase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_XI_conc(unit = "m-15.0.");
    Real elmt_XI_amount(unit = "m-12.0.");
    Real elmt_XI(unit = "m-15.0.") "Inactive Cyclin Protease";
    Real elmt_X_conc(unit = "m-9.0.");
    Real elmt_X_amount(unit = "m-6.0.");
    Real elmt_X(unit = "m-9.0.") "Active Cyclin Protease";
    Real elmt_MI_conc(unit = "m-12.0.");
    Real elmt_MI_amount(unit = "m-9.0.");
    Real elmt_MI(unit = "m-12.0.") "Inactive CDC-2 Kinase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_C_conc(unit = "m-3.0.");
    Real elmt_C_amount(unit = "");
    Real elmt_C(unit = "m-3.0.") "Cyclin";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_cell = 1.0;
        elmt_M_conc = 0.01;
        elmt_XI_conc = 0.99;
        elmt_X_conc = 0.01;
        elmt_MI_conc = 0.99;
        elmt_C_conc = 0.01;


    equation
        assert(elmt_cell >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cell) = 0;
        elmt_M = elmt_M_conc;
        elmt_XI = elmt_XI_conc;
        elmt_X = elmt_X_conc;
        elmt_MI = elmt_MI_conc;
        elmt_C = elmt_C_conc;
        der(elmt_M_amount) = ((- (elmt_reaction5 * elmt_reactant5)) + (elmt_reaction4 * elmt_product4));
        der(elmt_XI_amount) = ((elmt_reaction7 * elmt_product10) + (- (elmt_reaction6 * elmt_reactant7)));
        der(elmt_X_amount) = ((- (elmt_reaction7 * elmt_reactant9)) + (elmt_reaction6 * elmt_product8));
        der(elmt_MI_amount) = ((elmt_reaction5 * elmt_product6) + (- (elmt_reaction4 * elmt_reactant3)));
        der(elmt_C_amount) = ((- (elmt_reaction3 * elmt_reactant2)) + (- (elmt_reaction2 * elmt_reactant1)) + (elmt_reaction1 * elmt_product0));

    algorithm
        elmt_M_conc := elmt_M_amount / elmt_cell;
        elmt_XI_conc := elmt_XI_amount / elmt_cell;
        elmt_X_conc := elmt_X_amount / elmt_cell;
        elmt_MI_conc := elmt_MI_amount / elmt_cell;
        elmt_C_conc := elmt_C_amount / elmt_cell;
end Class_elmt_cell;
