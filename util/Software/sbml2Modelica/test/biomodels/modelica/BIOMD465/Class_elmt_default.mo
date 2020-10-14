within BIOMD465;
class Class_elmt_default

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
<celldesigner:catalyzed reaction=\"re57\"/>
</celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_default = 1.0;
        elmt_s119_amount = 0.0;


    equation
        assert(elmt_default >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_default) = 0;
        elmt_s119 = elmt_s119_amount;
        der(elmt_s119_amount) = 0;

    algorithm
        elmt_s119_conc := elmt_s119_amount / elmt_default;
end Class_elmt_default;
