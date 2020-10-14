within BIOMD057;
class Reactions

    input Real elmt_O;
    input Real elmt_compartment;
    input Real elmt_Phi1;
    input Real elmt_Phi2;
    input Real elmt_Phi3;
    input Real elmt_I2;
    input Real elmt_Phi4;
    input Real elmt_Phi5;
    input Real elmt_A;
    input Real elmt_I1;
    input Real elmt_Phi_minus2;
    input Real elmt_Phi_minus4;
    input Real elmt_S;
    input Real elmt_R;

    Real elmt_v5(unit = "") "Activated-Inactivated state 2 transition";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_v5_elmt_kminus1(unit "") = 0.04 "";
    parameter Real elmt_v5_elmt_lminus2(unit "") = 0.8 "";
    Real elmt_product9 "";
    Real elmt_reactant8 "";
    Real elmt_v3(unit = "") "Open-Shut state transition";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_v3_elmt_kminus3(unit "") = 29.8 "";
    Real elmt_reactant4 "";
    Real elmt_product5 "";
    Real elmt_v4(unit = "") "Open-Activated state transition";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_v1(unit = "") "Receptor-Open state transition";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_v1_elmt_IP3(unit "") = 10.0 "";
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_v2(unit = "") "Receptor-Inactivated state 1 transition";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_v2_elmt_kminus1(unit "") = 0.04 "";
    parameter Real elmt_v2_elmt_lminus2(unit "") = 0.8 "";
    Real elmt_reactant2 "";
    Real elmt_product3 "";


    initial equation
        elmt_product9 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product1 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product3 = 1.0;


    equation
        elmt_v5 = (elmt_compartment * ((elmt_Phi5 * elmt_A) - ((elmt_v5_elmt_kminus1 + elmt_v5_elmt_lminus2) * elmt_I2)));
        elmt_v3 = (elmt_compartment * ((elmt_Phi3 * elmt_O) - (elmt_v3_elmt_kminus3 * elmt_S)));
        elmt_v4 = (elmt_compartment * ((elmt_Phi4 * elmt_O) - (elmt_Phi_minus4 * elmt_A)));
        elmt_v1 = (elmt_compartment * ((elmt_Phi2 * elmt_v1_elmt_IP3 * elmt_R) - (elmt_Phi_minus2 * elmt_O)));
        elmt_v2 = (elmt_compartment * ((elmt_Phi1 * elmt_R) - ((elmt_v2_elmt_kminus1 + elmt_v2_elmt_lminus2) * elmt_I1)));
        der(elmt_product9) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product1) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product3) = 0;

end Reactions;
