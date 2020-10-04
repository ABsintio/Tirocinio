within BIOMD561;
class Class_elmt_Brain

    input Real elmt_ka;
    input Real elmt_deltamt;
    input Real elmt_kb;

    Real elmt_Brain(unit = "") "Brain";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Amyloid_conc(unit = "");
    Real elmt_Amyloid_amount(unit = "");
    Real elmt_Amyloid(unit = "") "Amyloid";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI1\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-12-11T10:55:36Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_Brain = 1.0;


    equation
        assert(elmt_Brain >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Brain) = 0;
        elmt_Amyloid = elmt_Amyloid_conc;
        elmt_Amyloid_amount = ((1.0 - (1.0 / ((elmt_kb * (exp((elmt_ka * time)) - 1.0)) + 1.0))) * elmt_deltamt) * elmt_Brain;

    algorithm
        elmt_Amyloid_conc := elmt_Amyloid_amount / elmt_Brain;
end Class_elmt_Brain;
