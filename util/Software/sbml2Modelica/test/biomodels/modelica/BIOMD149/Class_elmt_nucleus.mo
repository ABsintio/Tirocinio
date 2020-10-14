within BIOMD149;
class Class_elmt_nucleus

    input Real elmt_R16;
    input Real elmt_R17;
    input Real elmt_R8;
    input Real elmt_reactant30;
    input Real elmt_reactant31;
    input Real elmt_R12;
    input Real elmt_R13;
    input Real elmt_product32;
    input Real elmt_product26;
    input Real elmt_reactant27;
    input Real elmt_reactant17;
    input Real elmt_reactant33;

    Real elmt_nucleus(unit = "") "nucleus";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_X11_conc(unit = "");
    Real elmt_X11_amount(unit = "");
    Real elmt_X11(unit = "") "bCatenin";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_X14_conc(unit = "");
    Real elmt_X14_amount(unit = "");
    Real elmt_X14(unit = "") "bCatenin/TCF";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_X13_conc(unit = "");
    Real elmt_X13_amount(unit = "");
    Real elmt_X13(unit = "") "TCF";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_nucleus = 1.0;
        elmt_X11_conc = 42.7224;
        elmt_X14_conc = 8.8121;
        elmt_X13_conc = 6.1879;


    equation
        assert(elmt_nucleus >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_nucleus) = 0;
        elmt_X11 = elmt_X11_conc;
        elmt_X14 = elmt_X14_conc;
        elmt_X13 = elmt_X13_conc;
        der(elmt_X11_amount) = ((- (elmt_R16 * elmt_reactant31)) + (- (elmt_R17 * elmt_reactant33)) + (elmt_R12 * elmt_product26) + (- (elmt_R13 * elmt_reactant27)) + (- (elmt_R8 * elmt_reactant17)));
        der(elmt_X14_amount) = (elmt_R16 * elmt_product32);
        der(elmt_X13_amount) = (- (elmt_R16 * elmt_reactant30));

    algorithm
        elmt_X11_conc := elmt_X11_amount / elmt_nucleus;
        elmt_X14_conc := elmt_X14_amount / elmt_nucleus;
        elmt_X13_conc := elmt_X13_amount / elmt_nucleus;
end Class_elmt_nucleus;
