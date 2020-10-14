within BIOMD629;
class Class_elmt_RAR_retinoids

    input Real elmt_reactant1;
    input Real elmt_LRCA_complx;
    input Real elmt_reactant4;
    input Real elmt_reactant3;
    input Real elmt_product5;
    input Real elmt_LR_complx;
    input Real elmt_reactant0;
    input Real elmt_product2;

    Real elmt_RAR_retinoids(unit = "") "Cell";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI1\">
            <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000290\"/>
            <CopasiMT:isVersionOf>
              <rdf:Bag>
                <rdf:li rdf:resource=\"http://identifiers.org/go/GO:0005737\"/>
              </rdf:Bag>
            </CopasiMT:isVersionOf>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_LR_conc(unit = "");
    Real elmt_LR_amount(unit = "");
    Real elmt_LR(unit = "") "Ligand-Receptor";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI3\">
            <CopasiMT:hasPart>
              <rdf:Bag>
                <rdf:li rdf:resource=\"http://identifiers.org/chebi/CHEBI:15367\"/>
                <rdf:li rdf:resource=\"http://identifiers.org/uniprot/P10276\"/>
              </rdf:Bag>
            </CopasiMT:hasPart>
            <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000296\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	






      </rdf:RDF>
    </annotation>"));
    Real elmt_LRCA_conc(unit = "");
    Real elmt_LRCA_amount(unit = "");
    Real elmt_LRCA(unit = "") "Ligand-Receptor-CoActivator";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI6\">
            <CopasiMT:hasPart>
              <rdf:Bag>
                <rdf:li rdf:resource=\"http://identifiers.org/chebi/CHEBI:15367\"/>
                <rdf:li rdf:resource=\"http://identifiers.org/uniprot/P10276\"/>
              </rdf:Bag>
            </CopasiMT:hasPart>
            <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000296\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	






      </rdf:RDF>
    </annotation>"));
    Real elmt_L_conc(unit = "");
    Real elmt_L_amount(unit = "");
    Real elmt_L(unit = "") "Ligand";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI2\">
            <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000280\"/>
            <CopasiMT:is>
              <rdf:Bag>
                <rdf:li rdf:resource=\"http://identifiers.org/chebi/CHEBI:15367\"/>
              </rdf:Bag>
            </CopasiMT:is>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	






      </rdf:RDF>
    </annotation>"));
    Real elmt_CA_conc(unit = "");
    Real elmt_CA_amount(unit = "");
    Real elmt_CA(unit = "") "CoActivator";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI5\">
            <CopasiMT:hasVersion>
              <rdf:Bag>
                <rdf:li rdf:resource=\"http://identifiers.org/chebi/CHEBI:16670\"/>
                <rdf:li rdf:resource=\"http://identifiers.org/chebi/CHEBI:42492\"/>
              </rdf:Bag>
            </CopasiMT:hasVersion>
            <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000459\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	






      </rdf:RDF>
    </annotation>"));
    Real elmt_R_conc(unit = "");
    Real elmt_R_amount(unit = "");
    Real elmt_R(unit = "") "Receptor";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI4\">
            <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000244\"/>
            <CopasiMT:isVersionOf>
              <rdf:Bag>
                <rdf:li rdf:resource=\"http://identifiers.org/uniprot/P10276\"/>
              </rdf:Bag>
            </CopasiMT:isVersionOf>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	






      </rdf:RDF>
    </annotation>"));

    initial equation
        elmt_RAR_retinoids = 1.0;
        elmt_LR_conc = 0.0;
        elmt_LRCA_conc = 0.0;
        elmt_L_conc = 5.0E-4;
        elmt_CA_conc = 30.0;
        elmt_R_conc = 0.0035;


    equation
        assert(elmt_RAR_retinoids >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_RAR_retinoids) = 0;
        elmt_LR = elmt_LR_conc;
        elmt_LRCA = elmt_LRCA_conc;
        elmt_L = elmt_L_conc;
        elmt_CA = elmt_CA_conc;
        elmt_R = elmt_R_conc;
        der(elmt_LR_amount) = ((- (elmt_LRCA_complx * elmt_reactant3)) + (elmt_LR_complx * elmt_product2));
        der(elmt_LRCA_amount) = (elmt_LRCA_complx * elmt_product5);
        der(elmt_L_amount) = (- (elmt_LR_complx * elmt_reactant0));
        der(elmt_CA_amount) = (- (elmt_LRCA_complx * elmt_reactant4));
        der(elmt_R_amount) = (- (elmt_LR_complx * elmt_reactant1));

    algorithm
        elmt_LR_conc := elmt_LR_amount / elmt_RAR_retinoids;
        elmt_LRCA_conc := elmt_LRCA_amount / elmt_RAR_retinoids;
        elmt_L_conc := elmt_L_amount / elmt_RAR_retinoids;
        elmt_CA_conc := elmt_CA_amount / elmt_RAR_retinoids;
        elmt_R_conc := elmt_R_amount / elmt_RAR_retinoids;
end Class_elmt_RAR_retinoids;
