within BIOMD429;
class Class_elmt_compartment_4

    input Real elmt_reaction_16;
    input Real elmt_reaction_15;
    input Real elmt_reactant25;
    input Real elmt_product26;
    input Real elmt_reactant27;
    input Real elmt_parameter_59;
    input Real elmt_product28;

    Real elmt_compartment_4(unit = "") "M";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_species_15_amount(unit = "");
    Real elmt_species_15_conc(unit = "");
    Real elmt_species_15(unit = "") "Fps1P";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\">
              <rdf:Description rdf:about=\"#COPASI18\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2010-07-22T11:30:44Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <dcterms:creator>
                  <rdf:Description>
                    <vCard:N>
                      <rdf:Description>
                        <vCard:Family>Schaber</vCard:Family>
                        <vCard:Given>Joerg</vCard:Given>
                      </rdf:Description>
                    </vCard:N>
                    <vCard:ORG>
                      <rdf:Description>
                        <vCard:Orgname>OvGU</vCard:Orgname>
                      </rdf:Description>
                    </vCard:ORG>
                  </rdf:Description>
                </dcterms:creator>
                <CopasiMT:encodes rdf:resource=\"http://identifiers.org/sgd/S000003966\"/>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                                                                                                                        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_species_14_amount(unit = "");
    Real elmt_species_14_conc(unit = "");
    Real elmt_species_14(unit = "") "Fps1";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\">
              <rdf:Description rdf:about=\"#COPASI17\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2010-07-22T11:30:40Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <dcterms:creator>
                  <rdf:Description>
                    <vCard:N>
                      <rdf:Description>
                        <vCard:Family>Schaber</vCard:Family>
                        <vCard:Given>Joerg</vCard:Given>
                      </rdf:Description>
                    </vCard:N>
                    <vCard:ORG>
                      <rdf:Description>
                        <vCard:Orgname>OvGU</vCard:Orgname>
                      </rdf:Description>
                    </vCard:ORG>
                  </rdf:Description>
                </dcterms:creator>
                <CopasiMT:encodes rdf:resource=\"http://identifiers.org/sgd/S000003966\"/>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                                                                                                                        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_compartment_4 = 1.0;
        elmt_species_15_amount = ((elmt_parameter_59 / 2.0) * elmt_compartment_4);
        elmt_species_14_amount = ((elmt_parameter_59 / 2.0) * elmt_compartment_4);


    equation
        assert(elmt_compartment_4 >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment_4) = 0;
        elmt_species_15 = elmt_species_15_amount;
        elmt_species_14 = elmt_species_14_amount;
        der(elmt_species_15_amount) = ((- (elmt_reaction_16 * elmt_reactant27)) + (elmt_reaction_15 * elmt_product26));
        der(elmt_species_14_amount) = ((elmt_reaction_16 * elmt_product28) + (- (elmt_reaction_15 * elmt_reactant25)));

    algorithm
        elmt_species_15_conc := elmt_species_15_amount / elmt_compartment_4;
        elmt_species_14_conc := elmt_species_14_amount / elmt_compartment_4;
end Class_elmt_compartment_4;
