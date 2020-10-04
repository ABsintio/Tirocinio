within BIOMD047;
class Reactions

    input Real elmt_p3;
    input Real elmt_p1;
    input Real elmt_p2;
    input Real elmt_Ca_Cyt;

    Real elmt_Jleak(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_Jleak_elmt_Fleak(unit "") = 0.5 "";
    Real elmt_reactant2 "";
    Real elmt_product3 "";
    Real elmt_Jch(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_Jch_elmt_Fch_0(unit "") = 8.0 "";
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_Jpump(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_Jpump_elmt_Fpump_0(unit "") = 2.0 "";
    parameter Real elmt_Jpump_elmt_Kpump(unit "") = 0.1 "";
    Real elmt_reactant4 "";
    Real elmt_product5 "";


    initial equation
        elmt_reactant2 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product1 = 1.0;
        elmt_product5 = 1.0;
        elmt_product3 = 1.0;
        elmt_reactant0 = 1.0;


    equation
        elmt_Jleak = elmt_Jleak_elmt_Fleak;
        elmt_Jch = (elmt_Jch_elmt_Fch_0 * elmt_p1 * elmt_p2 * elmt_p3);
        elmt_Jpump = ((elmt_Jpump_elmt_Fpump_0 * elmt_Ca_Cyt) / (elmt_Jpump_elmt_Kpump + elmt_Ca_Cyt));
        der(elmt_reactant2) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product1) = 0;
        der(elmt_product5) = 0;
        der(elmt_product3) = 0;
        der(elmt_reactant0) = 0;

end Reactions;
