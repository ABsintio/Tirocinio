within BIOMD468;
class Class_elmt_c3

    input Real elmt_re110;
    input Real elmt_re111;
    input Real elmt_product137;
    input Real elmt_reactant138;
    input Real elmt_reactant104;
    input Real elmt_reactant136;
    input Real elmt_product139;
    input Real elmt_reactant102;
    input Real elmt_product105;
    input Real elmt_re127;
    input Real elmt_re128;

    Real elmt_c3(unit = "m3.0") "nucleus";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:name>nucleus</celldesigner:name>
</celldesigner:extension>
                        </annotation>"));
    Real elmt_s108_amount(unit = "");
    Real elmt_s108_conc(unit = "m-3.0.");
    Real elmt_s108(unit = "") "eNOS";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
<celldesigner:speciesIdentity>
<celldesigner:class>GENE</celldesigner:class>
<celldesigner:geneReference>gn1</celldesigner:geneReference>
</celldesigner:speciesIdentity>
</celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_s107_amount(unit = "");
    Real elmt_s107_conc(unit = "m-3.0.");
    Real elmt_s107(unit = "") "aAP-1";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
<celldesigner:speciesIdentity>
<celldesigner:class>PROTEIN</celldesigner:class>
<celldesigner:proteinReference>pr69</celldesigner:proteinReference>
</celldesigner:speciesIdentity>
<celldesigner:listOfCatalyzedReactions>
<celldesigner:catalyzed reaction=\"re111\"/>
</celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_s115_amount(unit = "");
    Real elmt_s115_conc(unit = "m-3.0.");
    Real elmt_s115(unit = "") "eNOS";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
<celldesigner:speciesIdentity>
<celldesigner:class>RNA</celldesigner:class>
<celldesigner:rnaReference>rn1</celldesigner:rnaReference>
</celldesigner:speciesIdentity>
</celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_s42_amount(unit = "");
    Real elmt_s42_conc(unit = "m-3.0.");
    Real elmt_s42(unit = "") "AP-1";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
<celldesigner:speciesIdentity>
<celldesigner:class>PROTEIN</celldesigner:class>
<celldesigner:proteinReference>pr18</celldesigner:proteinReference>
</celldesigner:speciesIdentity>
</celldesigner:extension>
                        </annotation>"));

    initial equation
        elmt_c3 = 1.0;
        elmt_s108_amount = 0.0;
        elmt_s107_amount = 0.0;
        elmt_s115_amount = 0.09;
        elmt_s42_amount = 50.0;


    equation
        assert(elmt_c3 >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_c3) = 0;
        elmt_s108 = elmt_s108_amount;
        elmt_s107 = elmt_s107_amount;
        elmt_s115 = elmt_s115_amount;
        elmt_s42 = elmt_s42_amount;
        der(elmt_s108_amount) = (- (elmt_re111 * elmt_reactant104));
        der(elmt_s107_amount) = ((elmt_re127 * elmt_product137) + (- (elmt_re128 * elmt_reactant138)));
        der(elmt_s115_amount) = ((- (elmt_re110 * elmt_reactant102)) + (elmt_re111 * elmt_product105));
        der(elmt_s42_amount) = ((- (elmt_re127 * elmt_reactant136)) + (elmt_re128 * elmt_product139));

    algorithm
        elmt_s108_conc := elmt_s108_amount / elmt_c3;
        elmt_s107_conc := elmt_s107_amount / elmt_c3;
        elmt_s115_conc := elmt_s115_amount / elmt_c3;
        elmt_s42_conc := elmt_s42_amount / elmt_c3;
end Class_elmt_c3;
