within BIOMD404;
class Parameters

    input Real elmt_MYpYpYpYp;
    input Real elmt_M;
    input Real elmt_MYp;
    input Real elmt_MYpYp;
    input Real elmt_species_1;
    input Real elmt_MYpYpYp;

    Real elmt_ka(unit = "") "ka";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI34\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-03-14T21:58:11Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                              </annotation>"));
    Real elmt_kappa(unit = "") "kappa";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI33\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-03-14T21:58:26Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                              </annotation>"));
    Real elmt_Bias(unit = "") "Bias";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI35\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-03-14T21:58:23Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                              </annotation>"));
    Real elmt_parameter_3(unit = "") "KmATP";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI38\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-12-08T00:19:04Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                              </annotation>"));
    Real elmt_alpha(unit = "") "alpha";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI32\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-03-14T21:58:06Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                              </annotation>"));
    Real elmt_parameter_2(unit = "") "autoPhospho";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI37\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-12-08T00:16:48Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                              </annotation>"));
    Real elmt_parameter_1(unit = "") "asp_pulse";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI36\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-03-14T22:15:59Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                              </annotation>"));


    initial equation
        elmt_ka = 0.1;
        elmt_kappa = 2.25E-7;
        elmt_parameter_3 = 3.0E-4;
        elmt_alpha = 0.14;
        elmt_parameter_1 = 1.0E-7;


    equation
        der(elmt_ka) = 0;
        der(elmt_kappa) = 0;
        elmt_Bias = ((elmt_M + elmt_MYp) / (elmt_M + elmt_MYp + elmt_MYpYp + elmt_MYpYpYp + elmt_MYpYpYpYp));
        der(elmt_parameter_3) = 0;
        der(elmt_alpha) = 0;
        elmt_parameter_2 = (elmt_species_1 / (elmt_species_1 + elmt_parameter_3));
        der(elmt_parameter_1) = 0;

end Parameters;
