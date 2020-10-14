within BIOMD128;
class Reactions

    input Real elmt_cell;
    input Real elmt_cAMP;
    input Real elmt_fer;
    input Real elmt_sigmav;
    input Real elmt_taudir;
    input Real elmt_jertot;
    input Real elmt_f;
    input Real elmt_ETswitch;
    input Real elmt_cAMPlow;
    input Real elmt_jmemtot;

    Real elmt_reaction_000003(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product2 "";
    Real elmt_reaction_0000002(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product1 "";
    Real elmt_reaction_0000001(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product0 "";


    initial equation
        elmt_product1 = 1.0;
        elmt_product0 = 1.0;
        elmt_product2 = 1.0;


    equation
        elmt_reaction_000003 = (elmt_cell * elmt_ETswitch * ((elmt_cAMPlow - elmt_cAMP) / elmt_taudir));
        elmt_reaction_0000002 = ((- elmt_fer) * elmt_sigmav * elmt_jertot * elmt_cell);
        elmt_reaction_0000001 = (elmt_cell * elmt_f * (elmt_jertot + elmt_jmemtot));
        der(elmt_product1) = 0;
        der(elmt_product0) = 0;
        der(elmt_product2) = 0;

end Reactions;
