within BIOMD627;
class Class_elmt_compartment_1

    input Real elmt_product95;
    input Real elmt_reactant62;
    input Real elmt_reactant64;
    input Real elmt_product55;
    input Real elmt_O2_exchange_capillary_neurons;
    input Real elmt_Blood_flow_contribution_to_capillary_GLC;
    input Real elmt_reaction_20;
    input Real elmt_product69;
    input Real elmt_reaction_24;
    input Real elmt_O2_exchange_capillary_astrocytes;
    input Real elmt_reaction_21;
    input Real elmt_reactant72;
    input Real elmt_reactant50;
    input Real elmt_product61;
    input Real elmt_reactant96;
    input Real elmt_reactant52;
    input Real elmt_Blood_flow_contribution_to_capillary_LAC;
    input Real elmt_product67;
    input Real elmt_product44;
    input Real elmt_reactant70;
    input Real elmt_inflow_of_dHb;
    input Real elmt_Blood_flow_contribution_to_capillary_O2;
    input Real elmt_reaction_14;
    input Real elmt_outflow_of_dHb;
    input Real elmt_reaction_19;
    input Real elmt_product37;
    input Real elmt_Flow_of_CO2_between_capillary_and_vessel__artery_;
    input Real elmt_reaction_13;

    Real elmt_compartment_1(unit = "") "capillary";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
          </rdf:RDF>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI1\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2013-11-07T12:05:36Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000290\"/>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_species_26_amount(unit = "");
    Real elmt_species_26_conc(unit = "");
    Real elmt_species_26(unit = "") "LAC";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
          </rdf:RDF>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI10\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-09T16:17:46Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:is rdf:resource=\"urn:miriam:chebi:CHEBI:422\"/>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_dHb_amount(unit = "");
    Real elmt_dHb_conc(unit = "");
    Real elmt_dHb(unit = "") "dHb";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
          </rdf:RDF>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI11\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-06-24T12:01:20Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:is rdf:resource=\"urn:miriam:chebi:CHEBI:5656\"/>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_species_23_amount(unit = "");
    Real elmt_species_23_conc(unit = "");
    Real elmt_species_23(unit = "") "O2";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
          </rdf:RDF>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI7\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2013-09-18T08:56:00Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:is rdf:resource=\"urn:miriam:chebi:CHEBI:15379\"/>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_species_24_amount(unit = "");
    Real elmt_species_24_conc(unit = "");
    Real elmt_species_24(unit = "") "CO2";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
          </rdf:RDF>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI8\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2013-09-18T08:56:26Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:is rdf:resource=\"urn:miriam:chebi:CHEBI:16526\"/>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_species_25_amount(unit = "");
    Real elmt_species_25_conc(unit = "");
    Real elmt_species_25(unit = "") "GLC";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
          </rdf:RDF>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI9\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2013-09-18T08:56:45Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:is rdf:resource=\"urn:miriam:chebi:CHEBI:17634\"/>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));

    initial equation
        elmt_compartment_1 = 0.0055;
        elmt_species_26_amount = 0.00188912996259375;
        elmt_dHb_amount = 2.62913971209081E-4;
        elmt_species_23_amount = 0.040323291746644;
        elmt_species_24_amount = 0.0121467082533562;
        elmt_species_25_amount = 0.0253903826849856;


    equation
        assert(elmt_compartment_1 >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment_1) = 0;
        elmt_species_26 = elmt_species_26_amount;
        elmt_dHb = elmt_dHb_amount;
        elmt_species_23 = elmt_species_23_amount;
        elmt_species_24 = elmt_species_24_amount;
        elmt_species_25 = elmt_species_25_amount;
        der(elmt_species_26_amount) = ((elmt_reaction_24 * elmt_product61) + (elmt_reaction_21 * elmt_product55) + (- (elmt_Blood_flow_contribution_to_capillary_LAC * elmt_reactant70)));
        der(elmt_dHb_amount) = ((elmt_inflow_of_dHb * elmt_product95) + (- (elmt_outflow_of_dHb * elmt_reactant96)));
        der(elmt_species_23_amount) = ((- (elmt_O2_exchange_capillary_neurons * elmt_reactant62)) + (- (elmt_O2_exchange_capillary_astrocytes * elmt_reactant64)) + (elmt_Blood_flow_contribution_to_capillary_O2 * elmt_product67));
        der(elmt_species_24_amount) = ((elmt_reaction_14 * elmt_product44) + (- (elmt_Flow_of_CO2_between_capillary_and_vessel__artery_ * elmt_reactant72)) + (elmt_reaction_13 * elmt_product37));
        der(elmt_species_25_amount) = ((elmt_Blood_flow_contribution_to_capillary_GLC * elmt_product69) + (- (elmt_reaction_20 * elmt_reactant52)) + (- (elmt_reaction_19 * elmt_reactant50)));

    algorithm
        elmt_species_26_conc := elmt_species_26_amount / elmt_compartment_1;
        elmt_dHb_conc := elmt_dHb_amount / elmt_compartment_1;
        elmt_species_23_conc := elmt_species_23_amount / elmt_compartment_1;
        elmt_species_24_conc := elmt_species_24_amount / elmt_compartment_1;
        elmt_species_25_conc := elmt_species_25_amount / elmt_compartment_1;
end Class_elmt_compartment_1;
