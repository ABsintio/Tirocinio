within BIOMD093;
class Class_elmt_nucleus

    input Real elmt_reactant61;
    input Real elmt_v24;
    input Real elmt_v23;
    input Real elmt_product51;
    input Real elmt_v22;
    input Real elmt_product50;
    input Real elmt_v21;
    input Real elmt_reactant64;
    input Real elmt_v20;
    input Real elmt_product56;
    input Real elmt_product54;
    input Real elmt_reactant47;
    input Real elmt_reactant49;
    input Real elmt_reactant44;
    input Real elmt_v25;
    input Real elmt_reactant46;
    input Real elmt_product48;
    input Real elmt_product63;
    input Real elmt_reactant52;
    input Real elmt_product60;
    input Real elmt_reactant53;
    input Real elmt_product45;
    input Real elmt_product43;
    input Real elmt_reactant58;
    input Real elmt_reactant59;
    input Real elmt_v19;
    input Real elmt_v18;
    input Real elmt_v17;
    input Real elmt_v16;
    input Real elmt_reactant55;
    input Real elmt_product57;

    Real elmt_nucleus(unit = "") "nucleus";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_STAT1n_star_STAT1n_star_conc(unit = "");
    Real elmt_STAT1n_star_STAT1n_star_amount(unit = "");
    Real elmt_STAT1n_star_STAT1n_star(unit = "") "STAT1n_star_STAT1n_star";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_STAT1n_conc(unit = "");
    Real elmt_STAT1n_amount(unit = "");
    Real elmt_STAT1n(unit = "") "STAT1n";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_STAT1n_STAT1n_star_conc(unit = "");
    Real elmt_STAT1n_STAT1n_star_amount(unit = "");
    Real elmt_STAT1n_STAT1n_star(unit = "") "STAT1n_STAT1n_star";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_STAT1n_star_STAT1n_star_PPN_conc(unit = "");
    Real elmt_STAT1n_star_STAT1n_star_PPN_amount(unit = "");
    Real elmt_STAT1n_star_STAT1n_star_PPN(unit = "") "STAT1n_star_STAT1n_star_PPN";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_STAT1n_star_PPN_conc(unit = "");
    Real elmt_STAT1n_star_PPN_amount(unit = "");
    Real elmt_STAT1n_star_PPN(unit = "") "STAT1n_star_PPN";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_PPN_conc(unit = "");
    Real elmt_PPN_amount(unit = "");
    Real elmt_PPN(unit = "") "PPN";
    Real elmt_mRNAn_conc(unit = "");
    Real elmt_mRNAn_amount(unit = "");
    Real elmt_mRNAn(unit = "") "mRNAn";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_STAT1n_star_conc(unit = "");
    Real elmt_STAT1n_star_amount(unit = "");
    Real elmt_STAT1n_star(unit = "") "STAT1n_star";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_nucleus = 1.0;
        elmt_STAT1n_star_STAT1n_star_conc = 0.0;
        elmt_STAT1n_conc = 0.0;
        elmt_STAT1n_STAT1n_star_conc = 0.0;
        elmt_STAT1n_star_STAT1n_star_PPN_conc = 0.0;
        elmt_STAT1n_star_PPN_conc = 0.0;
        elmt_PPN_conc = 60.0;
        elmt_mRNAn_conc = 0.0;
        elmt_STAT1n_star_conc = 0.0;


    equation
        assert(elmt_nucleus >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_nucleus) = 0;
        elmt_STAT1n_star_STAT1n_star = elmt_STAT1n_star_STAT1n_star_conc;
        elmt_STAT1n = elmt_STAT1n_conc;
        elmt_STAT1n_STAT1n_star = elmt_STAT1n_STAT1n_star_conc;
        elmt_STAT1n_star_STAT1n_star_PPN = elmt_STAT1n_star_STAT1n_star_PPN_conc;
        elmt_STAT1n_star_PPN = elmt_STAT1n_star_PPN_conc;
        elmt_PPN = elmt_PPN_conc;
        elmt_mRNAn = elmt_mRNAn_conc;
        elmt_STAT1n_star = elmt_STAT1n_star_conc;
        der(elmt_STAT1n_star_STAT1n_star_amount) = ((- (elmt_v20 * elmt_reactant52)) + (elmt_v17 * elmt_product45) + (elmt_v16 * elmt_product43));
        der(elmt_STAT1n_amount) = ((- (elmt_v23 * elmt_reactant61)) + (- (elmt_v22 * elmt_reactant59)) + (elmt_v19 * elmt_product50));
        der(elmt_STAT1n_STAT1n_star_amount) = ((elmt_v22 * elmt_product60) + (elmt_v21 * elmt_product56));
        der(elmt_STAT1n_star_STAT1n_star_PPN_amount) = ((- (elmt_v21 * elmt_reactant55)) + (elmt_v20 * elmt_product54));
        der(elmt_STAT1n_star_PPN_amount) = ((- (elmt_v19 * elmt_reactant49)) + (elmt_v18 * elmt_product48));
        der(elmt_PPN_amount) = ((elmt_v21 * elmt_product57) + (- (elmt_v20 * elmt_reactant53)) + (elmt_v19 * elmt_product51) + (- (elmt_v18 * elmt_reactant47)));
        der(elmt_mRNAn_amount) = ((elmt_v24 * elmt_product63) + (- (elmt_v25 * elmt_reactant64)));
        der(elmt_STAT1n_star_amount) = ((- (elmt_v22 * elmt_reactant58)) + (- (elmt_v18 * elmt_reactant46)) + (- (elmt_v17 * elmt_reactant44)));

    algorithm
        elmt_STAT1n_star_STAT1n_star_conc := elmt_STAT1n_star_STAT1n_star_amount / elmt_nucleus;
        elmt_STAT1n_conc := elmt_STAT1n_amount / elmt_nucleus;
        elmt_STAT1n_STAT1n_star_conc := elmt_STAT1n_STAT1n_star_amount / elmt_nucleus;
        elmt_STAT1n_star_STAT1n_star_PPN_conc := elmt_STAT1n_star_STAT1n_star_PPN_amount / elmt_nucleus;
        elmt_STAT1n_star_PPN_conc := elmt_STAT1n_star_PPN_amount / elmt_nucleus;
        elmt_PPN_conc := elmt_PPN_amount / elmt_nucleus;
        elmt_mRNAn_conc := elmt_mRNAn_amount / elmt_nucleus;
        elmt_STAT1n_star_conc := elmt_STAT1n_star_amount / elmt_nucleus;
end Class_elmt_nucleus;
