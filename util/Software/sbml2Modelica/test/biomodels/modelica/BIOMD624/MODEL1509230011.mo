within BIOMD624;
model MODEL1509230011 "Sluka2016 - Acetaminophen metabolism" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment elmt_compartment;

    equation
        Reacs.elmt_Km_PhaseIIEnzGlu_APAP = Params.elmt_Km_PhaseIIEnzGlu_APAP;
        Reacs.elmt_Km_PhaseIIEnzSul_APAP = Params.elmt_Km_PhaseIIEnzSul_APAP;
        Reacs.elmt_compartment = elmt_compartment.elmt_compartment;
        Reacs.elmt_kNapqiGsh = Params.elmt_kNapqiGsh;
        Reacs.elmt_kGsh = Params.elmt_kGsh;
        Reacs.elmt_Km_2E1_APAP = Params.elmt_Km_2E1_APAP;
        Reacs.elmt_Vmax_PhaseIIEnzGlu_APAP = Params.elmt_Vmax_PhaseIIEnzGlu_APAP;
        Reacs.elmt_GSH = elmt_compartment.elmt_GSH;
        Reacs.elmt_Vmax_2E1_APAP = Params.elmt_Vmax_2E1_APAP;
        Reacs.elmt_GSHmax = Params.elmt_GSHmax;
        Reacs.elmt_NAPQI = elmt_compartment.elmt_NAPQI;
        Reacs.elmt_Vmax_PhaseIIEnzSul_APAP = Params.elmt_Vmax_PhaseIIEnzSul_APAP;
        Reacs.elmt_APAP = elmt_compartment.elmt_APAP;
        elmt_compartment.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_compartment.elmt_J0 = Reacs.elmt_J0;
        elmt_compartment.elmt_product8 = Reacs.elmt_product8;
        elmt_compartment.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_compartment.elmt_product6 = Reacs.elmt_product6;
        elmt_compartment.elmt_product10 = Reacs.elmt_product10;
        elmt_compartment.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_compartment.elmt_product1 = Reacs.elmt_product1;
        elmt_compartment.elmt_J3 = Reacs.elmt_J3;
        elmt_compartment.elmt_J4 = Reacs.elmt_J4;
        elmt_compartment.elmt_product4 = Reacs.elmt_product4;
        elmt_compartment.elmt_J1 = Reacs.elmt_J1;
        elmt_compartment.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_compartment.elmt_J2 = Reacs.elmt_J2;
        elmt_compartment.elmt_reactant9 = Reacs.elmt_reactant9;

end MODEL1509230011;
