within BIOMD328;
class Class_elmt_medium

    input Real elmt_product51;
    input Real elmt_reactant42;
    input Real elmt_product55;
    input Real elmt_product53;
    input Real elmt_reactant48;
    input Real elmt_reactant26;
    input Real elmt_R_pOH_m;
    input Real elmt_reactant28;
    input Real elmt_reactant44;
    input Real elmt_reactant46;
    input Real elmt_Export_ASoOH;
    input Real elmt_Export_ASpOH;
    input Real elmt_Export_ASLoOH;
    input Real elmt_Export_ASLpOH;
    input Real elmt_Export_ASL;
    input Real elmt_product49;
    input Real elmt_product25;
    input Real elmt_product47;
    input Real elmt_R_oOH_m;
    input Real elmt_Export_AS;
    input Real elmt_reactant2;
    input Real elmt_R_ASASL_m;
    input Real elmt_product23;
    input Real elmt_product45;
    input Real elmt_Import_AS;
    input Real elmt_reactant0;
    input Real elmt_reactant56;
    input Real elmt_Import_ASpOH;
    input Real elmt_Import_ASLoOH;
    input Real elmt_Import_ASoOH;
    input Real elmt_product13;
    input Real elmt_Import_ASL;
    input Real elmt_Import_ASLpOH;

    Real elmt_medium(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_AS_m_conc(unit = "");
    Real elmt_AS_m_amount(unit = "");
    Real elmt_AS_m(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_ASoOH_m_conc(unit = "");
    Real elmt_ASoOH_m_amount(unit = "");
    Real elmt_ASoOH_m(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_ASL_m_conc(unit = "");
    Real elmt_ASL_m_amount(unit = "");
    Real elmt_ASL_m(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_ASpOH_m_conc(unit = "");
    Real elmt_ASpOH_m_amount(unit = "");
    Real elmt_ASpOH_m(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_ASLoOH_m_conc(unit = "");
    Real elmt_ASLoOH_m_amount(unit = "");
    Real elmt_ASLoOH_m(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_ASLpOH_m_conc(unit = "");
    Real elmt_ASLpOH_m_amount(unit = "");
    Real elmt_ASLpOH_m(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_medium = 2.0;
        elmt_AS_m_conc = 8797.15;
        elmt_ASoOH_m_conc = 0.0;
        elmt_ASL_m_conc = 30.56;
        elmt_ASpOH_m_conc = 0.0;
        elmt_ASLoOH_m_conc = 0.0;
        elmt_ASLpOH_m_conc = 0.0;


    equation
        assert(elmt_medium >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_medium) = 0;
        elmt_AS_m = elmt_AS_m_conc;
        elmt_ASoOH_m = elmt_ASoOH_m_conc;
        elmt_ASL_m = elmt_ASL_m_conc;
        elmt_ASpOH_m = elmt_ASpOH_m_conc;
        elmt_ASLoOH_m = elmt_ASLoOH_m_conc;
        elmt_ASLpOH_m = elmt_ASLpOH_m_conc;
        der(elmt_AS_m_amount) = ((elmt_Export_AS * elmt_product23) + (elmt_R_ASASL_m * elmt_product45) + (- (elmt_Import_AS * elmt_reactant0)));
        der(elmt_ASoOH_m_amount) = ((elmt_Export_ASoOH * elmt_product13) + (elmt_R_oOH_m * elmt_product49) + (- (elmt_Import_ASoOH * elmt_reactant56)));
        der(elmt_ASL_m_amount) = ((elmt_Export_ASL * elmt_product25) + (- (elmt_R_ASASL_m * elmt_reactant44)) + (- (elmt_Import_ASL * elmt_reactant2)));
        der(elmt_ASpOH_m_amount) = ((elmt_R_pOH_m * elmt_product47) + (elmt_Export_ASpOH * elmt_product55) + (- (elmt_Import_ASpOH * elmt_reactant42)));
        der(elmt_ASLoOH_m_amount) = ((elmt_Export_ASLoOH * elmt_product53) + (- (elmt_R_oOH_m * elmt_reactant48)) + (- (elmt_Import_ASLoOH * elmt_reactant28)));
        der(elmt_ASLpOH_m_amount) = ((- (elmt_R_pOH_m * elmt_reactant46)) + (elmt_Export_ASLpOH * elmt_product51) + (- (elmt_Import_ASLpOH * elmt_reactant26)));

    algorithm
        elmt_AS_m_conc := elmt_AS_m_amount / elmt_medium;
        elmt_ASoOH_m_conc := elmt_ASoOH_m_amount / elmt_medium;
        elmt_ASL_m_conc := elmt_ASL_m_amount / elmt_medium;
        elmt_ASpOH_m_conc := elmt_ASpOH_m_amount / elmt_medium;
        elmt_ASLoOH_m_conc := elmt_ASLoOH_m_amount / elmt_medium;
        elmt_ASLpOH_m_conc := elmt_ASLpOH_m_amount / elmt_medium;
end Class_elmt_medium;
