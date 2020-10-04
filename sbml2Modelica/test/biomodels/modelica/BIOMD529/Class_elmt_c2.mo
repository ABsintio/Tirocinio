within BIOMD529;
class Class_elmt_c2

    input Real elmt_J8;
    input Real elmt_product15;
    input Real elmt_product19;
    input Real elmt_product3;
    input Real elmt_J10;
    input Real elmt_J2;

    Real elmt_c2(unit = "m3.0") "Environment";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_IFNb_env_conc(unit = "");
    Real elmt_IFNb_env_amount(unit = "");
    Real elmt_IFNb_env(unit = "") "IFNb_env";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_TNFenv_conc(unit = "");
    Real elmt_TNFenv_amount(unit = "");
    Real elmt_TNFenv(unit = "") "TNFenv";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_IFNa_env_conc(unit = "");
    Real elmt_IFNa_env_amount(unit = "");
    Real elmt_IFNa_env(unit = "") "IFNa_env";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_c2 = 1.0;
        elmt_IFNb_env_conc = 0.0;
        elmt_TNFenv_conc = 0.0;
        elmt_IFNa_env_conc = 0.0;


    equation
        assert(elmt_c2 >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_c2) = 0;
        elmt_IFNb_env = elmt_IFNb_env_conc;
        elmt_TNFenv = elmt_TNFenv_conc;
        elmt_IFNa_env = elmt_IFNa_env_conc;
        der(elmt_IFNb_env_amount) = (elmt_J2 * elmt_product3);
        der(elmt_TNFenv_amount) = (elmt_J10 * elmt_product19);
        der(elmt_IFNa_env_amount) = (elmt_J8 * elmt_product15);

    algorithm
        elmt_IFNb_env_conc := elmt_IFNb_env_amount / elmt_c2;
        elmt_TNFenv_conc := elmt_TNFenv_amount / elmt_c2;
        elmt_IFNa_env_conc := elmt_IFNa_env_amount / elmt_c2;
end Class_elmt_c2;
