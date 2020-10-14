within BIOMD341;
model Topp2000_BetaCellMass_Diabetes "Topp2000_BetaCellMass_Diabetes" annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI1\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2011-06-15T00:00:00Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <dcterms:modified>
              <rdf:Description>
                <dcterms:W3CDTF>2011-06-16T15:12:30+05:30</dcterms:W3CDTF>
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
    Class_elmt_cell elmt_cell;

    equation
        elmt_cell.elmt_si = Params.elmt_si;
        elmt_cell.elmt_k = Params.elmt_k;
        elmt_cell.elmt_r1 = Params.elmt_r1;
        elmt_cell.elmt_r2 = Params.elmt_r2;
        elmt_cell.elmt_sigma = Params.elmt_sigma;
        elmt_cell.elmt_R0 = Params.elmt_R0;
        elmt_cell.elmt_Eg0 = Params.elmt_Eg0;
        elmt_cell.elmt_d0 = Params.elmt_d0;
        elmt_cell.elmt_alpha = Params.elmt_alpha;

end Topp2000_BetaCellMass_Diabetes;
