within BIOMD549;
model MODEL1409250001 "Baker2013 - Cytokine Mediated Inflammation in Rheumatoid Arthritis - Age Dependent" annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI1\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-07-25T11:11:25Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
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
        elmt_compartment_1.elmt_parameter_5 = Params.elmt_parameter_5;
        elmt_compartment_1.elmt_parameter_4 = Params.elmt_parameter_4;
        elmt_compartment_1.elmt_parameter_3 = Params.elmt_parameter_3;
        elmt_compartment_1.elmt_parameter_2 = Params.elmt_parameter_2;
        elmt_compartment_1.elmt_parameter_1 = Params.elmt_parameter_1;

end MODEL1409250001;
