within BIOMD060;
class Reactions

    input Real elmt_Po2;
    input Real elmt_Po1;
    input Real elmt_Pc2;
    input Real elmt_Pc1;

    Real elmt_Closed_state_1(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_Closed_state_1_elmt_n(unit "") = 4.0 "";
    parameter Real elmt_Closed_state_1_elmt_Ca(unit "m-3.0.") = 0.9 "";
    parameter Real elmt_Closed_state_1_elmt_ka_plus(unit "m12.0.mol-4.0.s-1.0") = 1500.0 "";
    parameter Real elmt_Closed_state_1_elmt_ka_minus(unit "s-1.0") = 28.8 "";
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_Open_state_2(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_Open_state_2_elmt_m(unit "") = 3.0 "";
    parameter Real elmt_Open_state_2_elmt_kb_minus(unit "s-1.0") = 385.9 "";
    parameter Real elmt_Open_state_2_elmt_Ca(unit "m-3.0.") = 0.9 "";
    parameter Real elmt_Open_state_2_elmt_kb_plus(unit "m9.0.mol-3.0.s-1.0") = 1500.0 "";
    Real elmt_reactant2 "";
    Real elmt_product3 "";
    Real elmt_Closed_State_2(unit = "") "Closed State 2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_Closed_State_2_elmt_kc_plus(unit "s-1.0") = 1.75 "";
    parameter Real elmt_Closed_State_2_elmt_kc_minus(unit "s-1.0") = 0.1 "";
    Real elmt_reactant4 "";
    Real elmt_product5 "";


    initial equation
        elmt_reactant2 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product1 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product3 = 1.0;


    equation
        elmt_Closed_state_1 = ((elmt_Closed_state_1_elmt_ka_minus * elmt_Po1) - (elmt_Closed_state_1_elmt_ka_plus * Functions.pow(elmt_Closed_state_1_elmt_Ca, elmt_Closed_state_1_elmt_n) * elmt_Pc1));
        elmt_Open_state_2 = ((elmt_Open_state_2_elmt_kb_plus * Functions.pow(elmt_Open_state_2_elmt_Ca, elmt_Open_state_2_elmt_m) * elmt_Po1) - (elmt_Open_state_2_elmt_kb_minus * elmt_Po2));
        elmt_Closed_State_2 = ((elmt_Closed_State_2_elmt_kc_plus * elmt_Po1) - (elmt_Closed_State_2_elmt_kc_minus * elmt_Pc2));
        der(elmt_reactant2) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product1) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product3) = 0;

end Reactions;
