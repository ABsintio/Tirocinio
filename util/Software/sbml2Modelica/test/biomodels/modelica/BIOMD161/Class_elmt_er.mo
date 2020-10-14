within BIOMD161;
class Class_elmt_er

    input Real elmt_flux2;
    input Real elmt_product93;
    input Real elmt_product89;
    input Real elmt_product91;
    input Real elmt_flux0;
    input Real elmt_flux1;

    Real elmt_er(unit = "") "er";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Ca_ER_conc(unit = "");
    Real elmt_Ca_ER_amount(unit = "");
    Real elmt_Ca_ER(unit = "") "";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <Compound Name=\"Calcium\"/>
      </VCellInfo>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_er = 0.012;
        elmt_Ca_ER_conc = 120400.0;


    equation
        assert(elmt_er >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_er) = 0;
        elmt_Ca_ER = elmt_Ca_ER_conc;
        der(elmt_Ca_ER_amount) = ((elmt_flux2 * elmt_product93) + (elmt_flux0 * elmt_product91) + (elmt_flux1 * elmt_product89));

    algorithm
        elmt_Ca_ER_conc := elmt_Ca_ER_amount / elmt_er;
end Class_elmt_er;
