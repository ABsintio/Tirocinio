within BIOMD009;
class Class_elmt_compartment

    input Real elmt_reactant42;
    input Real elmt_product34;
    input Real elmt_product32;
    input Real elmt_r5b;
    input Real elmt_reactant48;
    input Real elmt_r5a;
    input Real elmt_reactant49;
    input Real elmt_reactant43;
    input Real elmt_r9b;
    input Real elmt_reactant45;
    input Real elmt_r9a;
    input Real elmt_r1b;
    input Real elmt_r1a;
    input Real elmt_product26;
    input Real elmt_reactant9;
    input Real elmt_product29;
    input Real elmt_product28;
    input Real elmt_product41;
    input Real elmt_reactant51;
    input Real elmt_product40;
    input Real elmt_product44;
    input Real elmt_reactant15;
    input Real elmt_r6b;
    input Real elmt_r6a;
    input Real elmt_reactant54;
    input Real elmt_K_PP_norm_max;
    input Real elmt_reactant55;
    input Real elmt_reactant12;
    input Real elmt_reactant57;
    input Real elmt_reactant13;
    input Real elmt_r2b;
    input Real elmt_r2a;
    input Real elmt_product38;
    input Real elmt_product35;
    input Real elmt_product52;
    input Real elmt_product50;
    input Real elmt_product56;
    input Real elmt_product11;
    input Real elmt_product10;
    input Real elmt_product53;
    input Real elmt_reactant25;
    input Real elmt_r3a;
    input Real elmt_reactant27;
    input Real elmt_r7b;
    input Real elmt_reactant21;
    input Real elmt_r7a;
    input Real elmt_reactant24;
    input Real elmt_reactant18;
    input Real elmt_reactant19;
    input Real elmt_r3b;
    input Real elmt_product47;
    input Real elmt_product46;
    input Real elmt_product8;
    input Real elmt_reactant1;
    input Real elmt_reactant30;
    input Real elmt_reactant31;
    input Real elmt_reactant3;
    input Real elmt_product23;
    input Real elmt_reactant6;
    input Real elmt_product22;
    input Real elmt_r10b;
    input Real elmt_r10a;
    input Real elmt_product20;
    input Real elmt_reactant7;
    input Real elmt_reactant36;
    input Real elmt_r4b;
    input Real elmt_reactant37;
    input Real elmt_r4a;
    input Real elmt_reactant39;
    input Real elmt_r8b;
    input Real elmt_product5;
    input Real elmt_product4;
    input Real elmt_r8a;
    input Real elmt_reactant33;
    input Real elmt_reactant0;
    input Real elmt_product2;
    input Real elmt_product16;
    input Real elmt_product59;
    input Real elmt_product14;
    input Real elmt_product58;
    input Real elmt_product17;

    Real elmt_compartment(unit = "") "";
    Real elmt_KKPase_conc(unit = "");
    Real elmt_KKPase_amount(unit = "");
    Real elmt_KKPase(unit = "") "MAPKK-Pase";
    Real elmt_KK_PP_norm_conc(unit = "");
    Real elmt_KK_PP_norm_amount(unit = "");
    Real elmt_KK_PP_norm(unit = "") "KK_PP_norm";
    Real elmt_rel_K_PP_max_conc(unit = "");
    Real elmt_rel_K_PP_max_amount(unit = "");
    Real elmt_rel_K_PP_max(unit = "") "relative maximal K_PP";
    Real elmt_KKK_P_norm_conc(unit = "");
    Real elmt_KKK_P_norm_amount(unit = "");
    Real elmt_KKK_P_norm(unit = "") "KKK_P_norm";
    Real elmt_PP_K_conc(unit = "");
    Real elmt_PP_K_amount(unit = "");
    Real elmt_PP_K(unit = "") "Erk2-PP";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_E2_conc(unit = "");
    Real elmt_E2_amount(unit = "");
    Real elmt_E2(unit = "") "MAPKKK inactivator";
    Real elmt_P_KKK_P_KK_conc(unit = "");
    Real elmt_P_KKK_P_KK_amount(unit = "");
    Real elmt_P_KKK_P_KK(unit = "") "P-Mos_P-Mek1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_E1_conc(unit = "");
    Real elmt_E1_amount(unit = "");
    Real elmt_E1(unit = "") "MAPKKK activator (Ras)";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_KKPase_P_KK_conc(unit = "");
    Real elmt_KKPase_P_KK_amount(unit = "");
    Real elmt_KKPase_P_KK(unit = "") "MAPKK-Pase_P-Mek1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_KPase_conc(unit = "");
    Real elmt_KPase_amount(unit = "");
    Real elmt_KPase(unit = "") "MAPK-Pase";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_E2_P_KKK_conc(unit = "");
    Real elmt_E2_P_KKK_amount(unit = "");
    Real elmt_E2_P_KKK(unit = "") "E2_Mos-P";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_P_KK_conc(unit = "");
    Real elmt_P_KK_amount(unit = "");
    Real elmt_P_KK(unit = "") "Mek1-P";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_K_conc(unit = "");
    Real elmt_K_amount(unit = "");
    Real elmt_K(unit = "") "Erk2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_E1_KKK_conc(unit = "");
    Real elmt_E1_KKK_amount(unit = "");
    Real elmt_E1_KKK(unit = "") "E1_Mos";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_PP_KK_K_conc(unit = "");
    Real elmt_PP_KK_K_amount(unit = "");
    Real elmt_PP_KK_K(unit = "") "PP-Mek1_Erk2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_KPase_PP_K_conc(unit = "");
    Real elmt_KPase_PP_K_amount(unit = "");
    Real elmt_KPase_PP_K(unit = "") "MAPK-Pase_PP-Erk2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_KK_conc(unit = "");
    Real elmt_KK_amount(unit = "");
    Real elmt_KK(unit = "") "Mek1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_P_KKK_KK_conc(unit = "");
    Real elmt_P_KKK_KK_amount(unit = "");
    Real elmt_P_KKK_KK(unit = "") "P-Mos_Mek1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_P_K_conc(unit = "");
    Real elmt_P_K_amount(unit = "");
    Real elmt_P_K(unit = "") "Erk2-P";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_PP_KK_P_K_conc(unit = "");
    Real elmt_PP_KK_P_K_amount(unit = "");
    Real elmt_PP_KK_P_K(unit = "") "PP-Mek1_P-Erk2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_P_KKK_conc(unit = "");
    Real elmt_P_KKK_amount(unit = "");
    Real elmt_P_KKK(unit = "") "Mos-P";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_KPase_P_K_conc(unit = "");
    Real elmt_KPase_P_K_amount(unit = "");
    Real elmt_KPase_P_K(unit = "") "MAPK-Pase_P-Erk2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_KKPase_PP_KK_conc(unit = "");
    Real elmt_KKPase_PP_KK_amount(unit = "");
    Real elmt_KKPase_PP_KK(unit = "") "MAPKK-Pase_PP-Mek1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_PP_KK_conc(unit = "");
    Real elmt_PP_KK_amount(unit = "");
    Real elmt_PP_KK(unit = "") "Mek1-PP";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_K_PP_norm_conc(unit = "");
    Real elmt_K_PP_norm_amount(unit = "");
    Real elmt_K_PP_norm(unit = "") "K_PP_norm";
    Real elmt_KKK_conc(unit = "");
    Real elmt_KKK_amount(unit = "");
    Real elmt_KKK(unit = "") "Mos";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_compartment = 4.0E-12;
        elmt_KKPase_conc = 3.0E-4;
        elmt_PP_K_conc = 0.0;
        elmt_E2_conc = 3.0E-4;
        elmt_P_KKK_P_KK_conc = 0.0;
        elmt_E1_conc = 3.0E-5;
        elmt_KKPase_P_KK_conc = 0.0;
        elmt_KPase_conc = 0.12;
        elmt_E2_P_KKK_conc = 0.0;
        elmt_P_KK_conc = 0.0;
        elmt_K_conc = 1.2;
        elmt_E1_KKK_conc = 0.0;
        elmt_PP_KK_K_conc = 0.0;
        elmt_KPase_PP_K_conc = 0.0;
        elmt_KK_conc = 1.2;
        elmt_P_KKK_KK_conc = 0.0;
        elmt_P_K_conc = 0.0;
        elmt_PP_KK_P_K_conc = 0.0;
        elmt_P_KKK_conc = 0.0;
        elmt_KPase_P_K_conc = 0.0;
        elmt_KKPase_PP_KK_conc = 0.0;
        elmt_PP_KK_conc = 0.0;
        elmt_KKK_conc = 0.003;


    equation
        assert(elmt_compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment) = 0;
        elmt_KKPase = elmt_KKPase_conc;
        elmt_KK_PP_norm = elmt_KK_PP_norm_conc;
        elmt_rel_K_PP_max = elmt_rel_K_PP_max_conc;
        elmt_KKK_P_norm = elmt_KKK_P_norm_conc;
        elmt_PP_K = elmt_PP_K_conc;
        elmt_E2 = elmt_E2_conc;
        elmt_P_KKK_P_KK = elmt_P_KKK_P_KK_conc;
        elmt_E1 = elmt_E1_conc;
        elmt_KKPase_P_KK = elmt_KKPase_P_KK_conc;
        elmt_KPase = elmt_KPase_conc;
        elmt_E2_P_KKK = elmt_E2_P_KKK_conc;
        elmt_P_KK = elmt_P_KK_conc;
        elmt_K = elmt_K_conc;
        elmt_E1_KKK = elmt_E1_KKK_conc;
        elmt_PP_KK_K = elmt_PP_KK_K_conc;
        elmt_KPase_PP_K = elmt_KPase_PP_K_conc;
        elmt_KK = elmt_KK_conc;
        elmt_P_KKK_KK = elmt_P_KKK_KK_conc;
        elmt_P_K = elmt_P_K_conc;
        elmt_PP_KK_P_K = elmt_PP_KK_P_K_conc;
        elmt_P_KKK = elmt_P_KKK_conc;
        elmt_KPase_P_K = elmt_KPase_P_K_conc;
        elmt_KKPase_PP_KK = elmt_KKPase_PP_KK_conc;
        elmt_PP_KK = elmt_PP_KK_conc;
        elmt_K_PP_norm = elmt_K_PP_norm_conc;
        elmt_KKK = elmt_KKK_conc;
        elmt_KK_PP_norm_amount = ((elmt_PP_KK + elmt_PP_KK_K + elmt_PP_KK_P_K + elmt_KKPase_PP_KK) / (elmt_PP_KK + elmt_P_KK + elmt_KK + elmt_PP_KK_K + elmt_PP_KK_P_K + elmt_P_KKK_KK + elmt_P_KKK_P_KK + elmt_KKPase_PP_KK + elmt_KKPase_P_KK)) * elmt_compartment;
        elmt_rel_K_PP_max_amount = (elmt_K_PP_norm / elmt_K_PP_norm_max) * elmt_compartment;
        elmt_KKK_P_norm_amount = ((elmt_P_KKK + elmt_P_KKK_KK + elmt_P_KKK_P_KK) / (elmt_KKK + elmt_P_KKK + elmt_P_KKK_KK + elmt_P_KKK_P_KK)) * elmt_compartment;
        elmt_K_PP_norm_amount = ((elmt_PP_K + elmt_KPase_PP_K) / (elmt_PP_K + elmt_P_K + elmt_K + elmt_PP_KK_K + elmt_PP_KK_P_K + elmt_KPase_PP_K + elmt_KPase_P_K)) * elmt_compartment;
        der(elmt_KKPase_amount) = ((elmt_r4b * elmt_product23) + (- (elmt_r4a * elmt_reactant19)) + (elmt_r6b * elmt_product35) + (- (elmt_r6a * elmt_reactant31)));
        der(elmt_K_amount) = ((- (elmt_r7a * elmt_reactant36)) + (elmt_r8b * elmt_product46));
        der(elmt_PP_K_amount) = ((- (elmt_r10a * elmt_reactant54)) + (elmt_r9b * elmt_product53));
        der(elmt_E1_KKK_amount) = ((- (elmt_r1b * elmt_reactant3)) + (elmt_r1a * elmt_product2));
        der(elmt_PP_KK_K_amount) = ((- (elmt_r7b * elmt_reactant39)) + (elmt_r7a * elmt_product38));
        der(elmt_KPase_PP_K_amount) = ((- (elmt_r10b * elmt_reactant57)) + (elmt_r10a * elmt_product56));
        der(elmt_KK_amount) = ((- (elmt_r3a * elmt_reactant12)) + (elmt_r4b * elmt_product22));
        der(elmt_E2_amount) = ((elmt_r2b * elmt_product10) + (- (elmt_r2a * elmt_reactant7)));
        der(elmt_P_KKK_KK_amount) = ((elmt_r3a * elmt_product14) + (- (elmt_r3b * elmt_reactant15)));
        der(elmt_P_KKK_P_KK_amount) = ((- (elmt_r5b * elmt_reactant27)) + (elmt_r5a * elmt_product26));
        der(elmt_E1_amount) = ((elmt_r1b * elmt_product4) + (- (elmt_r1a * elmt_reactant1)));
        der(elmt_KKPase_P_KK_amount) = ((- (elmt_r4b * elmt_reactant21)) + (elmt_r4a * elmt_product20));
        der(elmt_P_K_amount) = ((elmt_r10b * elmt_product58) + (elmt_r7b * elmt_product40) + (- (elmt_r8a * elmt_reactant42)) + (- (elmt_r9a * elmt_reactant48)));
        der(elmt_PP_KK_P_K_amount) = ((- (elmt_r9b * elmt_reactant51)) + (elmt_r9a * elmt_product50));
        der(elmt_P_KKK_amount) = ((- (elmt_r3a * elmt_reactant13)) + (elmt_r5b * elmt_product29) + (- (elmt_r5a * elmt_reactant25)) + (elmt_r1b * elmt_product5) + (- (elmt_r2a * elmt_reactant6)) + (elmt_r3b * elmt_product17));
        der(elmt_KPase_amount) = ((elmt_r10b * elmt_product59) + (- (elmt_r10a * elmt_reactant55)) + (elmt_r8b * elmt_product47) + (- (elmt_r8a * elmt_reactant43)));
        der(elmt_E2_P_KKK_amount) = ((- (elmt_r2b * elmt_reactant9)) + (elmt_r2a * elmt_product8));
        der(elmt_KPase_P_K_amount) = ((- (elmt_r8b * elmt_reactant45)) + (elmt_r8a * elmt_product44));
        der(elmt_P_KK_amount) = ((- (elmt_r4a * elmt_reactant18)) + (- (elmt_r5a * elmt_reactant24)) + (elmt_r6b * elmt_product34) + (elmt_r3b * elmt_product16));
        der(elmt_KKPase_PP_KK_amount) = ((- (elmt_r6b * elmt_reactant33)) + (elmt_r6a * elmt_product32));
        der(elmt_PP_KK_amount) = ((elmt_r5b * elmt_product28) + (- (elmt_r6a * elmt_reactant30)) + (elmt_r7b * elmt_product41) + (- (elmt_r7a * elmt_reactant37)) + (elmt_r9b * elmt_product52) + (- (elmt_r9a * elmt_reactant49)));
        der(elmt_KKK_amount) = ((- (elmt_r1a * elmt_reactant0)) + (elmt_r2b * elmt_product11));

    algorithm
        elmt_KKPase_conc := elmt_KKPase_amount / elmt_compartment;
        elmt_KK_PP_norm_conc := elmt_KK_PP_norm_amount / elmt_compartment;
        elmt_rel_K_PP_max_conc := elmt_rel_K_PP_max_amount / elmt_compartment;
        elmt_KKK_P_norm_conc := elmt_KKK_P_norm_amount / elmt_compartment;
        elmt_PP_K_conc := elmt_PP_K_amount / elmt_compartment;
        elmt_E2_conc := elmt_E2_amount / elmt_compartment;
        elmt_P_KKK_P_KK_conc := elmt_P_KKK_P_KK_amount / elmt_compartment;
        elmt_E1_conc := elmt_E1_amount / elmt_compartment;
        elmt_KKPase_P_KK_conc := elmt_KKPase_P_KK_amount / elmt_compartment;
        elmt_KPase_conc := elmt_KPase_amount / elmt_compartment;
        elmt_E2_P_KKK_conc := elmt_E2_P_KKK_amount / elmt_compartment;
        elmt_P_KK_conc := elmt_P_KK_amount / elmt_compartment;
        elmt_K_conc := elmt_K_amount / elmt_compartment;
        elmt_E1_KKK_conc := elmt_E1_KKK_amount / elmt_compartment;
        elmt_PP_KK_K_conc := elmt_PP_KK_K_amount / elmt_compartment;
        elmt_KPase_PP_K_conc := elmt_KPase_PP_K_amount / elmt_compartment;
        elmt_KK_conc := elmt_KK_amount / elmt_compartment;
        elmt_P_KKK_KK_conc := elmt_P_KKK_KK_amount / elmt_compartment;
        elmt_P_K_conc := elmt_P_K_amount / elmt_compartment;
        elmt_PP_KK_P_K_conc := elmt_PP_KK_P_K_amount / elmt_compartment;
        elmt_P_KKK_conc := elmt_P_KKK_amount / elmt_compartment;
        elmt_KPase_P_K_conc := elmt_KPase_P_K_amount / elmt_compartment;
        elmt_KKPase_PP_KK_conc := elmt_KKPase_PP_KK_amount / elmt_compartment;
        elmt_PP_KK_conc := elmt_PP_KK_amount / elmt_compartment;
        elmt_K_PP_norm_conc := elmt_K_PP_norm_amount / elmt_compartment;
        elmt_KKK_conc := elmt_KKK_amount / elmt_compartment;
end Class_elmt_compartment;
