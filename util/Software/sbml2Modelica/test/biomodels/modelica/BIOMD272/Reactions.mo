within BIOMD272;
class Reactions

    input Real elmt_SAv;
    input Real elmt_cell;
    input Real elmt_kex_SAv;
    input Real elmt_kon_SAv;
    input Real elmt_SAv_EpoRi;
    input Real elmt_koff_SAv;
    input Real elmt_kdi;
    input Real elmt_SAv_EpoR;
    input Real elmt_kde;
    input Real elmt_kt;
    input Real elmt_EpoR;
    input Real elmt_Bmax_SAv;

    Real elmt_reaction_7(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product13 "";
    Real elmt_reactant12 "";
    Real elmt_reaction_8(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant14 "";
    Real elmt_product15 "";
    Real elmt_reaction_5(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product9 "";
    Real elmt_reactant8 "";
    Real elmt_reaction_6(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product11 "";
    Real elmt_reactant10 "";
    Real elmt_reaction_3(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant2 "";
    Real elmt_reactant3 "";
    Real elmt_product4 "";
    Real elmt_reaction_4(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product7 "";
    Real elmt_product6 "";
    Real elmt_reactant5 "";
    Real elmt_reaction_1(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product0 "";
    Real elmt_reaction_2(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant1 "";


    initial equation
        elmt_product9 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_product6 = 1.0;
        elmt_product11 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_product0 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_product4 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_product15 = 1.0;
        elmt_product13 = 1.0;


    equation
        elmt_reaction_7 = (elmt_kdi * elmt_SAv_EpoRi * elmt_cell);
        elmt_reaction_8 = (elmt_kde * elmt_SAv_EpoRi * elmt_cell);
        elmt_reaction_5 = (elmt_kt * elmt_SAv_EpoR * elmt_cell);
        elmt_reaction_6 = (elmt_kex_SAv * elmt_SAv_EpoRi * elmt_cell);
        elmt_reaction_3 = (elmt_kon_SAv * elmt_SAv * elmt_EpoR * elmt_cell);
        elmt_reaction_4 = (elmt_koff_SAv * elmt_SAv_EpoR * elmt_cell);
        elmt_reaction_1 = (elmt_kt * elmt_Bmax_SAv * elmt_cell);
        elmt_reaction_2 = (elmt_kt * elmt_EpoR * elmt_cell);
        der(elmt_product9) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_product6) = 0;
        der(elmt_product11) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_product0) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_product4) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_product15) = 0;
        der(elmt_product13) = 0;

end Reactions;
