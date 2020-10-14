within BIOMD122;
class Class_elmt_cytosol

    input Real elmt_reactant40;
    input Real elmt_R17;
    input Real elmt_R15;
    input Real elmt_reactant20;
    input Real elmt_R12;
    input Real elmt_R13;
    input Real elmt_product33;
    input Real elmt_product32;
    input Real elmt_product10;
    input Real elmt_R10;
    input Real elmt_R11;
    input Real elmt_reactant25;
    input Real elmt_reactant28;
    input Real elmt_reactant23;
    input Real elmt_reactant18;
    input Real elmt_product27;
    input Real elmt_product26;
    input Real elmt_R7;
    input Real elmt_R8;
    input Real elmt_product8;
    input Real elmt_reactant30;
    input Real elmt_reactant31;
    input Real elmt_R3;
    input Real elmt_R4;
    input Real elmt_product22;
    input Real elmt_product21;
    input Real elmt_R9;
    input Real elmt_reactant35;
    input Real elmt_product36;
    input Real elmt_product19;
    input Real elmt_product17;

    input Boolean elmt_event_0000001;
    input Boolean elmt_event_0000002;
    input Boolean elmt_event_0000003;

    input Real assign_elmt_Ca_Cyt;

    Real elmt_cytosol(unit = "") "cytosol";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Inact_C_Cyt_conc(unit = "");
    Real elmt_Inact_C_Cyt_amount(unit = "");
    Real elmt_Inact_C_Cyt(unit = "") "Inactive Calcineurin in cytosol";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Ca_Cyt_conc(unit = "");
    Real elmt_Ca_Cyt_amount(unit = "");
    Real elmt_Ca_Cyt(unit = "") "Calcium in Cytosol";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Act_C_Cyt_conc(unit = "");
    Real elmt_Act_C_Cyt_amount(unit = "");
    Real elmt_Act_C_Cyt(unit = "") "Active Calcineurin in cytosol";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_NFAT_Act_C_Cyt_conc(unit = "");
    Real elmt_NFAT_Act_C_Cyt_amount(unit = "");
    Real elmt_NFAT_Act_C_Cyt(unit = "") "NFAT Calcineurin complex in cytosol";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_NFAT_Pi_Act_C_Cyt_conc(unit = "");
    Real elmt_NFAT_Pi_Act_C_Cyt_amount(unit = "");
    Real elmt_NFAT_Pi_Act_C_Cyt(unit = "") "Phosphorylated NFAT Calcineurin complex in cytosol";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_NFAT_Cyt_conc(unit = "");
    Real elmt_NFAT_Cyt_amount(unit = "");
    Real elmt_NFAT_Cyt(unit = "") "NFAT_Cyt";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_NFAT_Pi_Cyt_conc(unit = "");
    Real elmt_NFAT_Pi_Cyt_amount(unit = "");
    Real elmt_NFAT_Pi_Cyt(unit = "") "Phosphorylated NFAT in cytosol";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_cytosol = 2.69E-13;
        elmt_Inact_C_Cyt_conc = 0.0097108;
        elmt_Ca_Cyt_conc = 1.0;
        elmt_Act_C_Cyt_conc = 9.1E-6;
        elmt_NFAT_Act_C_Cyt_conc = 6.1E-6;
        elmt_NFAT_Pi_Act_C_Cyt_conc = 2.2E-6;
        elmt_NFAT_Cyt_conc = 1.101E-4;
        elmt_NFAT_Pi_Cyt_conc = 0.0094397;


    equation
        assert(elmt_cytosol >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cytosol) = 0;
        elmt_Inact_C_Cyt = elmt_Inact_C_Cyt_conc;
        elmt_Ca_Cyt = elmt_Ca_Cyt_conc;
        elmt_Act_C_Cyt = elmt_Act_C_Cyt_conc;
        elmt_NFAT_Act_C_Cyt = elmt_NFAT_Act_C_Cyt_conc;
        elmt_NFAT_Pi_Act_C_Cyt = elmt_NFAT_Pi_Act_C_Cyt_conc;
        elmt_NFAT_Cyt = elmt_NFAT_Cyt_conc;
        elmt_NFAT_Pi_Cyt = elmt_NFAT_Pi_Cyt_conc;
        der(elmt_Ca_Cyt_amount / elmt_cytosol) = 0.0;
        der(elmt_Inact_C_Cyt_amount) = ((- (elmt_R15 * elmt_reactant40)) + (- (elmt_R13 * elmt_reactant35)));
        der(elmt_Act_C_Cyt_amount) = ((- (elmt_R12 * elmt_reactant31)) + (elmt_R12 * elmt_product32) + (elmt_R4 * elmt_product10) + (elmt_R13 * elmt_product36) + (elmt_R11 * elmt_product26) + (elmt_R9 * elmt_product21));
        der(elmt_NFAT_Act_C_Cyt_amount) = ((elmt_R7 * elmt_product17) + (- (elmt_R8 * elmt_reactant18)) + (- (elmt_R11 * elmt_reactant25)));
        der(elmt_NFAT_Pi_Act_C_Cyt_amount) = ((elmt_R8 * elmt_product19) + (- (elmt_R17 * elmt_reactant28)) + (- (elmt_R9 * elmt_reactant20)));
        der(elmt_NFAT_Cyt_amount) = ((elmt_R3 * elmt_product8) + (elmt_R12 * elmt_product33) + (elmt_R11 * elmt_product27));
        der(elmt_NFAT_Pi_Cyt_amount) = ((- (elmt_R12 * elmt_reactant30)) + (- (elmt_R10 * elmt_reactant23)) + (elmt_R9 * elmt_product22));

        when elmt_event_0000001 then
            reinit(elmt_Ca_Cyt_amount, assign_elmt_Ca_Cyt * pre(elmt_cytosol));
        end when;
        when elmt_event_0000002 then
            reinit(elmt_Ca_Cyt_amount, assign_elmt_Ca_Cyt * pre(elmt_cytosol));
        end when;
        when elmt_event_0000003 then
            reinit(elmt_Ca_Cyt_amount, assign_elmt_Ca_Cyt * pre(elmt_cytosol));
        end when;
    algorithm
        elmt_Inact_C_Cyt_conc := elmt_Inact_C_Cyt_amount / elmt_cytosol;
        elmt_Ca_Cyt_conc := elmt_Ca_Cyt_amount / elmt_cytosol;
        elmt_Act_C_Cyt_conc := elmt_Act_C_Cyt_amount / elmt_cytosol;
        elmt_NFAT_Act_C_Cyt_conc := elmt_NFAT_Act_C_Cyt_amount / elmt_cytosol;
        elmt_NFAT_Pi_Act_C_Cyt_conc := elmt_NFAT_Pi_Act_C_Cyt_amount / elmt_cytosol;
        elmt_NFAT_Cyt_conc := elmt_NFAT_Cyt_amount / elmt_cytosol;
        elmt_NFAT_Pi_Cyt_conc := elmt_NFAT_Pi_Cyt_amount / elmt_cytosol;
end Class_elmt_cytosol;
