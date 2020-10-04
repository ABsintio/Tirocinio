within BIOMD590;
model MODEL1512160000 "Hermansen2015 - denovo biosynthesis of pyrimidines in yeast" annotation(Documentation(info="<annotation>
  <rdf:RDF>
	
    <rdf:Description>
      <dc:creator rdf:parseType=\"Resource\"/>
    </rdf:Description>
  </rdf:RDF>
  <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
    <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\">
      <rdf:Description rdf:about=\"#COPASI0\">
        <dcterms:bibliographicCitation>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/doi/doi:10.1186/s12862-015-0515-x\"/>
          </rdf:Description>
        </dcterms:bibliographicCitation>
        <dcterms:created>
          <rdf:Description>
            <dcterms:W3CDTF>2015-12-10T13:40:40Z</dcterms:W3CDTF>
          </rdf:Description>
        </dcterms:created>
        <dcterms:creator>
          <rdf:Description>
            <vCard:EMAIL>mannakee@email.arizona.edu</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Mannakee</vCard:Family>
                <vCard:Given>Brian</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>University of Arizona</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </dcterms:creator>
        <dcterms:creator>
          <rdf:Description>
            <vCard:EMAIL>rgutenk@email.arizona.edu</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Gutenkunst</vCard:Family>
                <vCard:Given>Ryan</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>University of Arizona</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </dcterms:creator>
        <CopasiMT:encodes rdf:resource=\"http://identifiers.org/kegg.pathway/rn00240\"/>
      </rdf:Description>
    </rdf:RDF>
  </COPASI>
</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment elmt_compartment;

    equation
        Reacs.elmt_vmax8 = Params.elmt_vmax8;
        Reacs.elmt_g_pyr = Params.elmt_g_pyr;
        Reacs.elmt_vmax7 = Params.elmt_vmax7;
        Reacs.elmt_compartment = elmt_compartment.elmt_compartment;
        Reacs.elmt_bc = Params.elmt_bc;
        Reacs.elmt_vmax10 = Params.elmt_vmax10;
        Reacs.elmt_utp = elmt_compartment.elmt_utp;
        Reacs.elmt_K_q = Params.elmt_K_q;
        Reacs.elmt_asp = Params.elmt_asp;
        Reacs.elmt_vmax2 = Params.elmt_vmax2;
        Reacs.elmt_vmax1 = Params.elmt_vmax1;
        Reacs.elmt_vmax4 = Params.elmt_vmax4;
        Reacs.elmt_vmax3 = Params.elmt_vmax3;
        Reacs.elmt_d = Params.elmt_d;
        Reacs.elmt_K_atp = Params.elmt_K_atp;
        Reacs.elmt_vmax6 = Params.elmt_vmax6;
        Reacs.elmt_vmax5 = Params.elmt_vmax5;
        Reacs.elmt_K_bc = Params.elmt_K_bc;
        Reacs.elmt_K_m10 = Params.elmt_K_m10;
        Reacs.elmt_udp = elmt_compartment.elmt_udp;
        Reacs.elmt_K_Mp = Params.elmt_K_Mp;
        Reacs.elmt_ump = elmt_compartment.elmt_ump;
        Reacs.elmt_K_m8 = Params.elmt_K_m8;
        Reacs.elmt_omp = elmt_compartment.elmt_omp;
        Reacs.elmt_cp = elmt_compartment.elmt_cp;
        Reacs.elmt_ctp = elmt_compartment.elmt_ctp;
        Reacs.elmt_atp = Params.elmt_atp;
        Reacs.elmt_K_asp = Params.elmt_K_asp;
        Reacs.elmt_prpp = Params.elmt_prpp;
        Reacs.elmt_K_m6 = Params.elmt_K_m6;
        Reacs.elmt_glu = Params.elmt_glu;
        Reacs.elmt_K_m7 = Params.elmt_K_m7;
        Reacs.elmt_ca = elmt_compartment.elmt_ca;
        Reacs.elmt_K_utp = Params.elmt_K_utp;
        Reacs.elmt_K_m4 = Params.elmt_K_m4;
        Reacs.elmt_K_m5 = Params.elmt_K_m5;
        Reacs.elmt_oro = elmt_compartment.elmt_oro;
        Reacs.elmt_K_m2 = Params.elmt_K_m2;
        Reacs.elmt_K_m3 = Params.elmt_K_m3;
        Reacs.elmt_dho = elmt_compartment.elmt_dho;
        elmt_compartment.elmt_r7 = Reacs.elmt_r7;
        elmt_compartment.elmt_r8 = Reacs.elmt_r8;
        elmt_compartment.elmt_r5 = Reacs.elmt_r5;
        elmt_compartment.elmt_r6 = Reacs.elmt_r6;
        elmt_compartment.elmt_utp_degradation = Reacs.elmt_utp_degradation;
        elmt_compartment.elmt_reactant20 = Reacs.elmt_reactant20;
        elmt_compartment.elmt_product12 = Reacs.elmt_product12;
        elmt_compartment.elmt_r3 = Reacs.elmt_r3;
        elmt_compartment.elmt_r4 = Reacs.elmt_r4;
        elmt_compartment.elmt_product10 = Reacs.elmt_product10;
        elmt_compartment.elmt_utp_dilution = Reacs.elmt_utp_dilution;
        elmt_compartment.elmt_r1 = Reacs.elmt_r1;
        elmt_compartment.elmt_r2 = Reacs.elmt_r2;
        elmt_compartment.elmt_reactant25 = Reacs.elmt_reactant25;
        elmt_compartment.elmt_reactant26 = Reacs.elmt_reactant26;
        elmt_compartment.elmt_reactant27 = Reacs.elmt_reactant27;
        elmt_compartment.elmt_reactant21 = Reacs.elmt_reactant21;
        elmt_compartment.elmt_udp_dilution = Reacs.elmt_udp_dilution;
        elmt_compartment.elmt_reactant22 = Reacs.elmt_reactant22;
        elmt_compartment.elmt_reactant23 = Reacs.elmt_reactant23;
        elmt_compartment.elmt_reactant24 = Reacs.elmt_reactant24;
        elmt_compartment.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_compartment.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt_compartment.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_compartment.elmt_ctp_dilution = Reacs.elmt_ctp_dilution;
        elmt_compartment.elmt_omp_dilution = Reacs.elmt_omp_dilution;
        elmt_compartment.elmt_product8 = Reacs.elmt_product8;
        elmt_compartment.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_compartment.elmt_ctp_degradation = Reacs.elmt_ctp_degradation;
        elmt_compartment.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_compartment.elmt_product6 = Reacs.elmt_product6;
        elmt_compartment.elmt_ca_dilution = Reacs.elmt_ca_dilution;
        elmt_compartment.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_compartment.elmt_cp_dilution = Reacs.elmt_cp_dilution;
        elmt_compartment.elmt_r10 = Reacs.elmt_r10;
        elmt_compartment.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_compartment.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_compartment.elmt_product0 = Reacs.elmt_product0;
        elmt_compartment.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_compartment.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_compartment.elmt_oro_dilution = Reacs.elmt_oro_dilution;
        elmt_compartment.elmt_product4 = Reacs.elmt_product4;
        elmt_compartment.elmt_reactant13 = Reacs.elmt_reactant13;
        elmt_compartment.elmt_product2 = Reacs.elmt_product2;
        elmt_compartment.elmt_product14 = Reacs.elmt_product14;
        elmt_compartment.elmt_ump_dilution = Reacs.elmt_ump_dilution;
        elmt_compartment.elmt_dho_dilution = Reacs.elmt_dho_dilution;
        elmt_compartment.elmt_product17 = Reacs.elmt_product17;

end MODEL1512160000;
