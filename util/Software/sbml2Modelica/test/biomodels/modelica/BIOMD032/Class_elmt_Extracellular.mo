within BIOMD032;
class Class_elmt_Extracellular

    input Real elmt_v1;
    input Real elmt_v38;
    input Real elmt_product116;
    input Real elmt_reactant0;

    Real elmt_Extracellular(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_alpha_conc(unit = "");
    Real elmt_alpha_amount(unit = "");
    Real elmt_alpha(unit = "") "α-factor";
    Real elmt_Bar1aex_conc(unit = "");
    Real elmt_Bar1aex_amount(unit = "");
    Real elmt_Bar1aex(unit = "") "Bar1activeEx";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_Extracellular = 1.0;
        elmt_alpha_conc = 100.0;
        elmt_Bar1aex_conc = 0.0;


    equation
        assert(elmt_Extracellular >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Extracellular) = 0;
        elmt_alpha = elmt_alpha_conc;
        elmt_Bar1aex = elmt_Bar1aex_conc;
        der(elmt_alpha_amount) = (- (elmt_v1 * elmt_reactant0));
        der(elmt_Bar1aex_amount) = (elmt_v38 * elmt_product116);

    algorithm
        elmt_alpha_conc := elmt_alpha_amount / elmt_Extracellular;
        elmt_Bar1aex_conc := elmt_Bar1aex_amount / elmt_Extracellular;
end Class_elmt_Extracellular;
