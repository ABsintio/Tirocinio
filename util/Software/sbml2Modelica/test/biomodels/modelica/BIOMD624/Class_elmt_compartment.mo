within BIOMD624;
class Class_elmt_compartment

    input Real elmt_reactant2;
    input Real elmt_J0;
    input Real elmt_product8;
    input Real elmt_reactant3;
    input Real elmt_product6;
    input Real elmt_product10;
    input Real elmt_reactant7;
    input Real elmt_product1;
    input Real elmt_J3;
    input Real elmt_J4;
    input Real elmt_product4;
    input Real elmt_J1;
    input Real elmt_reactant0;
    input Real elmt_J2;
    input Real elmt_reactant9;

    Real elmt_compartment(unit = "m3.0") "Hepatocyte";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_APAPconj_Sul_conc(unit = "m-21.0.");
    Real elmt_APAPconj_Sul_amount(unit = "m-18.0.");
    Real elmt_APAPconj_Sul(unit = "m-21.0.") "APAPconj_Sul";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_NAPQIGSH_conc(unit = "m-15.0.");
    Real elmt_NAPQIGSH_amount(unit = "m-12.0.");
    Real elmt_NAPQIGSH(unit = "m-15.0.") "NAPQIGSH";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_NAPQI_conc(unit = "m-9.0.");
    Real elmt_NAPQI_amount(unit = "m-6.0.");
    Real elmt_NAPQI(unit = "m-9.0.") "NAPQI";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_APAPconj_Glu_conc(unit = "m-18.0.");
    Real elmt_APAPconj_Glu_amount(unit = "m-15.0.");
    Real elmt_APAPconj_Glu(unit = "m-18.0.") "APAPconj_Glu";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_X1_conc(unit = "m-3.0.");
    Real elmt_X1_amount(unit = "");
    Real elmt_X1(unit = "m-3.0.") "X1";
    Real elmt_GSH_conc(unit = "m-12.0.");
    Real elmt_GSH_amount(unit = "m-9.0.");
    Real elmt_GSH(unit = "m-12.0.") "GSH";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_APAP_conc(unit = "m-6.0.");
    Real elmt_APAP_amount(unit = "m-3.0.");
    Real elmt_APAP(unit = "m-6.0.") "APAP";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_compartment = 1.0;
        elmt_APAPconj_Sul_conc = 0.0;
        elmt_NAPQIGSH_conc = 0.0;
        elmt_NAPQI_conc = 0.0;
        elmt_APAPconj_Glu_conc = 0.0;
        elmt_X1_conc = 0.0;
        elmt_GSH_conc = 10.0;
        elmt_APAP_conc = 0.1;


    equation
        assert(elmt_compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment) = 0;
        elmt_APAPconj_Sul = elmt_APAPconj_Sul_conc;
        elmt_NAPQIGSH = elmt_NAPQIGSH_conc;
        elmt_NAPQI = elmt_NAPQI_conc;
        elmt_APAPconj_Glu = elmt_APAPconj_Glu_conc;
        elmt_X1 = elmt_X1_conc;
        elmt_GSH = elmt_GSH_conc;
        elmt_APAP = elmt_APAP_conc;
        der(elmt_X1_amount) = 0;
        der(elmt_APAPconj_Sul_amount) = (elmt_J4 * elmt_product10);
        der(elmt_NAPQIGSH_amount) = (elmt_J1 * elmt_product4);
        der(elmt_NAPQI_amount) = ((elmt_J0 * elmt_product1) + (- (elmt_J1 * elmt_reactant3)));
        der(elmt_APAPconj_Glu_amount) = (elmt_J3 * elmt_product8);
        der(elmt_GSH_amount) = ((- (elmt_J1 * elmt_reactant2)) + (elmt_J2 * elmt_product6));
        der(elmt_APAP_amount) = ((- (elmt_J0 * elmt_reactant0)) + (- (elmt_J3 * elmt_reactant7)) + (- (elmt_J4 * elmt_reactant9)));

    algorithm
        elmt_APAPconj_Sul_conc := elmt_APAPconj_Sul_amount / elmt_compartment;
        elmt_NAPQIGSH_conc := elmt_NAPQIGSH_amount / elmt_compartment;
        elmt_NAPQI_conc := elmt_NAPQI_amount / elmt_compartment;
        elmt_APAPconj_Glu_conc := elmt_APAPconj_Glu_amount / elmt_compartment;
        elmt_X1_conc := elmt_X1_amount / elmt_compartment;
        elmt_GSH_conc := elmt_GSH_amount / elmt_compartment;
        elmt_APAP_conc := elmt_APAP_amount / elmt_compartment;
end Class_elmt_compartment;
