within BIOMD554;
model Cloutier2009_BrainEnergyMetabolism "Cloutier2009 - Brain Energy Metabolism" annotation(Documentation(info="<annotation>
  <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
    <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\">
      <rdf:Description rdf:about=\"#COPASI0\">
        <dcterms:bibliographicCitation>
          <rdf:Bag>
            <rdf:li>
              <rdf:Description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/19396534\"/>
              </rdf:Description>
            </rdf:li>
          </rdf:Bag>
        </dcterms:bibliographicCitation>
        <dcterms:created>
          <rdf:Description>
            <dcterms:W3CDTF>2010-06-25T12:46:06Z</dcterms:W3CDTF>
          </rdf:Description>
        </dcterms:created>
        <dcterms:creator>
          <rdf:Bag>
            <rdf:li rdf:parseType=\"Resource\">
            <vCard:N rdf:parseType=\"Resource\">
              <vCard:Family>Lloret i Villas</vCard:Family>
              <vCard:Given>Audald</vCard:Given>
            </vCard:N>
            <vCard:EMAIL>lloret@ebi.ac.uk</vCard:EMAIL>
            <vCard:ORG rdf:parseType=\"Resource\">
              <vCard:Orgname>EMBL-EBI</vCard:Orgname>
            </vCard:ORG>
          </rdf:li>
            <rdf:li>
              <rdf:Description>
                <vCard:EMAIL>c.lloyd@auckland.ac.nz</vCard:EMAIL>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>Lloyd</vCard:Family>
                    <vCard:Given>Catherine</vCard:Given>
                  </rdf:Description>
                </vCard:N>
                <vCard:ORG>
                  <rdf:Description>
                    <vCard:Orgname>University of Auckland</vCard:Orgname>
                  </rdf:Description>
                </vCard:ORG>
              </rdf:Description>
            </rdf:li>
          </rdf:Bag>
        </dcterms:creator>
        <dcterms:modified>
          <rdf:Description>
            <dcterms:W3CDTF>2010-06-25T12:46:06Z</dcterms:W3CDTF>
          </rdf:Description>
        </dcterms:modified>
        <CopasiMT:is>
          <rdf:Bag>
            <rdf:li rdf:resource=\"http://identifiers.org/biomodels.db/MODEL1006230041\"/>
          </rdf:Bag>
        </CopasiMT:is>
      </rdf:Description>
    </rdf:RDF>
  </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_Neurons elmt_Neurons;
    Class_elmt_Capillaries elmt_Capillaries;
    Class_elmt_Extracellular_space elmt_Extracellular_space;
    Class_elmt_Astrocytes elmt_Astrocytes;

    equation
        Params.elmt_ADPn = elmt_Neurons.elmt_ADPn;
        Params.elmt_PEPg = elmt_Astrocytes.elmt_PEPg;
        Params.elmt_LACn = elmt_Neurons.elmt_LACn;
        Params.elmt_O2c = elmt_Capillaries.elmt_O2c;
        Params.elmt_ATPg = elmt_Astrocytes.elmt_ATPg;
        Params.elmt_O2a = elmt_Extracellular_space.elmt_O2a;
        Params.elmt_F6Pg = elmt_Astrocytes.elmt_F6Pg;
        Params.elmt_F6Pn = elmt_Neurons.elmt_F6Pn;
        Params.elmt_NADHg = elmt_Astrocytes.elmt_NADHg;
        Params.elmt_LACc = elmt_Capillaries.elmt_LACc;
        Params.elmt_LACa = elmt_Extracellular_space.elmt_LACa;
        Params.elmt_GLCn = elmt_Neurons.elmt_GLCn;
        Params.elmt_O2g = elmt_Astrocytes.elmt_O2g;
        Params.elmt_GAPg = elmt_Astrocytes.elmt_GAPg;
        Params.elmt_PCrn = elmt_Neurons.elmt_PCrn;
        Params.elmt_ADPg = elmt_Astrocytes.elmt_ADPg;
        Params.elmt_O2n = elmt_Neurons.elmt_O2n;
        Params.elmt_LACg = elmt_Astrocytes.elmt_LACg;
        Params.elmt_GAPn = elmt_Neurons.elmt_GAPn;
        Params.elmt_LACe = elmt_Extracellular_space.elmt_LACe;
        Params.elmt_GLCa = elmt_Extracellular_space.elmt_GLCa;
        Params.elmt_PCrg = elmt_Astrocytes.elmt_PCrg;
        Params.elmt_CRg = elmt_Astrocytes.elmt_CRg;
        Params.elmt_GLCc = elmt_Capillaries.elmt_GLCc;
        Params.elmt_G6Pg = elmt_Astrocytes.elmt_G6Pg;
        Params.elmt_NAg = elmt_Astrocytes.elmt_NAg;
        Params.elmt_NAe = elmt_Extracellular_space.elmt_NAe;
        Params.elmt_CRn = elmt_Neurons.elmt_CRn;
        Params.elmt_GLCe = elmt_Extracellular_space.elmt_GLCe;
        Params.elmt_NAn = elmt_Neurons.elmt_NAn;
        Params.elmt_G6Pn = elmt_Neurons.elmt_G6Pn;
        Params.elmt_PYRn = elmt_Neurons.elmt_PYRn;
        Params.elmt_GLCg = elmt_Astrocytes.elmt_GLCg;
        Params.elmt_GLYg = elmt_Astrocytes.elmt_GLYg;
        Params.elmt_NADg = elmt_Astrocytes.elmt_NADg;
        Params.elmt_GLUe = elmt_Extracellular_space.elmt_GLUe;
        Params.elmt_ATPn = elmt_Neurons.elmt_ATPn;
        Params.elmt_NADHn = elmt_Neurons.elmt_NADHn;
        Params.elmt_PYRg = elmt_Astrocytes.elmt_PYRg;
        Params.elmt_NADn = elmt_Neurons.elmt_NADn;
        Params.elmt_GLUn = elmt_Neurons.elmt_GLUn;
        Params.elmt_GLUg = elmt_Astrocytes.elmt_GLUg;
        Params.elmt_CO2c = elmt_Capillaries.elmt_CO2c;
        Params.elmt_PEPn = elmt_Neurons.elmt_PEPn;
        Params.elmt_CO2a = elmt_Extracellular_space.elmt_CO2a;
        elmt_Neurons.elmt_dAMP_dATPn = Params.elmt_dAMP_dATPn;
        elmt_Neurons.elmt_Vn_pk = Params.elmt_Vn_pk;
        elmt_Neurons.elmt_Vn_ATPase = Params.elmt_Vn_ATPase;
        elmt_Neurons.elmt_Vn_ck = Params.elmt_Vn_ck;
        elmt_Neurons.elmt_Vcn_O2 = Params.elmt_Vcn_O2;
        elmt_Neurons.elmt_NAero = Params.elmt_NAero;
        elmt_Neurons.elmt_qak = Params.elmt_qak;
        elmt_Neurons.elmt_Vn_hk = Params.elmt_Vn_hk;
        elmt_Neurons.elmt_Vn_mito = Params.elmt_Vn_mito;
        elmt_Neurons.elmt_ATPtot = Params.elmt_ATPtot;
        elmt_Neurons.elmt_Vn_pgi = Params.elmt_Vn_pgi;
        elmt_Neurons.elmt_Vn_pfk = Params.elmt_Vn_pfk;
        elmt_Neurons.elmt_Vn_pgk = Params.elmt_Vn_pgk;
        elmt_Neurons.elmt_Vn_leak_Na = Params.elmt_Vn_leak_Na;
        elmt_Neurons.elmt_Vn_ldh = Params.elmt_Vn_ldh;
        elmt_Neurons.elmt_nOP = Params.elmt_nOP;
        elmt_Neurons.elmt_V_en_GLC = Params.elmt_V_en_GLC;
        elmt_Neurons.elmt_Vne_LAC = Params.elmt_Vne_LAC;
        elmt_Neurons.elmt_Vg_gs = Params.elmt_Vg_gs;
        elmt_Neurons.elmt_Vn_pump = Params.elmt_Vn_pump;
        elmt_Neurons.elmt_Rng = Params.elmt_Rng;
        elmt_Neurons.elmt_Vn_stim = Params.elmt_Vn_stim;
        elmt_Neurons.elmt_Vn_stim_GLU = Params.elmt_Vn_stim_GLU;
        elmt_Extracellular_space.elmt_Reg = Params.elmt_Reg;
        elmt_Extracellular_space.elmt_Veg_GLC = Params.elmt_Veg_GLC;
        elmt_Extracellular_space.elmt_Veg_GLU = Params.elmt_Veg_GLU;
        elmt_Extracellular_space.elmt_V_en_GLC = Params.elmt_V_en_GLC;
        elmt_Extracellular_space.elmt_Vne_LAC = Params.elmt_Vne_LAC;
        elmt_Extracellular_space.elmt_Vec_LAC = Params.elmt_Vec_LAC;
        elmt_Extracellular_space.elmt_Ren = Params.elmt_Ren;
        elmt_Extracellular_space.elmt_Vce_GLC = Params.elmt_Vce_GLC;
        elmt_Extracellular_space.elmt_Vge_LAC = Params.elmt_Vge_LAC;
        elmt_Extracellular_space.elmt_Vn_stim_GLU = Params.elmt_Vn_stim_GLU;
        elmt_Astrocytes.elmt_Vcg_GLC = Params.elmt_Vcg_GLC;
        elmt_Astrocytes.elmt_Vg_leak_Na = Params.elmt_Vg_leak_Na;
        elmt_Astrocytes.elmt_dAMP_dATPg = Params.elmt_dAMP_dATPg;
        elmt_Astrocytes.elmt_Vcg_O2 = Params.elmt_Vcg_O2;
        elmt_Astrocytes.elmt_NAero = Params.elmt_NAero;
        elmt_Astrocytes.elmt_Vge_LAC = Params.elmt_Vge_LAC;
        elmt_Astrocytes.elmt_ATPtot = Params.elmt_ATPtot;
        elmt_Astrocytes.elmt_Vg_ATPase = Params.elmt_Vg_ATPase;
        elmt_Astrocytes.elmt_Vg_hk = Params.elmt_Vg_hk;
        elmt_Astrocytes.elmt_Vg_glys = Params.elmt_Vg_glys;
        elmt_Astrocytes.elmt_Vgc_LAC = Params.elmt_Vgc_LAC;
        elmt_Astrocytes.elmt_Vg_glyp = Params.elmt_Vg_glyp;
        elmt_Astrocytes.elmt_Vg_pump = Params.elmt_Vg_pump;
        elmt_Astrocytes.elmt_nOP = Params.elmt_nOP;
        elmt_Astrocytes.elmt_Vg_pgk = Params.elmt_Vg_pgk;
        elmt_Astrocytes.elmt_Vg_pgi = Params.elmt_Vg_pgi;
        elmt_Astrocytes.elmt_Vg_mito = Params.elmt_Vg_mito;
        elmt_Astrocytes.elmt_Veg_GLU = Params.elmt_Veg_GLU;
        elmt_Astrocytes.elmt_Vg_pk = Params.elmt_Vg_pk;
        elmt_Astrocytes.elmt_qak = Params.elmt_qak;
        elmt_Astrocytes.elmt_Vg_pfk = Params.elmt_Vg_pfk;
        elmt_Astrocytes.elmt_Vg_ck = Params.elmt_Vg_ck;
        elmt_Astrocytes.elmt_Veg_GLC = Params.elmt_Veg_GLC;
        elmt_Astrocytes.elmt_Vg_ldh = Params.elmt_Vg_ldh;
        elmt_Astrocytes.elmt_Vg_gs = Params.elmt_Vg_gs;
        elmt_Capillaries.elmt_Vcg_GLC = Params.elmt_Vcg_GLC;
        elmt_Capillaries.elmt_Rcg = Params.elmt_Rcg;
        elmt_Capillaries.elmt_Rce = Params.elmt_Rce;
        elmt_Capillaries.elmt_Vec_LAC = Params.elmt_Vec_LAC;
        elmt_Capillaries.elmt_Vcn_O2 = Params.elmt_Vcn_O2;
        elmt_Capillaries.elmt_Rcn = Params.elmt_Rcn;
        elmt_Capillaries.elmt_Vgc_CO2 = Params.elmt_Vgc_CO2;
        elmt_Capillaries.elmt_Vc_GLC = Params.elmt_Vc_GLC;
        elmt_Capillaries.elmt_Vcg_O2 = Params.elmt_Vcg_O2;
        elmt_Capillaries.elmt_Vce_GLC = Params.elmt_Vce_GLC;
        elmt_Capillaries.elmt_Vgc_LAC = Params.elmt_Vgc_LAC;
        elmt_Capillaries.elmt_Vnc_CO2 = Params.elmt_Vnc_CO2;
        elmt_Capillaries.elmt_Vc_CO2 = Params.elmt_Vc_CO2;
        elmt_Capillaries.elmt_Vc_O2 = Params.elmt_Vc_O2;
        elmt_Capillaries.elmt_Vc_LAC = Params.elmt_Vc_LAC;

end Cloutier2009_BrainEnergyMetabolism;
