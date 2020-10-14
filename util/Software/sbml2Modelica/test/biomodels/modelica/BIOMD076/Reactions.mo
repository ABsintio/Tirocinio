within BIOMD076;
class Reactions

    input Real elmt_compartment;
    input Real elmt_G3P;
    input Real elmt_DHAP;

    Real elmt_Gpp_p(unit = "") "Glycerol 3-phosphatase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_Gpp_p_elmt_Phi(unit "m-3.0.") = 1.0 "";
    parameter Real elmt_Gpp_p_elmt_K2phi(unit "m-3.0.") = 1.0 "";
    parameter Real elmt_Gpp_p_elmt_V2(unit "m-3.0..s-1.0") = 53.0 "";
    parameter Real elmt_Gpp_p_elmt_K2g3p(unit "m-3.0.") = 3.5 "";
    Real elmt_reactant2 "";
    Real elmt_product3 "";
    Real elmt_Gpd_p(unit = "") "Glycerol 3-phosphate dehydrogenase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_Gpd_p_elmt_K1dhap(unit "m-3.0.") = 0.54 "";
    parameter Real elmt_Gpd_p_elmt_NAD(unit "m-3.0.") = 1.45 "";
    parameter Real elmt_Gpd_p_elmt_K1atp(unit "m-3.0.") = 0.73 "";
    parameter Real elmt_Gpd_p_elmt_ATP(unit "m-3.0.") = 2.37 "";
    parameter Real elmt_Gpd_p_elmt_K1f16bp(unit "m-3.0.") = 4.8 "";
    parameter Real elmt_Gpd_p_elmt_K1g3p(unit "m-3.0.") = 1.2 "";
    parameter Real elmt_Gpd_p_elmt_F16BP(unit "m-3.0.") = 6.01 "";
    parameter Real elmt_Gpd_p_elmt_K1adp(unit "m-3.0.") = 2.0 "";
    parameter Real elmt_Gpd_p_elmt_Vf1(unit "m-3.0..s-1.0") = 47.0 "";
    parameter Real elmt_Gpd_p_elmt_ADP(unit "m-3.0.") = 2.17 "";
    parameter Real elmt_Gpd_p_elmt_K1nad(unit "m-3.0.") = 0.93 "";
    parameter Real elmt_Gpd_p_elmt_K1nadh(unit "m-3.0.") = 0.023 "";
    parameter Real elmt_Gpd_p_elmt_Keq1(unit "") = 10000.0 "";
    parameter Real elmt_Gpd_p_elmt_NADH(unit "m-3.0.") = 1.87 "";
    Real elmt_product1 "";
    Real elmt_reactant0 "";


    initial equation
        elmt_reactant2 = 1.0;
        elmt_product1 = 1.0;
        elmt_product3 = 1.0;
        elmt_reactant0 = 1.0;


    equation
        elmt_Gpp_p = (((elmt_compartment * elmt_Gpp_p_elmt_V2 * elmt_G3P) / elmt_Gpp_p_elmt_K2g3p) / ((1.0 + (elmt_G3P / elmt_Gpp_p_elmt_K2g3p)) * (1.0 + (elmt_Gpp_p_elmt_Phi / elmt_Gpp_p_elmt_K2phi))));
        elmt_Gpd_p = ((((elmt_compartment * elmt_Gpd_p_elmt_Vf1) / (elmt_Gpd_p_elmt_K1nadh * elmt_Gpd_p_elmt_K1dhap)) * ((elmt_Gpd_p_elmt_NADH * elmt_DHAP) - ((elmt_Gpd_p_elmt_NAD * elmt_G3P) / elmt_Gpd_p_elmt_Keq1))) / ((1.0 + (elmt_Gpd_p_elmt_F16BP / elmt_Gpd_p_elmt_K1f16bp) + (elmt_Gpd_p_elmt_ATP / elmt_Gpd_p_elmt_K1atp) + (elmt_Gpd_p_elmt_ADP / elmt_Gpd_p_elmt_K1adp)) * (1.0 + (elmt_Gpd_p_elmt_NADH / elmt_Gpd_p_elmt_K1nadh) + (elmt_Gpd_p_elmt_NAD / elmt_Gpd_p_elmt_K1nad)) * (1.0 + (elmt_DHAP / elmt_Gpd_p_elmt_K1dhap) + (elmt_G3P / elmt_Gpd_p_elmt_K1g3p))));
        der(elmt_reactant2) = 0;
        der(elmt_product1) = 0;
        der(elmt_product3) = 0;
        der(elmt_reactant0) = 0;

end Reactions;
