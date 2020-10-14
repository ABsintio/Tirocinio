within BIOMD251;
model Nakakuki2010_CellFateDecision_Core "Nakakuki2010_CellFateDecision_Core" annotation(Documentation(info="<annotation>
    <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
      <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
        <rdf:Description rdf:about=\"#COPASI1\">
          <CopasiMT:isPartOf rdf:resource=\"http://identifiers.org/kegg.pathway/map04010\"/>
        </rdf:Description>
      </rdf:RDF>
    </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment elmt_compartment;

    equation
        Reacs.elmt_K1 = Params.elmt_K1;
        Reacs.elmt_compartment = elmt_compartment.elmt_compartment;
        Reacs.elmt_cFOSp = elmt_compartment.elmt_cFOSp;
        Reacs.elmt_L = Params.elmt_L;
        Reacs.elmt_pcFOS = elmt_compartment.elmt_pcFOS;
        Reacs.elmt_k7 = Params.elmt_k7;
        Reacs.elmt_DUSP = elmt_compartment.elmt_DUSP;
        Reacs.elmt_ppERKc = elmt_compartment.elmt_ppERKc;
        Reacs.elmt_cFOSm = elmt_compartment.elmt_cFOSm;
        Reacs.elmt_K2 = Params.elmt_K2;
        Reacs.elmt_tau2 = Params.elmt_tau2;
        Reacs.elmt_tau1 = Params.elmt_tau1;
        Reacs.elmt_cFOS = elmt_compartment.elmt_cFOS;
        Reacs.elmt_ppERKn = elmt_compartment.elmt_ppERKn;
        Reacs.elmt_k13 = Params.elmt_k13;
        Reacs.elmt_pRSKn = elmt_compartment.elmt_pRSKn;
        Reacs.elmt_x1 = elmt_compartment.elmt_x1;
        Reacs.elmt_k11 = Params.elmt_k11;
        Reacs.elmt_x2 = elmt_compartment.elmt_x2;
        elmt_compartment.elmt_product8 = Reacs.elmt_product8;
        elmt_compartment.elmt_product7 = Reacs.elmt_product7;
        elmt_compartment.elmt_product6 = Reacs.elmt_product6;
        elmt_compartment.elmt_reaction_3 = Reacs.elmt_reaction_3;
        elmt_compartment.elmt_product1 = Reacs.elmt_product1;
        elmt_compartment.elmt_product0 = Reacs.elmt_product0;
        elmt_compartment.elmt_reaction_4 = Reacs.elmt_reaction_4;
        elmt_compartment.elmt_reaction_1 = Reacs.elmt_reaction_1;
        elmt_compartment.elmt_reaction_2 = Reacs.elmt_reaction_2;
        elmt_compartment.elmt_product5 = Reacs.elmt_product5;
        elmt_compartment.elmt_product4 = Reacs.elmt_product4;
        elmt_compartment.elmt_product3 = Reacs.elmt_product3;
        elmt_compartment.elmt_product2 = Reacs.elmt_product2;
        elmt_compartment.elmt_reaction_9 = Reacs.elmt_reaction_9;
        elmt_compartment.elmt_reaction_7 = Reacs.elmt_reaction_7;
        elmt_compartment.elmt_reaction_8 = Reacs.elmt_reaction_8;
        elmt_compartment.elmt_reaction_5 = Reacs.elmt_reaction_5;
        elmt_compartment.elmt_reaction_6 = Reacs.elmt_reaction_6;

end Nakakuki2010_CellFateDecision_Core;
