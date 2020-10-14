within BIOMD327;
class Class_elmt_cell

    input Real elmt_nak;
    input Real elmt_product7;
    input Real elmt_buffering;
    input Real elmt_product10;
    input Real elmt_product20;
    input Real elmt_bcftr;
    input Real elmt_apbl;
    input Real elmt_reactant16;
    input Real elmt_apl;
    input Real elmt_product5;
    input Real elmt_product3;
    input Real elmt_reactant13;
    input Real elmt_product2;
    input Real elmt_reactant18;
    input Real elmt_naleak;
    input Real elmt_reactant9;
    input Real elmt_nbc;
    input Real elmt_ccftr;
    input Real elmt_product14;

    Real elmt_cell(unit = "") "cell";
    Real elmt_ci_conc(unit = "");
    Real elmt_ci_amount(unit = "");
    Real elmt_ci(unit = "") "CL-";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_ni_conc(unit = "");
    Real elmt_ni_amount(unit = "");
    Real elmt_ni(unit = "") "Na+";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_bi_conc(unit = "");
    Real elmt_bi_amount(unit = "");
    Real elmt_bi(unit = "") "HCO3-";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_cell = 1.0;
        elmt_ci_conc = 60.0;
        elmt_ni_conc = 14.0;
        elmt_bi_conc = 15.0;


    equation
        assert(elmt_cell >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cell) = 0;
        elmt_ci = elmt_ci_conc;
        elmt_ni = elmt_ni_conc;
        elmt_bi = elmt_bi_conc;
        der(elmt_ci_amount) = ((elmt_ccftr * elmt_product7) + (- (elmt_apbl * elmt_reactant13)) + (- (elmt_apl * elmt_reactant9)));
        der(elmt_ni_amount) = ((- (elmt_nak * elmt_reactant16)) + (- (elmt_naleak * elmt_reactant18)) + (elmt_nbc * elmt_product3));
        der(elmt_bi_amount) = ((elmt_buffering * elmt_product20) + (elmt_nbc * elmt_product2) + (elmt_bcftr * elmt_product5) + (elmt_apbl * elmt_product14) + (elmt_apl * elmt_product10));

    algorithm
        elmt_ci_conc := elmt_ci_amount / elmt_cell;
        elmt_ni_conc := elmt_ni_amount / elmt_cell;
        elmt_bi_conc := elmt_bi_amount / elmt_cell;
end Class_elmt_cell;
