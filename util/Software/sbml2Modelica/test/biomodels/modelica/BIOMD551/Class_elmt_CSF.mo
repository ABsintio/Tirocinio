within BIOMD551;
class Class_elmt_CSF

    input Real elmt_k1;
    input Real elmt_Sc;
    input Real elmt_J;
    input Real elmt_Ki;
    input Real elmt_g_t;

    Real elmt_CSF(unit = "") "CSF";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI1\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-07-31T14:16:04Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_C_conc(unit = "");
    Real elmt_C_amount(unit = "");
    Real elmt_C(unit = "") "C";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI3\">
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
        elmt_CSF = 1.0;
        elmt_C_conc = 1.0;


    equation
        assert(elmt_CSF >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_CSF) = 0;
        elmt_C = elmt_C_conc;
        der(elmt_C_amount / elmt_CSF) = (((elmt_Sc / (1.0 + (elmt_g_t / elmt_Ki))) - (elmt_k1 * elmt_C)) + elmt_J);

    algorithm
        elmt_C_conc := elmt_C_amount / elmt_CSF;
end Class_elmt_CSF;
