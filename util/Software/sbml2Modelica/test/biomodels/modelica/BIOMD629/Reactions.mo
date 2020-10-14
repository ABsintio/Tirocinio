within BIOMD629;
class Reactions

    input Real elmt_LR;
    input Real elmt_LRCA;
    input Real elmt_L;
    input Real elmt_RAR_retinoids;
    input Real elmt_CA;
    input Real elmt_R;

    Real elmt_LRCA_complx(unit = "") "Ligand-Receptor-CoActivator complex formation";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI8\">
            <CopasiMT:hasPart>
              <rdf:Bag>
                <rdf:li rdf:resource=\"http://identifiers.org/go/GO:0016922\"/>
              </rdf:Bag>
            </CopasiMT:hasPart>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	






      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_LRCA_complx_elmt_k1(unit "") = 0.014 "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">


	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_LRCA_complx_elmt_k2(unit "") = 0.2 "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">


	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant4 "";
    Real elmt_reactant3 "";
    Real elmt_product5 "";
    Real elmt_LR_complx(unit = "") "Ligand-Receptor complex formation";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI7\">
            <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000526\"/>
            <CopasiMT:isVersionOf>
              <rdf:Bag>
                <rdf:li rdf:resource=\"http://identifiers.org/go/GO:0016922\"/>
              </rdf:Bag>
            </CopasiMT:isVersionOf>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	






      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_LR_complx_elmt_k1(unit "") = 0.6 "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">


	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_LR_complx_elmt_k2(unit "") = 0.1 "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">


	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant1 "";
    Real elmt_reactant0 "";
    Real elmt_product2 "";


    initial equation
        elmt_reactant1 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product2 = 1.0;


    equation
        elmt_LRCA_complx = (elmt_RAR_retinoids * ((elmt_LRCA_complx_elmt_k1 * elmt_LR * elmt_CA) - (elmt_LRCA_complx_elmt_k2 * elmt_LRCA)));
        elmt_LR_complx = (elmt_RAR_retinoids * ((elmt_LR_complx_elmt_k1 * elmt_L * elmt_R) - (elmt_LR_complx_elmt_k2 * elmt_LR)));
        der(elmt_reactant1) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product2) = 0;

end Reactions;
