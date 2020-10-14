within BIOMD012;
class Class_elmt_cell

    input Real elmt_reactant2;
    input Real elmt_product9;
    input Real elmt_reactant1;
    input Real elmt_reactant6;
    input Real elmt_product11;
    input Real elmt_product10;
    input Real elmt_reactant8;
    input Real elmt_reactant7;
    input Real elmt_Reaction12;
    input Real elmt_product5;
    input Real elmt_Reaction11;
    input Real elmt_product4;
    input Real elmt_Reaction10;
    input Real elmt_reactant0;
    input Real elmt_product3;
    input Real elmt_Reaction9;
    input Real elmt_Reaction8;
    input Real elmt_Reaction7;
    input Real elmt_Reaction6;
    input Real elmt_Reaction5;
    input Real elmt_Reaction4;
    input Real elmt_Reaction3;
    input Real elmt_Reaction2;
    input Real elmt_Reaction1;

    Real elmt_cell(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Y_amount(unit = "");
    Real elmt_Y_conc(unit = "");
    Real elmt_Y(unit = "") "TetR mRNA";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Z_amount(unit = "");
    Real elmt_Z_conc(unit = "");
    Real elmt_Z(unit = "") "cI mRNA";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_X_amount(unit = "");
    Real elmt_X_conc(unit = "");
    Real elmt_X(unit = "") "LacI mRNA";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_PY_amount(unit = "");
    Real elmt_PY_conc(unit = "");
    Real elmt_PY(unit = "") "TetR protein";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_PZ_amount(unit = "");
    Real elmt_PZ_conc(unit = "");
    Real elmt_PZ(unit = "") "cI protein";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_PX_amount(unit = "");
    Real elmt_PX_conc(unit = "");
    Real elmt_PX(unit = "") "LacI protein";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_cell = 1.0;
        elmt_Y_amount = 20.0;
        elmt_Z_amount = 0.0;
        elmt_X_amount = 0.0;
        elmt_PY_amount = 0.0;
        elmt_PZ_amount = 0.0;
        elmt_PX_amount = 0.0;


    equation
        assert(elmt_cell >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cell) = 0;
        elmt_Y = elmt_Y_amount;
        elmt_Z = elmt_Z_amount;
        elmt_X = elmt_X_amount;
        elmt_PY = elmt_PY_amount;
        elmt_PZ = elmt_PZ_amount;
        elmt_PX = elmt_PX_amount;
        der(elmt_Y_amount) = ((elmt_Reaction11 * elmt_product10) + (- (elmt_Reaction2 * elmt_reactant1)));
        der(elmt_Z_amount) = ((elmt_Reaction12 * elmt_product11) + (- (elmt_Reaction3 * elmt_reactant2)));
        der(elmt_X_amount) = ((elmt_Reaction10 * elmt_product9) + (- (elmt_Reaction1 * elmt_reactant0)));
        der(elmt_PY_amount) = ((- (elmt_Reaction8 * elmt_reactant7)) + (elmt_Reaction5 * elmt_product4));
        der(elmt_PZ_amount) = ((- (elmt_Reaction9 * elmt_reactant8)) + (elmt_Reaction6 * elmt_product5));
        der(elmt_PX_amount) = ((- (elmt_Reaction7 * elmt_reactant6)) + (elmt_Reaction4 * elmt_product3));

    algorithm
        elmt_Y_conc := elmt_Y_amount / elmt_cell;
        elmt_Z_conc := elmt_Z_amount / elmt_cell;
        elmt_X_conc := elmt_X_amount / elmt_cell;
        elmt_PY_conc := elmt_PY_amount / elmt_cell;
        elmt_PZ_conc := elmt_PZ_amount / elmt_cell;
        elmt_PX_conc := elmt_PX_amount / elmt_cell;
end Class_elmt_cell;
