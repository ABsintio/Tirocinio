within BIOMD355;
class Class_elmt_mitochondria

    input Real elmt_ERtoMito;
    input Real elmt_reactant20;
    input Real elmt_mw1c50c3d1_dab9_423a_8373_6a4c75479b54;
    input Real elmt_mwa61047ec_49c1_47b2_b78e_4d84a33d432a;
    input Real elmt_product19;
    input Real elmt_product17;

    Real elmt_mitochondria(unit = "") "mito";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_mw013a7c64_a9ec_483c_b3b8_ed658337ee95_conc(unit = "");
    Real elmt_mw013a7c64_a9ec_483c_b3b8_ed658337ee95_amount(unit = "");
    Real elmt_mw013a7c64_a9ec_483c_b3b8_ed658337ee95(unit = "") "CaM";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    initial equation
        elmt_mitochondria = 1.0;
        elmt_mw013a7c64_a9ec_483c_b3b8_ed658337ee95_conc = (0.0 / elmt_mitochondria);


    equation
        assert(elmt_mitochondria >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_mitochondria) = 0;
        elmt_mw013a7c64_a9ec_483c_b3b8_ed658337ee95 = elmt_mw013a7c64_a9ec_483c_b3b8_ed658337ee95_conc;
        der(elmt_mw013a7c64_a9ec_483c_b3b8_ed658337ee95_amount) = ((elmt_ERtoMito * elmt_product19) + (- (elmt_mw1c50c3d1_dab9_423a_8373_6a4c75479b54 * elmt_reactant20)) + (elmt_mwa61047ec_49c1_47b2_b78e_4d84a33d432a * elmt_product17));

    algorithm
        elmt_mw013a7c64_a9ec_483c_b3b8_ed658337ee95_conc := elmt_mw013a7c64_a9ec_483c_b3b8_ed658337ee95_amount / elmt_mitochondria;
end Class_elmt_mitochondria;
