within BIOMD415;
class Reactions

    input Real elmt_parameter_9;
    input Real elmt_parameter_8;
    input Real elmt_parameter_7;
    input Real elmt_species_7;
    input Real elmt_species_8;
    input Real elmt_species_1;
    input Real elmt_compartment_1;
    input Real elmt_parameter_6;
    input Real elmt_parameter_5;
    input Real elmt_parameter_4;
    input Real elmt_parameter_3;
    input Real elmt_parameter_2;
    input Real elmt_parameter_1;

    Real elmt_reaction_5(unit = "") "HPL(RZE)";
    Real elmt_product30 "";
    Real elmt_reactant29 "";
    Real elmt_reaction_3(unit = "") "LOX3";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant18 "";
    Real elmt_product23 "";
    Real elmt_product22 "";
    Real elmt_product21 "";
    Real elmt_product20 "";
    Real elmt_product26 "";
    Real elmt_product25 "";
    Real elmt_product24 "";
    Real elmt_product19 "";
    Real elmt_reaction_4(unit = "") "HPL";
    Real elmt_reactant27 "";
    Real elmt_product28 "";
    Real elmt_reaction_1(unit = "") "LOX1";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI2\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-03-16T14:36:22Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product8 "";
    Real elmt_product7 "";
    Real elmt_product6 "";
    Real elmt_product1 "";
    Real elmt_product5 "";
    Real elmt_product4 "";
    Real elmt_reactant0 "";
    Real elmt_product3 "";
    Real elmt_product2 "";
    Real elmt_reaction_2(unit = "") "LOX2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product12 "";
    Real elmt_product11 "";
    Real elmt_product10 "";
    Real elmt_product16 "";
    Real elmt_reactant9 "";
    Real elmt_product15 "";
    Real elmt_product14 "";
    Real elmt_product13 "";
    Real elmt_product17 "";


    initial equation
        elmt_product30 = 1.0;
        elmt_product12 = 0.025;
        elmt_product11 = 0.023;
        elmt_product10 = 0.751;
        elmt_reactant27 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_product26 = 0.097;
        elmt_reactant9 = 1.0;
        elmt_product25 = 0.098;
        elmt_product24 = 0.218;
        elmt_product28 = 1.0;
        elmt_product8 = 0.004;
        elmt_product7 = 0.014;
        elmt_product6 = 0.04;
        elmt_product23 = 0.218;
        elmt_product22 = 0.107;
        elmt_product21 = 0.136;
        elmt_product20 = 0.059;
        elmt_product1 = 0.574;
        elmt_product5 = 0.162;
        elmt_product4 = 0.012;
        elmt_reactant0 = 1.0;
        elmt_product3 = 0.05;
        elmt_product2 = 0.144;
        elmt_reactant29 = 1.0;
        elmt_product16 = 0.018;
        elmt_product15 = 0.026;
        elmt_product14 = 0.127;
        elmt_product13 = 0.015;
        elmt_product19 = 0.068;
        elmt_product17 = 0.016;


    equation
        elmt_reaction_5 = (elmt_compartment_1 * (((elmt_parameter_9 * elmt_species_8) / (elmt_parameter_7 + elmt_species_8))));
        elmt_reaction_3 = (elmt_compartment_1 * (((elmt_parameter_6 * elmt_species_1) / (elmt_parameter_5 + elmt_species_1))));
        elmt_reaction_4 = (elmt_compartment_1 * (((elmt_parameter_8 * elmt_species_7) / (elmt_parameter_7 + elmt_species_7))));
        elmt_reaction_1 = (elmt_compartment_1 * (((elmt_parameter_2 * elmt_species_1) / (elmt_parameter_1 + elmt_species_1))));
        elmt_reaction_2 = (elmt_compartment_1 * (((elmt_parameter_4 * elmt_species_1) / (elmt_parameter_3 + elmt_species_1))));
        der(elmt_product30) = 0;
        der(elmt_product12) = 0;
        der(elmt_product11) = 0;
        der(elmt_product10) = 0;
        der(elmt_reactant27) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_product26) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product25) = 0;
        der(elmt_product24) = 0;
        der(elmt_product28) = 0;
        der(elmt_product8) = 0;
        der(elmt_product7) = 0;
        der(elmt_product6) = 0;
        der(elmt_product23) = 0;
        der(elmt_product22) = 0;
        der(elmt_product21) = 0;
        der(elmt_product20) = 0;
        der(elmt_product1) = 0;
        der(elmt_product5) = 0;
        der(elmt_product4) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product3) = 0;
        der(elmt_product2) = 0;
        der(elmt_reactant29) = 0;
        der(elmt_product16) = 0;
        der(elmt_product15) = 0;
        der(elmt_product14) = 0;
        der(elmt_product13) = 0;
        der(elmt_product19) = 0;
        der(elmt_product17) = 0;

end Reactions;
