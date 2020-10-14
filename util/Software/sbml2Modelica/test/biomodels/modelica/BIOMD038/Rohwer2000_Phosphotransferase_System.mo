within BIOMD038;
model Rohwer2000_Phosphotransferase_System "Rohwer2000_Phosphotransferase_System" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment elmt_compartment;

    equation
        Reacs.elmt_compartment = elmt_compartment.elmt_compartment;
        Reacs.elmt_HPrP = elmt_compartment.elmt_HPrP;
        Reacs.elmt_EI = elmt_compartment.elmt_EI;
        Reacs.elmt_EIICB = elmt_compartment.elmt_EIICB;
        Reacs.elmt_EIICBP = elmt_compartment.elmt_EIICBP;
        Reacs.elmt_Glc = elmt_compartment.elmt_Glc;
        Reacs.elmt_PEP = elmt_compartment.elmt_PEP;
        Reacs.elmt_EIIAPIICB = elmt_compartment.elmt_EIIAPIICB;
        Reacs.elmt_HPrPIIA = elmt_compartment.elmt_HPrPIIA;
        Reacs.elmt_EIIAP = elmt_compartment.elmt_EIIAP;
        Reacs.elmt_EIPHPr = elmt_compartment.elmt_EIPHPr;
        Reacs.elmt_EIICBPGlc = elmt_compartment.elmt_EIICBPGlc;
        Reacs.elmt_PyrPI = elmt_compartment.elmt_PyrPI;
        Reacs.elmt_GlcP = elmt_compartment.elmt_GlcP;
        Reacs.elmt_EIP = elmt_compartment.elmt_EIP;
        Reacs.elmt_EIIA = elmt_compartment.elmt_EIIA;
        Reacs.elmt_HPr = elmt_compartment.elmt_HPr;
        Reacs.elmt_Pyr = elmt_compartment.elmt_Pyr;
        elmt_compartment.elmt_v9 = Reacs.elmt_v9;
        elmt_compartment.elmt_v7 = Reacs.elmt_v7;
        elmt_compartment.elmt_product11 = Reacs.elmt_product11;
        elmt_compartment.elmt_v8 = Reacs.elmt_v8;
        elmt_compartment.elmt_v5 = Reacs.elmt_v5;
        elmt_compartment.elmt_product10 = Reacs.elmt_product10;
        elmt_compartment.elmt_v6 = Reacs.elmt_v6;
        elmt_compartment.elmt_reactant27 = Reacs.elmt_reactant27;
        elmt_compartment.elmt_reactant21 = Reacs.elmt_reactant21;
        elmt_compartment.elmt_reactant24 = Reacs.elmt_reactant24;
        elmt_compartment.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_compartment.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt_compartment.elmt_v3 = Reacs.elmt_v3;
        elmt_compartment.elmt_v4 = Reacs.elmt_v4;
        elmt_compartment.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_compartment.elmt_product26 = Reacs.elmt_product26;
        elmt_compartment.elmt_v1 = Reacs.elmt_v1;
        elmt_compartment.elmt_v2 = Reacs.elmt_v2;
        elmt_compartment.elmt_product28 = Reacs.elmt_product28;
        elmt_compartment.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_compartment.elmt_product8 = Reacs.elmt_product8;
        elmt_compartment.elmt_v10 = Reacs.elmt_v10;
        elmt_compartment.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_compartment.elmt_product23 = Reacs.elmt_product23;
        elmt_compartment.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_compartment.elmt_product22 = Reacs.elmt_product22;
        elmt_compartment.elmt_product20 = Reacs.elmt_product20;
        elmt_compartment.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_compartment.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_compartment.elmt_product4 = Reacs.elmt_product4;
        elmt_compartment.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_compartment.elmt_product2 = Reacs.elmt_product2;
        elmt_compartment.elmt_reactant13 = Reacs.elmt_reactant13;
        elmt_compartment.elmt_product16 = Reacs.elmt_product16;
        elmt_compartment.elmt_product14 = Reacs.elmt_product14;
        elmt_compartment.elmt_product17 = Reacs.elmt_product17;

end Rohwer2000_Phosphotransferase_System;
