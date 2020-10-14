within BIOMD063;
model Galazzo1990_FermentationPathwayKinetics "Galazzo1990_FermentationPathwayKinetics" annotation(Documentation(info="<annotation>
  <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
  </rdf:RDF>
</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cytoplasm elmt_cytoplasm;
    Class_elmt_extracellular elmt_extracellular;

    equation
        Params.elmt_cytoplasm = elmt_cytoplasm.elmt_cytoplasm;
        Params.elmt_G6P = elmt_cytoplasm.elmt_G6P;
        Params.elmt_Vhk = Reacs.elmt_Vhk;
        Reacs.elmt_cytoplasm = elmt_cytoplasm.elmt_cytoplasm;
        Reacs.elmt_G6P = elmt_cytoplasm.elmt_G6P;
        Reacs.elmt_FDP = elmt_cytoplasm.elmt_FDP;
        Reacs.elmt_Glci = elmt_cytoplasm.elmt_Glci;
        Reacs.elmt_ATP = elmt_cytoplasm.elmt_ATP;
        Reacs.elmt_PEP = elmt_cytoplasm.elmt_PEP;
        elmt_cytoplasm.elmt_Vgapd = Reacs.elmt_Vgapd;
        elmt_cytoplasm.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_cytoplasm.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_cytoplasm.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_cytoplasm.elmt_Vgol = Reacs.elmt_Vgol;
        elmt_cytoplasm.elmt_product12 = Reacs.elmt_product12;
        elmt_cytoplasm.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_cytoplasm.elmt_product10 = Reacs.elmt_product10;
        elmt_cytoplasm.elmt_Vatpase = Reacs.elmt_Vatpase;
        elmt_cytoplasm.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_cytoplasm.elmt_Vpk = Reacs.elmt_Vpk;
        elmt_cytoplasm.elmt_product1 = Reacs.elmt_product1;
        elmt_cytoplasm.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_cytoplasm.elmt_Vpfk = Reacs.elmt_Vpfk;
        elmt_cytoplasm.elmt_reactant17 = Reacs.elmt_reactant17;
        elmt_cytoplasm.elmt_product4 = Reacs.elmt_product4;
        elmt_cytoplasm.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_cytoplasm.elmt_Vin = Reacs.elmt_Vin;
        elmt_cytoplasm.elmt_Vhk = Reacs.elmt_Vhk;
        elmt_cytoplasm.elmt_Vpol = Reacs.elmt_Vpol;
        elmt_cytoplasm.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt_cytoplasm.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_cytoplasm.elmt_product15 = Reacs.elmt_product15;
        elmt_cytoplasm.elmt_product13 = Reacs.elmt_product13;

end Galazzo1990_FermentationPathwayKinetics;
