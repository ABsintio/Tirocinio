within BIOMD554;
class Class_elmt_Astrocytes

    input Real elmt_Vcg_GLC;
    input Real elmt_Vg_leak_Na;
    input Real elmt_dAMP_dATPg;
    input Real elmt_Vcg_O2;
    input Real elmt_NAero;
    input Real elmt_Vge_LAC;
    input Real elmt_ATPtot;
    input Real elmt_Vg_ATPase;
    input Real elmt_Vg_hk;
    input Real elmt_Vg_glys;
    input Real elmt_Vgc_LAC;
    input Real elmt_Vg_glyp;
    input Real elmt_Vg_pump;
    input Real elmt_nOP;
    input Real elmt_Vg_pgk;
    input Real elmt_Vg_pgi;
    input Real elmt_Vg_mito;
    input Real elmt_Veg_GLU;
    input Real elmt_Vg_pk;
    input Real elmt_qak;
    input Real elmt_Vg_pfk;
    input Real elmt_Vg_ck;
    input Real elmt_Veg_GLC;
    input Real elmt_Vg_ldh;
    input Real elmt_Vg_gs;

    Real elmt_Astrocytes(unit = "") "Astrocytes";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI1\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-22T11:48:59Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_PCrg_conc(unit = "");
    Real elmt_PCrg_amount(unit = "");
    Real elmt_PCrg(unit = "") "PCrg";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI15\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-22T13:54:14Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_CRg_conc(unit = "");
    Real elmt_CRg_amount(unit = "");
    Real elmt_CRg(unit = "") "CRg";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI21\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-22T14:38:14Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_PCrg_tot_conc(unit = "");
    Real elmt_PCrg_tot_amount(unit = "");
    Real elmt_PCrg_tot(unit = "") "PCrg_tot";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI23\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-22T15:46:14Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_G6Pg_conc(unit = "");
    Real elmt_G6Pg_amount(unit = "");
    Real elmt_G6Pg(unit = "") "G6Pg";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI7\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-22T13:42:14Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_NAg_conc(unit = "");
    Real elmt_NAg_amount(unit = "");
    Real elmt_NAg(unit = "") "NAg";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI5\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-22T13:38:14Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_PEPg_conc(unit = "");
    Real elmt_PEPg_amount(unit = "");
    Real elmt_PEPg(unit = "") "PEPg";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI10\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-22T13:45:14Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_NADH_g_tot_conc(unit = "");
    Real elmt_NADH_g_tot_amount(unit = "");
    Real elmt_NADH_g_tot(unit = "") "NADH_g_tot";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI22\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-22T15:43:14Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_AMPg_conc(unit = "");
    Real elmt_AMPg_amount(unit = "");
    Real elmt_AMPg(unit = "") "AMPg";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI24\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-22T15:49:14Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_ATPg_conc(unit = "");
    Real elmt_ATPg_amount(unit = "");
    Real elmt_ATPg(unit = "") "ATPg";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI14\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-22T13:53:14Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_F6Pg_conc(unit = "");
    Real elmt_F6Pg_amount(unit = "");
    Real elmt_F6Pg(unit = "") "F6Pg";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI8\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-22T13:43:14Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_GLCg_conc(unit = "");
    Real elmt_GLCg_amount(unit = "");
    Real elmt_GLCg(unit = "") "GLCg";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI6\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-22T13:41:14Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_NADHg_conc(unit = "");
    Real elmt_NADHg_amount(unit = "");
    Real elmt_NADHg(unit = "") "NADHg";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI13\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-22T13:52:14Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_GLYg_conc(unit = "");
    Real elmt_GLYg_amount(unit = "");
    Real elmt_GLYg(unit = "") "GLYg";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI17\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-22T13:58:14Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_NADg_conc(unit = "");
    Real elmt_NADg_amount(unit = "");
    Real elmt_NADg(unit = "") "NADg";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI19\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-22T14:30:14Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_O2g_conc(unit = "");
    Real elmt_O2g_amount(unit = "");
    Real elmt_O2g(unit = "") "O2g";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI16\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-22T13:56:14Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_GAPg_conc(unit = "");
    Real elmt_GAPg_amount(unit = "");
    Real elmt_GAPg(unit = "") "GAPg";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI9\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-22T13:44:14Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_PYRg_conc(unit = "");
    Real elmt_PYRg_amount(unit = "");
    Real elmt_PYRg(unit = "") "PYRg";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI11\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-22T13:47:14Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_ADPg_conc(unit = "");
    Real elmt_ADPg_amount(unit = "");
    Real elmt_ADPg(unit = "") "ADPg";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI20\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-22T14:37:14Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_LACg_conc(unit = "");
    Real elmt_LACg_amount(unit = "");
    Real elmt_LACg(unit = "") "LACg";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI12\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-22T13:49:14Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_GLUg_conc(unit = "");
    Real elmt_GLUg_amount(unit = "");
    Real elmt_GLUg(unit = "") "GLUg";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI18\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-22T13:59:14Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_Astrocytes = 1.0;
        elmt_PCrg_conc = 4.6817;
        elmt_PCrg_tot_conc = 5.0;
        elmt_G6Pg_conc = 0.7326;
        elmt_NAg_conc = 13.36;
        elmt_PEPg_conc = 0.0254;
        elmt_NADH_g_tot_conc = 0.22;
        elmt_ATPg_conc = 2.24;
        elmt_F6Pg_conc = 0.1116;
        elmt_GLCg_conc = 0.1656;
        elmt_NADHg_conc = 0.0445;
        elmt_GLYg_conc = 2.5;
        elmt_O2g_conc = 0.1589;
        elmt_GAPg_conc = 0.0698;
        elmt_PYRg_conc = 0.1711;
        elmt_LACg_conc = 0.4651;
        elmt_GLUg_conc = 0.0;


    equation
        assert(elmt_Astrocytes >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Astrocytes) = 0;
        elmt_PCrg = elmt_PCrg_conc;
        elmt_CRg = elmt_CRg_conc;
        elmt_PCrg_tot = elmt_PCrg_tot_conc;
        elmt_G6Pg = elmt_G6Pg_conc;
        elmt_NAg = elmt_NAg_conc;
        elmt_PEPg = elmt_PEPg_conc;
        elmt_NADH_g_tot = elmt_NADH_g_tot_conc;
        elmt_AMPg = elmt_AMPg_conc;
        elmt_ATPg = elmt_ATPg_conc;
        elmt_F6Pg = elmt_F6Pg_conc;
        elmt_GLCg = elmt_GLCg_conc;
        elmt_NADHg = elmt_NADHg_conc;
        elmt_GLYg = elmt_GLYg_conc;
        elmt_NADg = elmt_NADg_conc;
        elmt_O2g = elmt_O2g_conc;
        elmt_GAPg = elmt_GAPg_conc;
        elmt_PYRg = elmt_PYRg_conc;
        elmt_ADPg = elmt_ADPg_conc;
        elmt_LACg = elmt_LACg_conc;
        elmt_GLUg = elmt_GLUg_conc;
        der(elmt_PCrg_amount / elmt_Astrocytes) = (- elmt_Vg_ck);
        elmt_CRg_amount = (elmt_PCrg_tot - elmt_PCrg) * elmt_Astrocytes;
        der(elmt_PCrg_tot_amount) = 0;
        der(elmt_G6Pg_amount / elmt_Astrocytes) = ((elmt_Vg_hk + elmt_Vg_glyp) - (elmt_Vg_pgi + elmt_Vg_glys));
        der(elmt_NAg_amount / elmt_Astrocytes) = ((elmt_Vg_leak_Na + (3.0 * elmt_Veg_GLU)) - (3.0 * elmt_Vg_pump));
        der(elmt_PEPg_amount / elmt_Astrocytes) = (elmt_Vg_pgk - elmt_Vg_pk);
        der(elmt_NADH_g_tot_amount) = 0;
        elmt_AMPg_amount = (elmt_ATPtot - (elmt_ATPg + elmt_ADPg)) * elmt_Astrocytes;
        der(elmt_ATPg_amount / elmt_Astrocytes) = (((elmt_Vg_pgk + elmt_Vg_pk + (elmt_nOP * elmt_Vg_mito) + elmt_Vg_ck) - (elmt_Vg_hk + elmt_Vg_pfk + elmt_Vg_ATPase + elmt_Vg_pump + elmt_Vg_gs)) * Functions.pow((1.0 - elmt_dAMP_dATPg), (- 1.0)));
        der(elmt_F6Pg_amount / elmt_Astrocytes) = (elmt_Vg_pgi - elmt_Vg_pfk);
        der(elmt_GLCg_amount / elmt_Astrocytes) = ((elmt_Vcg_GLC + elmt_Veg_GLC) - elmt_Vg_hk);
        der(elmt_NADHg_amount / elmt_Astrocytes) = (elmt_Vg_pgk - (elmt_Vg_ldh + elmt_Vg_mito));
        der(elmt_GLYg_amount / elmt_Astrocytes) = (elmt_Vg_glys - elmt_Vg_glyp);
        elmt_NADg_amount = (elmt_NADH_g_tot - elmt_NADHg) * elmt_Astrocytes;
        der(elmt_O2g_amount / elmt_Astrocytes) = (elmt_Vcg_O2 - (elmt_NAero * elmt_Vg_mito));
        der(elmt_GAPg_amount / elmt_Astrocytes) = ((2.0 * elmt_Vg_pfk) - elmt_Vg_pgk);
        der(elmt_PYRg_amount / elmt_Astrocytes) = (elmt_Vg_pk - (elmt_Vg_ldh + elmt_Vg_mito));
        elmt_ADPg_amount = ((elmt_ATPg / 2.0) * ((- elmt_qak) + Functions.pow((Functions.pow(elmt_qak, 2.0) + (4.0 * elmt_qak * ((elmt_ATPtot / elmt_ATPg) - 1.0))), (1.0 / 2.0)))) * elmt_Astrocytes;
        der(elmt_LACg_amount / elmt_Astrocytes) = (elmt_Vg_ldh - (elmt_Vge_LAC + elmt_Vgc_LAC));
        der(elmt_GLUg_amount / elmt_Astrocytes) = (elmt_Veg_GLU - elmt_Vg_gs);

    algorithm
        elmt_PCrg_conc := elmt_PCrg_amount / elmt_Astrocytes;
        elmt_CRg_conc := elmt_CRg_amount / elmt_Astrocytes;
        elmt_PCrg_tot_conc := elmt_PCrg_tot_amount / elmt_Astrocytes;
        elmt_G6Pg_conc := elmt_G6Pg_amount / elmt_Astrocytes;
        elmt_NAg_conc := elmt_NAg_amount / elmt_Astrocytes;
        elmt_PEPg_conc := elmt_PEPg_amount / elmt_Astrocytes;
        elmt_NADH_g_tot_conc := elmt_NADH_g_tot_amount / elmt_Astrocytes;
        elmt_AMPg_conc := elmt_AMPg_amount / elmt_Astrocytes;
        elmt_ATPg_conc := elmt_ATPg_amount / elmt_Astrocytes;
        elmt_F6Pg_conc := elmt_F6Pg_amount / elmt_Astrocytes;
        elmt_GLCg_conc := elmt_GLCg_amount / elmt_Astrocytes;
        elmt_NADHg_conc := elmt_NADHg_amount / elmt_Astrocytes;
        elmt_GLYg_conc := elmt_GLYg_amount / elmt_Astrocytes;
        elmt_NADg_conc := elmt_NADg_amount / elmt_Astrocytes;
        elmt_O2g_conc := elmt_O2g_amount / elmt_Astrocytes;
        elmt_GAPg_conc := elmt_GAPg_amount / elmt_Astrocytes;
        elmt_PYRg_conc := elmt_PYRg_amount / elmt_Astrocytes;
        elmt_ADPg_conc := elmt_ADPg_amount / elmt_Astrocytes;
        elmt_LACg_conc := elmt_LACg_amount / elmt_Astrocytes;
        elmt_GLUg_conc := elmt_GLUg_amount / elmt_Astrocytes;
end Class_elmt_Astrocytes;
