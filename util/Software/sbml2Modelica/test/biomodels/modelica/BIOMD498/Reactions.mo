within BIOMD498;
class Reactions

    input Real elmt_species_6;
    input Real elmt_species_7;
    input Real elmt_species_4;
    input Real elmt_species_5;
    input Real elmt_species_8;
    input Real elmt_species_9;
    input Real elmt_species_15;
    input Real elmt_species_26;
    input Real elmt_species_16;
    input Real elmt_species_17;
    input Real elmt_species_18;
    input Real elmt_species_2;
    input Real elmt_species_19;
    input Real elmt_species_3;
    input Real elmt_species_1;
    input Real elmt_compartment_1;
    input Real elmt_species_43;
    input Real elmt_species_10;
    input Real elmt_species_11;
    input Real elmt_species_12;
    input Real elmt_compartment_3;
    input Real elmt_species_24;
    input Real elmt_species_25;

    Real elmt_reaction_27(unit = "") "TfR2 binding";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI45\">
            <dcterms:bibliographicCitation>
              <rdf:Description>
                <dcterms:description>Comparison of the Interactions of Transferrin Receptor and Transferrin Receptor 2 with Transferrin and the Hereditary Hemochromatosis Protein HFE</dcterms:description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/doi/10.1074/jbc.C000664200\"/>
              </rdf:Description>
            </dcterms:bibliographicCitation>
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2011-05-17T11:04:15Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/biomodels.sbo/SBO:0000526\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_reaction_27_elmt_k1(unit "") = 222390.0 "";
    Real elmt_product34 "";
    Real elmt_reactant32 "";
    Real elmt_reactant33 "";
    Real elmt_reaction_49(unit = "") "ferritin expression";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI60\">
            <dcterms:bibliographicCitation>
              <rdf:Description>
                <dcterms:description>Role of iron and ferritin in TNFa-induced apoptosis in HeLa cells</dcterms:description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/doi/10.1016/S0014-5793(03)00114-5\"/>
              </rdf:Description>
            </dcterms:bibliographicCitation>
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2011-05-17T11:30:16Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/biomodels.sbo/SBO:0000184\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_reaction_49_elmt_n(unit "") = 1.0 "";
    parameter Real elmt_reaction_49_elmt_K(unit "") = 1.0E-6 "";
    parameter Real elmt_reaction_49_elmt_a(unit "") = 2.312E-13 "";
    Real elmt_product74 "";
    Real elmt_reaction_28(unit = "") "TfR2 release";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI46\">
            <dcterms:bibliographicCitation>
              <rdf:Description>
                <dcterms:description>Comparison of the Interactions of Transferrin Receptor and Transferrin Receptor 2 with Transferrin and the Hereditary Hemochromatosis Protein HFE</dcterms:description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/unknown/10.1074/jbc.C000664200\"/>
              </rdf:Description>
            </dcterms:bibliographicCitation>
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2011-05-17T11:04:20Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/biomodels.sbo/SBO:0000180\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_reaction_28_elmt_k1(unit "") = 0.0061 "";
    Real elmt_product37 "";
    Real elmt_product36 "";
    Real elmt_reactant35 "";
    Real elmt_reaction_25(unit = "") "HFE TfR2 binding";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI43\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2011-03-16T12:07:26Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/biomodels.sbo/SBO:0000526\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_reaction_25_elmt_k1(unit "") = 3.9438E11 "";
    Real elmt_reactant26 "";
    Real elmt_reactant27 "";
    Real elmt_product28 "";
    Real elmt_reaction_47(unit = "") "Ferritin Iron internalisation";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI58\">
            <dcterms:bibliographicCitation>
              <rdf:Description>
                <dcterms:description>Mathematical modeling of the dynamic storage of iron in ferritin</dcterms:description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/doi/10.1186/1752-0509-4-147\"/>
              </rdf:Description>
            </dcterms:bibliographicCitation>
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2011-05-17T11:29:04Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/biomodels.sbo/SBO:0000180\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_reaction_47_elmt_k1(unit "") = 108000.0 "";
    Real elmt_product71 "";
    Real elmt_reactant69 "";
    Real elmt_product70 "";
    Real elmt_reaction_26(unit = "") "HFE TfR2 release";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI44\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2011-05-16T13:43:28Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/biomodels.sbo/SBO:0000180\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_reaction_26_elmt_k1(unit "") = 0.0018 "";
    Real elmt_product30 "";
    Real elmt_reactant29 "";
    Real elmt_product31 "";
    Real elmt_reaction_48(unit = "") "Ferritin internalised iron release";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI59\">
            <dcterms:bibliographicCitation>
              <rdf:Description>
                <dcterms:description>Mathematical modeling of the dynamic storage of iron in ferritin</dcterms:description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/doi/10.1186/1752-0509-4-147\"/>
              </rdf:Description>
            </dcterms:bibliographicCitation>
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2011-05-17T11:29:42Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/biomodels.sbo/SBO:0000180\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_reaction_48_elmt_kloss(unit "") = 13.112 "";
    Real elmt_reactant72 "";
    Real elmt_product73 "";
    Real elmt_reaction_29(unit = "") "TfR1 binding 2";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI47\">
            <dcterms:bibliographicCitation>
              <rdf:Description>
                <dcterms:description>Comparison of the Interactions of Transferrin Receptor and Transferrin Receptor 2 with Transferrin and the Hereditary Hemochromatosis Protein HFE</dcterms:description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/doi/10.1074/jbc.C000664200\"/>
              </rdf:Description>
            </dcterms:bibliographicCitation>
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2011-05-23T15:39:27Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/biomodels.sbo/SBO:0000526\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_reaction_29_elmt_k1(unit "") = 121400.0 "";
    Real elmt_product40 "";
    Real elmt_reactant38 "";
    Real elmt_reactant39 "";
    Real elmt_reaction_20(unit = "") "HO1 exp";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI67\">
            <dcterms:bibliographicCitation>
              <rdf:Description>
                <dcterms:description>Plasma Heme Oxygenase-1 Concentration Is Elevated in Individuals with Type 2 Diabetes Mellitus</dcterms:description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/doi/10.1371/journal.pone.0012371\"/>
              </rdf:Description>
            </dcterms:bibliographicCitation>
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2012-02-08T16:15:19Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/biomodels.sbo/SBO:0000184\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_reaction_20_elmt_K(unit "") = 1.0E-9 "";
    parameter Real elmt_reaction_20_elmt_a(unit "") = 2.1432E-15 "";
    Real elmt_product84 "";
    Real elmt_reaction_23(unit = "") "TfR1 binding";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI41\">
            <dcterms:bibliographicCitation>
              <rdf:Description>
                <dcterms:description>Comparison of the Interactions of Transferrin Receptor and Transferrin Receptor 2 with Transferrin and the Hereditary Hemochromatosis Protein HFE</dcterms:description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/doi/10.1074/jbc.C000664200\"/>
              </rdf:Description>
            </dcterms:bibliographicCitation>
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2011-05-16T13:40:05Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/biomodels.sbo/SBO:0000526\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_reaction_23_elmt_k1(unit "") = 837400.0 "";
    Real elmt_reactant20 "";
    Real elmt_product22 "";
    Real elmt_reactant21 "";
    Real elmt_reaction_45(unit = "") "Ferritin Iron binding";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI56\">
            <dcterms:bibliographicCitation>
              <rdf:Description>
                <dcterms:description>Mathematical modeling of the dynamic storage of iron in ferritin</dcterms:description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/doi/10.1186/1752-0509-4-147\"/>
              </rdf:Description>
            </dcterms:bibliographicCitation>
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2011-05-17T11:26:39Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/biomodels.sbo/SBO:0000177\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_reaction_45_elmt_k1(unit "") = 4.71E10 "";
    Real elmt_reactant63 "";
    Real elmt_reactant64 "";
    Real elmt_product65 "";
    Real elmt_reaction_67(unit = "") "Ferritin Degredation Full";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI61\">
            <dcterms:bibliographicCitation>
              <rdf:Description>
                <dcterms:description>Mathematical modeling of the dynamic storage of iron in ferritin</dcterms:description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/doi/10.1186/1752-0509-4-147\"/>
              </rdf:Description>
            </dcterms:bibliographicCitation>
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2011-11-30T12:27:05Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/biomodels.sbo/SBO:0000179\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_reaction_67_elmt_k1(unit "") = 1.203E-5 "";
    Real elmt_reactant75 "";
    Real elmt_reaction_24(unit = "") "TfR1 release";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI42\">
            <dcterms:bibliographicCitation>
              <rdf:Description>
                <dcterms:description>Comparison of the Interactions of Transferrin Receptor and Transferrin Receptor 2 with Transferrin and the Hereditary Hemochromatosis Protein HFE</dcterms:description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/doi/10.1074/jbc.C000664200\"/>
              </rdf:Description>
            </dcterms:bibliographicCitation>
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2011-05-16T13:43:24Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/biomodels.sbo/SBO:0000180\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_reaction_24_elmt_k1(unit "") = 9.142E-4 "";
    Real elmt_product25 "";
    Real elmt_product24 "";
    Real elmt_reactant23 "";
    Real elmt_reaction_46(unit = "") "Ferritin Iron release";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI57\">
            <dcterms:bibliographicCitation>
              <rdf:Description>
                <dcterms:description>Mathematical modeling of the dynamic storage of iron in ferritin</dcterms:description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/doi/10.1186/1752-0509-4-147\"/>
              </rdf:Description>
            </dcterms:bibliographicCitation>
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2011-05-17T11:28:36Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/biomodels.sbo/SBO:0000180\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_reaction_46_elmt_k1(unit "") = 22922.0 "";
    Real elmt_product67 "";
    Real elmt_product68 "";
    Real elmt_reactant66 "";
    Real elmt_reaction_21(unit = "") "HFE TfR1 binding";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI39\">
            <dcterms:bibliographicCitation>
              <rdf:Description>
                <dcterms:description>Comparison of the Interactions of Transferrin Receptor and Transferrin Receptor 2 with Transferrin and the Hereditary Hemochromatosis Protein HFE</dcterms:description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/doi/10.1074/jbc.C000664200\"/>
              </rdf:Description>
            </dcterms:bibliographicCitation>
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2011-03-16T11:07:18Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/biomodels.sbo/SBO:0000526\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_reaction_21_elmt_k1(unit "") = 1102000.0 "";
    Real elmt_reactant14 "";
    Real elmt_product16 "";
    Real elmt_reactant15 "";
    Real elmt_reaction_22(unit = "") "HFE TfR1 release";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI40\">
            <dcterms:bibliographicCitation>
              <rdf:Description>
                <dcterms:description>Comparison of the Interactions of Transferrin Receptor and Transferrin Receptor 2 with Transferrin and the Hereditary Hemochromatosis Protein HFE</dcterms:description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/doi/10.1074/jbc.C000664200\"/>
              </rdf:Description>
            </dcterms:bibliographicCitation>
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2011-03-16T11:07:27Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/biomodels.sbo/SBO:0000180\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_reaction_22_elmt_k1(unit "") = 0.08 "";
    Real elmt_reactant17 "";
    Real elmt_product19 "";
    Real elmt_product18 "";
    Real elmt_reaction_44(unit = "") "outFlow";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI55\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2011-05-16T12:54:50Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/biomodels.sbo/SBO:0000395\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_reaction_44_elmt_k1(unit "") = 4.0E-4 "";
    Real elmt_reactant62 "";
    Real elmt_reaction_3(unit = "") "TfR1 degradation";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI28\">
            <dcterms:bibliographicCitation>
              <rdf:Description>
                <dcterms:description>Stoichiometries of transferrin receptors 1 and 2 in human liver</dcterms:description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/doi/10.1016/j.bcmd.2009.09.004\"/>
              </rdf:Description>
            </dcterms:bibliographicCitation>
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2010-06-08T10:04:33Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/biomodels.sbo/SBO:0000179\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_reaction_3_elmt_k1(unit "") = 8.37E-6 "";
    Real elmt_reactant3 "";
    Real elmt_reaction_4(unit = "") "Ferroportin Expression";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI29\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2010-06-08T09:40:20Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/biomodels.sbo/SBO:0000184\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_reaction_4_elmt_n(unit "") = 1.0 "";
    parameter Real elmt_reaction_4_elmt_K(unit "") = 5.0E-6 "";
    parameter Real elmt_reaction_4_elmt_a(unit "") = 1.0E-9 "";
    Real elmt_product4 "";
    Real elmt_reaction_1(unit = "") "Fpn Export";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI26\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2010-06-08T09:34:08Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/biomodels.sbo/SBO:0000588\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_reaction_1_elmt_n(unit "") = 1.0 "";
    parameter Real elmt_reaction_1_elmt_K(unit "") = 3.0E-6 "";
    parameter Real elmt_reaction_1_elmt_a(unit "") = 2.0 "";
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_reaction_2(unit = "") "TfR1 expression";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI27\">
            <dcterms:bibliographicCitation>
              <rdf:Description>
                <dcterms:description>Stoichiometries of transferrin receptors 1 and 2 in human liver</dcterms:description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/doi/10.1016/j.bcmd.2009.09.004\"/>
              </rdf:Description>
            </dcterms:bibliographicCitation>
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2010-06-08T10:04:30Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/biomodels.sbo/SBO:0000184\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_reaction_2_elmt_n(unit "") = 1.0 "";
    parameter Real elmt_reaction_2_elmt_K(unit "") = 1.0E-6 "";
    parameter Real elmt_reaction_2_elmt_a(unit "") = 6.0E-12 "";
    Real elmt_product2 "";
    Real elmt_reaction_16(unit = "") "Heme uptake";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI65\">
            <dcterms:bibliographicCitation>
              <rdf:Description>
                <dcterms:description>Identification of an intestinal heme transporter.</dcterms:description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/doi/10.1016/j.cell.2005.06.025\"/>
              </rdf:Description>
            </dcterms:bibliographicCitation>
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2012-02-08T16:11:15Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/biomodels.sbo/SBO:0000587\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_reaction_16_elmt_Km(unit "") = 1.25E-4 "";
    parameter Real elmt_reaction_16_elmt_V(unit "") = 1.034E-5 "";
    Real elmt_reactant80 "";
    Real elmt_product81 "";
    Real elmt_reaction_17(unit = "") "Hepcidin expression";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI37\">
            <dcterms:bibliographicCitation>
              <rdf:Description>
                <dcterms:description>Reduction of Serum Hepcidin by Hemodialysis in Pediatric and Adult Patients</dcterms:description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/doi/10.2215/CJN.08161109\"/>
              </rdf:Description>
            </dcterms:bibliographicCitation>
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2011-01-19T14:01:12Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/biomodels.sbo/SBO:0000184\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_reaction_17_elmt_K1(unit "") = 6.0E-7 "";
    parameter Real elmt_reaction_17_elmt_n(unit "") = 5.0 "";
    parameter Real elmt_reaction_17_elmt_basal(unit "") = 0.0 "";
    parameter Real elmt_reaction_17_elmt_K(unit "") = 1.35E-7 "";
    parameter Real elmt_reaction_17_elmt_a1(unit "") = 5.0E-12 "";
    parameter Real elmt_reaction_17_elmt_a(unit "") = 5.0E-12 "";
    Real elmt_product12 "";
    Real elmt_reaction_9(unit = "") "IRP degradation";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI31\">
            <dcterms:bibliographicCitation>
              <rdf:Description>
                <dcterms:description>Differential regulation of two related RNA-binding proteins, iron regulatory protein (IRP) and IRPB.
</dcterms:description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/7585245\"/>
              </rdf:Description>
            </dcterms:bibliographicCitation>
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2010-06-11T10:39:27Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/biomodels.sbo/SBO:0000179\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_reaction_9_elmt_k1(unit "") = 1.597E-5 "";
    Real elmt_reactant6 "";
    Real elmt_reaction_14(unit = "") "TfR2 expression";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI35\">
            <dcterms:bibliographicCitation>
              <rdf:Description>
                <dcterms:description>Stoichiometries of transferrin receptors 1 and 2 in human liver</dcterms:description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/doi/10.1016/j.bcmd.2009.09.004\"/>
              </rdf:Description>
            </dcterms:bibliographicCitation>
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2011-01-11T09:42:11Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/biomodels.sbo/SBO:0000184\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_reaction_14_elmt_v(unit "") = 3.0E-11 "";
    Real elmt_product10 "";
    Real elmt_reaction_36(unit = "") "TfR2 release 2";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI52\">
            <dcterms:bibliographicCitation>
              <rdf:Description>
                <dcterms:description>Comparison of the Interactions of Transferrin Receptor and Transferrin Receptor 2 with Transferrin and the Hereditary Hemochromatosis Protein HFE</dcterms:description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/doi/10.1074/jbc.C000664200\"/>
              </rdf:Description>
            </dcterms:bibliographicCitation>
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2011-03-14T14:37:04Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/biomodels.sbo/SBO:0000180\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_reaction_36_elmt_k1(unit "") = 0.024 "";
    Real elmt_reactant53 "";
    Real elmt_product55 "";
    Real elmt_product54 "";
    Real elmt_reaction_15(unit = "") "TfR2 degradation";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI36\">
            <dcterms:bibliographicCitation>
              <rdf:Description>
                <dcterms:description>Stoichiometries of transferrin receptors 1 and 2 in human liver</dcterms:description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/doi/10.1016/j.bcmd.2009.09.004\"/>
              </rdf:Description>
            </dcterms:bibliographicCitation>
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2011-01-11T09:46:17Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/biomodels.sbo/SBO:0000179\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_reaction_15_elmt_n(unit "") = 1.0 "";
    parameter Real elmt_reaction_15_elmt_K(unit "") = 2.5E-6 "";
    parameter Real elmt_reaction_15_elmt_a(unit "") = 3.2E-5 "";
    Real elmt_reactant11 "";
    Real elmt_reaction_7(unit = "") "TfR2 iron internalisation";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI54\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2011-03-15T12:49:22Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/biomodels.sbo/SBO:0000180\"/>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/biomodels.sbo/SBO:0000587\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_reaction_7_elmt_k1(unit "") = 0.8333 "";
    Real elmt_product61 "";
    Real elmt_product60 "";
    Real elmt_reactant59 "";
    Real elmt_reaction_8(unit = "") "IRP expresion";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI30\">
            <dcterms:bibliographicCitation>
              <rdf:Description>
                <dcterms:description>Differential regulation of two related RNA-binding proteins, iron regulatory protein (IRP) and IRPB.
</dcterms:description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/7585245\"/>
              </rdf:Description>
            </dcterms:bibliographicCitation>
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2010-06-08T10:05:26Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/biomodels.sbo/SBO:0000184\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_reaction_8_elmt_n(unit "") = 1.0 "";
    parameter Real elmt_reaction_8_elmt_K(unit "") = 1.0E-6 "";
    parameter Real elmt_reaction_8_elmt_a(unit "") = 4.0E-11 "";
    Real elmt_product5 "";
    Real elmt_reaction_18(unit = "") "Hepcidin degradation";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI38\">
            <dcterms:bibliographicCitation>
              <rdf:Description>
                <dcterms:description>Synthetic hepcidin causes rapid dose-dependent hypoferremia and is concentrated in ferroportin-containing organs</dcterms:description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/doi/10.1182/blood-2005-04-1766\"/>
              </rdf:Description>
            </dcterms:bibliographicCitation>
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2011-01-19T14:05:02Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/biomodels.sbo/SBO:0000179\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_reaction_18_elmt_k1(unit "") = 5.6E-4 "";
    Real elmt_reactant13 "";
    Real elmt_reaction_5(unit = "") "HFETfR degradation";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI63\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2011-12-16T15:04:00Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/biomodels.sbo/SBO:0000179\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_reaction_5_elmt_k1(unit "") = 8.37E-7 "";
    Real elmt_reactant78 "";
    Real elmt_reaction_6(unit = "") "TfR1 iron internalisation";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI53\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2011-03-15T12:44:38Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/biomodels.sbo/SBO:0000180\"/>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/biomodels.sbo/SBO:0000587\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_reaction_6_elmt_k1(unit "") = 0.8333 "";
    Real elmt_product58 "";
    Real elmt_product57 "";
    Real elmt_reactant56 "";
    Real elmt_reaction_19(unit = "") "Heme export";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI66\">
            <dcterms:bibliographicCitation>
              <rdf:Description>
                <dcterms:description>Functional validation of the genetic polymorphisms of human ATP-binding cassette (ABC) transporter ABCG2: identification of alleles that are defective in porphyrin transport.</dcterms:description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/doi/10.1124/mol.106.023556\"/>
              </rdf:Description>
            </dcterms:bibliographicCitation>
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2012-02-08T16:12:12Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/biomodels.sbo/SBO:0000588\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_reaction_19_elmt_Km(unit "") = 1.78E-5 "";
    parameter Real elmt_reaction_19_elmt_V(unit "") = 2.18E-5 "";
    Real elmt_product83 "";
    Real elmt_reactant82 "";
    Real elmt_reaction_30(unit = "") "TfR1 release 2";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI48\">
            <dcterms:bibliographicCitation>
              <rdf:Description>
                <dcterms:description>Comparison of the Interactions of Transferrin Receptor and Transferrin Receptor 2 with Transferrin and the Hereditary Hemochromatosis Protein HFE</dcterms:description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/doi/10.1074/jbc.C000664200\"/>
              </rdf:Description>
            </dcterms:bibliographicCitation>
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2011-05-25T12:43:22Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/biomodels.sbo/SBO:0000180\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_reaction_30_elmt_k1(unit "") = 0.003535 "";
    Real elmt_reactant41 "";
    Real elmt_product43 "";
    Real elmt_product42 "";
    Real elmt_reaction_31(unit = "") "HFE TfR1 binding 2";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI49\">
            <dcterms:bibliographicCitation>
              <rdf:Description>
                <dcterms:description>Comparison of the Interactions of Transferrin Receptor and Transferrin Receptor 2 with Transferrin and the Hereditary Hemochromatosis Protein HFE</dcterms:description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/doi/10.1074/jbc.C000664200\"/>
              </rdf:Description>
            </dcterms:bibliographicCitation>
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2011-05-17T11:04:38Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/biomodels.sbo/SBO:0000526\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_reaction_31_elmt_k1(unit "") = 1102000.0 "";
    Real elmt_product46 "";
    Real elmt_reactant44 "";
    Real elmt_reactant45 "";
    Real elmt_reaction_73(unit = "") "Ferritin Degredation Full Iron Release";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI62\">
            <dcterms:bibliographicCitation>
              <rdf:Description>
                <dcterms:description>Mathematical modeling of the dynamic storage of iron in ferritin</dcterms:description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/doi/10.1186/1752-0509-4-147\"/>
              </rdf:Description>
            </dcterms:bibliographicCitation>
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2011-11-30T13:25:21Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/biomodels.sbo/SBO:0000180\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_reaction_73_elmt_K(unit "") = 1.203E-5 "";
    Real elmt_product77 "";
    Real elmt_reactant76 "";
    Real elmt_reaction_12(unit = "") "HFE degradation";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI33\">
            <dcterms:bibliographicCitation>
              <rdf:Description>
                <dcterms:description>The haemochromatosis protein HFE induces an apparent iron-deficient phenotype in H1299 cells that is not corrected by co-expression of beta 2-microglobulin.</dcterms:description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/doi/10.1042/BJ20021607\"/>
              </rdf:Description>
            </dcterms:bibliographicCitation>
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2011-01-05T12:03:44Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/biomodels.sbo/SBO:0000179\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_reaction_12_elmt_k1(unit "") = 6.418E-5 "";
    Real elmt_reactant8 "";
    Real elmt_reaction_34(unit = "") "Heme oxygenation";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI69\">
            <dcterms:bibliographicCitation>
              <rdf:Description>
                <dcterms:description>Inhibition of the Enzymatic Activity of Heme Oxygenases by Azole-Based Antifungal Drugs</dcterms:description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/doi/10.1124/jpet.106.102699\"/>
              </rdf:Description>
            </dcterms:bibliographicCitation>
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2012-02-08T16:35:28Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/subtiwiki/BSU0000201\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_reaction_34_elmt_K(unit "") = 2.0E-6 "";
    parameter Real elmt_reaction_34_elmt_C(unit "") = 17777.7 "";
    Real elmt_reactant86 "";
    Real elmt_product87 "";
    Real elmt_reaction_13(unit = "") "HFE expression";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI34\">
            <dcterms:bibliographicCitation>
              <rdf:Description>
                <dcterms:description>The haemochromatosis protein HFE induces an apparent iron-deficient phenotype in H1299 cells that is not corrected by co-expression of beta 2-microglobulin.</dcterms:description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/doi/10.1042/BJ20021607\"/>
              </rdf:Description>
            </dcterms:bibliographicCitation>
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2011-01-05T12:04:55Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/biomodels.sbo/SBO:0000184\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_reaction_13_elmt_v(unit "") = 2.3469E-11 "";
    Real elmt_product9 "";
    Real elmt_reaction_35(unit = "") "TfR2 binding 2";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI51\">
            <dcterms:bibliographicCitation>
              <rdf:Description>
                <dcterms:description>Comparison of the Interactions of Transferrin Receptor and Transferrin Receptor 2 with Transferrin and the Hereditary Hemochromatosis Protein HFE</dcterms:description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/doi/10.1074/jbc.C000664200\"/>
              </rdf:Description>
            </dcterms:bibliographicCitation>
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2011-03-14T14:37:04Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/biomodels.sbo/SBO:0000526\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_reaction_35_elmt_k1(unit "") = 69600.0 "";
    Real elmt_reactant50 "";
    Real elmt_product52 "";
    Real elmt_reactant51 "";
    Real elmt_reaction_32(unit = "") "HFE TfR1 release 2";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI50\">
            <dcterms:bibliographicCitation>
              <rdf:Description>
                <dcterms:description>Comparison of the Interactions of Transferrin Receptor and Transferrin Receptor 2 with Transferrin and the Hereditary Hemochromatosis Protein HFE</dcterms:description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/doi/10.1074/jbc.C000664200\"/>
              </rdf:Description>
            </dcterms:bibliographicCitation>
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2011-05-25T12:43:45Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/biomodels.sbo/SBO:0000180\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_reaction_32_elmt_k1(unit "") = 0.08 "";
    Real elmt_reactant47 "";
    Real elmt_product49 "";
    Real elmt_product48 "";
    Real elmt_reaction_10(unit = "") "HFETfR2 degradation";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI64\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2011-12-16T15:04:40Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/biomodels.sbo/SBO:0000179\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_reaction_10_elmt_k1(unit "") = 8.37E-5 "";
    Real elmt_reactant79 "";
    Real elmt_reaction_11(unit = "") "Fpn degradation";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI32\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2010-12-01T13:13:03Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/biomodels.sbo/SBO:0000179\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_reaction_11_elmt_n(unit "") = 5.0 "";
    parameter Real elmt_reaction_11_elmt_K(unit "") = 5.0E-9 "";
    parameter Real elmt_reaction_11_elmt_a(unit "") = 2.315E-4 "";
    Real elmt_reactant7 "";
    Real elmt_reaction_33(unit = "") "HO1 Deg";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI68\">
            <dcterms:bibliographicCitation>
              <rdf:Description>
                <dcterms:description>Inducible heme oxygenase in the kidney: a model for the homeostatic control of hemoglobin catabolism.</dcterms:description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/doi/10.1172/JCI106697\"/>
              </rdf:Description>
            </dcterms:bibliographicCitation>
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2012-02-08T16:16:11Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/biomodels.sbo/SBO:0000179\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_reaction_33_elmt_k1(unit "") = 3.209E-5 "";
    Real elmt_reactant85 "";


    initial equation
        elmt_product74 = 1.0;
        elmt_product30 = 2.0;
        elmt_product73 = 1.0;
        elmt_reactant41 = 1.0;
        elmt_reactant85 = 1.0;
        elmt_product71 = 1.0;
        elmt_reactant86 = 1.0;
        elmt_product34 = 1.0;
        elmt_reactant80 = 1.0;
        elmt_product77 = 1.0;
        elmt_product31 = 1.0;
        elmt_reactant82 = 1.0;
        elmt_reactant47 = 1.0;
        elmt_product70 = 1.0;
        elmt_reactant44 = 1.0;
        elmt_reactant45 = 1.0;
        elmt_product25 = 1.0;
        elmt_product24 = 1.0;
        elmt_product68 = 1.0;
        elmt_product28 = 1.0;
        elmt_reactant50 = 1.0;
        elmt_product40 = 1.0;
        elmt_product84 = 1.0;
        elmt_reactant51 = 1.0;
        elmt_product83 = 1.0;
        elmt_reactant53 = 1.0;
        elmt_product43 = 1.0;
        elmt_product87 = 1.0;
        elmt_product42 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_reactant15 = 1.0;
        elmt_reactant59 = 1.0;
        elmt_reactant17 = 1.0;
        elmt_product81 = 1.0;
        elmt_reactant11 = 1.0;
        elmt_reactant56 = 1.0;
        elmt_reactant13 = 1.0;
        elmt_product37 = 1.0;
        elmt_product36 = 1.0;
        elmt_product52 = 1.0;
        elmt_reactant62 = 1.0;
        elmt_reactant63 = 1.0;
        elmt_reactant20 = 1.0;
        elmt_reactant64 = 1.0;
        elmt_product12 = 1.0;
        elmt_product55 = 1.0;
        elmt_product10 = 1.0;
        elmt_product54 = 1.0;
        elmt_reactant69 = 1.0;
        elmt_reactant26 = 2.0;
        elmt_reactant27 = 1.0;
        elmt_reactant21 = 1.0;
        elmt_reactant66 = 1.0;
        elmt_reactant23 = 1.0;
        elmt_product49 = 1.0;
        elmt_product48 = 1.0;
        elmt_product46 = 1.0;
        elmt_reactant72 = 1.0;
        elmt_product9 = 1.0;
        elmt_product61 = 1.0;
        elmt_reactant75 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_product60 = 4.0;
        elmt_product67 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product22 = 1.0;
        elmt_product65 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant38 = 1.0;
        elmt_reactant39 = 1.0;
        elmt_reactant32 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant76 = 1.0;
        elmt_reactant33 = 1.0;
        elmt_product4 = 1.0;
        elmt_reactant0 = 2.0;
        elmt_reactant78 = 1.0;
        elmt_reactant35 = 1.0;
        elmt_product2 = 1.0;
        elmt_reactant79 = 1.0;
        elmt_reactant29 = 1.0;
        elmt_product16 = 1.0;
        elmt_product58 = 1.0;
        elmt_product57 = 4.0;
        elmt_product19 = 1.0;
        elmt_product18 = 1.0;


    equation
        elmt_reaction_27 = (elmt_compartment_3 * elmt_reaction_27_elmt_k1 * elmt_species_43 * elmt_species_10);
        elmt_reaction_49 = (elmt_compartment_1 * ((elmt_reaction_49_elmt_a * (1.0 - (Functions.pow(elmt_species_6, elmt_reaction_49_elmt_n) / (Functions.pow(elmt_reaction_49_elmt_K, elmt_reaction_49_elmt_n) + Functions.pow(elmt_species_6, elmt_reaction_49_elmt_n)))))));
        elmt_reaction_28 = (elmt_compartment_3 * elmt_reaction_28_elmt_k1 * elmt_species_15);
        elmt_reaction_25 = (elmt_compartment_3 * elmt_reaction_25_elmt_k1 * Functions.pow(elmt_species_8, 2.0) * elmt_species_10);
        elmt_reaction_47 = (elmt_compartment_1 * elmt_reaction_47_elmt_k1 * elmt_species_24);
        elmt_reaction_26 = (elmt_compartment_3 * elmt_reaction_26_elmt_k1 * elmt_species_18);
        elmt_reaction_48 = (elmt_compartment_1 * ((elmt_species_26 * elmt_reaction_48_elmt_kloss * (1.0 + ((0.048 * (elmt_species_26 / elmt_species_25)) / (1.0 + (elmt_species_26 / elmt_species_25)))))));
        elmt_reaction_29 = (elmt_compartment_3 * elmt_reaction_29_elmt_k1 * elmt_species_12 * elmt_species_43);
        elmt_reaction_20 = (elmt_compartment_1 * ((elmt_reaction_20_elmt_a * (elmt_species_5 / (elmt_reaction_20_elmt_K + elmt_species_5)))));
        elmt_reaction_23 = (elmt_compartment_3 * elmt_reaction_23_elmt_k1 * elmt_species_43 * elmt_species_3);
        elmt_reaction_45 = (elmt_compartment_1 * elmt_reaction_45_elmt_k1 * elmt_species_2 * elmt_species_25);
        elmt_reaction_67 = (elmt_compartment_1 * elmt_reaction_67_elmt_k1 * elmt_species_25);
        elmt_reaction_24 = (elmt_compartment_3 * elmt_reaction_24_elmt_k1 * elmt_species_12);
        elmt_reaction_46 = (elmt_compartment_1 * elmt_reaction_46_elmt_k1 * elmt_species_24);
        elmt_reaction_21 = (elmt_compartment_3 * elmt_reaction_21_elmt_k1 * elmt_species_8 * elmt_species_3);
        elmt_reaction_22 = (elmt_compartment_3 * elmt_reaction_22_elmt_k1 * elmt_species_9);
        elmt_reaction_44 = (elmt_compartment_1 * elmt_reaction_44_elmt_k1 * elmt_species_2);
        elmt_reaction_3 = (elmt_compartment_3 * elmt_reaction_3_elmt_k1 * elmt_species_3);
        elmt_reaction_4 = (elmt_compartment_1 * ((elmt_reaction_4_elmt_a * (1.0 - (Functions.pow(elmt_species_6, elmt_reaction_4_elmt_n) / (Functions.pow(elmt_reaction_4_elmt_K, elmt_reaction_4_elmt_n) + Functions.pow(elmt_species_6, elmt_reaction_4_elmt_n)))))));
        elmt_reaction_1 = ((elmt_reaction_1_elmt_a * (Functions.pow(elmt_species_4, elmt_reaction_1_elmt_n) / (Functions.pow(elmt_reaction_1_elmt_K, elmt_reaction_1_elmt_n) + Functions.pow(elmt_species_4, elmt_reaction_1_elmt_n))) * elmt_species_2));
        elmt_reaction_2 = (elmt_compartment_3 * (((elmt_reaction_2_elmt_a * Functions.pow(elmt_species_6, elmt_reaction_2_elmt_n)) / (Functions.pow(elmt_reaction_2_elmt_K, elmt_reaction_2_elmt_n) + Functions.pow(elmt_species_6, elmt_reaction_2_elmt_n)))));
        elmt_reaction_16 = (((elmt_reaction_16_elmt_V * elmt_species_11) / (elmt_reaction_16_elmt_Km + elmt_species_11)));
        elmt_reaction_17 = (elmt_compartment_1 * ((elmt_reaction_17_elmt_basal + ((elmt_reaction_17_elmt_a * Functions.pow(elmt_species_18, elmt_reaction_17_elmt_n)) / (Functions.pow(elmt_reaction_17_elmt_K, elmt_reaction_17_elmt_n) + Functions.pow(elmt_species_18, elmt_reaction_17_elmt_n))) + ((elmt_reaction_17_elmt_a1 * elmt_species_19) / (elmt_reaction_17_elmt_K1 + elmt_species_19)))));
        elmt_reaction_9 = (elmt_compartment_1 * elmt_reaction_9_elmt_k1 * elmt_species_6);
        elmt_reaction_14 = (elmt_compartment_3 * (elmt_reaction_14_elmt_v));
        elmt_reaction_36 = (elmt_compartment_3 * elmt_reaction_36_elmt_k1 * elmt_species_19);
        elmt_reaction_15 = (elmt_compartment_3 * ((elmt_reaction_15_elmt_a * (1.0 - (Functions.pow(elmt_species_43, elmt_reaction_15_elmt_n) / (Functions.pow(elmt_reaction_15_elmt_K, elmt_reaction_15_elmt_n) + Functions.pow(elmt_species_43, elmt_reaction_15_elmt_n)))) * elmt_species_10)));
        elmt_reaction_7 = (elmt_reaction_7_elmt_k1 * elmt_species_19);
        elmt_reaction_8 = (elmt_compartment_1 * ((elmt_reaction_8_elmt_a * (1.0 - (Functions.pow(elmt_species_2, elmt_reaction_8_elmt_n) / (Functions.pow(elmt_reaction_8_elmt_K, elmt_reaction_8_elmt_n) + Functions.pow(elmt_species_2, elmt_reaction_8_elmt_n)))))));
        elmt_reaction_18 = (elmt_compartment_1 * elmt_reaction_18_elmt_k1 * elmt_species_7);
        elmt_reaction_5 = (elmt_compartment_3 * elmt_reaction_5_elmt_k1 * elmt_species_17);
        elmt_reaction_6 = (elmt_reaction_6_elmt_k1 * elmt_species_16);
        elmt_reaction_19 = (((elmt_reaction_19_elmt_V * elmt_species_5) / (elmt_reaction_19_elmt_Km + elmt_species_5)));
        elmt_reaction_30 = (elmt_compartment_3 * elmt_reaction_30_elmt_k1 * elmt_species_16);
        elmt_reaction_31 = (elmt_compartment_3 * elmt_reaction_31_elmt_k1 * elmt_species_9 * elmt_species_8);
        elmt_reaction_73 = (elmt_compartment_1 * ((elmt_reaction_73_elmt_K * (elmt_species_26 / elmt_species_25) * elmt_species_25)));
        elmt_reaction_12 = (elmt_compartment_3 * elmt_reaction_12_elmt_k1 * elmt_species_8);
        elmt_reaction_34 = (elmt_compartment_1 * (((elmt_species_1 * elmt_reaction_34_elmt_C * elmt_species_5) / (elmt_reaction_34_elmt_K + elmt_species_5))));
        elmt_reaction_13 = (elmt_compartment_3 * (elmt_reaction_13_elmt_v));
        elmt_reaction_35 = (elmt_compartment_3 * elmt_reaction_35_elmt_k1 * elmt_species_15 * elmt_species_43);
        elmt_reaction_32 = (elmt_compartment_3 * elmt_reaction_32_elmt_k1 * elmt_species_17);
        elmt_reaction_10 = (elmt_compartment_3 * elmt_reaction_10_elmt_k1 * elmt_species_18);
        elmt_reaction_11 = (elmt_compartment_1 * ((elmt_reaction_11_elmt_a * (Functions.pow(elmt_species_7, elmt_reaction_11_elmt_n) / (Functions.pow(elmt_reaction_11_elmt_K, elmt_reaction_11_elmt_n) + Functions.pow(elmt_species_7, elmt_reaction_11_elmt_n))) * elmt_species_4)));
        elmt_reaction_33 = (elmt_compartment_1 * elmt_reaction_33_elmt_k1 * elmt_species_1);
        der(elmt_product74) = 0;
        der(elmt_product30) = 0;
        der(elmt_product73) = 0;
        der(elmt_reactant41) = 0;
        der(elmt_reactant85) = 0;
        der(elmt_product71) = 0;
        der(elmt_reactant86) = 0;
        der(elmt_product34) = 0;
        der(elmt_reactant80) = 0;
        der(elmt_product77) = 0;
        der(elmt_product31) = 0;
        der(elmt_reactant82) = 0;
        der(elmt_reactant47) = 0;
        der(elmt_product70) = 0;
        der(elmt_reactant44) = 0;
        der(elmt_reactant45) = 0;
        der(elmt_product25) = 0;
        der(elmt_product24) = 0;
        der(elmt_product68) = 0;
        der(elmt_product28) = 0;
        der(elmt_reactant50) = 0;
        der(elmt_product40) = 0;
        der(elmt_product84) = 0;
        der(elmt_reactant51) = 0;
        der(elmt_product83) = 0;
        der(elmt_reactant53) = 0;
        der(elmt_product43) = 0;
        der(elmt_product87) = 0;
        der(elmt_product42) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_reactant15) = 0;
        der(elmt_reactant59) = 0;
        der(elmt_reactant17) = 0;
        der(elmt_product81) = 0;
        der(elmt_reactant11) = 0;
        der(elmt_reactant56) = 0;
        der(elmt_reactant13) = 0;
        der(elmt_product37) = 0;
        der(elmt_product36) = 0;
        der(elmt_product52) = 0;
        der(elmt_reactant62) = 0;
        der(elmt_reactant63) = 0;
        der(elmt_reactant20) = 0;
        der(elmt_reactant64) = 0;
        der(elmt_product12) = 0;
        der(elmt_product55) = 0;
        der(elmt_product10) = 0;
        der(elmt_product54) = 0;
        der(elmt_reactant69) = 0;
        der(elmt_reactant26) = 0;
        der(elmt_reactant27) = 0;
        der(elmt_reactant21) = 0;
        der(elmt_reactant66) = 0;
        der(elmt_reactant23) = 0;
        der(elmt_product49) = 0;
        der(elmt_product48) = 0;
        der(elmt_product46) = 0;
        der(elmt_reactant72) = 0;
        der(elmt_product9) = 0;
        der(elmt_product61) = 0;
        der(elmt_reactant75) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_product60) = 0;
        der(elmt_product67) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product22) = 0;
        der(elmt_product65) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant38) = 0;
        der(elmt_reactant39) = 0;
        der(elmt_reactant32) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant76) = 0;
        der(elmt_reactant33) = 0;
        der(elmt_product4) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_reactant78) = 0;
        der(elmt_reactant35) = 0;
        der(elmt_product2) = 0;
        der(elmt_reactant79) = 0;
        der(elmt_reactant29) = 0;
        der(elmt_product16) = 0;
        der(elmt_product58) = 0;
        der(elmt_product57) = 0;
        der(elmt_product19) = 0;
        der(elmt_product18) = 0;

end Reactions;
