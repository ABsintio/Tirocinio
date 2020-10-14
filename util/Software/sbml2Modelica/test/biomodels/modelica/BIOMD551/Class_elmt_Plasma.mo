within BIOMD551;
class Class_elmt_Plasma

    input Real elmt_k1;
    input Real elmt_deltap;
    input Real elmt_l;
    input Real elmt_J;
    input Real elmt_C;
    input Real elmt_r;

    Real elmt_Plasma(unit = "") "Plasma";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI2\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-07-31T14:15:57Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_P_conc(unit = "");
    Real elmt_P_amount(unit = "");
    Real elmt_P(unit = "") "P";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI4\">
            <CopasiMT:isVersionOf>
              <rdf:Bag>
                <rdf:li rdf:resource=\"http://identifiers.org/uniprot/P05067\"/>
              </rdf:Bag>
            </CopasiMT:isVersionOf>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_Plasma = 1.0;
        elmt_P_conc = 1.0;


    equation
        assert(elmt_Plasma >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Plasma) = 0;
        elmt_P = elmt_P_conc;
        der(elmt_P_amount / elmt_Plasma) = (((elmt_k1 * elmt_r * elmt_C) - (elmt_J * elmt_r)) - (elmt_deltap * elmt_P * elmt_l));

    algorithm
        elmt_P_conc := elmt_P_amount / elmt_Plasma;
end Class_elmt_Plasma;
