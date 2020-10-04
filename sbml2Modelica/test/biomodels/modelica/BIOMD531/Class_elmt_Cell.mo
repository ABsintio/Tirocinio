within BIOMD531;
class Class_elmt_Cell

    input Real elmt_Ka;
    input Real elmt_kb;

    Real elmt_Cell(unit = "") "Cell";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_alpha_conc(unit = "");
    Real elmt_alpha_amount(unit = "");
    Real elmt_alpha(unit = "") "alpha";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI1\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-07-15T14:40:47Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_Cell = 1.0;


    equation
        assert(elmt_Cell >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Cell) = 0;
        elmt_alpha = elmt_alpha_conc;
        elmt_alpha_amount = (1.0 - (1.0 / ((elmt_kb * (exp((elmt_Ka * time)) - 1.0)) + 1.0))) * elmt_Cell;

    algorithm
        elmt_alpha_conc := elmt_alpha_amount / elmt_Cell;
end Class_elmt_Cell;
