within BIOMD063;
class Class_elmt_cytoplasm

    input Real elmt_Vgapd;
    input Real elmt_reactant2;
    input Real elmt_reactant3;
    input Real elmt_reactant6;
    input Real elmt_Vgol;
    input Real elmt_product12;
    input Real elmt_reactant5;
    input Real elmt_product10;
    input Real elmt_Vatpase;
    input Real elmt_reactant8;
    input Real elmt_Vpk;
    input Real elmt_product1;
    input Real elmt_reactant14;
    input Real elmt_Vpfk;
    input Real elmt_reactant17;
    input Real elmt_product4;
    input Real elmt_reactant11;
    input Real elmt_Vin;
    input Real elmt_Vhk;
    input Real elmt_Vpol;
    input Real elmt_reactant19;
    input Real elmt_reactant9;
    input Real elmt_product15;
    input Real elmt_product13;

    Real elmt_cytoplasm(unit = "") "Cytoplasm";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_Gly_conc(unit = "");
    Real elmt_Gly_amount(unit = "");
    Real elmt_Gly(unit = "") "Glycerol";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_Carbo_conc(unit = "");
    Real elmt_Carbo_amount(unit = "");
    Real elmt_Carbo(unit = "") "Glycogen and Trehalose";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_G6P_conc(unit = "");
    Real elmt_G6P_amount(unit = "");
    Real elmt_G6P(unit = "") "Glucose 6-phosphate";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_FDP_conc(unit = "");
    Real elmt_FDP_amount(unit = "");
    Real elmt_FDP(unit = "") "Fructose 1,6-phosphate";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_Glci_conc(unit = "");
    Real elmt_Glci_amount(unit = "");
    Real elmt_Glci(unit = "") "Glucose inside the cell";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_ATP_conc(unit = "");
    Real elmt_ATP_amount(unit = "");
    Real elmt_ATP(unit = "") "ATP";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_EtOH_conc(unit = "");
    Real elmt_EtOH_amount(unit = "");
    Real elmt_EtOH(unit = "") "Ethanol";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_PEP_conc(unit = "");
    Real elmt_PEP_amount(unit = "");
    Real elmt_PEP(unit = "") "Phosphoenol pyruvate";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    initial equation
        elmt_cytoplasm = 1.0;
        elmt_Gly_conc = 0.0;
        elmt_Carbo_conc = 0.0;
        elmt_G6P_conc = 1.011;
        elmt_FDP_conc = 9.144;
        elmt_Glci_conc = 0.0345;
        elmt_ATP_conc = 1.19;
        elmt_EtOH_conc = 0.0;
        elmt_PEP_conc = 0.0095;


    equation
        assert(elmt_cytoplasm >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cytoplasm) = 0;
        elmt_Gly = elmt_Gly_conc;
        elmt_Carbo = elmt_Carbo_conc;
        elmt_G6P = elmt_G6P_conc;
        elmt_FDP = elmt_FDP_conc;
        elmt_Glci = elmt_Glci_conc;
        elmt_ATP = elmt_ATP_conc;
        elmt_EtOH = elmt_EtOH_conc;
        elmt_PEP = elmt_PEP_conc;
        der(elmt_Gly_amount) = 0;
        der(elmt_Carbo_amount) = 0;
        der(elmt_EtOH_amount) = 0;
        der(elmt_G6P_amount) = ((- (elmt_Vpol * elmt_reactant6)) + (- (elmt_Vpfk * elmt_reactant9)) + (elmt_Vhk * elmt_product4));
        der(elmt_FDP_amount) = ((- (elmt_Vgapd * elmt_reactant11)) + (- (elmt_Vgol * elmt_reactant17)) + (elmt_Vpfk * elmt_product10));
        der(elmt_Glci_amount) = ((elmt_Vin * elmt_product1) + (- (elmt_Vhk * elmt_reactant3)));
        der(elmt_ATP_amount) = ((elmt_Vgapd * elmt_product12) + (- (elmt_Vpol * elmt_reactant5)) + (- (elmt_Vatpase * elmt_reactant19)) + (elmt_Vpk * elmt_product15) + (- (elmt_Vpfk * elmt_reactant8)) + (- (elmt_Vhk * elmt_reactant2)));
        der(elmt_PEP_amount) = ((elmt_Vgapd * elmt_product13) + (- (elmt_Vpk * elmt_reactant14)));

    algorithm
        elmt_Gly_conc := elmt_Gly_amount / elmt_cytoplasm;
        elmt_Carbo_conc := elmt_Carbo_amount / elmt_cytoplasm;
        elmt_G6P_conc := elmt_G6P_amount / elmt_cytoplasm;
        elmt_FDP_conc := elmt_FDP_amount / elmt_cytoplasm;
        elmt_Glci_conc := elmt_Glci_amount / elmt_cytoplasm;
        elmt_ATP_conc := elmt_ATP_amount / elmt_cytoplasm;
        elmt_EtOH_conc := elmt_EtOH_amount / elmt_cytoplasm;
        elmt_PEP_conc := elmt_PEP_amount / elmt_cytoplasm;
end Class_elmt_cytoplasm;
