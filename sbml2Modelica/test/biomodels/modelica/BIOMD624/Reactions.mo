within BIOMD624;
class Reactions

    input Real elmt_Km_PhaseIIEnzGlu_APAP;
    input Real elmt_Km_PhaseIIEnzSul_APAP;
    input Real elmt_compartment;
    input Real elmt_kNapqiGsh;
    input Real elmt_kGsh;
    input Real elmt_Km_2E1_APAP;
    input Real elmt_Vmax_PhaseIIEnzGlu_APAP;
    input Real elmt_GSH;
    input Real elmt_Vmax_2E1_APAP;
    input Real elmt_GSHmax;
    input Real elmt_NAPQI;
    input Real elmt_Vmax_PhaseIIEnzSul_APAP;
    input Real elmt_APAP;

    Real elmt_J0(unit = "") "J0";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_J3(unit = "") "J3";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product8 "";
    Real elmt_reactant7 "";
    Real elmt_J4(unit = "") "J4";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product10 "";
    Real elmt_reactant9 "";
    Real elmt_J1(unit = "") "J1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant2 "";
    Real elmt_reactant3 "";
    Real elmt_product4 "";
    Real elmt_J2(unit = "") "J2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product6 "";
    Real elmt_reactant5 "";


    initial equation
        elmt_reactant2 = 1.0;
        elmt_product8 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_product6 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_product10 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product4 = 1.0;
        elmt_reactant0 = 1.0;


    equation
        elmt_J0 = ((elmt_Vmax_2E1_APAP * elmt_APAP) / (elmt_Km_2E1_APAP + elmt_APAP));
        elmt_J3 = ((elmt_Vmax_PhaseIIEnzGlu_APAP * elmt_APAP) / (elmt_Km_PhaseIIEnzGlu_APAP + elmt_APAP));
        elmt_J4 = ((elmt_Vmax_PhaseIIEnzSul_APAP * elmt_APAP) / (elmt_Km_PhaseIIEnzSul_APAP + elmt_APAP));
        elmt_J1 = ((((elmt_kNapqiGsh * elmt_NAPQI) * elmt_GSH) * elmt_compartment) * elmt_compartment);
        elmt_J2 = ((elmt_kGsh * (elmt_GSHmax - elmt_GSH)) * elmt_compartment);
        der(elmt_reactant2) = 0;
        der(elmt_product8) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_product6) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_product10) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product4) = 0;
        der(elmt_reactant0) = 0;

end Reactions;
