within BIOMD554;
class Class_elmt_Neurons

    input Real elmt_dAMP_dATPn;
    input Real elmt_Vn_pk;
    input Real elmt_Vn_ATPase;
    input Real elmt_Vn_ck;
    input Real elmt_Vcn_O2;
    input Real elmt_NAero;
    input Real elmt_qak;
    input Real elmt_Vn_hk;
    input Real elmt_Vn_mito;
    input Real elmt_ATPtot;
    input Real elmt_Vn_pgi;
    input Real elmt_Vn_pfk;
    input Real elmt_Vn_pgk;
    input Real elmt_Vn_leak_Na;
    input Real elmt_Vn_ldh;
    input Real elmt_nOP;
    input Real elmt_V_en_GLC;
    input Real elmt_Vne_LAC;
    input Real elmt_Vg_gs;
    input Real elmt_Vn_pump;
    input Real elmt_Rng;
    input Real elmt_Vn_stim;
    input Real elmt_Vn_stim_GLU;

    Real elmt_Neurons(unit = "") "Neurons";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI4\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-22T11:52:18Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_NADH_n_tot_conc(unit = "");
    Real elmt_NADH_n_tot_amount(unit = "");
    Real elmt_NADH_n_tot(unit = "") "NADH_n_tot";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI53\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-22T15:42:14Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_ADPn_conc(unit = "");
    Real elmt_ADPn_amount(unit = "");
    Real elmt_ADPn(unit = "") "ADPn";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI50\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-22T14:25:14Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_LACn_conc(unit = "");
    Real elmt_LACn_amount(unit = "");
    Real elmt_LACn(unit = "") "LACn";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI44\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-22T13:24:14Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_CRn_conc(unit = "");
    Real elmt_CRn_amount(unit = "");
    Real elmt_CRn(unit = "") "CRn";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI51\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-22T14:27:14Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_PCrn_tot_conc(unit = "");
    Real elmt_PCrn_tot_amount(unit = "");
    Real elmt_PCrn_tot(unit = "") "PCrn_tot";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI54\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-22T15:45:14Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_AMPn_conc(unit = "");
    Real elmt_AMPn_amount(unit = "");
    Real elmt_AMPn(unit = "") "AMPn";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI55\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-22T15:48:14Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_NAn_conc(unit = "");
    Real elmt_NAn_amount(unit = "");
    Real elmt_NAn(unit = "") "NAn";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI37\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-22T11:57:14Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_F6Pn_conc(unit = "");
    Real elmt_F6Pn_amount(unit = "");
    Real elmt_F6Pn(unit = "") "F6Pn";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI40\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-22T13:15:14Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_G6Pn_conc(unit = "");
    Real elmt_G6Pn_amount(unit = "");
    Real elmt_G6Pn(unit = "") "G6Pn";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI39\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-22T13:15:14Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_PYRn_conc(unit = "");
    Real elmt_PYRn_amount(unit = "");
    Real elmt_PYRn(unit = "") "PYRn";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI43\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-22T13:23:14Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_ATPn_conc(unit = "");
    Real elmt_ATPn_amount(unit = "");
    Real elmt_ATPn(unit = "") "ATPn";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI46\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-22T13:27:14Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_GLCn_conc(unit = "");
    Real elmt_GLCn_amount(unit = "");
    Real elmt_GLCn(unit = "") "GLCn";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI38\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-22T13:12:14Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_NADHn_conc(unit = "");
    Real elmt_NADHn_amount(unit = "");
    Real elmt_NADHn(unit = "") "NADHn";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI45\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-22T13:26:14Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_PCrn_conc(unit = "");
    Real elmt_PCrn_amount(unit = "");
    Real elmt_PCrn(unit = "") "PCrn";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI47\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-22T13:30:14Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_NADn_conc(unit = "");
    Real elmt_NADn_amount(unit = "");
    Real elmt_NADn(unit = "") "NADn";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI52\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-22T14:31:14Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_GLUn_conc(unit = "");
    Real elmt_GLUn_amount(unit = "");
    Real elmt_GLUn(unit = "") "GLUn";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI49\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-22T13:35:14Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_PEPn_conc(unit = "");
    Real elmt_PEPn_amount(unit = "");
    Real elmt_PEPn(unit = "") "PEPn";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI42\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-22T13:22:14Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_O2n_conc(unit = "");
    Real elmt_O2n_amount(unit = "");
    Real elmt_O2n(unit = "") "O2n";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI48\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-22T13:33:14Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_GAPn_conc(unit = "");
    Real elmt_GAPn_amount(unit = "");
    Real elmt_GAPn(unit = "") "GAPn";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI41\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-22T13:19:14Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_Neurons = 1.0;
        elmt_NADH_n_tot_conc = 0.22;
        elmt_LACn_conc = 0.3856;
        elmt_PCrn_tot_conc = 5.0;
        elmt_NAn_conc = 15.533;
        elmt_F6Pn_conc = 0.1091;
        elmt_G6Pn_conc = 0.7275;
        elmt_PYRn_conc = 0.0388;
        elmt_ATPn_conc = 2.2592;
        elmt_GLCn_conc = 0.2633;
        elmt_NADHn_conc = 0.0319;
        elmt_PCrn_conc = 4.2529;
        elmt_GLUn_conc = 3.0;
        elmt_PEPn_conc = 0.0037;
        elmt_O2n_conc = 0.0975;
        elmt_GAPn_conc = 0.0418;


    equation
        assert(elmt_Neurons >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Neurons) = 0;
        elmt_NADH_n_tot = elmt_NADH_n_tot_conc;
        elmt_ADPn = elmt_ADPn_conc;
        elmt_LACn = elmt_LACn_conc;
        elmt_CRn = elmt_CRn_conc;
        elmt_PCrn_tot = elmt_PCrn_tot_conc;
        elmt_AMPn = elmt_AMPn_conc;
        elmt_NAn = elmt_NAn_conc;
        elmt_F6Pn = elmt_F6Pn_conc;
        elmt_G6Pn = elmt_G6Pn_conc;
        elmt_PYRn = elmt_PYRn_conc;
        elmt_ATPn = elmt_ATPn_conc;
        elmt_GLCn = elmt_GLCn_conc;
        elmt_NADHn = elmt_NADHn_conc;
        elmt_PCrn = elmt_PCrn_conc;
        elmt_NADn = elmt_NADn_conc;
        elmt_GLUn = elmt_GLUn_conc;
        elmt_PEPn = elmt_PEPn_conc;
        elmt_O2n = elmt_O2n_conc;
        elmt_GAPn = elmt_GAPn_conc;
        der(elmt_NADH_n_tot_amount) = 0;
        elmt_ADPn_amount = ((elmt_ATPn / 2.0) * ((- elmt_qak) + Functions.pow((Functions.pow(elmt_qak, 2.0) + (4.0 * elmt_qak * ((elmt_ATPtot / elmt_ATPn) - 1.0))), (1.0 / 2.0)))) * elmt_Neurons;
        der(elmt_LACn_amount / elmt_Neurons) = (elmt_Vn_ldh - elmt_Vne_LAC);
        elmt_CRn_amount = (elmt_PCrn_tot - elmt_PCrn) * elmt_Neurons;
        der(elmt_PCrn_tot_amount) = 0;
        elmt_AMPn_amount = (elmt_ATPtot - (elmt_ATPn + elmt_ADPn)) * elmt_Neurons;
        der(elmt_NAn_amount / elmt_Neurons) = ((elmt_Vn_leak_Na + elmt_Vn_stim) - (3.0 * elmt_Vn_pump));
        der(elmt_F6Pn_amount / elmt_Neurons) = (elmt_Vn_pgi - elmt_Vn_pfk);
        der(elmt_G6Pn_amount / elmt_Neurons) = (elmt_Vn_hk - elmt_Vn_pgi);
        der(elmt_PYRn_amount / elmt_Neurons) = (elmt_Vn_pk - (elmt_Vn_ldh + elmt_Vn_mito));
        der(elmt_ATPn_amount / elmt_Neurons) = (((elmt_Vn_pgk + elmt_Vn_pk + (elmt_nOP * elmt_Vn_mito) + elmt_Vn_ck) - (elmt_Vn_hk + elmt_Vn_pfk + elmt_Vn_ATPase + elmt_Vn_pump)) * Functions.pow((1.0 - elmt_dAMP_dATPn), (- 1.0)));
        der(elmt_GLCn_amount / elmt_Neurons) = (elmt_V_en_GLC - elmt_Vn_hk);
        der(elmt_NADHn_amount / elmt_Neurons) = (elmt_Vn_pgk - (elmt_Vn_ldh + elmt_Vn_mito));
        der(elmt_PCrn_amount / elmt_Neurons) = (- elmt_Vn_ck);
        elmt_NADn_amount = (elmt_NADH_n_tot - elmt_NADHn) * elmt_Neurons;
        der(elmt_GLUn_amount / elmt_Neurons) = ((elmt_Vg_gs * (1.0 / elmt_Rng)) - elmt_Vn_stim_GLU);
        der(elmt_PEPn_amount / elmt_Neurons) = (elmt_Vn_pgk - elmt_Vn_pk);
        der(elmt_O2n_amount / elmt_Neurons) = (elmt_Vcn_O2 - (elmt_NAero * elmt_Vn_mito));
        der(elmt_GAPn_amount / elmt_Neurons) = ((2.0 * elmt_Vn_pfk) - elmt_Vn_pgk);

    algorithm
        elmt_NADH_n_tot_conc := elmt_NADH_n_tot_amount / elmt_Neurons;
        elmt_ADPn_conc := elmt_ADPn_amount / elmt_Neurons;
        elmt_LACn_conc := elmt_LACn_amount / elmt_Neurons;
        elmt_CRn_conc := elmt_CRn_amount / elmt_Neurons;
        elmt_PCrn_tot_conc := elmt_PCrn_tot_amount / elmt_Neurons;
        elmt_AMPn_conc := elmt_AMPn_amount / elmt_Neurons;
        elmt_NAn_conc := elmt_NAn_amount / elmt_Neurons;
        elmt_F6Pn_conc := elmt_F6Pn_amount / elmt_Neurons;
        elmt_G6Pn_conc := elmt_G6Pn_amount / elmt_Neurons;
        elmt_PYRn_conc := elmt_PYRn_amount / elmt_Neurons;
        elmt_ATPn_conc := elmt_ATPn_amount / elmt_Neurons;
        elmt_GLCn_conc := elmt_GLCn_amount / elmt_Neurons;
        elmt_NADHn_conc := elmt_NADHn_amount / elmt_Neurons;
        elmt_PCrn_conc := elmt_PCrn_amount / elmt_Neurons;
        elmt_NADn_conc := elmt_NADn_amount / elmt_Neurons;
        elmt_GLUn_conc := elmt_GLUn_amount / elmt_Neurons;
        elmt_PEPn_conc := elmt_PEPn_amount / elmt_Neurons;
        elmt_O2n_conc := elmt_O2n_amount / elmt_Neurons;
        elmt_GAPn_conc := elmt_GAPn_amount / elmt_Neurons;
end Class_elmt_Neurons;
