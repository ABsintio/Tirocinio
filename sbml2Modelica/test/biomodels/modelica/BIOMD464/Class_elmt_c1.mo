within BIOMD464;
class Class_elmt_c1

    input Real elmt_product9;
    input Real elmt_product7;
    input Real elmt_reactant4;
    input Real elmt_reactant6;
    input Real elmt_product11;
    input Real elmt_re3;
    input Real elmt_reactant14;
    input Real elmt_product1;
    input Real elmt_re10;
    input Real elmt_product5;
    input Real elmt_reactant10;
    input Real elmt_re12;
    input Real elmt_reactant0;
    input Real elmt_reactant12;
    input Real elmt_re9;
    input Real elmt_re8;
    input Real elmt_re7;
    input Real elmt_reactant18;
    input Real elmt_re6;
    input Real elmt_re5;
    input Real elmt_product15;
    input Real elmt_product13;
    input Real elmt_product19;

    Real elmt_c1(unit = "m3.0") "Cell";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:name>Cell</celldesigner:name>
</celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_s8_amount(unit = "");
    Real elmt_s8_conc(unit = "m-3.0.");
    Real elmt_s8(unit = "") "s8";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
<celldesigner:speciesIdentity>
<celldesigner:class>DEGRADED</celldesigner:class>
<celldesigner:name>s8</celldesigner:name>
</celldesigner:speciesIdentity>
</celldesigner:extension>
                                </annotation>"));
    Real elmt_s9_amount(unit = "");
    Real elmt_s9_conc(unit = "m-3.0.");
    Real elmt_s9(unit = "") "s9";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
<celldesigner:speciesIdentity>
<celldesigner:class>DEGRADED</celldesigner:class>
<celldesigner:name>s9</celldesigner:name>
</celldesigner:speciesIdentity>
</celldesigner:extension>
                                </annotation>"));
    Real elmt_s6_amount(unit = "");
    Real elmt_s6_conc(unit = "m-3.0.");
    Real elmt_s6(unit = "") "IP3";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
<celldesigner:speciesIdentity>
<celldesigner:class>PROTEIN</celldesigner:class>
<celldesigner:proteinReference>pr5</celldesigner:proteinReference>
</celldesigner:speciesIdentity>
<celldesigner:listOfCatalyzedReactions>
<celldesigner:catalyzed reaction=\"re7\"/>
</celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_s7_amount(unit = "");
    Real elmt_s7_conc(unit = "m-3.0.");
    Real elmt_s7(unit = "") "s7";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
<celldesigner:speciesIdentity>
<celldesigner:class>DEGRADED</celldesigner:class>
<celldesigner:name>s7</celldesigner:name>
</celldesigner:speciesIdentity>
</celldesigner:extension>
                                </annotation>"));
    Real elmt_s4_amount(unit = "");
    Real elmt_s4_conc(unit = "m-3.0.");
    Real elmt_s4(unit = "") "Ca_B";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
<celldesigner:speciesIdentity>
<celldesigner:class>PROTEIN</celldesigner:class>
<celldesigner:proteinReference>pr4</celldesigner:proteinReference>
</celldesigner:speciesIdentity>
</celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_s11_amount(unit = "");
    Real elmt_s11_conc(unit = "m-3.0.");
    Real elmt_s11(unit = "") "s11";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
<celldesigner:speciesIdentity>
<celldesigner:class>DEGRADED</celldesigner:class>
<celldesigner:name>s11</celldesigner:name>
</celldesigner:speciesIdentity>
</celldesigner:extension>
                                </annotation>"));
    Real elmt_s10_amount(unit = "");
    Real elmt_s10_conc(unit = "m-3.0.");
    Real elmt_s10(unit = "") "s10";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
<celldesigner:speciesIdentity>
<celldesigner:class>DEGRADED</celldesigner:class>
<celldesigner:name>s10</celldesigner:name>
</celldesigner:speciesIdentity>
</celldesigner:extension>
                                </annotation>"));
    Real elmt_s3_amount(unit = "");
    Real elmt_s3_conc(unit = "m-3.0.");
    Real elmt_s3(unit = "") "Ca_c";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
<celldesigner:speciesIdentity>
<celldesigner:class>ION</celldesigner:class>
<celldesigner:name>Ca_c</celldesigner:name>
</celldesigner:speciesIdentity>
<celldesigner:listOfCatalyzedReactions>
<celldesigner:catalyzed reaction=\"re5\"/>
</celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_c1 = 1.0;
        elmt_s8_amount = 0.0;
        elmt_s9_amount = 0.0;
        elmt_s6_amount = 0.0;
        elmt_s7_amount = 0.0;
        elmt_s4_amount = 3870.0;
        elmt_s11_amount = 0.0;
        elmt_s10_amount = 0.0;
        elmt_s3_amount = 117.2;


    equation
        assert(elmt_c1 >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_c1) = 0;
        elmt_s8 = elmt_s8_amount;
        elmt_s9 = elmt_s9_amount;
        elmt_s6 = elmt_s6_amount;
        elmt_s7 = elmt_s7_amount;
        elmt_s4 = elmt_s4_amount;
        elmt_s11 = elmt_s11_amount;
        elmt_s10 = elmt_s10_amount;
        elmt_s3 = elmt_s3_amount;
        der(elmt_s8_amount) = (elmt_re6 * elmt_product7);
        der(elmt_s9_amount) = ((elmt_re8 * elmt_product11) + (elmt_re12 * elmt_product19));
        der(elmt_s6_amount) = ((- (elmt_re6 * elmt_reactant6)) + (elmt_re5 * elmt_product5));
        der(elmt_s7_amount) = (- (elmt_re5 * elmt_reactant4));
        der(elmt_s4_amount) = (- (elmt_re3 * elmt_reactant0));
        der(elmt_s11_amount) = (- (elmt_re10 * elmt_reactant14));
        der(elmt_s10_amount) = (elmt_re9 * elmt_product13);
        der(elmt_s3_amount) = ((- (elmt_re9 * elmt_reactant12)) + (- (elmt_re8 * elmt_reactant10)) + (elmt_re7 * elmt_product9) + (elmt_re3 * elmt_product1) + (elmt_re10 * elmt_product15) + (- (elmt_re12 * elmt_reactant18)));

    algorithm
        elmt_s8_conc := elmt_s8_amount / elmt_c1;
        elmt_s9_conc := elmt_s9_amount / elmt_c1;
        elmt_s6_conc := elmt_s6_amount / elmt_c1;
        elmt_s7_conc := elmt_s7_amount / elmt_c1;
        elmt_s4_conc := elmt_s4_amount / elmt_c1;
        elmt_s11_conc := elmt_s11_amount / elmt_c1;
        elmt_s10_conc := elmt_s10_amount / elmt_c1;
        elmt_s3_conc := elmt_s3_amount / elmt_c1;
end Class_elmt_c1;
