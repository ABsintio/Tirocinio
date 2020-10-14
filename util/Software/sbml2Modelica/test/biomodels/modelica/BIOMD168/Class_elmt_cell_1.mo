within BIOMD168;
class Class_elmt_cell_1

    input Real elmt_product9;
    input Real elmt_reactant1;
    input Real elmt_reactant3;
    input Real elmt_product6;
    input Real elmt_reactant5;
    input Real elmt_theta_1;
    input Real elmt_reactant8;
    input Real elmt_reactant7;
    input Real elmt_product0;
    input Real elmt_reactant10;
    input Real elmt_product4;
    input Real elmt_cycleprogression_1;
    input Real elmt_cyclin_1;
    input Real elmt_product2;
    input Real elmt_pRBE2Fcomplexassociation_1;
    input Real elmt_cycECDK2degradation_1;
    input Real elmt__1;
    input Real elmt_cyclebreak_1;
    input Real elmt_cyclinCDK4degradation_1;
    input Real elmt_pRBpdephosphorylation_1;
    input Real elmt_RT_1;
    input Real elmt__7;
    input Real elmt_pRBE2FcomplexdeassociationviacycDCDK4_1;

    Real elmt_cell_1(unit = "") "cell";
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
    Real elmt_E2F_1_conc(unit = "");
    Real elmt_E2F_1_amount(unit = "");
    Real elmt_E2F_1(unit = "") "E2F";
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
    Real elmt_RP_1_conc(unit = "");
    Real elmt_RP_1_amount(unit = "");
    Real elmt_RP_1(unit = "") "RP";
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
        elmt_cell_1 = 1.0;
        elmt_E_1_conc = (0.6 / elmt_cell_1);
        elmt_D_1_conc = (0.1 / elmt_cell_1);
        elmt_R_1_conc = (0.5 / elmt_cell_1);
        elmt_RS_1_conc = (1.0 / elmt_cell_1);
        elmt_X_1_conc = (0.7 / elmt_cell_1);


    equation
        assert(elmt_cell_1 >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cell_1) = 0;
        elmt_E_1 = elmt_E_1_conc;
        elmt_E2F_1 = elmt_E2F_1_conc;
        elmt_D_1 = elmt_D_1_conc;
        elmt_R_1 = elmt_R_1_conc;
        elmt_RP_1 = elmt_RP_1_conc;
        elmt_RS_1 = elmt_RS_1_conc;
        elmt_X_1 = elmt_X_1_conc;
        elmt_E2F_1_amount = (elmt_theta_1 - elmt_RS_1) * elmt_cell_1;
        elmt_RP_1_amount = ((elmt_RT_1 - elmt_RS_1) - elmt_R_1) * elmt_cell_1;
        der(elmt_E_1_amount) = ((- (elmt_cycECDK2degradation_1 * elmt_reactant3)) + (elmt_cyclin_1 * elmt_product2));
        der(elmt_D_1_amount) = ((elmt__1 * elmt_product0) + (- (elmt_cyclinCDK4degradation_1 * elmt_reactant1)));
        der(elmt_R_1_amount) = ((- (elmt_pRBE2Fcomplexassociation_1 * elmt_reactant5)) + (elmt_pRBpdephosphorylation_1 * elmt_product4));
        der(elmt_RS_1_amount) = ((elmt_pRBE2Fcomplexassociation_1 * elmt_product6) + (- (elmt_pRBE2FcomplexdeassociationviacycDCDK4_1 * elmt_reactant7)) + (- (elmt__7 * elmt_reactant8)));
        der(elmt_X_1_amount) = ((- (elmt_cyclebreak_1 * elmt_reactant10)) + (elmt_cycleprogression_1 * elmt_product9));

    algorithm
        elmt_E_1_conc := elmt_E_1_amount / elmt_cell_1;
        elmt_E2F_1_conc := elmt_E2F_1_amount / elmt_cell_1;
        elmt_D_1_conc := elmt_D_1_amount / elmt_cell_1;
        elmt_R_1_conc := elmt_R_1_amount / elmt_cell_1;
        elmt_RP_1_conc := elmt_RP_1_amount / elmt_cell_1;
        elmt_RS_1_conc := elmt_RS_1_amount / elmt_cell_1;
        elmt_X_1_conc := elmt_X_1_amount / elmt_cell_1;
end Class_elmt_cell_1;
