within BIOMD358;
class Class_elmt_compartment_1

    input Real elmt_product11;
    input Real elmt_R7;
    input Real elmt_product9;
    input Real elmt_reactant2;
    input Real elmt_R8;
    input Real elmt_product7;
    input Real elmt_R5;
    input Real elmt_reactant4;
    input Real elmt_R6;
    input Real elmt_R3;
    input Real elmt_reactant6;
    input Real elmt_R4;
    input Real elmt_reactant5;
    input Real elmt_R1;
    input Real elmt_reactant8;
    input Real elmt_R2;
    input Real elmt_reactant14;
    input Real elmt_product1;
    input Real elmt_reactant16;
    input Real elmt_reactant10;
    input Real elmt_reactant12;
    input Real elmt_reactant0;
    input Real elmt_product3;
    input Real elmt_product15;
    input Real elmt_product13;
    input Real elmt_product17;

    Real elmt_compartment_1(unit = "") "compartment_1";
    Real elmt_PT_conc(unit = "");
    Real elmt_PT_amount(unit = "");
    Real elmt_PT(unit = "") "PT";
    Real elmt_IIa_conc(unit = "");
    Real elmt_IIa_amount(unit = "");
    Real elmt_IIa(unit = "") "IIa";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_RVV_conc(unit = "");
    Real elmt_RVV_amount(unit = "");
    Real elmt_RVV(unit = "") "RVV";
    Real elmt_II_conc(unit = "");
    Real elmt_II_amount(unit = "");
    Real elmt_II(unit = "") "II";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_X_conc(unit = "");
    Real elmt_X_amount(unit = "");
    Real elmt_X(unit = "") "X";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Xa_ATIII_conc(unit = "");
    Real elmt_Xa_ATIII_amount(unit = "");
    Real elmt_Xa_ATIII(unit = "") "Xa_ATIII";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Va_conc(unit = "");
    Real elmt_Va_amount(unit = "");
    Real elmt_Va(unit = "") "Va";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_IIa_alpha2M_conc(unit = "");
    Real elmt_IIa_alpha2M_amount(unit = "");
    Real elmt_IIa_alpha2M(unit = "") "IIa_alpha2M";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_PL_conc(unit = "");
    Real elmt_PL_amount(unit = "");
    Real elmt_PL(unit = "") "PL";
    Real elmt_V_conc(unit = "");
    Real elmt_V_amount(unit = "");
    Real elmt_V(unit = "") "V";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Xa_conc(unit = "");
    Real elmt_Xa_amount(unit = "");
    Real elmt_Xa(unit = "") "Xa";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_IIa_ATIII_conc(unit = "");
    Real elmt_IIa_ATIII_amount(unit = "");
    Real elmt_IIa_ATIII(unit = "") "IIa_ATIII";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_compartment_1 = 1.0;
        elmt_PT_conc = 0.0;
        elmt_IIa_conc = 0.0;
        elmt_RVV_conc = 0.3349999;
        elmt_II_conc = 509.2998;
        elmt_X_conc = 81.24998;
        elmt_Xa_ATIII_conc = 0.0;
        elmt_Va_conc = 0.0;
        elmt_IIa_alpha2M_conc = 0.0;
        elmt_PL_conc = 9.999997;
        elmt_V_conc = 6.711998;
        elmt_Xa_conc = 0.0;
        elmt_IIa_ATIII_conc = 0.0;


    equation
        assert(elmt_compartment_1 >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment_1) = 0;
        elmt_PT = elmt_PT_conc;
        elmt_IIa = elmt_IIa_conc;
        elmt_RVV = elmt_RVV_conc;
        elmt_II = elmt_II_conc;
        elmt_X = elmt_X_conc;
        elmt_Xa_ATIII = elmt_Xa_ATIII_conc;
        elmt_Va = elmt_Va_conc;
        elmt_IIa_alpha2M = elmt_IIa_alpha2M_conc;
        elmt_PL = elmt_PL_conc;
        elmt_V = elmt_V_conc;
        elmt_Xa = elmt_Xa_conc;
        elmt_IIa_ATIII = elmt_IIa_ATIII_conc;
        der(elmt_RVV_amount) = 0;
        der(elmt_PT_amount) = (elmt_R3 * elmt_product7);
        der(elmt_IIa_amount) = ((- (elmt_R7 * elmt_reactant14)) + (- (elmt_R8 * elmt_reactant16)) + (elmt_R5 * elmt_product11) + (elmt_R6 * elmt_product13));
        der(elmt_II_amount) = ((- (elmt_R5 * elmt_reactant10)) + (- (elmt_R6 * elmt_reactant12)));
        der(elmt_X_amount) = (- (elmt_R1 * elmt_reactant0));
        der(elmt_Xa_ATIII_amount) = (elmt_R2 * elmt_product3);
        der(elmt_Va_amount) = ((- (elmt_R3 * elmt_reactant4)) + (elmt_R4 * elmt_product9));
        der(elmt_IIa_alpha2M_amount) = (elmt_R7 * elmt_product15);
        der(elmt_PL_amount) = (- (elmt_R3 * elmt_reactant6));
        der(elmt_V_amount) = (- (elmt_R4 * elmt_reactant8));
        der(elmt_Xa_amount) = ((- (elmt_R3 * elmt_reactant5)) + (elmt_R1 * elmt_product1) + (- (elmt_R2 * elmt_reactant2)));
        der(elmt_IIa_ATIII_amount) = (elmt_R8 * elmt_product17);

    algorithm
        elmt_PT_conc := elmt_PT_amount / elmt_compartment_1;
        elmt_IIa_conc := elmt_IIa_amount / elmt_compartment_1;
        elmt_RVV_conc := elmt_RVV_amount / elmt_compartment_1;
        elmt_II_conc := elmt_II_amount / elmt_compartment_1;
        elmt_X_conc := elmt_X_amount / elmt_compartment_1;
        elmt_Xa_ATIII_conc := elmt_Xa_ATIII_amount / elmt_compartment_1;
        elmt_Va_conc := elmt_Va_amount / elmt_compartment_1;
        elmt_IIa_alpha2M_conc := elmt_IIa_alpha2M_amount / elmt_compartment_1;
        elmt_PL_conc := elmt_PL_amount / elmt_compartment_1;
        elmt_V_conc := elmt_V_amount / elmt_compartment_1;
        elmt_Xa_conc := elmt_Xa_amount / elmt_compartment_1;
        elmt_IIa_ATIII_conc := elmt_IIa_ATIII_amount / elmt_compartment_1;
end Class_elmt_compartment_1;
