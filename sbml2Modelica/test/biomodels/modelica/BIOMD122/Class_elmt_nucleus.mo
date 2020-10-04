within BIOMD122;
class Class_elmt_nucleus

    input Real elmt_R17;
    input Real elmt_R14;
    input Real elmt_R15;
    input Real elmt_product12;
    input Real elmt_R10;
    input Real elmt_reactant9;
    input Real elmt_product24;
    input Real elmt_product29;
    input Real elmt_product41;
    input Real elmt_R7;
    input Real elmt_reactant1;
    input Real elmt_R5;
    input Real elmt_reactant4;
    input Real elmt_product6;
    input Real elmt_R6;
    input Real elmt_R3;
    input Real elmt_R4;
    input Real elmt_reactant5;
    input Real elmt_R1;
    input Real elmt_R2;
    input Real elmt_reactant7;
    input Real elmt_reactant38;
    input Real elmt_reactant16;
    input Real elmt_reactant11;
    input Real elmt_reactant0;
    input Real elmt_product3;
    input Real elmt_reactant13;
    input Real elmt_product2;
    input Real elmt_product15;
    input Real elmt_product14;
    input Real elmt_product39;

    input Boolean elmt_event_0000001;
    input Boolean elmt_event_0000002;
    input Boolean elmt_event_0000003;

    input Real assign_elmt_Ca_Nuc;

    Real elmt_nucleus(unit = "") "nucleus";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Ca_Nuc_conc(unit = "");
    Real elmt_Ca_Nuc_amount(unit = "");
    Real elmt_Ca_Nuc(unit = "") "Calcium in Nucleus";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Inact_C_Nuc_conc(unit = "");
    Real elmt_Inact_C_Nuc_amount(unit = "");
    Real elmt_Inact_C_Nuc(unit = "") "Inactive Calcineurin in nucleus";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_NFAT_Act_C_Nuc_conc(unit = "");
    Real elmt_NFAT_Act_C_Nuc_amount(unit = "");
    Real elmt_NFAT_Act_C_Nuc(unit = "") "NFAT Calcineurin complex in nucleus";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_NFAT_Pi_Act_C_Nuc_conc(unit = "");
    Real elmt_NFAT_Pi_Act_C_Nuc_amount(unit = "");
    Real elmt_NFAT_Pi_Act_C_Nuc(unit = "") "Phosphorylated NFAT Calcineurin complex in nucleus";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_NFAT_Pi_Nuc_conc(unit = "");
    Real elmt_NFAT_Pi_Nuc_amount(unit = "");
    Real elmt_NFAT_Pi_Nuc(unit = "") "Phosphorylated NFAT in nucleus";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Act_C_Nuc_conc(unit = "");
    Real elmt_Act_C_Nuc_amount(unit = "");
    Real elmt_Act_C_Nuc(unit = "") "Active Calcineurin in Nucleus";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_NFAT_Nuc_conc(unit = "");
    Real elmt_NFAT_Nuc_amount(unit = "");
    Real elmt_NFAT_Nuc(unit = "") "NFAT_nuc";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_nucleus = 1.13E-13;
        elmt_Ca_Nuc_conc = 1.0;
        elmt_Inact_C_Nuc_conc = 0.049198;
        elmt_NFAT_Act_C_Nuc_conc = 9.477E-4;
        elmt_NFAT_Pi_Act_C_Nuc_conc = 2.5E-6;
        elmt_NFAT_Pi_Nuc_conc = 2.272E-4;
        elmt_Act_C_Nuc_conc = 5.05E-5;
        elmt_NFAT_Nuc_conc = 5.219E-4;


    equation
        assert(elmt_nucleus >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_nucleus) = 0;
        elmt_Ca_Nuc = elmt_Ca_Nuc_conc;
        elmt_Inact_C_Nuc = elmt_Inact_C_Nuc_conc;
        elmt_NFAT_Act_C_Nuc = elmt_NFAT_Act_C_Nuc_conc;
        elmt_NFAT_Pi_Act_C_Nuc = elmt_NFAT_Pi_Act_C_Nuc_conc;
        elmt_NFAT_Pi_Nuc = elmt_NFAT_Pi_Nuc_conc;
        elmt_Act_C_Nuc = elmt_Act_C_Nuc_conc;
        elmt_NFAT_Nuc = elmt_NFAT_Nuc_conc;
        der(elmt_Ca_Nuc_amount / elmt_nucleus) = 0.0;
        der(elmt_Inact_C_Nuc_amount) = ((- (elmt_R14 * elmt_reactant38)) + (elmt_R15 * elmt_product41));
        der(elmt_NFAT_Act_C_Nuc_amount) = ((- (elmt_R7 * elmt_reactant16)) + (- (elmt_R5 * elmt_reactant11)) + (elmt_R2 * elmt_product6));
        der(elmt_NFAT_Pi_Act_C_Nuc_amount) = ((elmt_R17 * elmt_product29) + (elmt_R5 * elmt_product12) + (- (elmt_R6 * elmt_reactant13)));
        der(elmt_NFAT_Pi_Nuc_amount) = ((elmt_R6 * elmt_product15) + (- (elmt_R1 * elmt_reactant0)) + (elmt_R10 * elmt_product24));
        der(elmt_Act_C_Nuc_amount) = ((elmt_R14 * elmt_product39) + (elmt_R6 * elmt_product14) + (- (elmt_R4 * elmt_reactant9)) + (- (elmt_R1 * elmt_reactant1)) + (elmt_R1 * elmt_product2) + (- (elmt_R2 * elmt_reactant4)));
        der(elmt_NFAT_Nuc_amount) = ((- (elmt_R3 * elmt_reactant7)) + (elmt_R1 * elmt_product3) + (- (elmt_R2 * elmt_reactant5)));

        when elmt_event_0000001 then
            reinit(elmt_Ca_Nuc_amount, assign_elmt_Ca_Nuc * pre(elmt_nucleus));
        end when;
        when elmt_event_0000002 then
            reinit(elmt_Ca_Nuc_amount, assign_elmt_Ca_Nuc * pre(elmt_nucleus));
        end when;
        when elmt_event_0000003 then
            reinit(elmt_Ca_Nuc_amount, assign_elmt_Ca_Nuc * pre(elmt_nucleus));
        end when;
    algorithm
        elmt_Ca_Nuc_conc := elmt_Ca_Nuc_amount / elmt_nucleus;
        elmt_Inact_C_Nuc_conc := elmt_Inact_C_Nuc_amount / elmt_nucleus;
        elmt_NFAT_Act_C_Nuc_conc := elmt_NFAT_Act_C_Nuc_amount / elmt_nucleus;
        elmt_NFAT_Pi_Act_C_Nuc_conc := elmt_NFAT_Pi_Act_C_Nuc_amount / elmt_nucleus;
        elmt_NFAT_Pi_Nuc_conc := elmt_NFAT_Pi_Nuc_amount / elmt_nucleus;
        elmt_Act_C_Nuc_conc := elmt_Act_C_Nuc_amount / elmt_nucleus;
        elmt_NFAT_Nuc_conc := elmt_NFAT_Nuc_amount / elmt_nucleus;
end Class_elmt_nucleus;
