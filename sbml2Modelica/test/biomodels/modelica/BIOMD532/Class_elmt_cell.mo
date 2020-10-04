within BIOMD532;
class Class_elmt_cell

    input Real elmt_mlambda;
    input Real elmt_kx;
    input Real elmt_mx;
    input Real elmt_kv;
    input Real elmt_C;
    input Real elmt_mv;
    input Real elmt_alambda;
    input Real elmt_xm;
    input Real elmt_av;
    input Real elmt_klambda;
    input Real elmt_ax;
    input Real elmt_vm;
    input Real elmt_lambda;

    Real elmt_cell(unit = "") "cell";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Xm_conc(unit = "");
    Real elmt_Xm_amount(unit = "");
    Real elmt_Xm(unit = "") "Xm";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI2\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-07-10T16:30:04Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_Lambda_conc(unit = "");
    Real elmt_Lambda_amount(unit = "");
    Real elmt_Lambda(unit = "") "Lambda";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI4\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-07-10T16:30:01Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_X_conc(unit = "");
    Real elmt_X_amount(unit = "");
    Real elmt_X(unit = "") "X";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI1\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-07-10T16:30:03Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Vm_conc(unit = "");
    Real elmt_Vm_amount(unit = "");
    Real elmt_Vm(unit = "") "Vm";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI3\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-07-10T16:30:02Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));

    initial equation
        elmt_cell = 1.0;


    equation
        assert(elmt_cell >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cell) = 0;
        elmt_Xm = elmt_Xm_conc;
        elmt_Lambda = elmt_Lambda_conc;
        elmt_X = elmt_X_conc;
        elmt_Vm = elmt_Vm_conc;
        elmt_Xm_amount = (elmt_xm * (1.0 - (elmt_kx * (1.0 - exp(((- log(2.0)) * Functions.pow((elmt_C / elmt_mx), elmt_ax))))))) * elmt_cell;
        elmt_Lambda_amount = (elmt_lambda * (1.0 + (elmt_klambda * (1.0 - exp(((- log(2.0)) * Functions.pow((elmt_C / elmt_mlambda), elmt_alambda))))))) * elmt_cell;
        elmt_X_amount = (elmt_Xm / (1.0 + exp((2.0 + (((4.0 * elmt_Vm) / elmt_Xm) * (elmt_Lambda - time)))))) * elmt_cell;
        elmt_Vm_amount = (elmt_vm * (1.0 - (elmt_kv * (1.0 - exp(((- log(2.0)) * Functions.pow((elmt_C / elmt_mv), elmt_av))))))) * elmt_cell;

    algorithm
        elmt_Xm_conc := elmt_Xm_amount / elmt_cell;
        elmt_Lambda_conc := elmt_Lambda_amount / elmt_cell;
        elmt_X_conc := elmt_X_amount / elmt_cell;
        elmt_Vm_conc := elmt_Vm_amount / elmt_cell;
end Class_elmt_cell;
