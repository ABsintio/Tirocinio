within BIOMD532;
model MODEL1407300000 "Vazquez2014 - Chemical inhibition from amyloid protein aggregation kinetics" annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI0\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-07-10T16:29:00Z</dcterms:W3CDTF>
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
    Class_elmt_cell elmt_cell;

    equation
        elmt_cell.elmt_mlambda = Params.elmt_mlambda;
        elmt_cell.elmt_kx = Params.elmt_kx;
        elmt_cell.elmt_mx = Params.elmt_mx;
        elmt_cell.elmt_kv = Params.elmt_kv;
        elmt_cell.elmt_C = Params.elmt_C;
        elmt_cell.elmt_mv = Params.elmt_mv;
        elmt_cell.elmt_alambda = Params.elmt_alambda;
        elmt_cell.elmt_xm = Params.elmt_xm;
        elmt_cell.elmt_av = Params.elmt_av;
        elmt_cell.elmt_klambda = Params.elmt_klambda;
        elmt_cell.elmt_ax = Params.elmt_ax;
        elmt_cell.elmt_vm = Params.elmt_vm;
        elmt_cell.elmt_lambda = Params.elmt_lambda;

end MODEL1407300000;
