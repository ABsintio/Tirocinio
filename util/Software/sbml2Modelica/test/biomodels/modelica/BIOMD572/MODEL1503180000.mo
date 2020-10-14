within BIOMD572;
model MODEL1503180000 "Costa2014 - Computational Model of L. lactis Metabolism" annotation(Documentation(info="<annotation>
  <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
    <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
      <rdf:Description rdf:about=\"#COPASI0\">
        <dcterms:bibliographicCitation>
          <rdf:Bag>
            <rdf:li>
              <rdf:Description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/24413179\"/>
              </rdf:Description>
            </rdf:li>
          </rdf:Bag>
        </dcterms:bibliographicCitation>
        <dcterms:created>
          <rdf:Description>
            <dcterms:W3CDTF>2015-03-16T18:30:01Z</dcterms:W3CDTF>
          </rdf:Description>
        </dcterms:created>
        <CopasiMT:encodes>
          <rdf:Bag>
            <rdf:li rdf:resource=\"http://identifiers.org/taxonomy/1358\"/>
          </rdf:Bag>
        </CopasiMT:encodes>
      </rdf:Description>
    </rdf:RDF>
  </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment_1 elmt_compartment_1;
    Class_elmt_compartment_2 elmt_compartment_2;

    equation
        Reacs.elmt_Acetoin = elmt_compartment_1.elmt_Acetoin;
        Reacs.elmt_CoA = elmt_compartment_1.elmt_CoA;
        Reacs.elmt_Ethanol = elmt_compartment_2.elmt_Ethanol;
        Reacs.elmt_Acetate = elmt_compartment_2.elmt_Acetate;
        Reacs.elmt_NAD = elmt_compartment_1.elmt_NAD;
        Reacs.elmt_Acetoin_Ext = elmt_compartment_2.elmt_Acetoin_Ext;
        Reacs.elmt_ATP = elmt_compartment_1.elmt_ATP;
        Reacs.elmt_PEP = elmt_compartment_1.elmt_PEP;
        Reacs.elmt_BPG = elmt_compartment_1.elmt_BPG;
        Reacs.elmt_Mannitol_Ext = elmt_compartment_2.elmt_Mannitol_Ext;
        Reacs.elmt_G3P = elmt_compartment_1.elmt_G3P;
        Reacs.elmt_Mannitol1Phosphate = elmt_compartment_1.elmt_Mannitol1Phosphate;
        Reacs.elmt_Mannitol = elmt_compartment_1.elmt_Mannitol;
        Reacs.elmt_compartment_1 = elmt_compartment_1.elmt_compartment_1;
        Reacs.elmt_ADP = elmt_compartment_1.elmt_ADP;
        Reacs.elmt_NADH = elmt_compartment_1.elmt_NADH;
        Reacs.elmt_AcetCoA = elmt_compartment_1.elmt_AcetCoA;
        Reacs.elmt_FBP = elmt_compartment_1.elmt_FBP;
        Reacs.elmt_Pint = elmt_compartment_1.elmt_Pint;
        Reacs.elmt_F6P = elmt_compartment_1.elmt_F6P;
        Reacs.elmt_Lactate = elmt_compartment_2.elmt_Lactate;
        Reacs.elmt_Glucose = elmt_compartment_2.elmt_Glucose;
        Reacs.elmt_G6P = elmt_compartment_1.elmt_G6P;
        Reacs.elmt_Pext = elmt_compartment_2.elmt_Pext;
        Reacs.elmt_Butanediol = elmt_compartment_2.elmt_Butanediol;
        Reacs.elmt_Formate = elmt_compartment_2.elmt_Formate;
        Reacs.elmt_PYR = elmt_compartment_1.elmt_PYR;
        elmt_compartment_1.elmt_product30 = Reacs.elmt_product30;
        elmt_compartment_1.elmt_reactant40 = Reacs.elmt_reactant40;
        elmt_compartment_1.elmt_product72 = Reacs.elmt_product72;
        elmt_compartment_1.elmt_reactant41 = Reacs.elmt_reactant41;
        elmt_compartment_1.elmt_product71 = Reacs.elmt_product71;
        elmt_compartment_1.elmt_product31 = Reacs.elmt_product31;
        elmt_compartment_1.elmt_re30 = Reacs.elmt_re30;
        elmt_compartment_1.elmt_re31 = Reacs.elmt_re31;
        elmt_compartment_1.elmt_re32 = Reacs.elmt_re32;
        elmt_compartment_1.elmt_re33 = Reacs.elmt_re33;
        elmt_compartment_1.elmt_reactant45 = Reacs.elmt_reactant45;
        elmt_compartment_1.elmt_reactant46 = Reacs.elmt_reactant46;
        elmt_compartment_1.elmt_product27 = Reacs.elmt_product27;
        elmt_compartment_1.elmt_product26 = Reacs.elmt_product26;
        elmt_compartment_1.elmt_re26 = Reacs.elmt_re26;
        elmt_compartment_1.elmt_reactant50 = Reacs.elmt_reactant50;
        elmt_compartment_1.elmt_re27 = Reacs.elmt_re27;
        elmt_compartment_1.elmt_reactant52 = Reacs.elmt_reactant52;
        elmt_compartment_1.elmt_re28 = Reacs.elmt_re28;
        elmt_compartment_1.elmt_re29 = Reacs.elmt_re29;
        elmt_compartment_1.elmt_reactant53 = Reacs.elmt_reactant53;
        elmt_compartment_1.elmt_product44 = Reacs.elmt_product44;
        elmt_compartment_1.elmt_product43 = Reacs.elmt_product43;
        elmt_compartment_1.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_compartment_1.elmt_re20 = Reacs.elmt_re20;
        elmt_compartment_1.elmt_reactant17 = Reacs.elmt_reactant17;
        elmt_compartment_1.elmt_re21 = Reacs.elmt_re21;
        elmt_compartment_1.elmt_re22 = Reacs.elmt_re22;
        elmt_compartment_1.elmt_re23 = Reacs.elmt_re23;
        elmt_compartment_1.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_compartment_1.elmt_re24 = Reacs.elmt_re24;
        elmt_compartment_1.elmt_reactant56 = Reacs.elmt_reactant56;
        elmt_compartment_1.elmt_re25 = Reacs.elmt_re25;
        elmt_compartment_1.elmt_reactant13 = Reacs.elmt_reactant13;
        elmt_compartment_1.elmt_reactant57 = Reacs.elmt_reactant57;
        elmt_compartment_1.elmt_product38 = Reacs.elmt_product38;
        elmt_compartment_1.elmt_product35 = Reacs.elmt_product35;
        elmt_compartment_1.elmt_re15 = Reacs.elmt_re15;
        elmt_compartment_1.elmt_product51 = Reacs.elmt_product51;
        elmt_compartment_1.elmt_re16 = Reacs.elmt_re16;
        elmt_compartment_1.elmt_re17 = Reacs.elmt_re17;
        elmt_compartment_1.elmt_reactant63 = Reacs.elmt_reactant63;
        elmt_compartment_1.elmt_re18 = Reacs.elmt_re18;
        elmt_compartment_1.elmt_reactant20 = Reacs.elmt_reactant20;
        elmt_compartment_1.elmt_product12 = Reacs.elmt_product12;
        elmt_compartment_1.elmt_product55 = Reacs.elmt_product55;
        elmt_compartment_1.elmt_product10 = Reacs.elmt_product10;
        elmt_compartment_1.elmt_reactant60 = Reacs.elmt_reactant60;
        elmt_compartment_1.elmt_reactant25 = Reacs.elmt_reactant25;
        elmt_compartment_1.elmt_reactant28 = Reacs.elmt_reactant28;
        elmt_compartment_1.elmt_reactant21 = Reacs.elmt_reactant21;
        elmt_compartment_1.elmt_reactant66 = Reacs.elmt_reactant66;
        elmt_compartment_1.elmt_re12 = Reacs.elmt_re12;
        elmt_compartment_1.elmt_re13 = Reacs.elmt_re13;
        elmt_compartment_1.elmt_re14 = Reacs.elmt_re14;
        elmt_compartment_1.elmt_reactant24 = Reacs.elmt_reactant24;
        elmt_compartment_1.elmt_reactant68 = Reacs.elmt_reactant68;
        elmt_compartment_1.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt_compartment_1.elmt_product49 = Reacs.elmt_product49;
        elmt_compartment_1.elmt_product48 = Reacs.elmt_product48;
        elmt_compartment_1.elmt_product9 = Reacs.elmt_product9;
        elmt_compartment_1.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_compartment_1.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_compartment_1.elmt_product61 = Reacs.elmt_product61;
        elmt_compartment_1.elmt_product6 = Reacs.elmt_product6;
        elmt_compartment_1.elmt_product23 = Reacs.elmt_product23;
        elmt_compartment_1.elmt_product22 = Reacs.elmt_product22;
        elmt_compartment_1.elmt_reactant70 = Reacs.elmt_reactant70;
        elmt_compartment_1.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_compartment_1.elmt_product65 = Reacs.elmt_product65;
        elmt_compartment_1.elmt_product64 = Reacs.elmt_product64;
        elmt_compartment_1.elmt_reactant36 = Reacs.elmt_reactant36;
        elmt_compartment_1.elmt_reactant37 = Reacs.elmt_reactant37;
        elmt_compartment_1.elmt_product5 = Reacs.elmt_product5;
        elmt_compartment_1.elmt_reactant32 = Reacs.elmt_reactant32;
        elmt_compartment_1.elmt_reactant33 = Reacs.elmt_reactant33;
        elmt_compartment_1.elmt_product3 = Reacs.elmt_product3;
        elmt_compartment_1.elmt_product2 = Reacs.elmt_product2;
        elmt_compartment_1.elmt_reactant29 = Reacs.elmt_reactant29;
        elmt_compartment_1.elmt_product16 = Reacs.elmt_product16;
        elmt_compartment_1.elmt_product15 = Reacs.elmt_product15;
        elmt_compartment_1.elmt_product59 = Reacs.elmt_product59;
        elmt_compartment_1.elmt_product58 = Reacs.elmt_product58;
        elmt_compartment_1.elmt_product18 = Reacs.elmt_product18;
        elmt_compartment_2.elmt_reactant62 = Reacs.elmt_reactant62;
        elmt_compartment_2.elmt_re27 = Reacs.elmt_re27;
        elmt_compartment_2.elmt_product67 = Reacs.elmt_product67;
        elmt_compartment_2.elmt_product34 = Reacs.elmt_product34;
        elmt_compartment_2.elmt_product54 = Reacs.elmt_product54;
        elmt_compartment_2.elmt_product42 = Reacs.elmt_product42;
        elmt_compartment_2.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_compartment_2.elmt_re30 = Reacs.elmt_re30;
        elmt_compartment_2.elmt_re31 = Reacs.elmt_re31;
        elmt_compartment_2.elmt_re32 = Reacs.elmt_re32;
        elmt_compartment_2.elmt_re22 = Reacs.elmt_re22;
        elmt_compartment_2.elmt_re12 = Reacs.elmt_re12;
        elmt_compartment_2.elmt_re23 = Reacs.elmt_re23;
        elmt_compartment_2.elmt_re24 = Reacs.elmt_re24;
        elmt_compartment_2.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_compartment_2.elmt_re25 = Reacs.elmt_re25;
        elmt_compartment_2.elmt_re14 = Reacs.elmt_re14;
        elmt_compartment_2.elmt_product47 = Reacs.elmt_product47;
        elmt_compartment_2.elmt_product69 = Reacs.elmt_product69;
        elmt_compartment_2.elmt_product39 = Reacs.elmt_product39;

end MODEL1503180000;
