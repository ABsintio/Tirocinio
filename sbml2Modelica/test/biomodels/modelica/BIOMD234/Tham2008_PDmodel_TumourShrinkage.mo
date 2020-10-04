within BIOMD234;
model Tham2008_PDmodel_TumourShrinkage "Tham2008 - PDmodel, Tumour shrinkage by gemcitabine and carboplatin " annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_COMpartment elmt_COMpartment;

    equation
        Params.elmt_Ce = elmt_COMpartment.elmt_Ce;
        elmt_COMpartment.elmt_Keq = Params.elmt_Keq;
        elmt_COMpartment.elmt_Exposure = Params.elmt_Exposure;

end Tham2008_PDmodel_TumourShrinkage;
