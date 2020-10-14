within S2MBIOMDx8062;
class Reactions
    extends Modelica.Icons.SourcesPackage;


    input Real elmt_compartment;
    input Real elmt_Ts;
    input Real elmt_Enz;
    input Real elmt_Tt;

    Real elmt_tryptophan_consumption(unit = "") "Tryptophan consumption for protein synthesis";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_tryptophan_consumption_elmt_g(unit "m-3.0..s-1.0") = 25.0 "";
    parameter Real elmt_tryptophan_consumption_elmt_Kg(unit "m-3.0.") = 0.2 "";
    Real elmt_reactant3 "";
    Real elmt_tryptophan_synthesis(unit = "") "Tryptophan synthesis";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_tryptophan_synthesis_elmt_Ki2(unit "m-3.0.") = 810.0 "";
    parameter Real elmt_tryptophan_synthesis_elmt_k2(unit "s-1.0") = 25.0 "";
    Real elmt_product2 "";
    Real elmt_Enzyme_synthesis(unit = "") "Anthranilate synthase synthesis";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_Enzyme_synthesis_elmt_Ot(unit "m-3.0.") = 0.0033 "";
    parameter Real elmt_Enzyme_synthesis_elmt_k1(unit "s-1.0") = 65.0 "";
    parameter Real elmt_Enzyme_synthesis_elmt_ki1(unit "m-3.0.") = 3.53 "";
    parameter Real elmt_Enzyme_synthesis_elmt_nH(unit "") = 1.92 "";
    Real elmt_product0 "";
    Real elmt_Enzyme_dilution(unit = "") "Enzyme dilution due to cell growth";
    parameter Real elmt_Enzyme_dilution_elmt_mu(unit "s-1.0") = 0.01 "";
    Real elmt_reactant1 "";
    Real elmt_tryptophan_dilution(unit = "") "Tryptophan dilution due to cell growth";
    parameter Real elmt_tryptophan_dilution_elmt_mu(unit "s-1.0") = 0.01 "";
    Real elmt_reactant4 "";


    initial equation
        elmt_reactant1 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_product0 = 1.0;
        elmt_product2 = 1.0;


    equation
        elmt_tryptophan_consumption = ((elmt_compartment * elmt_tryptophan_consumption_elmt_g * elmt_Ts) / (elmt_tryptophan_consumption_elmt_Kg + elmt_Ts));
        elmt_tryptophan_synthesis = ((elmt_compartment * elmt_tryptophan_synthesis_elmt_k2 * elmt_Enz * elmt_tryptophan_synthesis_elmt_Ki2) / (elmt_tryptophan_synthesis_elmt_Ki2 + elmt_Tt));
        elmt_Enzyme_synthesis = ((elmt_compartment * elmt_Enzyme_synthesis_elmt_k1 * Functions.pow(elmt_Enzyme_synthesis_elmt_ki1, elmt_Enzyme_synthesis_elmt_nH) * elmt_Enzyme_synthesis_elmt_Ot) / (Functions.pow(elmt_Enzyme_synthesis_elmt_ki1, elmt_Enzyme_synthesis_elmt_nH) + Functions.pow(elmt_Tt, elmt_Enzyme_synthesis_elmt_nH)));
        elmt_Enzyme_dilution = (elmt_compartment * elmt_Enzyme_dilution_elmt_mu * elmt_Enz);
        elmt_tryptophan_dilution = (elmt_compartment * elmt_tryptophan_dilution_elmt_mu * elmt_Ts);
        der(elmt_reactant1) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_product0) = 0;
        der(elmt_product2) = 0;

end Reactions;
