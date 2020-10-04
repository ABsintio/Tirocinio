within BIOMD482;
class Class_elmt_Vex

    input Real elmt_v5;
    input Real elmt_v1;
    input Real elmt_reactant10;
    input Real elmt_reactant0;

    Real elmt_Vex(unit = "m3.0") "Vex";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_GLCex_conc(unit = "");
    Real elmt_GLCex_amount(unit = "");
    Real elmt_GLCex(unit = "") "GLCex";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_PYRout_conc(unit = "");
    Real elmt_PYRout_amount(unit = "");
    Real elmt_PYRout(unit = "") "PYRout";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_Vex = 0.004;
        elmt_GLCex_conc = (114.9 / elmt_Vex);
        elmt_PYRout_conc = (137.5 / elmt_Vex);


    equation
        assert(elmt_Vex >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Vex) = 0;
        elmt_GLCex = elmt_GLCex_conc;
        elmt_PYRout = elmt_PYRout_conc;
        der(elmt_GLCex_amount) = (- (elmt_v1 * elmt_reactant0));
        der(elmt_PYRout_amount) = (- (elmt_v5 * elmt_reactant10));

    algorithm
        elmt_GLCex_conc := elmt_GLCex_amount / elmt_Vex;
        elmt_PYRout_conc := elmt_PYRout_amount / elmt_Vex;
end Class_elmt_Vex;
