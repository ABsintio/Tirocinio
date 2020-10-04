within BIOMD247;
class Parameters

    input Real elmt_NADP;
    input Real elmt_NADPH;

    Real elmt_ratio_NADPH_NADP(unit = "") "ratio_NADPH_NADP";
    Real elmt_k_rel_TPI(unit = "") "k_rel_TPI";
    Real elmt_SUMAXP(unit = "") "sum of AXP conc";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_k_rel_GAPDH(unit = "") "k_rel_GAPDH";


    initial equation
        elmt_k_rel_TPI = 1.0;
        elmt_SUMAXP = 4.1;
        elmt_k_rel_GAPDH = 1.0;


    equation
        elmt_ratio_NADPH_NADP = (elmt_NADPH / elmt_NADP);
        der(elmt_k_rel_TPI) = 0;
        der(elmt_SUMAXP) = 0;
        der(elmt_k_rel_GAPDH) = 0;

end Parameters;
