within BIOMD609;
model Reddyhoff2015 "Reddyhoff2015 - Acetaminophen metabolism and toxicity" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment elmt_compartment;

    equation
        Reacs.elmt_bG = Params.elmt_bG;
        Reacs.elmt_dG = Params.elmt_dG;
        Reacs.elmt_kN = Params.elmt_kN;
        Reacs.elmt_compartment = elmt_compartment.elmt_compartment;
        Reacs.elmt_kGSH = Params.elmt_kGSH;
        Reacs.elmt_GSH = elmt_compartment.elmt_GSH;
        Reacs.elmt_kS = Params.elmt_kS;
        Reacs.elmt_kPSH = Params.elmt_kPSH;
        Reacs.elmt_Sulphate__PAPS = elmt_compartment.elmt_Sulphate__PAPS;
        Reacs.elmt_k450 = Params.elmt_k450;
        Reacs.elmt_bS = Params.elmt_bS;
        Reacs.elmt_NAPQI = elmt_compartment.elmt_NAPQI;
        Reacs.elmt_dS = Params.elmt_dS;
        Reacs.elmt_kG = Params.elmt_kG;
        Reacs.elmt_Paracetamol_APAP = elmt_compartment.elmt_Paracetamol_APAP;
        elmt_compartment.elmt_R10 = Reacs.elmt_R10;
        elmt_compartment.elmt_product10 = Reacs.elmt_product10;
        elmt_compartment.elmt_bS = Params.elmt_bS;
        elmt_compartment.elmt_dS = Params.elmt_dS;
        elmt_compartment.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_compartment.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_compartment.elmt_bG = Params.elmt_bG;
        elmt_compartment.elmt_R7 = Reacs.elmt_R7;
        elmt_compartment.elmt_R8 = Reacs.elmt_R8;
        elmt_compartment.elmt_R5 = Reacs.elmt_R5;
        elmt_compartment.elmt_dG = Params.elmt_dG;
        elmt_compartment.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_compartment.elmt_R6 = Reacs.elmt_R6;
        elmt_compartment.elmt_product6 = Reacs.elmt_product6;
        elmt_compartment.elmt_R3 = Reacs.elmt_R3;
        elmt_compartment.elmt_R4 = Reacs.elmt_R4;
        elmt_compartment.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_compartment.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_compartment.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_compartment.elmt_R2 = Reacs.elmt_R2;
        elmt_compartment.elmt_P0 = Params.elmt_P0;
        elmt_compartment.elmt_product1 = Reacs.elmt_product1;
        elmt_compartment.elmt_reaction_1 = Reacs.elmt_reaction_1;
        elmt_compartment.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_compartment.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_compartment.elmt_R9 = Reacs.elmt_R9;
        elmt_compartment.elmt_product3 = Reacs.elmt_product3;
        elmt_compartment.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_compartment.elmt_reactant13 = Reacs.elmt_reactant13;
        elmt_compartment.elmt_product14 = Reacs.elmt_product14;

end Reddyhoff2015;
