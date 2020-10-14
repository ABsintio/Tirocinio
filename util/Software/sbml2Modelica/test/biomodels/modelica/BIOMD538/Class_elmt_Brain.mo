within BIOMD538;
class Class_elmt_Brain

    input Real elmt_Mupcd;
    input Real elmt_Rrom;
    input Real elmt_ONLrom_0;
    input Real elmt_Munr;
    input Real elmt_Murom;

    Real elmt_Brain(unit = "") "Brain";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_ONLrom_conc(unit = "");
    Real elmt_ONLrom_amount(unit = "");
    Real elmt_ONLrom(unit = "") "ONLrom";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI3\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-08-06T16:58:29Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_ONLnr_conc(unit = "");
    Real elmt_ONLnr_amount(unit = "");
    Real elmt_ONLnr(unit = "") "ONLnr";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI1\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-08-06T16:27:34Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_ONLpcd_conc(unit = "");
    Real elmt_ONLpcd_amount(unit = "");
    Real elmt_ONLpcd(unit = "") "ONLpcd";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI2\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-08-06T16:43:28Z</dcterms:W3CDTF>
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
        elmt_ONLnr_conc = 100.0;
        elmt_ONLpcd_conc = 100.0;


    equation
        assert(elmt_Brain >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Brain) = 0;
        elmt_ONLrom = elmt_ONLrom_conc;
        elmt_ONLnr = elmt_ONLnr_conc;
        elmt_ONLpcd = elmt_ONLpcd_conc;
        elmt_ONLrom_amount = ((elmt_ONLrom_0 * exp((((exp(((- elmt_Rrom) * time)) - 1.0) * elmt_Murom) / elmt_Rrom)) * 100.0) / elmt_ONLrom_0) * elmt_Brain;
        der(elmt_ONLnr_amount / elmt_Brain) = ((- elmt_Munr) * elmt_ONLnr);
        der(elmt_ONLpcd_amount / elmt_Brain) = ((- elmt_Mupcd) * elmt_ONLpcd);

    algorithm
        elmt_ONLrom_conc := elmt_ONLrom_amount / elmt_Brain;
        elmt_ONLnr_conc := elmt_ONLnr_amount / elmt_Brain;
        elmt_ONLpcd_conc := elmt_ONLpcd_amount / elmt_Brain;
end Class_elmt_Brain;
