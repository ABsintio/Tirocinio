within BIOMD172;
class Class_elmt_cell

    input Real elmt_reactant40;
    input Real elmt_HK;
    input Real elmt_PGM;
    input Real elmt_reactant42;
    input Real elmt_product34;
    input Real elmt_PGK;
    input Real elmt_product32;
    input Real elmt_PGI;
    input Real elmt_product31;
    input Real elmt_reactant49;
    input Real elmt_reactant45;
    input Real elmt_reactant46;
    input Real elmt_ENO;
    input Real elmt_HXT;
    input Real elmt_PDC;
    input Real elmt_reactant9;
    input Real elmt_Glycogen_Branch;
    input Real elmt_product26;
    input Real elmt_TPI;
    input Real elmt_product24;
    input Real elmt_product28;
    input Real elmt_reactant50;
    input Real elmt_product41;
    input Real elmt_reactant53;
    input Real elmt_ATPase;
    input Real elmt_product44;
    input Real elmt_product43;
    input Real elmt_reactant58;
    input Real elmt_reactant15;
    input Real elmt_Trehalose_Branch;
    input Real elmt_reactant17;
    input Real elmt_reactant54;
    input Real elmt_AK;
    input Real elmt_reactant12;
    input Real elmt_reactant57;
    input Real elmt_PYK;
    input Real elmt_product38;
    input Real elmt_G3PDH;
    input Real elmt_product39;
    input Real elmt_product51;
    input Real elmt_Succinate_Branch;
    input Real elmt_product11;
    input Real elmt_product55;
    input Real elmt_product10;
    input Real elmt_reactant25;
    input Real elmt_reactant27;
    input Real elmt_reactant21;
    input Real elmt_reactant22;
    input Real elmt_ALD;
    input Real elmt_ADH;
    input Real elmt_reactant18;
    input Real elmt_product47;
    input Real elmt_reactant2;
    input Real elmt_PFK;
    input Real elmt_product7;
    input Real elmt_reactant30;
    input Real elmt_reactant3;
    input Real elmt_product23;
    input Real elmt_reactant6;
    input Real elmt_GAPDH;
    input Real elmt_reactant8;
    input Real elmt_product20;
    input Real elmt_reactant36;
    input Real elmt_product1;
    input Real elmt_product5;
    input Real elmt_product4;
    input Real elmt_reactant33;
    input Real elmt_reactant29;
    input Real elmt_product16;
    input Real elmt_product59;
    input Real elmt_product14;
    input Real elmt_product13;
    input Real elmt_product19;

    Real elmt_cell(unit = "") "cytosol";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_GAP_conc(unit = "");
    Real elmt_GAP_amount(unit = "");
    Real elmt_GAP(unit = "") "Gra3P";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_Succinate_conc(unit = "");
    Real elmt_Succinate_amount(unit = "");
    Real elmt_Succinate(unit = "") "succinate";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_Glycogen_conc(unit = "");
    Real elmt_Glycogen_amount(unit = "");
    Real elmt_Glycogen(unit = "") "glycogen";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_NAD_conc(unit = "");
    Real elmt_NAD_amount(unit = "");
    Real elmt_NAD(unit = "") "NAD";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_GLCi_conc(unit = "");
    Real elmt_GLCi_amount(unit = "");
    Real elmt_GLCi(unit = "") "Glc(int)";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_F6P_conc(unit = "");
    Real elmt_F6P_amount(unit = "");
    Real elmt_F6P(unit = "") "Fru6-P";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_ATP_conc(unit = "");
    Real elmt_ATP_amount(unit = "");
    Real elmt_ATP(unit = "") "ATP";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_EtOH_conc(unit = "");
    Real elmt_EtOH_amount(unit = "");
    Real elmt_EtOH(unit = "") "ethanol";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_Glycerol_conc(unit = "");
    Real elmt_Glycerol_amount(unit = "");
    Real elmt_Glycerol(unit = "") "glycerol";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_PEP_conc(unit = "");
    Real elmt_PEP_amount(unit = "");
    Real elmt_PEP(unit = "") "phosphoenolpyruvate";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_BPG_conc(unit = "");
    Real elmt_BPG_amount(unit = "");
    Real elmt_BPG(unit = "") "Gri2,3P2";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_AcAld_conc(unit = "");
    Real elmt_AcAld_amount(unit = "");
    Real elmt_AcAld(unit = "") "acetaldehyde";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_F16bP_conc(unit = "");
    Real elmt_F16bP_amount(unit = "");
    Real elmt_F16bP(unit = "") "Fru1,6-P2";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_P2G_conc(unit = "");
    Real elmt_P2G_amount(unit = "");
    Real elmt_P2G(unit = "") "Gri2P";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_CO2_conc(unit = "");
    Real elmt_CO2_amount(unit = "");
    Real elmt_CO2(unit = "") "CO2";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_AMP_conc(unit = "");
    Real elmt_AMP_amount(unit = "");
    Real elmt_AMP(unit = "") "AMP";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_P3G_conc(unit = "");
    Real elmt_P3G_amount(unit = "");
    Real elmt_P3G(unit = "") "Gri3P";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_G6P_conc(unit = "");
    Real elmt_G6P_amount(unit = "");
    Real elmt_G6P(unit = "") "Glu6P";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_DHAP_conc(unit = "");
    Real elmt_DHAP_amount(unit = "");
    Real elmt_DHAP(unit = "") "glycerone phosphate";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_ADP_conc(unit = "");
    Real elmt_ADP_amount(unit = "");
    Real elmt_ADP(unit = "") "ADP";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_Trehalose_conc(unit = "");
    Real elmt_Trehalose_amount(unit = "");
    Real elmt_Trehalose(unit = "") "trehalose";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_F26bP_conc(unit = "");
    Real elmt_F26bP_amount(unit = "");
    Real elmt_F26bP(unit = "") "Fru2,6-P2";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_PYR_conc(unit = "");
    Real elmt_PYR_amount(unit = "");
    Real elmt_PYR(unit = "") "pyruvate";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_NADH_conc(unit = "");
    Real elmt_NADH_amount(unit = "");
    Real elmt_NADH(unit = "") "NADH";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    initial equation
        elmt_cell = 1.0;
        elmt_GAP_conc = 0.0451809175780963;
        elmt_Succinate_conc = 0.0;
        elmt_Glycogen_conc = 0.0;
        elmt_NAD_conc = 1.50329030201531;
        elmt_GLCi_conc = 0.097652231064563;
        elmt_F6P_conc = 0.624976405532373;
        elmt_ATP_conc = 2.52512746499271;
        elmt_EtOH_conc = 50.0;
        elmt_Glycerol_conc = 0.15;
        elmt_PEP_conc = 0.0632352144936527;
        elmt_BPG_conc = 7.36873499865602E-4;
        elmt_AcAld_conc = 0.178140579850657;
        elmt_F16bP_conc = 6.22132076069411;
        elmt_P2G_conc = 0.127695817386632;
        elmt_CO2_conc = 1.0;
        elmt_AMP_conc = 0.292884853320091;
        elmt_P3G_conc = 0.885688538360659;
        elmt_G6P_conc = 2.67504014044787;
        elmt_DHAP_conc = 1.00415254899644;
        elmt_ADP_conc = 1.28198768168719;
        elmt_Trehalose_conc = 0.0;
        elmt_F26bP_conc = 0.02;
        elmt_PYR_conc = 1.81531251192736;
        elmt_NADH_conc = 0.0867096979846952;


    equation
        assert(elmt_cell >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cell) = 0;
        elmt_GAP = elmt_GAP_conc;
        elmt_Succinate = elmt_Succinate_conc;
        elmt_Glycogen = elmt_Glycogen_conc;
        elmt_NAD = elmt_NAD_conc;
        elmt_GLCi = elmt_GLCi_conc;
        elmt_F6P = elmt_F6P_conc;
        elmt_ATP = elmt_ATP_conc;
        elmt_EtOH = elmt_EtOH_conc;
        elmt_Glycerol = elmt_Glycerol_conc;
        elmt_PEP = elmt_PEP_conc;
        elmt_BPG = elmt_BPG_conc;
        elmt_AcAld = elmt_AcAld_conc;
        elmt_F16bP = elmt_F16bP_conc;
        elmt_P2G = elmt_P2G_conc;
        elmt_CO2 = elmt_CO2_conc;
        elmt_AMP = elmt_AMP_conc;
        elmt_P3G = elmt_P3G_conc;
        elmt_G6P = elmt_G6P_conc;
        elmt_DHAP = elmt_DHAP_conc;
        elmt_ADP = elmt_ADP_conc;
        elmt_Trehalose = elmt_Trehalose_conc;
        elmt_F26bP = elmt_F26bP_conc;
        elmt_PYR = elmt_PYR_conc;
        elmt_NADH = elmt_NADH_conc;
        der(elmt_Succinate_amount) = 0;
        der(elmt_Glycogen_amount) = 0;
        der(elmt_EtOH_amount) = 0;
        der(elmt_Glycerol_amount) = 0;
        der(elmt_CO2_amount) = 0;
        der(elmt_Trehalose_amount) = 0;
        der(elmt_F26bP_amount) = 0;
        der(elmt_GAP_amount) = ((- (elmt_GAPDH * elmt_reactant17)) + (elmt_ALD * elmt_product14) + (elmt_TPI * elmt_product16));
        der(elmt_NAD_amount) = ((- (elmt_Succinate_Branch * elmt_reactant57)) + (- (elmt_GAPDH * elmt_reactant18)) + (- (elmt_ADH * elmt_reactant36)) + (elmt_G3PDH * elmt_product47));
        der(elmt_GLCi_amount) = ((- (elmt_HK * elmt_reactant2)) + (elmt_HXT * elmt_product1));
        der(elmt_F6P_amount) = ((- (elmt_PFK * elmt_reactant9)) + (elmt_PGI * elmt_product7));
        der(elmt_ATP_amount) = ((- (elmt_HK * elmt_reactant3)) + (- (elmt_PFK * elmt_reactant8)) + (elmt_PGK * elmt_product23) + (- (elmt_ATPase * elmt_reactant40)) + (- (elmt_Trehalose_Branch * elmt_reactant53)) + (elmt_AK * elmt_product43) + (elmt_PYK * elmt_product31) + (- (elmt_Glycogen_Branch * elmt_reactant49)));
        der(elmt_PEP_amount) = ((elmt_ENO * elmt_product28) + (- (elmt_PYK * elmt_reactant30)));
        der(elmt_BPG_amount) = ((- (elmt_PGK * elmt_reactant22)) + (elmt_GAPDH * elmt_product19));
        der(elmt_AcAld_amount) = ((- (elmt_Succinate_Branch * elmt_reactant58)) + (elmt_ADH * elmt_product39) + (elmt_PDC * elmt_product34));
        der(elmt_F16bP_amount) = ((elmt_PFK * elmt_product11) + (- (elmt_ALD * elmt_reactant12)));
        der(elmt_P2G_amount) = ((elmt_PGM * elmt_product26) + (- (elmt_ENO * elmt_reactant27)));
        der(elmt_AMP_amount) = (elmt_AK * elmt_product44);
        der(elmt_P3G_amount) = ((- (elmt_PGM * elmt_reactant25)) + (elmt_PGK * elmt_product24));
        der(elmt_G6P_amount) = ((elmt_HK * elmt_product4) + (- (elmt_PGI * elmt_reactant6)) + (- (elmt_Trehalose_Branch * elmt_reactant54)) + (- (elmt_Glycogen_Branch * elmt_reactant50)));
        der(elmt_DHAP_amount) = ((elmt_ALD * elmt_product13) + (- (elmt_TPI * elmt_reactant15)) + (- (elmt_G3PDH * elmt_reactant45)));
        der(elmt_ADP_amount) = ((elmt_HK * elmt_product5) + (elmt_PFK * elmt_product10) + (- (elmt_PGK * elmt_reactant21)) + (elmt_ATPase * elmt_product41) + (elmt_Trehalose_Branch * elmt_product55) + (- (elmt_AK * elmt_reactant42)) + (- (elmt_PYK * elmt_reactant29)) + (elmt_Glycogen_Branch * elmt_product51));
        der(elmt_PYR_amount) = ((elmt_PYK * elmt_product32) + (- (elmt_PDC * elmt_reactant33)));
        der(elmt_NADH_amount) = ((elmt_Succinate_Branch * elmt_product59) + (elmt_GAPDH * elmt_product20) + (elmt_ADH * elmt_product38) + (- (elmt_G3PDH * elmt_reactant46)));

    algorithm
        elmt_GAP_conc := elmt_GAP_amount / elmt_cell;
        elmt_Succinate_conc := elmt_Succinate_amount / elmt_cell;
        elmt_Glycogen_conc := elmt_Glycogen_amount / elmt_cell;
        elmt_NAD_conc := elmt_NAD_amount / elmt_cell;
        elmt_GLCi_conc := elmt_GLCi_amount / elmt_cell;
        elmt_F6P_conc := elmt_F6P_amount / elmt_cell;
        elmt_ATP_conc := elmt_ATP_amount / elmt_cell;
        elmt_EtOH_conc := elmt_EtOH_amount / elmt_cell;
        elmt_Glycerol_conc := elmt_Glycerol_amount / elmt_cell;
        elmt_PEP_conc := elmt_PEP_amount / elmt_cell;
        elmt_BPG_conc := elmt_BPG_amount / elmt_cell;
        elmt_AcAld_conc := elmt_AcAld_amount / elmt_cell;
        elmt_F16bP_conc := elmt_F16bP_amount / elmt_cell;
        elmt_P2G_conc := elmt_P2G_amount / elmt_cell;
        elmt_CO2_conc := elmt_CO2_amount / elmt_cell;
        elmt_AMP_conc := elmt_AMP_amount / elmt_cell;
        elmt_P3G_conc := elmt_P3G_amount / elmt_cell;
        elmt_G6P_conc := elmt_G6P_amount / elmt_cell;
        elmt_DHAP_conc := elmt_DHAP_amount / elmt_cell;
        elmt_ADP_conc := elmt_ADP_amount / elmt_cell;
        elmt_Trehalose_conc := elmt_Trehalose_amount / elmt_cell;
        elmt_F26bP_conc := elmt_F26bP_amount / elmt_cell;
        elmt_PYR_conc := elmt_PYR_amount / elmt_cell;
        elmt_NADH_conc := elmt_NADH_amount / elmt_cell;
end Class_elmt_cell;
