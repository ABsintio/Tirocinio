within BIOMD162;
class Class_elmt_Cytosol

    input Real elmt_reactant40;
    input Real elmt_reactant41;
    input Real elmt_reactant42;
    input Real elmt_CGbinding;
    input Real elmt_CG_d;
    input Real elmt_reactant47;
    input Real elmt_reactant48;
    input Real elmt_PABCa_deg;
    input Real elmt_reactant49;
    input Real elmt_product70;
    input Real elmt_reactant43;
    input Real elmt_reactant46;
    input Real elmt_IP3R_fluxD;
    input Real elmt_ER_leak_fluxD;
    input Real elmt_D28kB_d;
    input Real elmt_D28k_d;
    input Real elmt_reactant50;
    input Real elmt_reactant51;
    input Real elmt_reactant52;
    input Real elmt_reactant59;
    input Real elmt_PABCa_d;
    input Real elmt_CGB_d;
    input Real elmt_reactant54;
    input Real elmt_reactant55;
    input Real elmt_reactant57;
    input Real elmt_ER_leak_flux;
    input Real elmt_PABMg_deg;
    input Real elmt_PA_Ca;
    input Real elmt_Ca_deg;
    input Real elmt_reactant20;
    input Real elmt_product12;
    input Real elmt_CG_deg;
    input Real elmt_reactant26;
    input Real elmt_reactant27;
    input Real elmt_reactant21;
    input Real elmt_reactant23;
    input Real elmt_reactant24;
    input Real elmt_D28k_high_d;
    input Real elmt_PABMg_d;
    input Real elmt_reactant18;
    input Real elmt_reactant19;
    input Real elmt_CGB_deg;
    input Real elmt_IP3R_flux;
    input Real elmt_D28kBDbinding;
    input Real elmt_PA_MgD;
    input Real elmt_CD28k_highDbinding;
    input Real elmt_D28kB_high_d;
    input Real elmt_pulses;
    input Real elmt_reactant30;
    input Real elmt_reactant31;
    input Real elmt_CD28k_high;
    input Real elmt_reactant37;
    input Real elmt_reactant38;
    input Real elmt_D28k_high_deg;
    input Real elmt_product5;
    input Real elmt_SERCA_fluxD;
    input Real elmt_reactant33;
    input Real elmt_D28k_deg;
    input Real elmt_reactant34;
    input Real elmt_reactant35;
    input Real elmt_product2;
    input Real elmt_reactant29;
    input Real elmt_product15;
    input Real elmt_PA_Mg;
    input Real elmt_IP3_degr;
    input Real elmt_SERCA_flux;
    input Real elmt_IP3deg;
    input Real elmt_D28kB_high_deg;
    input Real elmt_flux0;
    input Real elmt_flux1;
    input Real elmt_reactant9;
    input Real elmt_product25;
    input Real elmt_PA_deg;
    input Real elmt_product28;
    input Real elmt_D28kB_deg;
    input Real elmt_product45;
    input Real elmt_Ca_d;
    input Real elmt_PA_Dbinding;
    input Real elmt_reactant14;
    input Real elmt_reactant16;
    input Real elmt_CaD28k_med;
    input Real elmt_reactant17;
    input Real elmt_reactant11;
    input Real elmt_reactant13;
    input Real elmt_IP3_d;
    input Real elmt_product36;
    input Real elmt_product39;
    input Real elmt_reactant61;
    input Real elmt_reactant63;
    input Real elmt_product56;
    input Real elmt_product53;
    input Real elmt_reactant67;
    input Real elmt_IP3_degr1;
    input Real elmt_CG_Dbinding;
    input Real elmt_reactant1;
    input Real elmt_reactant4;
    input Real elmt_reactant3;
    input Real elmt_reactant6;
    input Real elmt_product66;
    input Real elmt_reactant8;
    input Real elmt_reactant71;
    input Real elmt_reactant7;
    input Real elmt_reactant0;
    input Real elmt_PA_d;

    Real elmt_Cytosol(unit = "") "Cytosol";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Mg_Cytosol_conc(unit = "");
    Real elmt_Mg_Cytosol_amount(unit = "");
    Real elmt_Mg_Cytosol(unit = "") "";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <Compound Name=\"Mg\"/>
        </VCellInfo>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_PABMg_D_Cytosol_conc(unit = "");
    Real elmt_PABMg_D_Cytosol_amount(unit = "");
    Real elmt_PABMg_D_Cytosol(unit = "") "";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <Compound Name=\"PABMg_D\"/>
        </VCellInfo>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_D28k_high_Cytosol_conc(unit = "");
    Real elmt_D28k_high_Cytosol_amount(unit = "");
    Real elmt_D28k_high_Cytosol(unit = "") "";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <Compound Name=\"D28k_high\"/>
        </VCellInfo>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Ca_D_Cytosol_conc(unit = "");
    Real elmt_Ca_D_Cytosol_amount(unit = "");
    Real elmt_Ca_D_Cytosol(unit = "") "";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <Compound Name=\"Ca_D\"/>
        </VCellInfo>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_D28kB_high_D_Cytosol_conc(unit = "");
    Real elmt_D28kB_high_D_Cytosol_amount(unit = "");
    Real elmt_D28kB_high_D_Cytosol(unit = "") "";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <Compound Name=\"D28kB_high_D\"/>
        </VCellInfo>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_PABCa_Cytosol_conc(unit = "");
    Real elmt_PABCa_Cytosol_amount(unit = "");
    Real elmt_PABCa_Cytosol(unit = "") "";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <Compound Name=\"PABCa\"/>
        </VCellInfo>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_D28kB_high_Cytosol_conc(unit = "");
    Real elmt_D28kB_high_Cytosol_amount(unit = "");
    Real elmt_D28kB_high_Cytosol(unit = "") "";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <Compound Name=\"D28kB_high\"/>
        </VCellInfo>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_PABMg_Cytosol_conc(unit = "");
    Real elmt_PABMg_Cytosol_amount(unit = "");
    Real elmt_PABMg_Cytosol(unit = "") "";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <Compound Name=\"PABMg\"/>
        </VCellInfo>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_D28kB_D_Cytosol_conc(unit = "");
    Real elmt_D28kB_D_Cytosol_amount(unit = "");
    Real elmt_D28kB_D_Cytosol(unit = "") "";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <Compound Name=\"D28kB_D\"/>
        </VCellInfo>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_CG_Cytosol_conc(unit = "");
    Real elmt_CG_Cytosol_amount(unit = "");
    Real elmt_CG_Cytosol(unit = "") "";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <Compound Name=\"CG\"/>
        </VCellInfo>
                              </annotation>"));
    Real elmt_Mg_D_Cytosol_conc(unit = "");
    Real elmt_Mg_D_Cytosol_amount(unit = "");
    Real elmt_Mg_D_Cytosol(unit = "") "";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <Compound Name=\"Mg_D\"/>
        </VCellInfo>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_IP3_D_Cytosol_conc(unit = "");
    Real elmt_IP3_D_Cytosol_amount(unit = "");
    Real elmt_IP3_D_Cytosol(unit = "") "";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <Compound Name=\"IP3_D\"/>
        </VCellInfo>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_CG_D_Cytosol_conc(unit = "");
    Real elmt_CG_D_Cytosol_amount(unit = "");
    Real elmt_CG_D_Cytosol(unit = "") "";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <Compound Name=\"CG_D\"/>
        </VCellInfo>
                              </annotation>"));
    Real elmt_CGB_D_Cytosol_conc(unit = "");
    Real elmt_CGB_D_Cytosol_amount(unit = "");
    Real elmt_CGB_D_Cytosol(unit = "") "";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <Compound Name=\"CGB_D\"/>
        </VCellInfo>
                              </annotation>"));
    Real elmt_PABCa_D_Cytosol_conc(unit = "");
    Real elmt_PABCa_D_Cytosol_amount(unit = "");
    Real elmt_PABCa_D_Cytosol(unit = "") "";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <Compound Name=\"PABCa_D\"/>
        </VCellInfo>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_D28k_Cytosol_conc(unit = "");
    Real elmt_D28k_Cytosol_amount(unit = "");
    Real elmt_D28k_Cytosol(unit = "") "";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <Compound Name=\"D28k\"/>
        </VCellInfo>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_D28k_D_Cytosol_conc(unit = "");
    Real elmt_D28k_D_Cytosol_amount(unit = "");
    Real elmt_D28k_D_Cytosol(unit = "") "";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <Compound Name=\"D28k_D\"/>
        </VCellInfo>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_PA_D_Cytosol_conc(unit = "");
    Real elmt_PA_D_Cytosol_amount(unit = "");
    Real elmt_PA_D_Cytosol(unit = "") "";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <Compound Name=\"PA_D\"/>
        </VCellInfo>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_CGB_Cytosol_conc(unit = "");
    Real elmt_CGB_Cytosol_amount(unit = "");
    Real elmt_CGB_Cytosol(unit = "") "";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <Compound Name=\"CGB\"/>
        </VCellInfo>
                              </annotation>"));
    Real elmt_D28k_high_D_Cytosol_conc(unit = "");
    Real elmt_D28k_high_D_Cytosol_amount(unit = "");
    Real elmt_D28k_high_D_Cytosol(unit = "") "";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <Compound Name=\"D28k_high_D\"/>
        </VCellInfo>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_PA_Cytosol_conc(unit = "");
    Real elmt_PA_Cytosol_amount(unit = "");
    Real elmt_PA_Cytosol(unit = "") "";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <Compound Name=\"PA\"/>
        </VCellInfo>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_IP3_Cytosol_conc(unit = "");
    Real elmt_IP3_Cytosol_amount(unit = "");
    Real elmt_IP3_Cytosol(unit = "") "";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <Compound Name=\"IP3\"/>
        </VCellInfo>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Ca_Cytosol_conc(unit = "");
    Real elmt_Ca_Cytosol_amount(unit = "");
    Real elmt_Ca_Cytosol(unit = "") "";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <Compound Name=\"Ca\"/>
        </VCellInfo>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_D28kB_Cytosol_conc(unit = "");
    Real elmt_D28kB_Cytosol_amount(unit = "");
    Real elmt_D28kB_Cytosol(unit = "") "";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <Compound Name=\"D28kB\"/>
        </VCellInfo>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_Cytosol = 14169.5000044198;
        elmt_Mg_Cytosol_conc = 355180.0;
        elmt_PABMg_D_Cytosol_conc = 36404.27644;
        elmt_D28k_high_Cytosol_conc = 43952.64608;
        elmt_Ca_D_Cytosol_conc = 27.09;
        elmt_D28kB_high_D_Cytosol_conc = 4207.35392;
        elmt_PABCa_Cytosol_conc = 9827.53562;
        elmt_D28kB_high_Cytosol_conc = 4207.35392;
        elmt_PABMg_Cytosol_conc = 36404.27644;
        elmt_D28kB_D_Cytosol_conc = 2510.04502;
        elmt_CG_Cytosol_conc = 84566.35334;
        elmt_Mg_D_Cytosol_conc = 355180.0;
        elmt_IP3_D_Cytosol_conc = 96.32;
        elmt_CG_D_Cytosol_conc = 84566.35334;
        elmt_CGB_D_Cytosol_conc = 11753.6286;
        elmt_PABCa_D_Cytosol_conc = 9827.53562;
        elmt_D28k_Cytosol_conc = 45649.95498;
        elmt_D28k_D_Cytosol_conc = 45649.95498;
        elmt_PA_D_Cytosol_conc = 1928.19396;
        elmt_CGB_Cytosol_conc = 11753.6286;
        elmt_D28k_high_D_Cytosol_conc = 43952.64608;
        elmt_PA_Cytosol_conc = 1928.19396;
        elmt_IP3_Cytosol_conc = 96.32;
        elmt_Ca_Cytosol_conc = 27.09;
        elmt_D28kB_Cytosol_conc = 2510.04502;


    equation
        assert(elmt_Cytosol >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Cytosol) = 0;
        elmt_Mg_Cytosol = elmt_Mg_Cytosol_conc;
        elmt_PABMg_D_Cytosol = elmt_PABMg_D_Cytosol_conc;
        elmt_D28k_high_Cytosol = elmt_D28k_high_Cytosol_conc;
        elmt_Ca_D_Cytosol = elmt_Ca_D_Cytosol_conc;
        elmt_D28kB_high_D_Cytosol = elmt_D28kB_high_D_Cytosol_conc;
        elmt_PABCa_Cytosol = elmt_PABCa_Cytosol_conc;
        elmt_D28kB_high_Cytosol = elmt_D28kB_high_Cytosol_conc;
        elmt_PABMg_Cytosol = elmt_PABMg_Cytosol_conc;
        elmt_D28kB_D_Cytosol = elmt_D28kB_D_Cytosol_conc;
        elmt_CG_Cytosol = elmt_CG_Cytosol_conc;
        elmt_Mg_D_Cytosol = elmt_Mg_D_Cytosol_conc;
        elmt_IP3_D_Cytosol = elmt_IP3_D_Cytosol_conc;
        elmt_CG_D_Cytosol = elmt_CG_D_Cytosol_conc;
        elmt_CGB_D_Cytosol = elmt_CGB_D_Cytosol_conc;
        elmt_PABCa_D_Cytosol = elmt_PABCa_D_Cytosol_conc;
        elmt_D28k_Cytosol = elmt_D28k_Cytosol_conc;
        elmt_D28k_D_Cytosol = elmt_D28k_D_Cytosol_conc;
        elmt_PA_D_Cytosol = elmt_PA_D_Cytosol_conc;
        elmt_CGB_Cytosol = elmt_CGB_Cytosol_conc;
        elmt_D28k_high_D_Cytosol = elmt_D28k_high_D_Cytosol_conc;
        elmt_PA_Cytosol = elmt_PA_Cytosol_conc;
        elmt_IP3_Cytosol = elmt_IP3_Cytosol_conc;
        elmt_Ca_Cytosol = elmt_Ca_Cytosol_conc;
        elmt_D28kB_Cytosol = elmt_D28kB_Cytosol_conc;
        der(elmt_Mg_Cytosol_amount) = 0;
        der(elmt_Mg_D_Cytosol_amount) = 0;
        der(elmt_PABMg_D_Cytosol_amount) = ((elmt_PA_MgD * elmt_product12) + (- (elmt_PABMg_deg * elmt_reactant16)));
        der(elmt_D28k_high_Cytosol_amount) = ((- (elmt_D28k_high_d * elmt_reactant31)) + (- (elmt_CD28k_high * elmt_reactant35)));
        der(elmt_Ca_D_Cytosol_amount) = ((elmt_flux1 * elmt_product70) + (- (elmt_D28kBDbinding * elmt_reactant38)) + (- (elmt_IP3R_fluxD * elmt_reactant61)) + (- (elmt_CD28k_highDbinding * elmt_reactant0)) + (- (elmt_ER_leak_fluxD * elmt_reactant71)) + (- (elmt_CG_Dbinding * elmt_reactant51)) + (- (elmt_PA_Dbinding * elmt_reactant4)) + (- (elmt_SERCA_fluxD * elmt_reactant59)) + (- (elmt_Ca_deg * elmt_reactant55)));
        der(elmt_D28kB_high_D_Cytosol_amount) = ((- (elmt_D28kB_high_deg * elmt_reactant19)) + (elmt_CD28k_highDbinding * elmt_product2));
        der(elmt_PABCa_Cytosol_amount) = ((- (elmt_PABCa_d * elmt_reactant40)) + (elmt_PA_Ca * elmt_product15));
        der(elmt_D28kB_high_Cytosol_amount) = ((- (elmt_D28kB_high_d * elmt_reactant48)) + (elmt_CD28k_high * elmt_product36));
        der(elmt_PABMg_Cytosol_amount) = ((- (elmt_PABMg_d * elmt_reactant33)) + (elmt_PA_Mg * elmt_product45));
        der(elmt_D28kB_D_Cytosol_amount) = ((elmt_D28kBDbinding * elmt_product39) + (- (elmt_D28kB_deg * elmt_reactant8)));
        der(elmt_CG_Cytosol_amount) = ((- (elmt_CGbinding * elmt_reactant24)) + (- (elmt_CG_d * elmt_reactant20)));
        der(elmt_IP3_D_Cytosol_amount) = ((- (elmt_IP3deg * elmt_reactant7)) + (- (elmt_IP3_degr1 * elmt_reactant54)));
        der(elmt_CG_D_Cytosol_amount) = ((- (elmt_CG_deg * elmt_reactant6)) + (- (elmt_CG_Dbinding * elmt_reactant52)));
        der(elmt_CGB_D_Cytosol_amount) = ((- (elmt_CGB_deg * elmt_reactant42)) + (elmt_CG_Dbinding * elmt_product53));
        der(elmt_PABCa_D_Cytosol_amount) = ((- (elmt_PABCa_deg * elmt_reactant29)) + (elmt_PA_Dbinding * elmt_product5));
        der(elmt_D28k_Cytosol_amount) = ((- (elmt_D28k_d * elmt_reactant49)) + (- (elmt_CaD28k_med * elmt_reactant26)));
        der(elmt_D28k_D_Cytosol_amount) = ((- (elmt_D28kBDbinding * elmt_reactant37)) + (- (elmt_D28k_deg * elmt_reactant9)));
        der(elmt_PA_D_Cytosol_amount) = ((- (elmt_PA_MgD * elmt_reactant11)) + (- (elmt_PA_deg * elmt_reactant46)) + (- (elmt_PA_Dbinding * elmt_reactant3)));
        der(elmt_CGB_Cytosol_amount) = ((elmt_CGbinding * elmt_product25) + (- (elmt_CGB_d * elmt_reactant50)));
        der(elmt_D28k_high_D_Cytosol_amount) = ((- (elmt_CD28k_highDbinding * elmt_reactant1)) + (- (elmt_D28k_high_deg * elmt_reactant17)));
        der(elmt_PA_Cytosol_amount) = ((- (elmt_PA_Ca * elmt_reactant13)) + (- (elmt_PA_Mg * elmt_reactant43)) + (- (elmt_PA_d * elmt_reactant41)));
        der(elmt_IP3_Cytosol_amount) = ((elmt_pulses * elmt_product56) + (- (elmt_IP3_d * elmt_reactant30)) + (- (elmt_IP3_degr * elmt_reactant47)));
        der(elmt_Ca_Cytosol_amount) = ((- (elmt_CGbinding * elmt_reactant23)) + (elmt_flux0 * elmt_product66) + (- (elmt_IP3R_flux * elmt_reactant67)) + (- (elmt_Ca_d * elmt_reactant18)) + (- (elmt_CD28k_high * elmt_reactant34)) + (- (elmt_CaD28k_med * elmt_reactant27)) + (- (elmt_ER_leak_flux * elmt_reactant57)) + (- (elmt_PA_Ca * elmt_reactant14)) + (- (elmt_SERCA_flux * elmt_reactant63)));
        der(elmt_D28kB_Cytosol_amount) = ((- (elmt_D28kB_d * elmt_reactant21)) + (elmt_CaD28k_med * elmt_product28));

    algorithm
        elmt_Mg_Cytosol_conc := elmt_Mg_Cytosol_amount / elmt_Cytosol;
        elmt_PABMg_D_Cytosol_conc := elmt_PABMg_D_Cytosol_amount / elmt_Cytosol;
        elmt_D28k_high_Cytosol_conc := elmt_D28k_high_Cytosol_amount / elmt_Cytosol;
        elmt_Ca_D_Cytosol_conc := elmt_Ca_D_Cytosol_amount / elmt_Cytosol;
        elmt_D28kB_high_D_Cytosol_conc := elmt_D28kB_high_D_Cytosol_amount / elmt_Cytosol;
        elmt_PABCa_Cytosol_conc := elmt_PABCa_Cytosol_amount / elmt_Cytosol;
        elmt_D28kB_high_Cytosol_conc := elmt_D28kB_high_Cytosol_amount / elmt_Cytosol;
        elmt_PABMg_Cytosol_conc := elmt_PABMg_Cytosol_amount / elmt_Cytosol;
        elmt_D28kB_D_Cytosol_conc := elmt_D28kB_D_Cytosol_amount / elmt_Cytosol;
        elmt_CG_Cytosol_conc := elmt_CG_Cytosol_amount / elmt_Cytosol;
        elmt_Mg_D_Cytosol_conc := elmt_Mg_D_Cytosol_amount / elmt_Cytosol;
        elmt_IP3_D_Cytosol_conc := elmt_IP3_D_Cytosol_amount / elmt_Cytosol;
        elmt_CG_D_Cytosol_conc := elmt_CG_D_Cytosol_amount / elmt_Cytosol;
        elmt_CGB_D_Cytosol_conc := elmt_CGB_D_Cytosol_amount / elmt_Cytosol;
        elmt_PABCa_D_Cytosol_conc := elmt_PABCa_D_Cytosol_amount / elmt_Cytosol;
        elmt_D28k_Cytosol_conc := elmt_D28k_Cytosol_amount / elmt_Cytosol;
        elmt_D28k_D_Cytosol_conc := elmt_D28k_D_Cytosol_amount / elmt_Cytosol;
        elmt_PA_D_Cytosol_conc := elmt_PA_D_Cytosol_amount / elmt_Cytosol;
        elmt_CGB_Cytosol_conc := elmt_CGB_Cytosol_amount / elmt_Cytosol;
        elmt_D28k_high_D_Cytosol_conc := elmt_D28k_high_D_Cytosol_amount / elmt_Cytosol;
        elmt_PA_Cytosol_conc := elmt_PA_Cytosol_amount / elmt_Cytosol;
        elmt_IP3_Cytosol_conc := elmt_IP3_Cytosol_amount / elmt_Cytosol;
        elmt_Ca_Cytosol_conc := elmt_Ca_Cytosol_amount / elmt_Cytosol;
        elmt_D28kB_Cytosol_conc := elmt_D28kB_Cytosol_amount / elmt_Cytosol;
end Class_elmt_Cytosol;
