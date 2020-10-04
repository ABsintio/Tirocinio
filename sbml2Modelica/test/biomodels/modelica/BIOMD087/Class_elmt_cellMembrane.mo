within BIOMD087;
class Class_elmt_cellMembrane

    input Real elmt_product179;
    input Real elmt_MtoG1Progession;

    Real elmt_cellMembrane(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_budscar_amount(unit = "");
    Real elmt_budscar_conc(unit = "");
    Real elmt_budscar(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    initial equation
        elmt_cellMembrane = 1.0;
        elmt_budscar_amount = 0.0;


    equation
        assert(elmt_cellMembrane >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cellMembrane) = 0;
        elmt_budscar = elmt_budscar_amount;
        der(elmt_budscar_amount) = (elmt_MtoG1Progession * elmt_product179);

    algorithm
        elmt_budscar_conc := elmt_budscar_amount / elmt_cellMembrane;
end Class_elmt_cellMembrane;
