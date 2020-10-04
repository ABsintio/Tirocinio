within BIOMD354;
class Class_elmt_mitochondria

    input Real elmt_ERtoMito;
    input Real elmt_product11;
    input Real elmt_mw69f19152_7258_45b0_bf9e_b196f19d7e03;
    input Real elmt_product15;
    input Real elmt_mwfaf5e05a_b642_4ee2_a069_3c2fc783fba4;
    input Real elmt_reactant12;

    Real elmt_mitochondria(unit = "") "mito";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_CaM_conc(unit = "");
    Real elmt_CaM_amount(unit = "");
    Real elmt_CaM(unit = "") "CaM";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    initial equation
        elmt_mitochondria = 1.0;
        elmt_CaM_conc = (0.0 / elmt_mitochondria);


    equation
        assert(elmt_mitochondria >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_mitochondria) = 0;
        elmt_CaM = elmt_CaM_conc;
        der(elmt_CaM_amount) = ((elmt_ERtoMito * elmt_product15) + (- (elmt_mw69f19152_7258_45b0_bf9e_b196f19d7e03 * elmt_reactant12)) + (elmt_mwfaf5e05a_b642_4ee2_a069_3c2fc783fba4 * elmt_product11));

    algorithm
        elmt_CaM_conc := elmt_CaM_amount / elmt_mitochondria;
end Class_elmt_mitochondria;
