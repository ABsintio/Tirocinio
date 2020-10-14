within BIOMD111;
class Class_elmt_cell

    input Real elmt_R16;
    input Real elmt_R17;
    input Real elmt_R14;
    input Real elmt_R15;
    input Real elmt_R12;
    input Real elmt_product12;
    input Real elmt_R13;
    input Real elmt_R10;
    input Real elmt_R11;
    input Real elmt_R18;
    input Real elmt_R19;
    input Real elmt_product9;
    input Real elmt_Trimer;
    input Real elmt_R7;
    input Real elmt_reactant1;
    input Real elmt_R8;
    input Real elmt_product7;
    input Real elmt_R5;
    input Real elmt_reactant4;
    input Real elmt_reactant3;
    input Real elmt_R6;
    input Real elmt_R3;
    input Real elmt_reactant6;
    input Real elmt_R4;
    input Real elmt_R1;
    input Real elmt_reactant8;
    input Real elmt_R2;
    input Real elmt_product0;
    input Real elmt_reactant15;
    input Real elmt_reactant17;
    input Real elmt_reactant10;
    input Real elmt_product5;
    input Real elmt_reactant11;
    input Real elmt_R9;
    input Real elmt_reactant13;
    input Real elmt_product2;
    input Real elmt_product16;
    input Real elmt_product14;
    input Real elmt_product18;

    input Boolean elmt_event_0000001;

    input Real assign_elmt_M;

    Real elmt_cell(unit = "") "cell";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_cdc13T_amount(unit = "");
    Real elmt_cdc13T_conc(unit = "");
    Real elmt_cdc13T(unit = "") "Total cdc13";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_M_amount(unit = "");
    Real elmt_M_conc(unit = "");
    Real elmt_M(unit = "") "Cell Mass";
    Real elmt_slp1_amount(unit = "");
    Real elmt_slp1_conc(unit = "");
    Real elmt_slp1(unit = "") "slp1";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_MPF_amount(unit = "");
    Real elmt_MPF_conc(unit = "");
    Real elmt_MPF(unit = "") "M-phase promoting factor";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_IEP_amount(unit = "");
    Real elmt_IEP_conc(unit = "");
    Real elmt_IEP(unit = "") "IEP";
    Real elmt_slp1T_amount(unit = "");
    Real elmt_slp1T_conc(unit = "");
    Real elmt_slp1T(unit = "") "slp1T";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_preMPF_amount(unit = "");
    Real elmt_preMPF_conc(unit = "");
    Real elmt_preMPF(unit = "") "preMPF";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_rum1T_amount(unit = "");
    Real elmt_rum1T_conc(unit = "");
    Real elmt_rum1T(unit = "") "rum1T";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_ste9_amount(unit = "");
    Real elmt_ste9_conc(unit = "");
    Real elmt_ste9(unit = "") "ste9";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_SK_amount(unit = "");
    Real elmt_SK_conc(unit = "");
    Real elmt_SK(unit = "") "SK";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_cell = 1.0;
        elmt_cdc13T_amount = 0.2;
        elmt_M_amount = 1.0;
        elmt_slp1_amount = 2.2;
        elmt_IEP_amount = 0.0;
        elmt_slp1T_amount = 0.0;
        elmt_preMPF_amount = 0.0;
        elmt_rum1T_amount = 0.0;
        elmt_ste9_amount = 1.0;
        elmt_SK_amount = 0.0;


    equation
        assert(elmt_cell >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cell) = 0;
        elmt_cdc13T = elmt_cdc13T_amount;
        elmt_M = elmt_M_amount;
        elmt_slp1 = elmt_slp1_amount;
        elmt_MPF = elmt_MPF_amount;
        elmt_IEP = elmt_IEP_amount;
        elmt_slp1T = elmt_slp1T_amount;
        elmt_preMPF = elmt_preMPF_amount;
        elmt_rum1T = elmt_rum1T_amount;
        elmt_ste9 = elmt_ste9_amount;
        elmt_SK = elmt_SK_amount;
        elmt_MPF_amount = (((elmt_cdc13T - elmt_preMPF) * (elmt_cdc13T - elmt_Trimer)) / elmt_cdc13T);
        der(elmt_cdc13T_amount) = ((elmt_R1 * elmt_product0) + (- (elmt_R2 * elmt_reactant1)));
        der(elmt_M_amount) = (elmt_R19 * elmt_product18);
        der(elmt_slp1_amount) = ((- (elmt_R12 * elmt_reactant11)) + (elmt_R10 * elmt_product9) + (- (elmt_R11 * elmt_reactant10)));
        der(elmt_IEP_amount) = ((- (elmt_R14 * elmt_reactant13)) + (elmt_R13 * elmt_product12));
        der(elmt_slp1T_amount) = ((elmt_R8 * elmt_product7) + (- (elmt_R9 * elmt_reactant8)));
        der(elmt_preMPF_amount) = ((- (elmt_R5 * elmt_reactant4)) + (elmt_R3 * elmt_product2) + (- (elmt_R4 * elmt_reactant3)));
        der(elmt_rum1T_amount) = ((- (elmt_R16 * elmt_reactant15)) + (elmt_R15 * elmt_product14));
        der(elmt_ste9_amount) = ((- (elmt_R7 * elmt_reactant6)) + (elmt_R6 * elmt_product5));
        der(elmt_SK_amount) = ((elmt_R17 * elmt_product16) + (- (elmt_R18 * elmt_reactant17)));

        when elmt_event_0000001 then
            reinit(elmt_M_amount, assign_elmt_M);
        end when;
    algorithm
        elmt_cdc13T_conc := elmt_cdc13T_amount / elmt_cell;
        elmt_M_conc := elmt_M_amount / elmt_cell;
        elmt_slp1_conc := elmt_slp1_amount / elmt_cell;
        elmt_MPF_conc := elmt_MPF_amount / elmt_cell;
        elmt_IEP_conc := elmt_IEP_amount / elmt_cell;
        elmt_slp1T_conc := elmt_slp1T_amount / elmt_cell;
        elmt_preMPF_conc := elmt_preMPF_amount / elmt_cell;
        elmt_rum1T_conc := elmt_rum1T_amount / elmt_cell;
        elmt_ste9_conc := elmt_ste9_amount / elmt_cell;
        elmt_SK_conc := elmt_SK_amount / elmt_cell;
end Class_elmt_cell;
