within BIOMD198;
model testid "Stone1996 - activation of soluble guanylate cyclase by nitric oxide" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cytosol elmt_cytosol;

    equation
        Params.elmt_NO_sGCslow = elmt_cytosol.elmt_NO_sGCslow;
        Params.elmt_NO_sGCfast = elmt_cytosol.elmt_NO_sGCfast;
        Params.elmt_NO_sGCfast_5coord = elmt_cytosol.elmt_NO_sGCfast_5coord;
        Params.elmt_NO_sGCslow_5coord = elmt_cytosol.elmt_NO_sGCslow_5coord;
        Params.elmt_NO_sGCslow_6coord = elmt_cytosol.elmt_NO_sGCslow_6coord;
        Params.elmt_sGCfast = elmt_cytosol.elmt_sGCfast;
        Params.elmt_NO_sGCfast_6coord = elmt_cytosol.elmt_NO_sGCfast_6coord;
        Params.elmt_sGCslow = elmt_cytosol.elmt_sGCslow;
        Params.elmt_NO_sGCslow_6coord_NO_int = elmt_cytosol.elmt_NO_sGCslow_6coord_NO_int;
        Reacs.elmt_k1 = Params.elmt_k1;
        Reacs.elmt_NO = elmt_cytosol.elmt_NO;
        Reacs.elmt_NO_sGCslow_6coord = elmt_cytosol.elmt_NO_sGCslow_6coord;
        Reacs.elmt_sGCfast = elmt_cytosol.elmt_sGCfast;
        Reacs.elmt_k8 = Params.elmt_k8;
        Reacs.elmt_NO_sGCfast_6coord = elmt_cytosol.elmt_NO_sGCfast_6coord;
        Reacs.elmt_k9 = Params.elmt_k9;
        Reacs.elmt_k6 = Params.elmt_k6;
        Reacs.elmt_k7 = Params.elmt_k7;
        Reacs.elmt_cytosol = elmt_cytosol.elmt_cytosol;
        Reacs.elmt_k4 = Params.elmt_k4;
        Reacs.elmt_k5 = Params.elmt_k5;
        Reacs.elmt_k2 = Params.elmt_k2;
        Reacs.elmt_k3 = Params.elmt_k3;
        Reacs.elmt_NO_sGCslow = elmt_cytosol.elmt_NO_sGCslow;
        Reacs.elmt_NO_sGCfast = elmt_cytosol.elmt_NO_sGCfast;
        Reacs.elmt_NO_sGCfast_5coord = elmt_cytosol.elmt_NO_sGCfast_5coord;
        Reacs.elmt_NO_sGCslow_5coord = elmt_cytosol.elmt_NO_sGCslow_5coord;
        Reacs.elmt_sGCslow = elmt_cytosol.elmt_sGCslow;
        Reacs.elmt_k12 = Params.elmt_k12;
        Reacs.elmt_k11 = Params.elmt_k11;
        Reacs.elmt_NO_sGCslow_6coord_NO_int = elmt_cytosol.elmt_NO_sGCslow_6coord_NO_int;
        Reacs.elmt_k10 = Params.elmt_k10;
        elmt_cytosol.elmt_product9 = Reacs.elmt_product9;
        elmt_cytosol.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_cytosol.elmt_r2slow = Reacs.elmt_r2slow;
        elmt_cytosol.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_cytosol.elmt_product6 = Reacs.elmt_product6;
        elmt_cytosol.elmt_product11 = Reacs.elmt_product11;
        elmt_cytosol.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_cytosol.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_cytosol.elmt_r2fast = Reacs.elmt_r2fast;
        elmt_cytosol.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_cytosol.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_cytosol.elmt_r3slow = Reacs.elmt_r3slow;
        elmt_cytosol.elmt_product4 = Reacs.elmt_product4;
        elmt_cytosol.elmt_product2 = Reacs.elmt_product2;
        elmt_cytosol.elmt_reactant13 = Reacs.elmt_reactant13;
        elmt_cytosol.elmt_r1fast = Reacs.elmt_r1fast;
        elmt_cytosol.elmt_r1slow = Reacs.elmt_r1slow;
        elmt_cytosol.elmt_r3fast = Reacs.elmt_r3fast;
        elmt_cytosol.elmt_r4slow = Reacs.elmt_r4slow;
        elmt_cytosol.elmt_product16 = Reacs.elmt_product16;
        elmt_cytosol.elmt_product14 = Reacs.elmt_product14;

end testid;
