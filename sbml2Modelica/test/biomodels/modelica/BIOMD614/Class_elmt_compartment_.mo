within BIOMD614;
class Class_elmt_compartment_

    input Real elmt_reactant2;
    input Real elmt_reactant3;
    input Real elmt_R3;
    input Real elmt_R4;
    input Real elmt_R1;
    input Real elmt_R2;
    input Real elmt_product1;
    input Real elmt_product0;

    Real elmt_compartment_(unit = "") "compartment_";
    Real elmt_f_conc(unit = "");
    Real elmt_f_amount(unit = "");
    Real elmt_f(unit = "") "fibril fraction";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI1\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2016-08-15T11:20:45Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_compartment_ = 1.0;
        elmt_f_conc = 0.0;


    equation
        assert(elmt_compartment_ >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment_) = 0;
        elmt_f = elmt_f_conc;
        der(elmt_f_amount) = ((- (elmt_R3 * elmt_reactant2)) + (- (elmt_R4 * elmt_reactant3)) + (elmt_R1 * elmt_product0) + (elmt_R2 * elmt_product1));

    algorithm
        elmt_f_conc := elmt_f_amount / elmt_compartment_;
end Class_elmt_compartment_;
