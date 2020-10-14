within BIOMD468;
class Class_elmt_c2

    input Real elmt_re7;
    input Real elmt_reactant8;
    input Real elmt_re4;
    input Real elmt_product3;

    Real elmt_c2(unit = "m3.0") "ER";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:name>ER</celldesigner:name>
</celldesigner:extension>
                        </annotation>"));
    Real elmt_s2_amount(unit = "");
    Real elmt_s2_conc(unit = "m-3.0.");
    Real elmt_s2(unit = "") "Ca_s";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
<celldesigner:speciesIdentity>
<celldesigner:class>ION</celldesigner:class>
<celldesigner:name>Ca_s</celldesigner:name>
</celldesigner:speciesIdentity>
</celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_c2 = 1.0;
        elmt_s2_amount = 2830000.0;


    equation
        assert(elmt_c2 >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_c2) = 0;
        elmt_s2 = elmt_s2_amount;
        der(elmt_s2_amount) = ((- (elmt_re7 * elmt_reactant8)) + (elmt_re4 * elmt_product3));

    algorithm
        elmt_s2_conc := elmt_s2_amount / elmt_c2;
end Class_elmt_c2;
