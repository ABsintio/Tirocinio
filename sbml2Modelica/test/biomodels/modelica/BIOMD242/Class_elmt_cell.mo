within BIOMD242;
class Class_elmt_cell

    input Real elmt_cyclinD_1;
    input Real elmt_pRBsynthesis_1;
    input Real elmt_product12;
    input Real elmt_product11;
    input Real elmt__2;
    input Real elmt_E2Fdegradationviacellcycleprogression_1;
    input Real elmt__1;
    input Real elmt_product9;
    input Real elmt_reactant1;
    input Real elmt_product7;
    input Real elmt_cellcycleprogression_1;
    input Real elmt_reactant3;
    input Real elmt_reactant6;
    input Real elmt_reactant5;
    input Real elmt_reactant8;
    input Real elmt_product0;
    input Real elmt_pRBdeplation_1;
    input Real elmt_reactant15;
    input Real elmt_null3_1;
    input Real elmt_reactant10;
    input Real elmt_product4;
    input Real elmt_null2_1;
    input Real elmt_product2;
    input Real elmt_reactant13;
    input Real elmt_cellcycleprogressionslow_1;
    input Real elmt_cyclinEdegradation_1;
    input Real elmt_product14;
    input Real elmt_cyclinEsynthesis_1;

    Real elmt_cell(unit = "") "cell";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_E_1_conc(unit = "");
    Real elmt_E_1_amount(unit = "");
    Real elmt_E_1(unit = "") "E";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_D_1_conc(unit = "");
    Real elmt_D_1_amount(unit = "");
    Real elmt_D_1(unit = "") "D";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_R_1_conc(unit = "");
    Real elmt_R_1_amount(unit = "");
    Real elmt_R_1(unit = "") "R";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_theta_1_conc(unit = "");
    Real elmt_theta_1_amount(unit = "");
    Real elmt_theta_1(unit = "") "theta";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_RS_1_conc(unit = "");
    Real elmt_RS_1_amount(unit = "");
    Real elmt_RS_1(unit = "") "RS";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_X_1_conc(unit = "");
    Real elmt_X_1_amount(unit = "");
    Real elmt_X_1(unit = "") "X";

    initial equation
        elmt_cell = 1.0;
        elmt_E_1_conc = (0.0 / elmt_cell);
        elmt_D_1_conc = (0.0 / elmt_cell);
        elmt_R_1_conc = (2.5 / elmt_cell);
        elmt_theta_1_conc = (0.0 / elmt_cell);
        elmt_RS_1_conc = (0.0 / elmt_cell);
        elmt_X_1_conc = (0.0 / elmt_cell);


    equation
        assert(elmt_cell >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cell) = 0;
        elmt_E_1 = elmt_E_1_conc;
        elmt_D_1 = elmt_D_1_conc;
        elmt_R_1 = elmt_R_1_conc;
        elmt_theta_1 = elmt_theta_1_conc;
        elmt_RS_1 = elmt_RS_1_conc;
        elmt_X_1 = elmt_X_1_conc;
        der(elmt_E_1_amount) = ((- (elmt_cyclinEdegradation_1 * elmt_reactant3)) + (elmt_cyclinEsynthesis_1 * elmt_product2));
        der(elmt_D_1_amount) = ((- (elmt_cyclinD_1 * elmt_reactant1)) + (elmt__1 * elmt_product0));
        der(elmt_R_1_amount) = ((elmt_pRBsynthesis_1 * elmt_product4) + (- (elmt_pRBdeplation_1 * elmt_reactant5)));
        der(elmt_theta_1_amount) = ((- (elmt_pRBdeplation_1 * elmt_reactant6)) + (elmt_null3_1 * elmt_product12) + (elmt_null2_1 * elmt_product11) + (elmt__2 * elmt_product9) + (- (elmt_E2Fdegradationviacellcycleprogression_1 * elmt_reactant13)));
        der(elmt_RS_1_amount) = ((elmt_pRBdeplation_1 * elmt_product7) + (- (elmt_null2_1 * elmt_reactant10)) + (- (elmt__2 * elmt_reactant8)));
        der(elmt_X_1_amount) = ((elmt_cellcycleprogression_1 * elmt_product14) + (- (elmt_cellcycleprogressionslow_1 * elmt_reactant15)));

    algorithm
        elmt_E_1_conc := elmt_E_1_amount / elmt_cell;
        elmt_D_1_conc := elmt_D_1_amount / elmt_cell;
        elmt_R_1_conc := elmt_R_1_amount / elmt_cell;
        elmt_theta_1_conc := elmt_theta_1_amount / elmt_cell;
        elmt_RS_1_conc := elmt_RS_1_amount / elmt_cell;
        elmt_X_1_conc := elmt_X_1_amount / elmt_cell;
end Class_elmt_cell;
