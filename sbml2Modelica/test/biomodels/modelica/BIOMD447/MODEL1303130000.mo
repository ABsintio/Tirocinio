within BIOMD447;
model MODEL1303130000 "Venkatraman2012 - Interplay between PLS and TSP1 in TGF-β1 activation" annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\">
          <rdf:Description rdf:about=\"#COPASI1\">
            <dcterms:bibliographicCitation>
              <rdf:Description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/23009856\"/>
              </rdf:Description>
            </dcterms:bibliographicCitation>
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2012-11-10T11:27:58Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <dcterms:creator>
              <rdf:Description>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>Venkatraman</vCard:Family>
                    <vCard:Given>Lakshmi</vCard:Given>
                  </rdf:Description>
                </vCard:N>
              </rdf:Description>
            </dcterms:creator>
            <dcterms:creator>
              <rdf:Description>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>Chia</vCard:Family>
                    <vCard:Given>Ser-Mien</vCard:Given>
                  </rdf:Description>
                </vCard:N>
              </rdf:Description>
            </dcterms:creator>
            <dcterms:creator>
              <rdf:Description>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>Narmada</vCard:Family>
                    <vCard:Given>Balakrishnan Chakrapani</vCard:Given>
                  </rdf:Description>
                </vCard:N>
              </rdf:Description>
            </dcterms:creator>
            <dcterms:creator>
              <rdf:Description>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>White</vCard:Family>
                    <vCard:Given>Jacob</vCard:Given>
                  </rdf:Description>
                </vCard:N>
              </rdf:Description>
            </dcterms:creator>
            <dcterms:creator>
              <rdf:Description>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>Bhowmick</vCard:Family>
                    <vCard:Given>Sourav</vCard:Given>
                  </rdf:Description>
                </vCard:N>
              </rdf:Description>
            </dcterms:creator>
            <dcterms:creator>
              <rdf:Description>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>Dewey</vCard:Family>
                    <vCard:Given>Forbes</vCard:Given>
                  </rdf:Description>
                </vCard:N>
              </rdf:Description>
            </dcterms:creator>
            <dcterms:creator>
              <rdf:Description>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>So</vCard:Family>
                    <vCard:Given>Peter</vCard:Given>
                  </rdf:Description>
                </vCard:N>
              </rdf:Description>
            </dcterms:creator>
            <dcterms:creator>
              <rdf:Description>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>Tucker-Kellogg</vCard:Family>
                    <vCard:Given>Lisa</vCard:Given>
                  </rdf:Description>
                </vCard:N>
              </rdf:Description>
            </dcterms:creator>
            <dcterms:creator>
              <rdf:Description>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>Yu</vCard:Family>
                    <vCard:Given>Hanry</vCard:Given>
                  </rdf:Description>
                </vCard:N>
              </rdf:Description>
            </dcterms:creator>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment_1 elmt_compartment_1;

    equation
        Reacs.elmt_parameter_11 = Params.elmt_parameter_11;
        Reacs.elmt_parameter_10 = Params.elmt_parameter_10;
        Reacs.elmt_parameter_9 = Params.elmt_parameter_9;
        Reacs.elmt_parameter_8 = Params.elmt_parameter_8;
        Reacs.elmt_parameter_7 = Params.elmt_parameter_7;
        Reacs.elmt_species_6 = elmt_compartment_1.elmt_species_6;
        Reacs.elmt_parameter_19 = Params.elmt_parameter_19;
        Reacs.elmt_species_7 = elmt_compartment_1.elmt_species_7;
        Reacs.elmt_parameter_18 = Params.elmt_parameter_18;
        Reacs.elmt_species_4 = elmt_compartment_1.elmt_species_4;
        Reacs.elmt_parameter_17 = Params.elmt_parameter_17;
        Reacs.elmt_species_5 = elmt_compartment_1.elmt_species_5;
        Reacs.elmt_parameter_16 = Params.elmt_parameter_16;
        Reacs.elmt_parameter_15 = Params.elmt_parameter_15;
        Reacs.elmt_parameter_14 = Params.elmt_parameter_14;
        Reacs.elmt_species_8 = elmt_compartment_1.elmt_species_8;
        Reacs.elmt_parameter_13 = Params.elmt_parameter_13;
        Reacs.elmt_species_9 = elmt_compartment_1.elmt_species_9;
        Reacs.elmt_parameter_12 = Params.elmt_parameter_12;
        Reacs.elmt_compartment_1 = elmt_compartment_1.elmt_compartment_1;
        Reacs.elmt_parameter_6 = Params.elmt_parameter_6;
        Reacs.elmt_parameter_5 = Params.elmt_parameter_5;
        Reacs.elmt_parameter_4 = Params.elmt_parameter_4;
        Reacs.elmt_species_10 = elmt_compartment_1.elmt_species_10;
        Reacs.elmt_parameter_3 = Params.elmt_parameter_3;
        Reacs.elmt_species_11 = elmt_compartment_1.elmt_species_11;
        Reacs.elmt_parameter_2 = Params.elmt_parameter_2;
        Reacs.elmt_species_12 = elmt_compartment_1.elmt_species_12;
        Reacs.elmt_parameter_1 = Params.elmt_parameter_1;
        Reacs.elmt_species_13 = elmt_compartment_1.elmt_species_13;
        Reacs.elmt_parameter_22 = Params.elmt_parameter_22;
        Reacs.elmt_parameter_21 = Params.elmt_parameter_21;
        Reacs.elmt_parameter_20 = Params.elmt_parameter_20;
        Reacs.elmt_parameter_23 = Params.elmt_parameter_23;
        Reacs.elmt_species_2 = elmt_compartment_1.elmt_species_2;
        Reacs.elmt_species_3 = elmt_compartment_1.elmt_species_3;
        Reacs.elmt_species_1 = elmt_compartment_1.elmt_species_1;
        elmt_compartment_1.elmt_product34 = Reacs.elmt_product34;
        elmt_compartment_1.elmt_product31 = Reacs.elmt_product31;
        elmt_compartment_1.elmt_reactant47 = Reacs.elmt_reactant47;
        elmt_compartment_1.elmt_reactant48 = Reacs.elmt_reactant48;
        elmt_compartment_1.elmt_reactant49 = Reacs.elmt_reactant49;
        elmt_compartment_1.elmt_reactant45 = Reacs.elmt_reactant45;
        elmt_compartment_1.elmt_reactant46 = Reacs.elmt_reactant46;
        elmt_compartment_1.elmt_reaction_27 = Reacs.elmt_reaction_27;
        elmt_compartment_1.elmt_reaction_28 = Reacs.elmt_reaction_28;
        elmt_compartment_1.elmt_reaction_25 = Reacs.elmt_reaction_25;
        elmt_compartment_1.elmt_reaction_26 = Reacs.elmt_reaction_26;
        elmt_compartment_1.elmt_reaction_29 = Reacs.elmt_reaction_29;
        elmt_compartment_1.elmt_product26 = Reacs.elmt_product26;
        elmt_compartment_1.elmt_reaction_20 = Reacs.elmt_reaction_20;
        elmt_compartment_1.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_compartment_1.elmt_product25 = Reacs.elmt_product25;
        elmt_compartment_1.elmt_reaction_23 = Reacs.elmt_reaction_23;
        elmt_compartment_1.elmt_reaction_24 = Reacs.elmt_reaction_24;
        elmt_compartment_1.elmt_reaction_21 = Reacs.elmt_reaction_21;
        elmt_compartment_1.elmt_product29 = Reacs.elmt_product29;
        elmt_compartment_1.elmt_reaction_22 = Reacs.elmt_reaction_22;
        elmt_compartment_1.elmt_reactant50 = Reacs.elmt_reactant50;
        elmt_compartment_1.elmt_product41 = Reacs.elmt_product41;
        elmt_compartment_1.elmt_reactant51 = Reacs.elmt_reactant51;
        elmt_compartment_1.elmt_product40 = Reacs.elmt_product40;
        elmt_compartment_1.elmt_reactant52 = Reacs.elmt_reactant52;
        elmt_compartment_1.elmt_reactant53 = Reacs.elmt_reactant53;
        elmt_compartment_1.elmt_product44 = Reacs.elmt_product44;
        elmt_compartment_1.elmt_product43 = Reacs.elmt_product43;
        elmt_compartment_1.elmt_product42 = Reacs.elmt_product42;
        elmt_compartment_1.elmt_reaction_3 = Reacs.elmt_reaction_3;
        elmt_compartment_1.elmt_reactant58 = Reacs.elmt_reactant58;
        elmt_compartment_1.elmt_reaction_4 = Reacs.elmt_reaction_4;
        elmt_compartment_1.elmt_reactant59 = Reacs.elmt_reactant59;
        elmt_compartment_1.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_compartment_1.elmt_reaction_1 = Reacs.elmt_reaction_1;
        elmt_compartment_1.elmt_reaction_2 = Reacs.elmt_reaction_2;
        elmt_compartment_1.elmt_reactant17 = Reacs.elmt_reactant17;
        elmt_compartment_1.elmt_reactant54 = Reacs.elmt_reactant54;
        elmt_compartment_1.elmt_reactant55 = Reacs.elmt_reactant55;
        elmt_compartment_1.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_compartment_1.elmt_reactant56 = Reacs.elmt_reactant56;
        elmt_compartment_1.elmt_reactant13 = Reacs.elmt_reactant13;
        elmt_compartment_1.elmt_reactant57 = Reacs.elmt_reactant57;
        elmt_compartment_1.elmt_reaction_16 = Reacs.elmt_reaction_16;
        elmt_compartment_1.elmt_reaction_17 = Reacs.elmt_reaction_17;
        elmt_compartment_1.elmt_reaction_9 = Reacs.elmt_reaction_9;
        elmt_compartment_1.elmt_reaction_14 = Reacs.elmt_reaction_14;
        elmt_compartment_1.elmt_reaction_15 = Reacs.elmt_reaction_15;
        elmt_compartment_1.elmt_reaction_7 = Reacs.elmt_reaction_7;
        elmt_compartment_1.elmt_reaction_8 = Reacs.elmt_reaction_8;
        elmt_compartment_1.elmt_reaction_5 = Reacs.elmt_reaction_5;
        elmt_compartment_1.elmt_reaction_18 = Reacs.elmt_reaction_18;
        elmt_compartment_1.elmt_reaction_6 = Reacs.elmt_reaction_6;
        elmt_compartment_1.elmt_reaction_19 = Reacs.elmt_reaction_19;
        elmt_compartment_1.elmt_product37 = Reacs.elmt_product37;
        elmt_compartment_1.elmt_reaction_12 = Reacs.elmt_reaction_12;
        elmt_compartment_1.elmt_reaction_13 = Reacs.elmt_reaction_13;
        elmt_compartment_1.elmt_reaction_10 = Reacs.elmt_reaction_10;
        elmt_compartment_1.elmt_reaction_11 = Reacs.elmt_reaction_11;
        elmt_compartment_1.elmt_product11 = Reacs.elmt_product11;
        elmt_compartment_1.elmt_product10 = Reacs.elmt_product10;
        elmt_compartment_1.elmt_reactant27 = Reacs.elmt_reactant27;
        elmt_compartment_1.elmt_reactant28 = Reacs.elmt_reactant28;
        elmt_compartment_1.elmt_reactant21 = Reacs.elmt_reactant21;
        elmt_compartment_1.elmt_reactant24 = Reacs.elmt_reactant24;
        elmt_compartment_1.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt_compartment_1.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_compartment_1.elmt_reactant30 = Reacs.elmt_reactant30;
        elmt_compartment_1.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_compartment_1.elmt_product7 = Reacs.elmt_product7;
        elmt_compartment_1.elmt_product6 = Reacs.elmt_product6;
        elmt_compartment_1.elmt_product23 = Reacs.elmt_product23;
        elmt_compartment_1.elmt_product22 = Reacs.elmt_product22;
        elmt_compartment_1.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_compartment_1.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_compartment_1.elmt_product20 = Reacs.elmt_product20;
        elmt_compartment_1.elmt_reactant36 = Reacs.elmt_reactant36;
        elmt_compartment_1.elmt_reactant38 = Reacs.elmt_reactant38;
        elmt_compartment_1.elmt_reactant39 = Reacs.elmt_reactant39;
        elmt_compartment_1.elmt_reactant32 = Reacs.elmt_reactant32;
        elmt_compartment_1.elmt_reactant33 = Reacs.elmt_reactant33;
        elmt_compartment_1.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_compartment_1.elmt_product3 = Reacs.elmt_product3;
        elmt_compartment_1.elmt_reactant35 = Reacs.elmt_reactant35;
        elmt_compartment_1.elmt_product2 = Reacs.elmt_product2;
        elmt_compartment_1.elmt_reaction_30 = Reacs.elmt_reaction_30;
        elmt_compartment_1.elmt_reaction_31 = Reacs.elmt_reaction_31;
        elmt_compartment_1.elmt_product15 = Reacs.elmt_product15;
        elmt_compartment_1.elmt_product14 = Reacs.elmt_product14;
        elmt_compartment_1.elmt_product18 = Reacs.elmt_product18;
        elmt_compartment_1.elmt_reaction_32 = Reacs.elmt_reaction_32;

end MODEL1303130000;
