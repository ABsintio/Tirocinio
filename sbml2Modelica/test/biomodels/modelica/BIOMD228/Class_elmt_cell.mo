within BIOMD228;
class Class_elmt_cell

    input Real elmt_pRB_degradation;
    input Real elmt_CycE_degradation;
    input Real elmt_pRBpp_degradation;
    input Real elmt_CycD_degradation;
    input Real elmt_product27;
    input Real elmt_reactant9;
    input Real elmt_product25;
    input Real elmt_pRB_phosphorylation;
    input Real elmt_pRBp_phosphorylation;
    input Real elmt_CycE_synthesis;
    input Real elmt_reactant14;
    input Real elmt_reactant16;
    input Real elmt_reactant17;
    input Real elmt_reactant11;
    input Real elmt_reactant13;
    input Real elmt_CycE_degradation2;
    input Real elmt_pRB_synthesis;
    input Real elmt_CycD_degradation2;
    input Real elmt_CycE_inibition;
    input Real elmt_pRBpp_dephosphorylation;
    input Real elmt_CycD_synthesis;
    input Real elmt_product12;
    input Real elmt_product10;
    input Real elmt_pRBp_degradation;
    input Real elmt_reactant26;
    input Real elmt_reactant28;
    input Real elmt_reactant21;
    input Real elmt_reactant22;
    input Real elmt_reactant24;
    input Real elmt_E2F1_synthesis;
    input Real elmt_reactant19;
    input Real elmt_AP1_synthesis;
    input Real elmt_CycD_activation;
    input Real elmt_product8;
    input Real elmt_reactant1;
    input Real elmt_reactant3;
    input Real elmt_product6;
    input Real elmt_product23;
    input Real elmt_CycE_activation;
    input Real elmt_Ap1_degradation;
    input Real elmt_reactant5;
    input Real elmt_product20;
    input Real elmt_reactant7;
    input Real elmt_product0;
    input Real elmt_CycD_inibition;
    input Real elmt_product4;
    input Real elmt_product2;
    input Real elmt_pRBp_dephosphorylation;
    input Real elmt_reactant29;
    input Real elmt_product15;
    input Real elmt_E2F1_degradation;
    input Real elmt_product18;

    Real elmt_cell(unit = "") "cell";
    Real elmt_CycEi_conc(unit = "");
    Real elmt_CycEi_amount(unit = "");
    Real elmt_CycEi(unit = "") "CycE/cdk2(i)";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_CycDi_conc(unit = "");
    Real elmt_CycDi_amount(unit = "");
    Real elmt_CycDi(unit = "") "CycD/cdk4,6(i)";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_pRBp_conc(unit = "");
    Real elmt_pRBp_amount(unit = "");
    Real elmt_pRBp(unit = "") "pRBp";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_AP1_conc(unit = "");
    Real elmt_AP1_amount(unit = "");
    Real elmt_AP1(unit = "") "AP1";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_pRBpp_conc(unit = "");
    Real elmt_pRBpp_amount(unit = "");
    Real elmt_pRBpp(unit = "") "pRBpp";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_pRB_conc(unit = "");
    Real elmt_pRB_amount(unit = "");
    Real elmt_pRB(unit = "") "pRB";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_CycEa_conc(unit = "");
    Real elmt_CycEa_amount(unit = "");
    Real elmt_CycEa(unit = "") "CycEa/cdk2(a)";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_CycDa_conc(unit = "");
    Real elmt_CycDa_amount(unit = "");
    Real elmt_CycDa(unit = "") "CycD/cdk4,6(a)";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_E2F1_conc(unit = "");
    Real elmt_E2F1_amount(unit = "");
    Real elmt_E2F1(unit = "") "E2F1";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_cell = 1.0;
        elmt_CycEi_conc = 0.1;
        elmt_CycDi_conc = 0.1;
        elmt_pRBp_conc = 0.1;
        elmt_AP1_conc = 0.1;
        elmt_pRBpp_conc = 0.1;
        elmt_pRB_conc = 0.1;
        elmt_CycEa_conc = 0.1;
        elmt_CycDa_conc = 0.1;
        elmt_E2F1_conc = 0.1;


    equation
        assert(elmt_cell >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cell) = 0;
        elmt_CycEi = elmt_CycEi_conc;
        elmt_CycDi = elmt_CycDi_conc;
        elmt_pRBp = elmt_pRBp_conc;
        elmt_AP1 = elmt_AP1_conc;
        elmt_pRBpp = elmt_pRBpp_conc;
        elmt_pRB = elmt_pRB_conc;
        elmt_CycEa = elmt_CycEa_conc;
        elmt_CycDa = elmt_CycDa_conc;
        elmt_E2F1 = elmt_E2F1_conc;
        der(elmt_CycEi_amount) = ((elmt_CycE_inibition * elmt_product27) + (- (elmt_CycE_activation * elmt_reactant24)) + (- (elmt_CycE_degradation * elmt_reactant28)) + (elmt_CycE_synthesis * elmt_product23));
        der(elmt_CycDi_amount) = ((elmt_CycD_synthesis * elmt_product8) + (elmt_CycD_inibition * elmt_product10) + (- (elmt_CycD_degradation * elmt_reactant13)) + (- (elmt_CycD_activation * elmt_reactant11)));
        der(elmt_pRBp_amount) = ((elmt_pRBpp_dephosphorylation * elmt_product20) + (- (elmt_pRBp_degradation * elmt_reactant22)) + (- (elmt_pRBp_dephosphorylation * elmt_reactant3)) + (elmt_pRB_phosphorylation * elmt_product2) + (- (elmt_pRBp_phosphorylation * elmt_reactant17)));
        der(elmt_AP1_amount) = ((- (elmt_Ap1_degradation * elmt_reactant16)) + (elmt_AP1_synthesis * elmt_product15));
        der(elmt_pRBpp_amount) = ((- (elmt_pRBpp_dephosphorylation * elmt_reactant19)) + (- (elmt_pRBpp_degradation * elmt_reactant21)) + (elmt_pRBp_phosphorylation * elmt_product18));
        der(elmt_pRB_amount) = ((- (elmt_pRB_degradation * elmt_reactant5)) + (elmt_pRBp_dephosphorylation * elmt_product4) + (elmt_pRB_synthesis * elmt_product0) + (- (elmt_pRB_phosphorylation * elmt_reactant1)));
        der(elmt_CycEa_amount) = ((- (elmt_CycE_inibition * elmt_reactant26)) + (elmt_CycE_activation * elmt_product25) + (- (elmt_CycE_degradation2 * elmt_reactant29)));
        der(elmt_CycDa_amount) = ((- (elmt_CycD_inibition * elmt_reactant9)) + (- (elmt_CycD_degradation2 * elmt_reactant14)) + (elmt_CycD_activation * elmt_product12));
        der(elmt_E2F1_amount) = ((elmt_E2F1_synthesis * elmt_product6) + (- (elmt_E2F1_degradation * elmt_reactant7)));

    algorithm
        elmt_CycEi_conc := elmt_CycEi_amount / elmt_cell;
        elmt_CycDi_conc := elmt_CycDi_amount / elmt_cell;
        elmt_pRBp_conc := elmt_pRBp_amount / elmt_cell;
        elmt_AP1_conc := elmt_AP1_amount / elmt_cell;
        elmt_pRBpp_conc := elmt_pRBpp_amount / elmt_cell;
        elmt_pRB_conc := elmt_pRB_amount / elmt_cell;
        elmt_CycEa_conc := elmt_CycEa_amount / elmt_cell;
        elmt_CycDa_conc := elmt_CycDa_amount / elmt_cell;
        elmt_E2F1_conc := elmt_E2F1_amount / elmt_cell;
end Class_elmt_cell;
