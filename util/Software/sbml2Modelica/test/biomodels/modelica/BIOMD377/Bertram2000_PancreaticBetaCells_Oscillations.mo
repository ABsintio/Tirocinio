within BIOMD377;
model Bertram2000_PancreaticBetaCells_Oscillations "Bertram2000_PancreaticBetaCells_Oscillations" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_Compartment elmt_Compartment;

    equation
        Params.elmt_n = elmt_Compartment.elmt_n;
        Params.elmt_s2 = elmt_Compartment.elmt_s2;
        Params.elmt_s1 = elmt_Compartment.elmt_s1;
        Params.elmt_V = elmt_Compartment.elmt_V;
        elmt_Compartment.elmt_ICa = Params.elmt_ICa;
        elmt_Compartment.elmt_Is1 = Params.elmt_Is1;
        elmt_Compartment.elmt_Is2 = Params.elmt_Is2;
        elmt_Compartment.elmt_ninf = Params.elmt_ninf;
        elmt_Compartment.elmt_Il = Params.elmt_Il;
        elmt_Compartment.elmt_s2inf = Params.elmt_s2inf;
        elmt_Compartment.elmt_IK = Params.elmt_IK;
        elmt_Compartment.elmt_s1inf = Params.elmt_s1inf;
        elmt_Compartment.elmt_taus1 = Params.elmt_taus1;
        elmt_Compartment.elmt_Cm = Params.elmt_Cm;
        elmt_Compartment.elmt_taus2 = Params.elmt_taus2;
        elmt_Compartment.elmt_taun = Params.elmt_taun;

end Bertram2000_PancreaticBetaCells_Oscillations;
