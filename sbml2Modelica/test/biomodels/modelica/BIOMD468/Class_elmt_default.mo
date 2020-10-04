within BIOMD468;
class Class_elmt_default

    input Real elmt_reactant2;
    input Real elmt_re4;

    Real elmt_default(unit = "m3.0") "";
    Real elmt_s119_amount(unit = "");
    Real elmt_s119_conc(unit = "m-3.0.");
    Real elmt_s119(unit = "") "Shear Stress";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
<celldesigner:speciesIdentity>
<celldesigner:class>UNKNOWN</celldesigner:class>
<celldesigner:name>Shear Stress</celldesigner:name>
</celldesigner:speciesIdentity>
<celldesigner:listOfCatalyzedReactions>
<celldesigner:catalyzed reaction=\"re5\"/>
<celldesigner:catalyzed reaction=\"re57\"/>
<celldesigner:catalyzed reaction=\"re102\"/>
<celldesigner:catalyzed reaction=\"re103\"/>
</celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_s5_amount(unit = "");
    Real elmt_s5_conc(unit = "m-3.0.");
    Real elmt_s5(unit = "") "s5";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
<celldesigner:speciesIdentity>
<celldesigner:class>DEGRADED</celldesigner:class>
<celldesigner:name>s5</celldesigner:name>
</celldesigner:speciesIdentity>
</celldesigner:extension>
                        </annotation>"));
    Real elmt_s1_amount(unit = "");
    Real elmt_s1_conc(unit = "m-3.0.");
    Real elmt_s1(unit = "") "Ca_ex";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
<celldesigner:speciesIdentity>
<celldesigner:class>ION</celldesigner:class>
<celldesigner:name>Ca_ex</celldesigner:name>
</celldesigner:speciesIdentity>
<celldesigner:listOfCatalyzedReactions>
<celldesigner:catalyzed reaction=\"re4\"/>
</celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_default = 1.0;
        elmt_s119_amount = 0.0;
        elmt_s5_amount = 0.0;
        elmt_s1_amount = 1500000.0;


    equation
        assert(elmt_default >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_default) = 0;
        elmt_s119 = elmt_s119_amount;
        elmt_s5 = elmt_s5_amount;
        elmt_s1 = elmt_s1_amount;
        der(elmt_s119_amount) = 0;
        der(elmt_s1_amount) = 0;
        der(elmt_s5_amount) = (- (elmt_re4 * elmt_reactant2));

    algorithm
        elmt_s119_conc := elmt_s119_amount / elmt_default;
        elmt_s5_conc := elmt_s5_amount / elmt_default;
        elmt_s1_conc := elmt_s1_amount / elmt_default;
end Class_elmt_default;
