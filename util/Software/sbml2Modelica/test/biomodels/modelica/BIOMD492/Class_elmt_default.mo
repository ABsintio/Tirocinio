within BIOMD492;
class Class_elmt_default

    input Real elmt_product171;
    input Real elmt_re75;
    input Real elmt_product151;
    input Real elmt_product173;
    input Real elmt_re76;
    input Real elmt_re77;
    input Real elmt_re78;
    input Real elmt_re79;
    input Real elmt_product157;
    input Real elmt_product159;
    input Real elmt_product153;
    input Real elmt_re80;
    input Real elmt_product175;
    input Real elmt_re81;
    input Real elmt_product155;
    input Real elmt_re82;
    input Real elmt_re83;
    input Real elmt_reactant2;
    input Real elmt_reactant4;
    input Real elmt_reactant6;
    input Real elmt_reactant8;
    input Real elmt_re84;
    input Real elmt_re3;
    input Real elmt_re85;
    input Real elmt_re2;
    input Real elmt_re86;
    input Real elmt_re1;
    input Real elmt_product161;
    input Real elmt_re87;
    input Real elmt_reactant10;
    input Real elmt_re88;
    input Real elmt_reactant0;
    input Real elmt_product167;
    input Real elmt_product169;
    input Real elmt_re6;
    input Real elmt_product163;
    input Real elmt_re5;
    input Real elmt_re4;
    input Real elmt_product165;
    input Real elmt_product149;

    Real elmt_default(unit = "m3.0") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_s2_amount(unit = "");
    Real elmt_s2_conc(unit = "m-3.0.");
    Real elmt_s2(unit = "") "Bacterial pathogen";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
<celldesigner:speciesIdentity>
<celldesigner:class>SIMPLE_MOLECULE</celldesigner:class>
<celldesigner:name>Bacterial pathogen</celldesigner:name>
</celldesigner:speciesIdentity>
</celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_s52_amount(unit = "");
    Real elmt_s52_conc(unit = "m-3.0.");
    Real elmt_s52(unit = "") "Response";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
<celldesigner:speciesIdentity>
<celldesigner:class>PHENOTYPE</celldesigner:class>
<celldesigner:name>Response</celldesigner:name>
</celldesigner:speciesIdentity>
</celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_s1_amount(unit = "");
    Real elmt_s1_conc(unit = "m-3.0.");
    Real elmt_s1(unit = "") "Fungal pathogen";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
<celldesigner:speciesIdentity>
<celldesigner:class>SIMPLE_MOLECULE</celldesigner:class>
<celldesigner:name>Fungal pathogen</celldesigner:name>
</celldesigner:speciesIdentity>
</celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_default = 1.0;
        elmt_s2_amount = 0.5;
        elmt_s52_amount = 2.5;
        elmt_s1_amount = 0.5;


    equation
        assert(elmt_default >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_default) = 0;
        elmt_s2 = elmt_s2_amount;
        elmt_s52 = elmt_s52_amount;
        elmt_s1 = elmt_s1_amount;
        der(elmt_s2_amount) = ((- (elmt_re6 * elmt_reactant10)) + (- (elmt_re5 * elmt_reactant8)) + (- (elmt_re4 * elmt_reactant6)));
        der(elmt_s52_amount) = ((elmt_re75 * elmt_product149) + (elmt_re76 * elmt_product151) + (elmt_re77 * elmt_product153) + (elmt_re78 * elmt_product155) + (elmt_re79 * elmt_product157) + (elmt_re80 * elmt_product159) + (elmt_re81 * elmt_product161) + (elmt_re82 * elmt_product163) + (elmt_re83 * elmt_product165) + (elmt_re84 * elmt_product167) + (elmt_re85 * elmt_product169) + (elmt_re86 * elmt_product171) + (elmt_re87 * elmt_product173) + (elmt_re88 * elmt_product175));
        der(elmt_s1_amount) = ((- (elmt_re3 * elmt_reactant4)) + (- (elmt_re2 * elmt_reactant2)) + (- (elmt_re1 * elmt_reactant0)));

    algorithm
        elmt_s2_conc := elmt_s2_amount / elmt_default;
        elmt_s52_conc := elmt_s52_amount / elmt_default;
        elmt_s1_conc := elmt_s1_amount / elmt_default;
end Class_elmt_default;
