within BIOMD253;
class Reactions

    input Real elmt_cell;
    input Real elmt_Fru16P2;
    input Real elmt_lambda1;
    input Real elmt_L;
    input Real elmt_lambda2;
    input Real elmt_ATP;
    input Real elmt_gR;
    input Real elmt_ADP;
    input Real elmt_Glc;
    input Real elmt_Tre6P;
    input Real elmt_T;
    input Real elmt_R;

    Real elmt_HK(unit = "") "hexokinase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_HK_elmt_wild_type(unit "") = 1.0 "";
    parameter Real elmt_HK_elmt_KGlc(unit "m-3.0.") = 1.0 "";
    parameter Real elmt_HK_elmt_KATP(unit "m-3.0.") = 0.15 "";
    parameter Real elmt_HK_elmt_KiTre6P(unit "m-3.0.") = 4.422 "";
    parameter Real elmt_HK_elmt_VHK(unit "m-3.0..s-1.0") = 68.0 "";
    Real elmt_reactant1 "";
    Real elmt_reactant0 "";
    Real elmt_product2 "";
    Real elmt_PFK(unit = "") "phosphofructokinase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_PFK_elmt_VPFK(unit "m-3.0..s-1.0") = 30.0 "";
    Real elmt_reactant4 "";
    Real elmt_reactant3 "";
    Real elmt_product5 "";
    Real elmt_ATPase(unit = "") "ATPase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_ATPase_elmt_KATP(unit "m-3.0.") = 3.0 "";
    parameter Real elmt_ATPase_elmt_VATPase(unit "m-3.0..s-1.0") = 68.0 "";
    Real elmt_product10 "";
    Real elmt_reactant9 "";
    Real elmt_lower(unit = "") "lower";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_lower_elmt_Vlower(unit "m-3.0..s-1.0") = 20.0 "";
    parameter Real elmt_lower_elmt_KADP(unit "m-3.0.") = 0.1 "";
    parameter Real elmt_lower_elmt_KFru16P2(unit "m-3.0.") = 1.0 "";
    Real elmt_product8 "";
    Real elmt_reactant6 "";
    Real elmt_reactant7 "";


    initial equation
        elmt_reactant1 = 1.0;
        elmt_product8 = 4.0;
        elmt_reactant4 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product10 = 1.0;
        elmt_reactant7 = 4.0;
        elmt_reactant9 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product2 = 1.0;


    equation
        elmt_HK = (((elmt_cell * elmt_HK_elmt_VHK * elmt_Glc * elmt_ATP) / (elmt_HK_elmt_KGlc * elmt_HK_elmt_KATP)) / ((1.0 + (elmt_Glc / elmt_HK_elmt_KGlc) + ((elmt_HK_elmt_wild_type * elmt_Tre6P) / elmt_HK_elmt_KiTre6P)) * (1.0 + (elmt_ATP / elmt_HK_elmt_KATP))));
        elmt_PFK = ((elmt_cell * elmt_PFK_elmt_VPFK * elmt_gR * elmt_lambda1 * elmt_lambda2 * elmt_R) / (Functions.pow(elmt_R, 2.0) + (elmt_L * Functions.pow(elmt_T, 2.0))));
        elmt_ATPase = ((elmt_cell * elmt_ATPase_elmt_VATPase * elmt_ATP) / (elmt_ATPase_elmt_KATP + elmt_ATP));
        elmt_lower = (((elmt_cell * elmt_lower_elmt_Vlower * elmt_Fru16P2 * elmt_ADP) / (elmt_lower_elmt_KFru16P2 * elmt_lower_elmt_KADP)) / ((1.0 + (elmt_Fru16P2 / elmt_lower_elmt_KFru16P2)) * (1.0 + (elmt_ADP / elmt_lower_elmt_KADP))));
        der(elmt_reactant1) = 0;
        der(elmt_product8) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product10) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product2) = 0;

end Reactions;
