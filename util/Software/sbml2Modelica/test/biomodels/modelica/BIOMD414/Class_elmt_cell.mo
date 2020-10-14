within BIOMD414;
class Class_elmt_cell

    input Real elmt_reactant2;
    input Real elmt_reactant1;
    input Real elmt_VENUSdecayduetoauxin;
    input Real elmt_product0;
    input Real elmt_VENUSdecayduetophotobleaching;
    input Real elmt_VENUSproduction;

    Real elmt_cell(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_VENUS_conc(unit = "");
    Real elmt_VENUS_amount(unit = "");
    Real elmt_VENUS(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_cell = 1.0;
        elmt_VENUS_conc = 1.0;


    equation
        assert(elmt_cell >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cell) = 0;
        elmt_VENUS = elmt_VENUS_conc;
        der(elmt_VENUS_amount) = ((- (elmt_VENUSdecayduetoauxin * elmt_reactant2)) + (- (elmt_VENUSdecayduetophotobleaching * elmt_reactant1)) + (elmt_VENUSproduction * elmt_product0));

    algorithm
        elmt_VENUS_conc := elmt_VENUS_amount / elmt_cell;
end Class_elmt_cell;
