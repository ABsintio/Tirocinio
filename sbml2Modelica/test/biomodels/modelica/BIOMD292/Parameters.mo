within BIOMD292;
class Parameters

    Real elmt_k1(unit = "s-1.0") "";
    Real elmt_N0(unit = "m-3.0.") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_A0(unit = "m-3.0.") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_k4(unit = "s-1.0") "";
    Real elmt_k2(unit = "s-1.0") "";
    Real elmt_k3(unit = "m3.0.mol-1.0.s-1.0") "";


    initial equation
        elmt_k1 = 0.123;
        elmt_N0 = 1.2;
        elmt_A0 = 2.5;
        elmt_k4 = 0.614;
        elmt_k2 = 0.625;
        elmt_k3 = 0.3;


    equation
        der(elmt_k1) = 0;
        der(elmt_N0) = 0;
        der(elmt_A0) = 0;
        der(elmt_k4) = 0;
        der(elmt_k2) = 0;
        der(elmt_k3) = 0;

end Parameters;
