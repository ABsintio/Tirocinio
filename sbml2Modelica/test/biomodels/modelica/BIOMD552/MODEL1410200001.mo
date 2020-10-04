within BIOMD552;
model MODEL1410200001 "Ehrenstein2000 - Positive-Feedback model for the loss of acetylcholine in Alzheimer's disease" annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI0\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-18T11:43:49Z</dcterms:W3CDTF>
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
    Class_elmt_Brain elmt_Brain;

    equation
        Reacs.elmt_k1 = Params.elmt_k1;
        Reacs.elmt_Brain = elmt_Brain.elmt_Brain;
        Reacs.elmt_k4 = Params.elmt_k4;
        Reacs.elmt_a = elmt_Brain.elmt_a;
        Reacs.elmt_k2 = Params.elmt_k2;
        Reacs.elmt_k3 = Params.elmt_k3;
        Reacs.elmt_b = elmt_Brain.elmt_b;
        elmt_Brain.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_Brain.elmt_Effect_of_extracellular_ACh = Reacs.elmt_Effect_of_extracellular_ACh;
        elmt_Brain.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_Brain.elmt_Abeta_formation_from_APP = Reacs.elmt_Abeta_formation_from_APP;
        elmt_Brain.elmt_product1 = Reacs.elmt_product1;
        elmt_Brain.elmt_Loss_of_intracellular_choline = Reacs.elmt_Loss_of_intracellular_choline;
        elmt_Brain.elmt_Decrease_in_the_extracellular_concentration_of_beta_amyloid = Reacs.elmt_Decrease_in_the_extracellular_concentration_of_beta_amyloid;
        elmt_Brain.elmt_reactant0 = Reacs.elmt_reactant0;

end MODEL1410200001;
