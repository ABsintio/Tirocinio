within BIOMD316;
class Class_elmt_cell

    input Real elmt_reactant1;
    input Real elmt_reactant3;
    input Real elmt_r3;
    input Real elmt_r4;
    input Real elmt_r1;
    input Real elmt_r2;
    input Real elmt_product0;
    input Real elmt_product2;

    input Boolean elmt_e4;
    input Boolean elmt_e2;
    input Boolean elmt_e3;
    input Boolean elmt_e1;

    input Real assign_elmt_X;

    Real elmt_cell(unit = "") "cell";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Y_conc(unit = "");
    Real elmt_Y_amount(unit = "");
    Real elmt_Y(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Z_conc(unit = "");
    Real elmt_Z_amount(unit = "");
    Real elmt_Z(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_X_conc(unit = "");
    Real elmt_X_amount(unit = "");
    Real elmt_X(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_cell = 1.0;
        elmt_Y_conc = 0.0;
        elmt_Z_conc = 0.0;
        elmt_X_conc = 0.0;


    equation
        assert(elmt_cell >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cell) = 0;
        elmt_Y = elmt_Y_conc;
        elmt_Z = elmt_Z_conc;
        elmt_X = elmt_X_conc;
        der(elmt_X_amount / elmt_cell) = 0.0;
        der(elmt_Y_amount) = ((elmt_r1 * elmt_product0) + (- (elmt_r2 * elmt_reactant1)));
        der(elmt_Z_amount) = ((elmt_r3 * elmt_product2) + (- (elmt_r4 * elmt_reactant3)));

        when elmt_e4 then
            reinit(elmt_X_amount, assign_elmt_X * pre(elmt_cell));
        end when;
        when elmt_e2 then
            reinit(elmt_X_amount, assign_elmt_X * pre(elmt_cell));
        end when;
        when elmt_e3 then
            reinit(elmt_X_amount, assign_elmt_X * pre(elmt_cell));
        end when;
        when elmt_e1 then
            reinit(elmt_X_amount, assign_elmt_X * pre(elmt_cell));
        end when;
    algorithm
        elmt_Y_conc := elmt_Y_amount / elmt_cell;
        elmt_Z_conc := elmt_Z_amount / elmt_cell;
        elmt_X_conc := elmt_X_amount / elmt_cell;
end Class_elmt_cell;
