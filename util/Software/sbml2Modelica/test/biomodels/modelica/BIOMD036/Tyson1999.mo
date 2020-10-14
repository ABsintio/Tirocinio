within BIOMD036;
model Tyson1999 "Tyson1999_CircClock" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_default elmt_default;
    Class_elmt_CYTOPLASM elmt_CYTOPLASM;

    equation
        Reacs.elmt_P = elmt_CYTOPLASM.elmt_P;
        Reacs.elmt_M = elmt_CYTOPLASM.elmt_M;
        Reacs.elmt_CYTOPLASM = elmt_CYTOPLASM.elmt_CYTOPLASM;
        elmt_CYTOPLASM.elmt_ProteinD = Reacs.elmt_ProteinD;
        elmt_CYTOPLASM.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_CYTOPLASM.elmt_DBT = Reacs.elmt_DBT;
        elmt_CYTOPLASM.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_CYTOPLASM.elmt_mRNAD = Reacs.elmt_mRNAD;
        elmt_CYTOPLASM.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_CYTOPLASM.elmt_TC = Reacs.elmt_TC;
        elmt_CYTOPLASM.elmt_product1 = Reacs.elmt_product1;
        elmt_CYTOPLASM.elmt_product3 = Reacs.elmt_product3;
        elmt_CYTOPLASM.elmt_TL = Reacs.elmt_TL;

end Tyson1999;
