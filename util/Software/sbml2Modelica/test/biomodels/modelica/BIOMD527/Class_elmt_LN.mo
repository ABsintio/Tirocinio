within BIOMD527;
class Class_elmt_LN

    input Real elmt_r5;
    input Real elmt_r3;
    input Real elmt_t5;
    input Real elmt_t10;
    input Real elmt_r1;
    input Real elmt_t3;
    input Real elmt_r10;
    input Real elmt_c1;
    input Real elmt_c5;
    input Real elmt_c10;
    input Real elmt_c3;
    input Real elmt_t1;
    input Real elmt_mu5;
    input Real elmt_mu3;
    input Real elmt_mu10;
    input Real elmt_mu1;

    Real elmt_LN(unit = "") "Lymph node";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_L_amount(unit = "");
    Real elmt_L_conc(unit = "");
    Real elmt_L(unit = "") "L";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_LN = 1.0;
        elmt_L_amount = 0.0;


    equation
        assert(elmt_LN >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_LN) = 0;
        elmt_L = elmt_L_amount;
        der(elmt_L_amount) = (if ((time >= 0.0) and (time <= elmt_t1)) then (elmt_mu1 + ((elmt_r1 - elmt_c1) * elmt_L)) elseif ((time > elmt_t1) and (time <= elmt_t3)) then (elmt_mu3 + ((elmt_r3 - elmt_c3) * elmt_L)) elseif ((time > elmt_t3) and (time <= elmt_t5)) then (elmt_mu5 + ((elmt_r5 - elmt_c5) * elmt_L)) elseif ((time > elmt_t5) and (time <= elmt_t10)) then (elmt_mu10 + ((elmt_r10 - elmt_c10) * elmt_L)) else 0.0);

    algorithm
        elmt_L_conc := elmt_L_amount / elmt_LN;
end Class_elmt_LN;
