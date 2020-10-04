within BIOMD554;
class Class_elmt_Extracellular_space

    input Real elmt_Reg;
    input Real elmt_Veg_GLC;
    input Real elmt_Veg_GLU;
    input Real elmt_V_en_GLC;
    input Real elmt_Vne_LAC;
    input Real elmt_Vec_LAC;
    input Real elmt_Ren;
    input Real elmt_Vce_GLC;
    input Real elmt_Vge_LAC;
    input Real elmt_Vn_stim_GLU;

    Real elmt_Extracellular_space(unit = "") "Extracellular space";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI3\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-22T11:48:13Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_GLCa_conc(unit = "");
    Real elmt_GLCa_amount(unit = "");
    Real elmt_GLCa(unit = "") "GLCa";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI35\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-22T15:52:14Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_GLUe_conc(unit = "");
    Real elmt_GLUe_amount(unit = "");
    Real elmt_GLUe(unit = "") "GLUe";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI31\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-22T14:09:14Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_LACa_conc(unit = "");
    Real elmt_LACa_amount(unit = "");
    Real elmt_LACa(unit = "") "LACa";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI36\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-22T15:54:14Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_NAe_conc(unit = "");
    Real elmt_NAe_amount(unit = "");
    Real elmt_NAe(unit = "") "NAe";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI32\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-22T14:43:14Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_O2a_conc(unit = "");
    Real elmt_O2a_amount(unit = "");
    Real elmt_O2a(unit = "") "O2a";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI33\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-22T15:51:14Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_GLCe_conc(unit = "");
    Real elmt_GLCe_amount(unit = "");
    Real elmt_GLCe(unit = "") "GLCe";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI29\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-22T14:06:14Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_LACe_conc(unit = "");
    Real elmt_LACe_amount(unit = "");
    Real elmt_LACe(unit = "") "LACe";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI30\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-22T14:08:14Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_CO2a_conc(unit = "");
    Real elmt_CO2a_amount(unit = "");
    Real elmt_CO2a(unit = "") "CO2a";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI34\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-22T15:52:14Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_Extracellular_space = 1.0;
        elmt_GLCa_conc = 4.8;
        elmt_GLUe_conc = 0.0;
        elmt_LACa_conc = 0.313;
        elmt_NAe_conc = 150.0;
        elmt_O2a_conc = 8.34;
        elmt_GLCe_conc = 0.3339;
        elmt_LACe_conc = 0.3986;
        elmt_CO2a_conc = 1.2;


    equation
        assert(elmt_Extracellular_space >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Extracellular_space) = 0;
        elmt_GLCa = elmt_GLCa_conc;
        elmt_GLUe = elmt_GLUe_conc;
        elmt_LACa = elmt_LACa_conc;
        elmt_NAe = elmt_NAe_conc;
        elmt_O2a = elmt_O2a_conc;
        elmt_GLCe = elmt_GLCe_conc;
        elmt_LACe = elmt_LACe_conc;
        elmt_CO2a = elmt_CO2a_conc;
        der(elmt_GLCa_amount) = 0;
        der(elmt_GLUe_amount / elmt_Extracellular_space) = ((elmt_Vn_stim_GLU * (1.0 / elmt_Ren)) - (elmt_Veg_GLU * (1.0 / elmt_Reg)));
        der(elmt_LACa_amount) = 0;
        der(elmt_NAe_amount) = 0;
        der(elmt_O2a_amount) = 0;
        der(elmt_GLCe_amount / elmt_Extracellular_space) = (elmt_Vce_GLC - ((elmt_Veg_GLC * (1.0 / elmt_Reg)) + (elmt_V_en_GLC * (1.0 / elmt_Ren))));
        der(elmt_LACe_amount / elmt_Extracellular_space) = (((elmt_Vne_LAC * (1.0 / elmt_Ren)) + (elmt_Vge_LAC * (1.0 / elmt_Reg))) - elmt_Vec_LAC);
        der(elmt_CO2a_amount) = 0;

    algorithm
        elmt_GLCa_conc := elmt_GLCa_amount / elmt_Extracellular_space;
        elmt_GLUe_conc := elmt_GLUe_amount / elmt_Extracellular_space;
        elmt_LACa_conc := elmt_LACa_amount / elmt_Extracellular_space;
        elmt_NAe_conc := elmt_NAe_amount / elmt_Extracellular_space;
        elmt_O2a_conc := elmt_O2a_amount / elmt_Extracellular_space;
        elmt_GLCe_conc := elmt_GLCe_amount / elmt_Extracellular_space;
        elmt_LACe_conc := elmt_LACe_amount / elmt_Extracellular_space;
        elmt_CO2a_conc := elmt_CO2a_amount / elmt_Extracellular_space;
end Class_elmt_Extracellular_space;
