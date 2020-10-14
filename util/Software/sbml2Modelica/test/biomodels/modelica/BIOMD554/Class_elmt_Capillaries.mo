within BIOMD554;
class Class_elmt_Capillaries

    input Real elmt_Vcg_GLC;
    input Real elmt_Rcg;
    input Real elmt_Rce;
    input Real elmt_Vec_LAC;
    input Real elmt_Vcn_O2;
    input Real elmt_Rcn;
    input Real elmt_Vgc_CO2;
    input Real elmt_Vc_GLC;
    input Real elmt_Vcg_O2;
    input Real elmt_Vce_GLC;
    input Real elmt_Vgc_LAC;
    input Real elmt_Vnc_CO2;
    input Real elmt_Vc_CO2;
    input Real elmt_Vc_O2;
    input Real elmt_Vc_LAC;

    Real elmt_Capillaries(unit = "") "Capillaries";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI2\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-22T11:49:06Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_LACc_conc(unit = "");
    Real elmt_LACc_amount(unit = "");
    Real elmt_LACc(unit = "") "LACc";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI27\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-22T14:13:14Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_GLCc_conc(unit = "");
    Real elmt_GLCc_amount(unit = "");
    Real elmt_GLCc(unit = "") "GLCc";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI26\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-22T14:12:14Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_O2c_conc(unit = "");
    Real elmt_O2c_amount(unit = "");
    Real elmt_O2c(unit = "") "O2c";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI25\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-22T14:11:14Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_CO2c_conc(unit = "");
    Real elmt_CO2c_amount(unit = "");
    Real elmt_CO2c(unit = "") "CO2c";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI28\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-22T14:14:14Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_Capillaries = 1.0;
        elmt_LACc_conc = 0.3251;
        elmt_GLCc_conc = 4.6401;
        elmt_O2c_conc = 7.4201;
        elmt_CO2c_conc = 2.12;


    equation
        assert(elmt_Capillaries >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Capillaries) = 0;
        elmt_LACc = elmt_LACc_conc;
        elmt_GLCc = elmt_GLCc_conc;
        elmt_O2c = elmt_O2c_conc;
        elmt_CO2c = elmt_CO2c_conc;
        der(elmt_LACc_amount / elmt_Capillaries) = (elmt_Vc_LAC + (elmt_Vec_LAC * (1.0 / elmt_Rce)) + (elmt_Vgc_LAC * (1.0 / elmt_Rcg)));
        der(elmt_GLCc_amount / elmt_Capillaries) = (elmt_Vc_GLC - ((elmt_Vce_GLC * (1.0 / elmt_Rce)) + (elmt_Vcg_GLC * (1.0 / elmt_Rcg))));
        der(elmt_O2c_amount / elmt_Capillaries) = (elmt_Vc_O2 - ((elmt_Vcn_O2 * (1.0 / elmt_Rcn)) + (elmt_Vcg_O2 * (1.0 / elmt_Rcg))));
        der(elmt_CO2c_amount / elmt_Capillaries) = (((elmt_Vnc_CO2 * (1.0 / elmt_Rcn)) + (elmt_Vgc_CO2 * (1.0 / elmt_Rcg))) - elmt_Vc_CO2);

    algorithm
        elmt_LACc_conc := elmt_LACc_amount / elmt_Capillaries;
        elmt_GLCc_conc := elmt_GLCc_amount / elmt_Capillaries;
        elmt_O2c_conc := elmt_O2c_amount / elmt_Capillaries;
        elmt_CO2c_conc := elmt_CO2c_amount / elmt_Capillaries;
end Class_elmt_Capillaries;
