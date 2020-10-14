within BIOMD546;
class Class_elmt_default

    input Real elmt_reactant2;
    input Real elmt_product9;
    input Real elmt_product7;
    input Real elmt_reactant4;
    input Real elmt_reactant6;
    input Real elmt_reactant8;
    input Real elmt_re3;
    input Real elmt_product1;
    input Real elmt_re1;
    input Real elmt_product5;
    input Real elmt_product3;
    input Real elmt_reactant0;
    input Real elmt_re7;
    input Real elmt_re6;
    input Real elmt_re5;

    Real elmt_default(unit = "m3.0") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_s6_conc(unit = "");
    Real elmt_s6_amount(unit = "");
    Real elmt_s6(unit = "") "s6";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
<celldesigner:speciesIdentity>
<celldesigner:class>UNKNOWN</celldesigner:class>
<celldesigner:name>s6</celldesigner:name>
</celldesigner:speciesIdentity>
</celldesigner:extension>
        </annotation>"));
    Real elmt_s7_conc(unit = "");
    Real elmt_s7_amount(unit = "");
    Real elmt_s7(unit = "") "s7";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
<celldesigner:speciesIdentity>
<celldesigner:class>UNKNOWN</celldesigner:class>
<celldesigner:name>s7</celldesigner:name>
</celldesigner:speciesIdentity>
</celldesigner:extension>
        </annotation>"));
    Real elmt_s4_conc(unit = "");
    Real elmt_s4_amount(unit = "");
    Real elmt_s4(unit = "") "s4";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
<celldesigner:speciesIdentity>
<celldesigner:class>UNKNOWN</celldesigner:class>
<celldesigner:name>s4</celldesigner:name>
</celldesigner:speciesIdentity>
</celldesigner:extension>
        </annotation>"));
    Real elmt_s5_conc(unit = "");
    Real elmt_s5_amount(unit = "");
    Real elmt_s5(unit = "") "s5";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
<celldesigner:speciesIdentity>
<celldesigner:class>UNKNOWN</celldesigner:class>
<celldesigner:name>s5</celldesigner:name>
</celldesigner:speciesIdentity>
</celldesigner:extension>
        </annotation>"));
    Real elmt_s2_amount(unit = "");
    Real elmt_s2_conc(unit = "");
    Real elmt_s2(unit = "") "Eps";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
<celldesigner:speciesIdentity>
<celldesigner:class>PROTEIN</celldesigner:class>
<celldesigner:proteinReference>pr2</celldesigner:proteinReference>
</celldesigner:speciesIdentity>
<celldesigner:listOfCatalyzedReactions>
<celldesigner:catalyzed reaction=\"re7\"/>
</celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_s3_amount(unit = "");
    Real elmt_s3_conc(unit = "");
    Real elmt_s3(unit = "") "V";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
<celldesigner:speciesIdentity>
<celldesigner:class>PROTEIN</celldesigner:class>
<celldesigner:proteinReference>pr3</celldesigner:proteinReference>
</celldesigner:speciesIdentity>
<celldesigner:listOfCatalyzedReactions>
<celldesigner:catalyzed reaction=\"re1\"/>
</celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_s1_amount(unit = "");
    Real elmt_s1_conc(unit = "");
    Real elmt_s1(unit = "") "Ep";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
<celldesigner:speciesIdentity>
<celldesigner:class>PROTEIN</celldesigner:class>
<celldesigner:proteinReference>pr1</celldesigner:proteinReference>
</celldesigner:speciesIdentity>
</celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_default = 1.0;
        elmt_s6_conc = (0.0 / elmt_default);
        elmt_s7_conc = (0.0 / elmt_default);
        elmt_s4_conc = (0.0 / elmt_default);
        elmt_s5_conc = (0.0 / elmt_default);
        elmt_s2_amount = 0.0;
        elmt_s3_amount = 1473.0;
        elmt_s1_amount = 580000.0;


    equation
        assert(elmt_default >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_default) = 0;
        elmt_s6 = elmt_s6_conc;
        elmt_s7 = elmt_s7_conc;
        elmt_s4 = elmt_s4_conc;
        elmt_s5 = elmt_s5_conc;
        elmt_s2 = elmt_s2_amount;
        elmt_s3 = elmt_s3_amount;
        elmt_s1 = elmt_s1_amount;
        der(elmt_s6_amount) = (elmt_re6 * elmt_product7);
        der(elmt_s7_amount) = (- (elmt_re7 * elmt_reactant8));
        der(elmt_s4_amount) = (- (elmt_re3 * elmt_reactant2));
        der(elmt_s5_amount) = (elmt_re5 * elmt_product5);
        der(elmt_s2_amount) = ((- (elmt_re5 * elmt_reactant4)) + (elmt_re1 * elmt_product1));
        der(elmt_s3_amount) = ((elmt_re7 * elmt_product9) + (- (elmt_re6 * elmt_reactant6)));
        der(elmt_s1_amount) = ((elmt_re3 * elmt_product3) + (- (elmt_re1 * elmt_reactant0)));

    algorithm
        elmt_s6_conc := elmt_s6_amount / elmt_default;
        elmt_s7_conc := elmt_s7_amount / elmt_default;
        elmt_s4_conc := elmt_s4_amount / elmt_default;
        elmt_s5_conc := elmt_s5_amount / elmt_default;
        elmt_s2_conc := elmt_s2_amount / elmt_default;
        elmt_s3_conc := elmt_s3_amount / elmt_default;
        elmt_s1_conc := elmt_s1_amount / elmt_default;
end Class_elmt_default;
