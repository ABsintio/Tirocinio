within BIOMD063;
class Reactions

    input Real elmt_cytoplasm;
    input Real elmt_G6P;
    input Real elmt_FDP;
    input Real elmt_Glci;
    input Real elmt_ATP;
    input Real elmt_PEP;

    Real elmt_Vgapd(unit = "") "GAPD";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_Vgapd_elmt_K5ADP(unit "m-3.0.") = 1.5 "";
    parameter Real elmt_Vgapd_elmt_K5ATP(unit "m-3.0.") = 2.5 "";
    parameter Real elmt_Vgapd_elmt_NAD(unit "m-3.0.") = 1.91939 "";
    parameter Real elmt_Vgapd_elmt_K5NAD(unit "") = 0.18 "";
    parameter Real elmt_Vgapd_elmt_K5G3P(unit "m-3.0.") = 0.0025 "";
    parameter Real elmt_Vgapd_elmt_K5AMP(unit "m-3.0.") = 1.1 "";
    parameter Real elmt_Vgapd_elmt_Vm5(unit "m-3.0..s-1.0") = 49.9 "";
    parameter Real elmt_Vgapd_elmt_K5NADH(unit "m-3.0.") = 3.0E-4 "";
    parameter Real elmt_Vgapd_elmt_NADH(unit "m-3.0.") = 0.0806142 "";
    Real elmt_product12 "";
    Real elmt_product13 "";
    Real elmt_reactant11 "";
    Real elmt_Vpol(unit = "") "Trehalose and Glycogen formation";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_Vpol_elmt_n3(unit "") = 8.25 "";
    parameter Real elmt_Vpol_elmt_Km3G6P(unit "m-3.0.") = 1.1 "";
    parameter Real elmt_Vpol_elmt_Km30(unit "m-3.0.") = 1.0 "";
    parameter Real elmt_Vpol_elmt_K3Gly(unit "m-3.0.") = 2.0 "";
    parameter Real elmt_Vpol_elmt_Vm3(unit "m-3.0..s-1.0") = 14.31 "";
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_reactant5 "";
    Real elmt_Vgol(unit = "") "Glycerol synthesis";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_Vgol_elmt_q6(unit "") = 1.0 "";
    parameter Real elmt_Vgol_elmt_c6PEP(unit "") = 1.58793E-4 "";
    parameter Real elmt_Vgol_elmt_Vm7(unit "m-3.0..s-1.0") = 203.0 "";
    parameter Real elmt_Vgol_elmt_h6(unit "") = 1.14815E-7 "";
    parameter Real elmt_Vgol_elmt_K6ADP(unit "m-3.0.") = 5.0 "";
    parameter Real elmt_Vgol_elmt_L60(unit "") = 164.084 "";
    parameter Real elmt_Vgol_elmt_g6T(unit "") = 1.0 "";
    parameter Real elmt_Vgol_elmt_K6FDP(unit "m-3.0.") = 0.2 "";
    parameter Real elmt_Vgol_elmt_g6R(unit "") = 0.1 "";
    parameter Real elmt_Vgol_elmt_c6FDP(unit "") = 0.01 "";
    parameter Real elmt_Vgol_elmt_K6PEP(unit "m-3.0.") = 0.00793966 "";
    parameter Real elmt_Vgol_elmt_c6ADP(unit "") = 1.0 "";
    Real elmt_reactant17 "";
    Real elmt_product18 "";
    Real elmt_Vatpase(unit = "") "ATPase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_Vatpase_elmt_Vm8(unit "s-1.0") = 25.1 "";
    Real elmt_reactant19 "";
    Real elmt_Vpk(unit = "") "Pyruvate kinase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_Vpk_elmt_q6(unit "") = 1.0 "";
    parameter Real elmt_Vpk_elmt_c6PEP(unit "") = 1.58793E-4 "";
    parameter Real elmt_Vpk_elmt_Vm6(unit "m-3.0..s-1.0") = 3440.0 "";
    parameter Real elmt_Vpk_elmt_h6(unit "") = 1.14815E-7 "";
    parameter Real elmt_Vpk_elmt_K6ADP(unit "m-3.0.") = 5.0 "";
    parameter Real elmt_Vpk_elmt_L60(unit "") = 164.084 "";
    parameter Real elmt_Vpk_elmt_g6T(unit "") = 1.0 "";
    parameter Real elmt_Vpk_elmt_K6FDP(unit "m-3.0.") = 0.2 "";
    parameter Real elmt_Vpk_elmt_g6R(unit "") = 0.1 "";
    parameter Real elmt_Vpk_elmt_c6FDP(unit "") = 0.01 "";
    parameter Real elmt_Vpk_elmt_K6PEP(unit "m-3.0.") = 0.00793966 "";
    parameter Real elmt_Vpk_elmt_c6ADP(unit "") = 1.0 "";
    Real elmt_reactant14 "";
    Real elmt_product16 "";
    Real elmt_product15 "";
    Real elmt_Vpfk(unit = "") "Phosphofructokinase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_Vpfk_elmt_L40(unit "") = 3342.0 "";
    parameter Real elmt_Vpfk_elmt_c4AMP(unit "") = 0.019 "";
    parameter Real elmt_Vpfk_elmt_K4ATP(unit "m-3.0.") = 0.06 "";
    parameter Real elmt_Vpfk_elmt_g4R(unit "") = 10.0 "";
    parameter Real elmt_Vpfk_elmt_K4F6P(unit "m-3.0.") = 1.0 "";
    parameter Real elmt_Vpfk_elmt_c4ATP(unit "") = 1.0 "";
    parameter Real elmt_Vpfk_elmt_gT(unit "") = 1.0 "";
    parameter Real elmt_Vpfk_elmt_Vm4(unit "m-3.0..s-1.0") = 31.7 "";
    parameter Real elmt_Vpfk_elmt_K4AMP(unit "m-3.0.") = 0.025 "";
    parameter Real elmt_Vpfk_elmt_c4F6P(unit "") = 5.0E-4 "";
    Real elmt_reactant8 "";
    Real elmt_product10 "";
    Real elmt_reactant9 "";
    Real elmt_Vin(unit = "") "Glucose in";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_Vin_elmt_Ki1G6P(unit "s-1.0") = 3.7 "";
    parameter Real elmt_Vin_elmt_Vm1(unit "m-3.0..s-1.0") = 19.7 "";
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_Vhk(unit = "") "Hexokinase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_Vhk_elmt_Km2Glc(unit "m-3.0.") = 0.11 "";
    parameter Real elmt_Vhk_elmt_Km2ATP(unit "m-3.0.") = 0.1 "";
    parameter Real elmt_Vhk_elmt_Ks2Glc(unit "m-3.0.") = 0.0062 "";
    parameter Real elmt_Vhk_elmt_Vm2(unit "m-3.0..s-1.0") = 68.5 "";
    Real elmt_reactant2 "";
    Real elmt_reactant3 "";
    Real elmt_product4 "";


    initial equation
        elmt_reactant2 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_product12 = 2.0;
        elmt_reactant6 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product10 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant17 = 0.5;
        elmt_reactant11 = 1.0;
        elmt_product4 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_reactant19 = 1.0;
        elmt_product16 = 1.0;
        elmt_product15 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product13 = 2.0;
        elmt_product18 = 1.0;


    equation
        elmt_Vgapd = ((elmt_cytoplasm * elmt_Vgapd_elmt_Vm5) / (1.0 + (elmt_Vgapd_elmt_K5G3P / (0.01 * elmt_FDP)) + (((elmt_Vgapd_elmt_K5NAD / elmt_Vgapd_elmt_NAD) + ((elmt_Vgapd_elmt_K5G3P * elmt_Vgapd_elmt_K5NAD) / (elmt_Vgapd_elmt_NAD * 0.01 * elmt_FDP)) + ((elmt_Vgapd_elmt_K5G3P * elmt_Vgapd_elmt_K5NAD * elmt_Vgapd_elmt_NADH) / (elmt_Vgapd_elmt_NAD * 0.01 * elmt_FDP * elmt_Vgapd_elmt_K5NADH))) * (1.0 + ((0.5 * ((- elmt_ATP) + Functions.pow(((12.0 * elmt_ATP) - (3.0 * Functions.pow(elmt_ATP, 2.0))), 0.5))) / elmt_Vgapd_elmt_K5ADP) + (((3.0 - elmt_ATP) - (0.5 * ((- elmt_ATP) + Functions.pow(((12.0 * elmt_ATP) - (3.0 * Functions.pow(elmt_ATP, 2.0))), 0.5)))) / elmt_Vgapd_elmt_K5AMP) + (elmt_ATP / elmt_Vgapd_elmt_K5ATP)))));
        elmt_Vpol = (((elmt_cytoplasm * 1.1 * elmt_Vpol_elmt_Vm3 * Functions.pow(elmt_G6P, elmt_Vpol_elmt_n3)) / (Functions.pow(elmt_Vpol_elmt_K3Gly, elmt_Vpol_elmt_n3) + Functions.pow(elmt_G6P, elmt_Vpol_elmt_n3))) / (1.0 + ((elmt_Vpol_elmt_Km30 / 0.7) * (1.0 + (elmt_Vpol_elmt_Km3G6P / elmt_G6P)))));
        elmt_Vgol = ((elmt_Vgol_elmt_Vm7 * elmt_cytoplasm * (((elmt_PEP / elmt_Vgol_elmt_K6PEP) * 0.5 * ((- elmt_ATP) + Functions.pow(((12.0 * elmt_ATP) - (3.0 * Functions.pow(elmt_ATP, 2.0))), 0.5))) / elmt_Vgol_elmt_K6ADP) * ((elmt_Vgol_elmt_g6R * (1.0 + (elmt_PEP / elmt_Vgol_elmt_K6PEP) + ((0.5 * ((- elmt_ATP) + Functions.pow(((12.0 * elmt_ATP) - (3.0 * Functions.pow(elmt_ATP, 2.0))), 0.5))) / elmt_Vgol_elmt_K6ADP) + ((((elmt_Vgol_elmt_g6R * elmt_PEP) / elmt_Vgol_elmt_K6PEP) * 0.5 * ((- elmt_ATP) + Functions.pow(((12.0 * elmt_ATP) - (3.0 * Functions.pow(elmt_ATP, 2.0))), 0.5))) / elmt_Vgol_elmt_K6ADP))) + (((((elmt_Vgol_elmt_q6 * elmt_Vgol_elmt_L60 * Functions.pow(((1.0 + ((elmt_Vgol_elmt_c6FDP * elmt_FDP) / elmt_Vgol_elmt_K6FDP)) / (1.0 + (elmt_FDP / elmt_Vgol_elmt_K6FDP))), 2.0) * elmt_Vgol_elmt_g6T * elmt_Vgol_elmt_c6PEP * elmt_PEP) / elmt_Vgol_elmt_K6PEP) * elmt_Vgol_elmt_c6ADP * 0.5 * ((- elmt_ATP) + Functions.pow(((12.0 * elmt_ATP) - (3.0 * Functions.pow(elmt_ATP, 2.0))), 0.5))) / elmt_Vgol_elmt_K6ADP) * (1.0 + ((elmt_Vgol_elmt_c6PEP * elmt_PEP) / elmt_Vgol_elmt_K6PEP) + ((elmt_Vgol_elmt_c6ADP * 0.5 * ((- elmt_ATP) + Functions.pow(((12.0 * elmt_ATP) - (3.0 * Functions.pow(elmt_ATP, 2.0))), 0.5))) / elmt_Vgol_elmt_K6ADP) + ((((elmt_Vgol_elmt_g6T * elmt_Vgol_elmt_c6PEP * elmt_PEP) / elmt_Vgol_elmt_K6PEP) * elmt_Vgol_elmt_c6ADP * 0.5 * ((- elmt_ATP) + Functions.pow(((12.0 * elmt_ATP) - (3.0 * Functions.pow(elmt_ATP, 2.0))), 0.5))) / elmt_Vgol_elmt_K6ADP))))) / ((1.0 + ((9.55 * Functions.pow(10.0, (-9.0))) / elmt_Vgol_elmt_h6)) * (Functions.pow((1.0 + (elmt_PEP / elmt_Vgol_elmt_K6PEP) + ((0.5 * ((- elmt_ATP) + Functions.pow(((12.0 * elmt_ATP) - (3.0 * Functions.pow(elmt_ATP, 2.0))), 0.5))) / elmt_Vgol_elmt_K6ADP) + ((((elmt_Vgol_elmt_g6R * elmt_PEP) / elmt_Vgol_elmt_K6PEP) * 0.5 * ((- elmt_ATP) + Functions.pow(((12.0 * elmt_ATP) - (3.0 * Functions.pow(elmt_ATP, 2.0))), 0.5))) / elmt_Vgol_elmt_K6ADP)), 2.0) + (elmt_Vgol_elmt_L60 * Functions.pow(((1.0 + ((elmt_Vgol_elmt_c6FDP * elmt_FDP) / elmt_Vgol_elmt_K6FDP)) / (1.0 + (elmt_FDP / elmt_Vgol_elmt_K6FDP))), 2.0) * Functions.pow((1.0 + ((elmt_Vgol_elmt_c6PEP * elmt_PEP) / elmt_Vgol_elmt_K6PEP) + ((elmt_Vgol_elmt_c6ADP * 0.5 * ((- elmt_ATP) + Functions.pow(((12.0 * elmt_ATP) - (3.0 * Functions.pow(elmt_ATP, 2.0))), 0.5))) / elmt_Vgol_elmt_K6ADP) + ((((elmt_Vgol_elmt_g6T * elmt_Vgol_elmt_c6PEP * elmt_PEP) / elmt_Vgol_elmt_K6PEP) * elmt_Vgol_elmt_c6ADP * 0.5 * ((- elmt_ATP) + Functions.pow(((12.0 * elmt_ATP) - (3.0 * Functions.pow(elmt_ATP, 2.0))), 0.5))) / elmt_Vgol_elmt_K6ADP)), 2.0)))));
        elmt_Vatpase = (elmt_cytoplasm * elmt_Vatpase_elmt_Vm8 * elmt_ATP);
        elmt_Vpk = ((elmt_cytoplasm * elmt_Vpk_elmt_Vm6 * (((elmt_PEP / elmt_Vpk_elmt_K6PEP) * 0.5 * ((- elmt_ATP) + Functions.pow(((12.0 * elmt_ATP) - (3.0 * Functions.pow(elmt_ATP, 2.0))), 0.5))) / elmt_Vpk_elmt_K6ADP) * ((elmt_Vpk_elmt_g6R * (1.0 + (elmt_PEP / elmt_Vpk_elmt_K6PEP) + ((0.5 * ((- elmt_ATP) + Functions.pow(((12.0 * elmt_ATP) - (3.0 * Functions.pow(elmt_ATP, 2.0))), 0.5))) / elmt_Vpk_elmt_K6ADP) + ((((elmt_Vpk_elmt_g6R * elmt_PEP) / elmt_Vpk_elmt_K6PEP) * 0.5 * ((- elmt_ATP) + Functions.pow(((12.0 * elmt_ATP) - (3.0 * Functions.pow(elmt_ATP, 2.0))), 0.5))) / elmt_Vpk_elmt_K6ADP))) + (((((elmt_Vpk_elmt_q6 * elmt_Vpk_elmt_L60 * Functions.pow(((1.0 + ((elmt_Vpk_elmt_c6FDP * elmt_FDP) / elmt_Vpk_elmt_K6FDP)) / (1.0 + (elmt_FDP / elmt_Vpk_elmt_K6FDP))), 2.0) * elmt_Vpk_elmt_g6T * elmt_Vpk_elmt_c6PEP * elmt_PEP) / elmt_Vpk_elmt_K6PEP) * elmt_Vpk_elmt_c6ADP * 0.5 * ((- elmt_ATP) + Functions.pow(((12.0 * elmt_ATP) - (3.0 * Functions.pow(elmt_ATP, 2.0))), 0.5))) / elmt_Vpk_elmt_K6ADP) * (1.0 + ((elmt_Vpk_elmt_c6PEP * elmt_PEP) / elmt_Vpk_elmt_K6PEP) + ((elmt_Vpk_elmt_c6ADP * 0.5 * ((- elmt_ATP) + Functions.pow(((12.0 * elmt_ATP) - (3.0 * Functions.pow(elmt_ATP, 2.0))), 0.5))) / elmt_Vpk_elmt_K6ADP) + ((((elmt_Vpk_elmt_g6T * elmt_Vpk_elmt_c6PEP * elmt_PEP) / elmt_Vpk_elmt_K6PEP) * elmt_Vpk_elmt_c6ADP * 0.5 * ((- elmt_ATP) + Functions.pow(((12.0 * elmt_ATP) - (3.0 * Functions.pow(elmt_ATP, 2.0))), 0.5))) / elmt_Vpk_elmt_K6ADP))))) / ((1.0 + ((9.55 * Functions.pow(10.0, (-9.0))) / elmt_Vpk_elmt_h6)) * (Functions.pow((1.0 + (elmt_PEP / elmt_Vpk_elmt_K6PEP) + ((0.5 * ((- elmt_ATP) + Functions.pow(((12.0 * elmt_ATP) - (3.0 * Functions.pow(elmt_ATP, 2.0))), 0.5))) / elmt_Vpk_elmt_K6ADP) + ((((elmt_Vpk_elmt_g6R * elmt_PEP) / elmt_Vpk_elmt_K6PEP) * 0.5 * ((- elmt_ATP) + Functions.pow(((12.0 * elmt_ATP) - (3.0 * Functions.pow(elmt_ATP, 2.0))), 0.5))) / elmt_Vpk_elmt_K6ADP)), 2.0) + (elmt_Vpk_elmt_L60 * Functions.pow(((1.0 + ((elmt_Vpk_elmt_c6FDP * elmt_FDP) / elmt_Vpk_elmt_K6FDP)) / (1.0 + (elmt_FDP / elmt_Vpk_elmt_K6FDP))), 2.0) * Functions.pow((1.0 + ((elmt_Vpk_elmt_c6PEP * elmt_PEP) / elmt_Vpk_elmt_K6PEP) + ((elmt_Vpk_elmt_c6ADP * 0.5 * ((- elmt_ATP) + Functions.pow(((12.0 * elmt_ATP) - (3.0 * Functions.pow(elmt_ATP, 2.0))), 0.5))) / elmt_Vpk_elmt_K6ADP) + ((((elmt_Vpk_elmt_g6T * elmt_Vpk_elmt_c6PEP * elmt_PEP) / elmt_Vpk_elmt_K6PEP) * elmt_Vpk_elmt_c6ADP * 0.5 * ((- elmt_ATP) + Functions.pow(((12.0 * elmt_ATP) - (3.0 * Functions.pow(elmt_ATP, 2.0))), 0.5))) / elmt_Vpk_elmt_K6ADP)), 2.0)))));
        elmt_Vpfk = ((((((elmt_cytoplasm * elmt_Vpfk_elmt_Vm4 * elmt_Vpfk_elmt_g4R * 0.3 * elmt_G6P) / elmt_Vpfk_elmt_K4F6P) * elmt_ATP) / elmt_Vpfk_elmt_K4ATP) * (1.0 + ((0.3 * elmt_G6P) / elmt_Vpfk_elmt_K4F6P) + (elmt_ATP / elmt_Vpfk_elmt_K4ATP) + ((((elmt_Vpfk_elmt_g4R * 0.3 * elmt_G6P) / elmt_Vpfk_elmt_K4F6P) * elmt_ATP) / elmt_Vpfk_elmt_K4ATP))) / (Functions.pow((1.0 + ((0.3 * elmt_G6P) / elmt_Vpfk_elmt_K4F6P) + (elmt_ATP / elmt_Vpfk_elmt_K4ATP) + ((((elmt_Vpfk_elmt_g4R * 0.3 * elmt_G6P) / elmt_Vpfk_elmt_K4F6P) * elmt_ATP) / elmt_Vpfk_elmt_K4ATP)), 2.0) + (elmt_Vpfk_elmt_L40 * Functions.pow(((1.0 + ((elmt_Vpfk_elmt_c4AMP * ((3.0 - elmt_ATP) - (0.5 * ((- elmt_ATP) + Functions.pow(((12.0 * elmt_ATP) - (3.0 * Functions.pow(elmt_ATP, 2.0))), 0.5))))) / elmt_Vpfk_elmt_K4AMP)) / (1.0 + (((3.0 - elmt_ATP) - (0.5 * ((- elmt_ATP) + Functions.pow(((12.0 * elmt_ATP) - (3.0 * Functions.pow(elmt_ATP, 2.0))), 0.5)))) / elmt_Vpfk_elmt_K4AMP))), 2.0) * Functions.pow((1.0 + ((elmt_Vpfk_elmt_c4F6P * 0.3 * elmt_G6P) / elmt_Vpfk_elmt_K4F6P) + ((elmt_Vpfk_elmt_c4ATP * elmt_ATP) / elmt_Vpfk_elmt_K4ATP) + ((((elmt_Vpfk_elmt_gT * elmt_Vpfk_elmt_c4F6P * 0.3 * elmt_G6P) / elmt_Vpfk_elmt_K4F6P) * elmt_Vpfk_elmt_c4ATP * elmt_ATP) / elmt_Vpfk_elmt_K4ATP)), 2.0))));
        elmt_Vin = (elmt_cytoplasm * (elmt_Vin_elmt_Vm1 - (elmt_Vin_elmt_Ki1G6P * elmt_G6P)));
        elmt_Vhk = ((elmt_cytoplasm * elmt_Vhk_elmt_Vm2) / (1.0 + (elmt_Vhk_elmt_Km2Glc / elmt_Glci) + (elmt_Vhk_elmt_Km2ATP / elmt_ATP) + ((elmt_Vhk_elmt_Ks2Glc * elmt_Vhk_elmt_Km2ATP) / (elmt_Glci * elmt_ATP))));
        der(elmt_reactant2) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_product12) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product10) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant17) = 0;
        der(elmt_reactant11) = 0;
        der(elmt_product4) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_reactant19) = 0;
        der(elmt_product16) = 0;
        der(elmt_product15) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product13) = 0;
        der(elmt_product18) = 0;

end Reactions;
