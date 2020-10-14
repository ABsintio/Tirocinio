within BIOMD251;
class Class_elmt_compartment

    input Real elmt_product8;
    input Real elmt_product7;
    input Real elmt_product6;
    input Real elmt_reaction_3;
    input Real elmt_product1;
    input Real elmt_product0;
    input Real elmt_reaction_4;
    input Real elmt_reaction_1;
    input Real elmt_reaction_2;
    input Real elmt_product5;
    input Real elmt_product4;
    input Real elmt_product3;
    input Real elmt_product2;
    input Real elmt_reaction_9;
    input Real elmt_reaction_7;
    input Real elmt_reaction_8;
    input Real elmt_reaction_5;
    input Real elmt_reaction_6;

    Real elmt_compartment(unit = "") "compartment";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_cFOSp_conc(unit = "");
    Real elmt_cFOSp_amount(unit = "");
    Real elmt_cFOSp(unit = "") "cFOS preRNA";
 annotation(Documentation(info="<annotation>
        <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI7\">
              <CopasiMT:encodes>
                <rdf:Bag>
                  <rdf:li rdf:resource=\"http://identifiers.org/kegg.genes/hsa:2353\"/>
                  <rdf:li rdf:resource=\"http://identifiers.org/reactome/REACT_21788.1\"/>
                </rdf:Bag>
              </CopasiMT:encodes>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_pcFOS_conc(unit = "");
    Real elmt_pcFOS_amount(unit = "");
    Real elmt_pcFOS(unit = "") "pc-FOS";
 annotation(Documentation(info="<annotation>
        <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI9\">
              <CopasiMT:is rdf:resource=\"http://identifiers.org/reactome/REACT_21988.1\"/>
              <CopasiMT:isVersionOf rdf:resource=\"http://identifiers.org/kegg.pathway/2353\"/>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_cFOS_conc(unit = "");
    Real elmt_cFOS_amount(unit = "");
    Real elmt_cFOS(unit = "") "cFOS";
 annotation(Documentation(info="<annotation>
        <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI8\">
              <CopasiMT:is>
                <rdf:Bag>
                  <rdf:li rdf:resource=\"http://identifiers.org/kegg.genes/hsa:2353\"/>
                  <rdf:li rdf:resource=\"http://identifiers.org/reactome/REACT_21788.1\"/>
                </rdf:Bag>
              </CopasiMT:is>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_ppERKn_conc(unit = "");
    Real elmt_ppERKn_amount(unit = "");
    Real elmt_ppERKn(unit = "") "ppERK(nucleus)";
 annotation(Documentation(info="<annotation>
        <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI4\">
              <CopasiMT:is rdf:resource=\"http://identifiers.org/reactome/REACT_13301.1\"/>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_pRSKn_conc(unit = "");
    Real elmt_pRSKn_amount(unit = "");
    Real elmt_pRSKn(unit = "") "pRSKn";
 annotation(Documentation(info="<annotation>
        <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI6\">
              <CopasiMT:is rdf:resource=\"http://identifiers.org/reactome/REACT_13229.1\"/>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_x1_conc(unit = "");
    Real elmt_x1_amount(unit = "");
    Real elmt_x1(unit = "") "x1";
 annotation(Documentation(info="<annotation>
        <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI2\">
              <CopasiMT:isVersionOf rdf:resource=\"http://identifiers.org/sbo/SBO:0000170\"/>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
      </annotation>"));
    Real elmt_DUSP_conc(unit = "");
    Real elmt_DUSP_amount(unit = "");
    Real elmt_DUSP(unit = "") "DUSP";
 annotation(Documentation(info="<annotation>
        <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI5\">
              <CopasiMT:is>
                <rdf:Bag>
                  <rdf:li rdf:resource=\"http://identifiers.org/kegg.genes/K04459\"/>
                  <rdf:li rdf:resource=\"http://identifiers.org/reactome/REACT_12976.1\"/>
                </rdf:Bag>
              </CopasiMT:is>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_x2_conc(unit = "");
    Real elmt_x2_amount(unit = "");
    Real elmt_x2(unit = "") "x2";
 annotation(Documentation(info="<annotation>
        <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI3\">
              <CopasiMT:isVersionOf rdf:resource=\"http://identifiers.org/sbo/SBO:0000170\"/>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
      </annotation>"));
    Real elmt_ppERKc_conc(unit = "");
    Real elmt_ppERKc_amount(unit = "");
    Real elmt_ppERKc(unit = "") "ppERK(cytosol)";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_cFOSm_conc(unit = "");
    Real elmt_cFOSm_amount(unit = "");
    Real elmt_cFOSm(unit = "") "cFOSmRNA";
 annotation(Documentation(info="<annotation>
        <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI10\">
              <CopasiMT:encodes>
                <rdf:Bag>
                  <rdf:li rdf:resource=\"http://identifiers.org/kegg.pathway/2353\"/>
                  <rdf:li rdf:resource=\"http://identifiers.org/reactome/REACT_21788.1\"/>
                </rdf:Bag>
              </CopasiMT:encodes>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_compartment = 1.0;
        elmt_cFOSp_conc = 0.0;
        elmt_pcFOS_conc = 0.0;
        elmt_cFOS_conc = 0.0;
        elmt_ppERKn_conc = 0.0;
        elmt_pRSKn_conc = 0.0;
        elmt_x1_conc = 0.0;
        elmt_DUSP_conc = 0.0;
        elmt_x2_conc = 0.0;
        elmt_cFOSm_conc = 0.0;


    equation
        assert(elmt_compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment) = 0;
        elmt_cFOSp = elmt_cFOSp_conc;
        elmt_pcFOS = elmt_pcFOS_conc;
        elmt_cFOS = elmt_cFOS_conc;
        elmt_ppERKn = elmt_ppERKn_conc;
        elmt_pRSKn = elmt_pRSKn_conc;
        elmt_x1 = elmt_x1_conc;
        elmt_DUSP = elmt_DUSP_conc;
        elmt_x2 = elmt_x2_conc;
        elmt_ppERKc = elmt_ppERKc_conc;
        elmt_cFOSm = elmt_cFOSm_conc;
        elmt_ppERKc_amount = (elmt_x1 - elmt_x2) * elmt_compartment;
        der(elmt_cFOSp_amount) = (elmt_reaction_6 * elmt_product5);
        der(elmt_pcFOS_amount) = (elmt_reaction_9 * elmt_product8);
        der(elmt_cFOS_amount) = (elmt_reaction_8 * elmt_product7);
        der(elmt_ppERKn_amount) = (elmt_reaction_3 * elmt_product2);
        der(elmt_pRSKn_amount) = (elmt_reaction_5 * elmt_product4);
        der(elmt_x1_amount) = (elmt_reaction_1 * elmt_product0);
        der(elmt_DUSP_amount) = (elmt_reaction_4 * elmt_product3);
        der(elmt_x2_amount) = (elmt_reaction_2 * elmt_product1);
        der(elmt_cFOSm_amount) = (elmt_reaction_7 * elmt_product6);

    algorithm
        elmt_cFOSp_conc := elmt_cFOSp_amount / elmt_compartment;
        elmt_pcFOS_conc := elmt_pcFOS_amount / elmt_compartment;
        elmt_cFOS_conc := elmt_cFOS_amount / elmt_compartment;
        elmt_ppERKn_conc := elmt_ppERKn_amount / elmt_compartment;
        elmt_pRSKn_conc := elmt_pRSKn_amount / elmt_compartment;
        elmt_x1_conc := elmt_x1_amount / elmt_compartment;
        elmt_DUSP_conc := elmt_DUSP_amount / elmt_compartment;
        elmt_x2_conc := elmt_x2_amount / elmt_compartment;
        elmt_ppERKc_conc := elmt_ppERKc_amount / elmt_compartment;
        elmt_cFOSm_conc := elmt_cFOSm_amount / elmt_compartment;
end Class_elmt_compartment;
