within BIOMD563;
model Pritchart2014 "Pritchard2014 - plant-microbe interaction" annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\">
          <rdf:Description rdf:about=\"#COPASI0\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-07-21T14:07:59Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <dcterms:creator>
              <rdf:Description>
                <vCard:EMAIL>leighton.pritchard@hutton.ac.uk</vCard:EMAIL>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>Pritchard</vCard:Family>
                    <vCard:Given>Leighton</vCard:Given>
                  </rdf:Description>
                </vCard:N>
                <vCard:ORG>
                  <rdf:Description>
                    <vCard:Orgname>The James Hutton Institute</vCard:Orgname>
                  </rdf:Description>
                </vCard:ORG>
              </rdf:Description>
            </dcterms:creator>
            <dcterms:modified>
              <rdf:Description>
                <dcterms:W3CDTF>2014-08-28T18:06:17</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:modified>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_Cell elmt_Cell;
    Class_elmt_Apoplast elmt_Apoplast;
    Class_elmt_Pathogen_introduced elmt_Pathogen_introduced;

    equation
        Reacs.elmt_Cell = elmt_Cell.elmt_Cell;
        Reacs.elmt_E_int = elmt_Cell.elmt_E_int;
        Reacs.elmt_R_0 = elmt_Cell.elmt_R_0;
        Reacs.elmt_PRR_0 = elmt_Apoplast.elmt_PRR_0;
        Reacs.elmt_Callose = elmt_Cell.elmt_Callose;
        Reacs.elmt_PRR = elmt_Apoplast.elmt_PRR;
        Reacs.elmt_E = elmt_Apoplast.elmt_E;
        Reacs.elmt_Apoplast = elmt_Apoplast.elmt_Apoplast;
        Reacs.elmt_PAMP = elmt_Cell.elmt_PAMP;
        Reacs.elmt_Path_bulk = elmt_Apoplast.elmt_Path_bulk;
        Reacs.elmt_Path = elmt_Apoplast.elmt_Path;
        Reacs.elmt_R = elmt_Cell.elmt_R;
        elmt_Cell.elmt_product30 = Reacs.elmt_product30;
        elmt_Cell.elmt_reactant20 = Reacs.elmt_reactant20;
        elmt_Cell.elmt_product33 = Reacs.elmt_product33;
        elmt_Cell.elmt_Effector_recognition = Reacs.elmt_Effector_recognition;
        elmt_Cell.elmt_PAMP_production = Reacs.elmt_PAMP_production;
        elmt_Cell.elmt_reactant27 = Reacs.elmt_reactant27;
        elmt_Cell.elmt_ETI = Reacs.elmt_ETI;
        elmt_Cell.elmt_Callose_production = Reacs.elmt_Callose_production;
        elmt_Cell.elmt_PTI = Reacs.elmt_PTI;
        elmt_Cell.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_Cell.elmt_Callose_removal = Reacs.elmt_Callose_removal;
        elmt_Cell.elmt_product26 = Reacs.elmt_product26;
        elmt_Cell.elmt_PAMP_removal = Reacs.elmt_PAMP_removal;
        elmt_Cell.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_Cell.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_Cell.elmt_reactant31 = Reacs.elmt_reactant31;
        elmt_Cell.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_Cell.elmt_product23 = Reacs.elmt_product23;
        elmt_Cell.elmt_product21 = Reacs.elmt_product21;
        elmt_Cell.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_Cell.elmt_reactant32 = Reacs.elmt_reactant32;
        elmt_Cell.elmt_product5 = Reacs.elmt_product5;
        elmt_Cell.elmt_Effector_translocation = Reacs.elmt_Effector_translocation;
        elmt_Cell.elmt_PAMP_recognition = Reacs.elmt_PAMP_recognition;
        elmt_Cell.elmt_Callose_suppression = Reacs.elmt_Callose_suppression;
        elmt_Cell.elmt_reactant29 = Reacs.elmt_reactant29;
        elmt_Cell.elmt_product13 = Reacs.elmt_product13;
        elmt_Cell.elmt_E_int_removal = Reacs.elmt_E_int_removal;
        elmt_Apoplast.elmt_product10 = Reacs.elmt_product10;
        elmt_Apoplast.elmt_PAMP_production = Reacs.elmt_PAMP_production;
        elmt_Apoplast.elmt_reactant28 = Reacs.elmt_reactant28;
        elmt_Apoplast.elmt_reactant22 = Reacs.elmt_reactant22;
        elmt_Apoplast.elmt_Callose_production = Reacs.elmt_Callose_production;
        elmt_Apoplast.elmt_reactant24 = Reacs.elmt_reactant24;
        elmt_Apoplast.elmt_ETI = Reacs.elmt_ETI;
        elmt_Apoplast.elmt_PTI = Reacs.elmt_PTI;
        elmt_Apoplast.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt_Apoplast.elmt_Pathogen_removal = Reacs.elmt_Pathogen_removal;
        elmt_Apoplast.elmt_product25 = Reacs.elmt_product25;
        elmt_Apoplast.elmt_product9 = Reacs.elmt_product9;
        elmt_Apoplast.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_Apoplast.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_Apoplast.elmt_Pathogen_arrival = Reacs.elmt_Pathogen_arrival;
        elmt_Apoplast.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_Apoplast.elmt_Effector_production = Reacs.elmt_Effector_production;
        elmt_Apoplast.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_Apoplast.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_Apoplast.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_Apoplast.elmt_product2 = Reacs.elmt_product2;
        elmt_Apoplast.elmt_Effector_translocation = Reacs.elmt_Effector_translocation;
        elmt_Apoplast.elmt_PAMP_recognition = Reacs.elmt_PAMP_recognition;
        elmt_Apoplast.elmt_Effector_removal = Reacs.elmt_Effector_removal;
        elmt_Apoplast.elmt_product16 = Reacs.elmt_product16;
        elmt_Apoplast.elmt_product14 = Reacs.elmt_product14;
        elmt_Apoplast.elmt_product17 = Reacs.elmt_product17;
        elmt_Apoplast.elmt_Pathogen_introduced = elmt_Pathogen_introduced.trigger;

        elmt_Apoplast.assign_elmt_Path_bulk = elmt_Pathogen_introduced.value_elmt_Path_bulk;
end Pritchart2014;
