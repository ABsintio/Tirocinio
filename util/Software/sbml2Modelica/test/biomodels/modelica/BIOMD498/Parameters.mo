within BIOMD498;
class Parameters

    Real elmt_parameter_1(unit = "") "Fe2GutQUant";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI25\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2012-06-12T17:51:08Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
    </annotation>"));


    initial equation


    equation
        elmt_parameter_1 = (if ((((- 5.0E-13) * Functions.pow((time - 40000.0), 2.0)) + 1.0E-4) < 1.0E-7) then 1.0E-7 else (((- 5.0E-13) * Functions.pow((time - 40000.0), 2.0)) + 1.0E-4));

end Parameters;
