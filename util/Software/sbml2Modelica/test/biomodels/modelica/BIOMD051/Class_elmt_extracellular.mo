within BIOMD051;
class Class_elmt_extracellular

    input Real elmt_vPTS;
    input Real elmt_product76;
    input Real elmt_vEXTER;
    input Real elmt_reactant0;

    Real elmt_extracellular(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_cglcex_conc(unit = "");
    Real elmt_cglcex_amount(unit = "");
    Real elmt_cglcex(unit = "") "Extracellular Glucose";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    initial equation
        elmt_extracellular = 1.0;
        elmt_cglcex_conc = 2.0;


    equation
        assert(elmt_extracellular >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_extracellular) = 0;
        elmt_cglcex = elmt_cglcex_conc;
        der(elmt_cglcex_amount) = ((elmt_vEXTER * elmt_product76) + (- (elmt_vPTS * elmt_reactant0)));

    algorithm
        elmt_cglcex_conc := elmt_cglcex_amount / elmt_extracellular;
end Class_elmt_extracellular;
