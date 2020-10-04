within BIOMD548;
class Class_elmt_Brain

    input Real elmt_m;
    input Real elmt_gamma;
    input Real elmt_sigma;
    input Real elmt_nu;

    Real elmt_Brain(unit = "") "Brain ";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_P_conc(unit = "");
    Real elmt_P_amount(unit = "");
    Real elmt_P(unit = "") "P";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI2\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-09-10T10:17:36Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_F_conc(unit = "");
    Real elmt_F_amount(unit = "");
    Real elmt_F(unit = "") "F";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI1\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-09-10T10:16:28Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_C_conc(unit = "");
    Real elmt_C_amount(unit = "");
    Real elmt_C(unit = "") "C";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI3\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-09-10T10:18:04Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_Brain = 1.0;
        elmt_P_conc = 0.0;
        elmt_F_conc = 135.0;
        elmt_C_conc = 18.0;


    equation
        assert(elmt_Brain >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Brain) = 0;
        elmt_P = elmt_P_conc;
        elmt_F = elmt_F_conc;
        elmt_C = elmt_C_conc;
        der(elmt_P_amount / elmt_Brain) = (((elmt_sigma - elmt_P) - (elmt_gamma * elmt_F * elmt_P)) + (elmt_nu * elmt_C));
        der(elmt_F_amount / elmt_Brain) = ((elmt_m / (1.0 + elmt_P)) - (elmt_gamma * elmt_F * elmt_P));
        der(elmt_C_amount / elmt_Brain) = ((elmt_gamma * elmt_F * elmt_P) - (elmt_nu * elmt_C));

    algorithm
        elmt_P_conc := elmt_P_amount / elmt_Brain;
        elmt_F_conc := elmt_F_amount / elmt_Brain;
        elmt_C_conc := elmt_C_amount / elmt_Brain;
end Class_elmt_Brain;
