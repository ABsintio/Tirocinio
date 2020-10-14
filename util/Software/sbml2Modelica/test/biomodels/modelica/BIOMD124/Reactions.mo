within BIOMD124;
class Reactions

    input Real elmt_jer;
    input Real elmt_cell;
    input Real elmt_fer;
    input Real elmt_jmem;
    input Real elmt_fcyt;
    input Real elmt_vcytver;

    Real elmt_reaction_0000006(unit = "") "ER Ca2+ concentration";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product1 "";
    Real elmt_reaction_0000005(unit = "") "cytosolic free Ca2+ concentration";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product0 "";


    initial equation
        elmt_product1 = 1.0;
        elmt_product0 = 1.0;


    equation
        elmt_reaction_0000006 = ((- elmt_fer) * elmt_vcytver * elmt_jer * elmt_cell);
        elmt_reaction_0000005 = (elmt_cell * elmt_fcyt * (elmt_jmem + elmt_jer));
        der(elmt_product1) = 0;
        der(elmt_product0) = 0;

end Reactions;
