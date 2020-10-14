within BIOMD558;
class Class_elmt_Neuron

    input Real elmt_reactant1;
    input Real elmt_reactant3;
    input Real elmt_ROS_1;
    input Real elmt_ROS_2;
    input Real elmt_aSyn_1;
    input Real elmt_product0;
    input Real elmt_aSyn_2;
    input Real elmt_product2;

    Real elmt_Neuron(unit = "") "Neuron";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI1\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-10-07T15:59:20Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_ROS_conc(unit = "");
    Real elmt_ROS_amount(unit = "");
    Real elmt_ROS(unit = "") "ROS";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI2\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-09-16T14:19:50Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_alpha_syn_conc(unit = "");
    Real elmt_alpha_syn_amount(unit = "");
    Real elmt_alpha_syn(unit = "") "alpha-syn";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI3\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-09-16T14:20:14Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_Neuron = 1.0;
        elmt_ROS_conc = 1.0;
        elmt_alpha_syn_conc = 1.0;


    equation
        assert(elmt_Neuron >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Neuron) = 0;
        elmt_ROS = elmt_ROS_conc;
        elmt_alpha_syn = elmt_alpha_syn_conc;
        der(elmt_ROS_amount) = ((elmt_ROS_1 * elmt_product0) + (- (elmt_ROS_2 * elmt_reactant1)));
        der(elmt_alpha_syn_amount) = ((elmt_aSyn_1 * elmt_product2) + (- (elmt_aSyn_2 * elmt_reactant3)));

    algorithm
        elmt_ROS_conc := elmt_ROS_amount / elmt_Neuron;
        elmt_alpha_syn_conc := elmt_alpha_syn_amount / elmt_Neuron;
end Class_elmt_Neuron;
