within BIOMD059;
class Class_elmt_ER

    input Real elmt_Calcium_cyt_Jerp;
    input Real elmt_reactant5;
    input Real elmt_Calcium_cyt_Jout;
    input Real elmt_product4;

    Real elmt_ER(unit = "") "endoplasmic reticulum";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Ca_er_conc(unit = "");
    Real elmt_Ca_er_amount(unit = "");
    Real elmt_Ca_er(unit = "") "ER Calcium";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_ER = 2.8E-13;
        elmt_Ca_er_conc = 22.8;


    equation
        assert(elmt_ER >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_ER) = 0;
        elmt_Ca_er = elmt_Ca_er_conc;
        der(elmt_Ca_er_amount) = ((elmt_Calcium_cyt_Jerp * elmt_product4) + (- (elmt_Calcium_cyt_Jout * elmt_reactant5)));

    algorithm
        elmt_Ca_er_conc := elmt_Ca_er_amount / elmt_ER;
end Class_elmt_ER;
