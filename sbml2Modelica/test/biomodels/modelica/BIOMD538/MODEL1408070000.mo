within BIOMD538;
model MODEL1408070000 "Clarke2000 - One-hit model of cell death in neuronal degenerations" annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI0\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-08-06T16:26:11Z</dcterms:W3CDTF>
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
    Class_elmt_Brain elmt_Brain;

    equation
        elmt_Brain.elmt_Mupcd = Params.elmt_Mupcd;
        elmt_Brain.elmt_Rrom = Params.elmt_Rrom;
        elmt_Brain.elmt_ONLrom_0 = Params.elmt_ONLrom_0;
        elmt_Brain.elmt_Munr = Params.elmt_Munr;
        elmt_Brain.elmt_Murom = Params.elmt_Murom;

end MODEL1408070000;
