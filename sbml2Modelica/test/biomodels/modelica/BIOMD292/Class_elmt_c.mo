within BIOMD292;
class Class_elmt_c

    input Real elmt_product7;
    input Real elmt_reactant6;
    input Real elmt_N0;
    input Real elmt_reactant5;
    input Real elmt_product1;
    input Real elmt_reactant10;
    input Real elmt_reactant11;
    input Real elmt_product3;
    input Real elmt_A0;
    input Real elmt_v3;
    input Real elmt_v4;
    input Real elmt_v1;
    input Real elmt_v2;

    Real elmt_c(unit = "m3.0") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Y_conc(unit = "");
    Real elmt_Y_amount(unit = "");
    Real elmt_Y(unit = "") "Y";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
          <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
          <celldesigner:speciesIdentity>
            <celldesigner:class>SIMPLE_MOLECULE</celldesigner:class>
            <celldesigner:name>Y</celldesigner:name>
          </celldesigner:speciesIdentity>
        </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_NADP_conc(unit = "");
    Real elmt_NADP_amount(unit = "");
    Real elmt_NADP(unit = "") "NADP_super_+";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
          <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
          <celldesigner:speciesIdentity>
            <celldesigner:class>SIMPLE_MOLECULE</celldesigner:class>
            <celldesigner:name>NADP_super_+</celldesigner:name>
          </celldesigner:speciesIdentity>
          <celldesigner:listOfCatalyzedReactions>
            <celldesigner:catalyzed reaction=\"v3\"/>
          </celldesigner:listOfCatalyzedReactions>
        </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_NADPH_conc(unit = "");
    Real elmt_NADPH_amount(unit = "");
    Real elmt_NADPH(unit = "") "NADPH";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
          <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
          <celldesigner:speciesIdentity>
            <celldesigner:class>SIMPLE_MOLECULE</celldesigner:class>
            <celldesigner:name>NADPH</celldesigner:name>
          </celldesigner:speciesIdentity>
        </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_X_conc(unit = "");
    Real elmt_X_amount(unit = "");
    Real elmt_X(unit = "") "X";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
          <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
          <celldesigner:speciesIdentity>
            <celldesigner:class>SIMPLE_MOLECULE</celldesigner:class>
            <celldesigner:name>X</celldesigner:name>
          </celldesigner:speciesIdentity>
        </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_ADP_conc(unit = "");
    Real elmt_ADP_amount(unit = "");
    Real elmt_ADP(unit = "") "ADP";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
          <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
          <celldesigner:speciesIdentity>
            <celldesigner:class>SIMPLE_MOLECULE</celldesigner:class>
            <celldesigner:name>ADP</celldesigner:name>
          </celldesigner:speciesIdentity>
        </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_ATP_conc(unit = "");
    Real elmt_ATP_amount(unit = "");
    Real elmt_ATP(unit = "") "ATP";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
          <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
          <celldesigner:speciesIdentity>
            <celldesigner:class>SIMPLE_MOLECULE</celldesigner:class>
            <celldesigner:name>ATP</celldesigner:name>
          </celldesigner:speciesIdentity>
        </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_c = 1.0;
        elmt_Y_conc = 1.0;
        elmt_NADPH_conc = 0.7;
        elmt_X_conc = 2.0;
        elmt_ATP_conc = 0.5;


    equation
        assert(elmt_c >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_c) = 0;
        elmt_Y = elmt_Y_conc;
        elmt_NADP = elmt_NADP_conc;
        elmt_NADPH = elmt_NADPH_conc;
        elmt_X = elmt_X_conc;
        elmt_ADP = elmt_ADP_conc;
        elmt_ATP = elmt_ATP_conc;
        der(elmt_Y_amount) = 0;
        elmt_NADP_amount = (elmt_N0 - elmt_NADPH) * elmt_c;
        elmt_ADP_amount = (elmt_A0 - elmt_ATP) * elmt_c;
        der(elmt_NADPH_amount) = ((elmt_v4 * elmt_product1) + (- (elmt_v2 * elmt_reactant5)));
        der(elmt_X_amount) = ((- (elmt_v1 * elmt_reactant10)) + (elmt_v2 * elmt_product7));
        der(elmt_ATP_amount) = ((elmt_v3 * elmt_product3) + (- (elmt_v1 * elmt_reactant11)) + (- (elmt_v2 * elmt_reactant6)));

    algorithm
        elmt_Y_conc := elmt_Y_amount / elmt_c;
        elmt_NADP_conc := elmt_NADP_amount / elmt_c;
        elmt_NADPH_conc := elmt_NADPH_amount / elmt_c;
        elmt_X_conc := elmt_X_amount / elmt_c;
        elmt_ADP_conc := elmt_ADP_amount / elmt_c;
        elmt_ATP_conc := elmt_ATP_amount / elmt_c;
end Class_elmt_c;
