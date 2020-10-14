within BIOMD624;
class Parameters

    Real elmt_Vmax_2E1_APAP(unit = ".s-1.0") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Km_PhaseIIEnzGlu_APAP(unit = "m-3.0.") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Km_PhaseIIEnzSul_APAP(unit = "m-3.0.") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_GSHmax(unit = "m-3.0.") "";
    Real elmt_kNapqiGsh(unit = "mol-1.0.s-1.0") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_kGsh(unit = "s-1.0") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Km_2E1_APAP(unit = "m-3.0.") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Vmax_PhaseIIEnzSul_APAP(unit = ".s-1.0") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Vmax_PhaseIIEnzGlu_APAP(unit = ".s-1.0") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));


    initial equation
        elmt_Vmax_2E1_APAP = 2.0E-5;
        elmt_Km_PhaseIIEnzGlu_APAP = 1.0;
        elmt_Km_PhaseIIEnzSul_APAP = 0.2;
        elmt_GSHmax = 10.0;
        elmt_kNapqiGsh = 0.1;
        elmt_kGsh = 1.0E-4;
        elmt_Km_2E1_APAP = 1.29;
        elmt_Vmax_PhaseIIEnzSul_APAP = 1.75E-4;
        elmt_Vmax_PhaseIIEnzGlu_APAP = 0.001;


    equation
        der(elmt_Vmax_2E1_APAP) = 0;
        der(elmt_Km_PhaseIIEnzGlu_APAP) = 0;
        der(elmt_Km_PhaseIIEnzSul_APAP) = 0;
        der(elmt_GSHmax) = 0;
        der(elmt_kNapqiGsh) = 0;
        der(elmt_kGsh) = 0;
        der(elmt_Km_2E1_APAP) = 0;
        der(elmt_Vmax_PhaseIIEnzSul_APAP) = 0;
        der(elmt_Vmax_PhaseIIEnzGlu_APAP) = 0;

end Parameters;
