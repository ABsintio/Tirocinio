within BIOMD408;
class Class_elmt_IMS

    input Real elmt_J_diff_Pi;
    input Real elmt_reactant1;
    input Real elmt_reactant4;
    input Real elmt_reactant20;
    input Real elmt_product6;
    input Real elmt_reactant3;
    input Real elmt_J_CK_Mi;
    input Real elmt_reactant14;
    input Real elmt_reactant16;
    input Real elmt_product5;
    input Real elmt_J_diff_ATP;
    input Real elmt_reactant22;
    input Real elmt_reactant0;
    input Real elmt_J_diff_Cr;
    input Real elmt_J_diff_PCr;
    input Real elmt_product2;
    input Real elmt_reactant18;
    input Real elmt_Jsyn;
    input Real elmt_J_diff_ADP;

    Real elmt_IMS(unit = "") "IMS";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_PCri_conc(unit = "");
    Real elmt_PCri_amount(unit = "");
    Real elmt_PCri(unit = "") "PCri";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_P_ii_conc(unit = "");
    Real elmt_P_ii_amount(unit = "");
    Real elmt_P_ii(unit = "") "P_ii";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_ADPi_conc(unit = "");
    Real elmt_ADPi_amount(unit = "");
    Real elmt_ADPi(unit = "") "ADPi";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_ATPi_conc(unit = "");
    Real elmt_ATPi_amount(unit = "");
    Real elmt_ATPi(unit = "") "ATPi";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Cri_conc(unit = "");
    Real elmt_Cri_amount(unit = "");
    Real elmt_Cri(unit = "") "Cri";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_IMS = 0.0625;
        elmt_PCri_conc = 5711.0;
        elmt_P_ii_conc = 910.0;
        elmt_ADPi_conc = 39.0;
        elmt_ATPi_conc = 5626.0;
        elmt_Cri_conc = 9789.0;


    equation
        assert(elmt_IMS >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_IMS) = 0;
        elmt_PCri = elmt_PCri_conc;
        elmt_P_ii = elmt_P_ii_conc;
        elmt_ADPi = elmt_ADPi_conc;
        elmt_ATPi = elmt_ATPi_conc;
        elmt_Cri = elmt_Cri_conc;
        der(elmt_PCri_amount) = ((elmt_J_CK_Mi * elmt_product5) + (- (elmt_J_diff_PCr * elmt_reactant20)));
        der(elmt_P_ii_amount) = ((- (elmt_J_diff_Pi * elmt_reactant14)) + (- (elmt_Jsyn * elmt_reactant0)));
        der(elmt_ADPi_amount) = ((elmt_J_CK_Mi * elmt_product6) + (- (elmt_Jsyn * elmt_reactant1)) + (- (elmt_J_diff_ADP * elmt_reactant18)));
        der(elmt_ATPi_amount) = ((- (elmt_J_CK_Mi * elmt_reactant3)) + (elmt_Jsyn * elmt_product2) + (- (elmt_J_diff_ATP * elmt_reactant22)));
        der(elmt_Cri_amount) = ((- (elmt_J_CK_Mi * elmt_reactant4)) + (- (elmt_J_diff_Cr * elmt_reactant16)));

    algorithm
        elmt_PCri_conc := elmt_PCri_amount / elmt_IMS;
        elmt_P_ii_conc := elmt_P_ii_amount / elmt_IMS;
        elmt_ADPi_conc := elmt_ADPi_amount / elmt_IMS;
        elmt_ATPi_conc := elmt_ATPi_amount / elmt_IMS;
        elmt_Cri_conc := elmt_Cri_amount / elmt_IMS;
end Class_elmt_IMS;
