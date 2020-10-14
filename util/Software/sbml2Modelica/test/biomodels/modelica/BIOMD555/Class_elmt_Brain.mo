within BIOMD555;
class Class_elmt_Brain

    input Real elmt_n;
    input Real elmt_omega;

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
                    <dcterms:W3CDTF>2014-11-03T13:44:51Z</dcterms:W3CDTF>
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
        elmt_Amyloid_amount = (1.0 - exp((- Functions.pow((time / elmt_omega), elmt_n)))) * elmt_Brain;

    algorithm
        elmt_Amyloid_conc := elmt_Amyloid_amount / elmt_Brain;
end Class_elmt_Brain;
