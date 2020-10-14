within BIOMD077;
class Class_elmt_cell

    input Real elmt_product9;
    input Real elmt_reactant1;
    input Real elmt_beta;
    input Real elmt_product7;
    input Real elmt_reactant3;
    input Real elmt_reactant6;
    input Real elmt_reactant5;
    input Real elmt_reactant8;
    input Real elmt_reaction_3;
    input Real elmt_reaction_4;
    input Real elmt_reaction_1;
    input Real elmt_reaction_2;
    input Real elmt_product4;
    input Real elmt_reaction_0;
    input Real elmt_reactant0;
    input Real elmt_product2;
    input Real elmt_alpha;

    input Boolean elmt_RemovalH;

    input Real assign_elmt_H;

    Real elmt_cell(unit = "") "cell";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_HRRH_conc(unit = "");
    Real elmt_HRRH_amount(unit = "");
    Real elmt_HRRH(unit = "") "HRRH";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_H_conc(unit = "");
    Real elmt_H_amount(unit = "");
    Real elmt_H(unit = "") "H";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_E_conc(unit = "");
    Real elmt_E_amount(unit = "");
    Real elmt_E(unit = "") "E";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_HR_conc(unit = "");
    Real elmt_HR_amount(unit = "");
    Real elmt_HR(unit = "") "HR";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_GQ_conc(unit = "");
    Real elmt_GQ_amount(unit = "");
    Real elmt_GQ(unit = "") "GQ";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_IP3_conc(unit = "");
    Real elmt_IP3_amount(unit = "");
    Real elmt_IP3(unit = "") "IP3";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_R_conc(unit = "");
    Real elmt_R_amount(unit = "");
    Real elmt_R(unit = "") "R";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_CHO_conc(unit = "");
    Real elmt_CHO_amount(unit = "");
    Real elmt_CHO(unit = "") "CHO";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_cell = 1.0;
        elmt_HRRH_conc = 0.0;
        elmt_H_conc = 1.0;
        elmt_E_conc = 0.0;
        elmt_HR_conc = 0.0;
        elmt_GQ_conc = 0.1;
        elmt_IP3_conc = 0.0;
        elmt_R_conc = 0.01;


    equation
        assert(elmt_cell >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cell) = 0;
        elmt_HRRH = elmt_HRRH_conc;
        elmt_H = elmt_H_conc;
        elmt_E = elmt_E_conc;
        elmt_HR = elmt_HR_conc;
        elmt_GQ = elmt_GQ_conc;
        elmt_IP3 = elmt_IP3_conc;
        elmt_R = elmt_R_conc;
        elmt_CHO = elmt_CHO_conc;
        elmt_CHO_amount = ((0.001 * elmt_alpha * elmt_IP3 * (0.3 + (0.3 * elmt_beta * time * exp((1.0 - (elmt_beta * time)))))) / (1.0 + (0.001 * elmt_alpha * elmt_IP3))) * elmt_cell;
        der(elmt_HRRH_amount) = ((elmt_reaction_1 * elmt_product4) + (- (elmt_reaction_2 * elmt_reactant5)));
        der(elmt_H_amount) = (- (elmt_reaction_0 * elmt_reactant0));
        der(elmt_E_amount) = (elmt_reaction_2 * elmt_product7);
        der(elmt_HR_amount) = ((- (elmt_reaction_1 * elmt_reactant3)) + (elmt_reaction_0 * elmt_product2));
        der(elmt_GQ_amount) = (- (elmt_reaction_2 * elmt_reactant6));
        der(elmt_IP3_amount) = ((- (elmt_reaction_3 * elmt_reactant8)) + (elmt_reaction_4 * elmt_product9));
        der(elmt_R_amount) = (- (elmt_reaction_0 * elmt_reactant1));

        when elmt_RemovalH then
            reinit(elmt_H_amount, assign_elmt_H * pre(elmt_cell));
        end when;
    algorithm
        elmt_HRRH_conc := elmt_HRRH_amount / elmt_cell;
        elmt_H_conc := elmt_H_amount / elmt_cell;
        elmt_E_conc := elmt_E_amount / elmt_cell;
        elmt_HR_conc := elmt_HR_amount / elmt_cell;
        elmt_GQ_conc := elmt_GQ_amount / elmt_cell;
        elmt_IP3_conc := elmt_IP3_amount / elmt_cell;
        elmt_R_conc := elmt_R_amount / elmt_cell;
        elmt_CHO_conc := elmt_CHO_amount / elmt_cell;
end Class_elmt_cell;
