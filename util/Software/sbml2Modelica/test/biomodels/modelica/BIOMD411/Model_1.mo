within BIOMD411;
model Model_1 "Heiland2012_CircadianClock_C.reinhardtii" annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
      <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\">
        <rdf:Description rdf:about=\"#COPASI1\">
          <dcterms:bibliographicCitation>
            <rdf:Description>
              <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/doi/10.1007/s10867-012-9264-x\"/>
            </rdf:Description>
          </dcterms:bibliographicCitation>
          <dcterms:created>
            <rdf:Description>
              <dcterms:W3CDTF>2010-09-27T16:44:17Z</dcterms:W3CDTF>
            </rdf:Description>
          </dcterms:created>
          <dcterms:creator>
            <rdf:Description>
              <vCard:EMAIL>heiland.ines@uni-jena.de</vCard:EMAIL>
              <vCard:N>
                <rdf:Description>
                  <vCard:Family>Heiland</vCard:Family>
                  <vCard:Given>Ines</vCard:Given>
                </rdf:Description>
              </vCard:N>
              <vCard:ORG>
                <rdf:Description>
                  <vCard:Orgname>Dept. of Bioinformatics, Friedrich Schiller University Jena</vCard:Orgname>
                </rdf:Description>
              </vCard:ORG>
            </rdf:Description>
          </dcterms:creator>
        </rdf:Description>
      </rdf:RDF>
    </COPASI>
                                <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_default elmt_default;

    equation
        Reacs.elmt_s9 = elmt_default.elmt_s9;
        Reacs.elmt_parameter_10 = Params.elmt_parameter_10;
        Reacs.elmt_s11 = elmt_default.elmt_s11;
        Reacs.elmt_parameter_9 = Params.elmt_parameter_9;
        Reacs.elmt_s10 = elmt_default.elmt_s10;
        Reacs.elmt_parameter_8 = Params.elmt_parameter_8;
        Reacs.elmt_parameter_7 = Params.elmt_parameter_7;
        Reacs.elmt_species_4 = elmt_default.elmt_species_4;
        Reacs.elmt_default = elmt_default.elmt_default;
        Reacs.elmt_species_2 = elmt_default.elmt_species_2;
        Reacs.elmt_species_3 = elmt_default.elmt_species_3;
        Reacs.elmt_species_1 = elmt_default.elmt_species_1;
        Reacs.elmt_parameter_6 = Params.elmt_parameter_6;
        Reacs.elmt_T2 = Params.elmt_T2;
        Reacs.elmt_parameter_3 = Params.elmt_parameter_3;
        Reacs.elmt_parameter_2 = Params.elmt_parameter_2;
        Reacs.elmt_T = Params.elmt_T;
        Reacs.elmt_parameter_1 = Params.elmt_parameter_1;
        elmt_default.elmt_re15 = Reacs.elmt_re15;
        elmt_default.elmt_re16 = Reacs.elmt_re16;
        elmt_default.elmt_re18 = Reacs.elmt_re18;
        elmt_default.elmt_product11 = Reacs.elmt_product11;
        elmt_default.elmt_reactant25 = Reacs.elmt_reactant25;
        elmt_default.elmt_reactant21 = Reacs.elmt_reactant21;
        elmt_default.elmt_re12 = Reacs.elmt_re12;
        elmt_default.elmt_re13 = Reacs.elmt_re13;
        elmt_default.elmt_reactant23 = Reacs.elmt_reactant23;
        elmt_default.elmt_re14 = Reacs.elmt_re14;
        elmt_default.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt_default.elmt_product26 = Reacs.elmt_product26;
        elmt_default.elmt_product24 = Reacs.elmt_product24;
        elmt_default.elmt_product9 = Reacs.elmt_product9;
        elmt_default.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_default.elmt_product7 = Reacs.elmt_product7;
        elmt_default.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_default.elmt_product22 = Reacs.elmt_product22;
        elmt_default.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_default.elmt_product20 = Reacs.elmt_product20;
        elmt_default.elmt_product1 = Reacs.elmt_product1;
        elmt_default.elmt_reaction_3 = Reacs.elmt_reaction_3;
        elmt_default.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_default.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_default.elmt_reaction_4 = Reacs.elmt_reaction_4;
        elmt_default.elmt_reaction_1 = Reacs.elmt_reaction_1;
        elmt_default.elmt_reaction_2 = Reacs.elmt_reaction_2;
        elmt_default.elmt_reactant17 = Reacs.elmt_reactant17;
        elmt_default.elmt_product5 = Reacs.elmt_product5;
        elmt_default.elmt_product3 = Reacs.elmt_product3;
        elmt_default.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_default.elmt_reaction_7 = Reacs.elmt_reaction_7;
        elmt_default.elmt_reaction_5 = Reacs.elmt_reaction_5;
        elmt_default.elmt_reaction_6 = Reacs.elmt_reaction_6;
        elmt_default.elmt_product16 = Reacs.elmt_product16;
        elmt_default.elmt_product13 = Reacs.elmt_product13;
        elmt_default.elmt_product18 = Reacs.elmt_product18;

end Model_1;
