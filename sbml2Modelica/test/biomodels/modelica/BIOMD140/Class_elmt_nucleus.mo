within BIOMD140;
class Class_elmt_nucleus

    input Real elmt_v23;
    input Real elmt_v22;
    input Real elmt_reactant41;
    input Real elmt_reactant85;
    input Real elmt_product71;
    input Real elmt_reactant42;
    input Real elmt_v21;
    input Real elmt_v20;
    input Real elmt_product34;
    input Real elmt_reactant80;
    input Real elmt_v41;
    input Real elmt_reactant48;
    input Real elmt_v27;
    input Real elmt_reactant46;
    input Real elmt_product49;
    input Real elmt_product47;
    input Real elmt_v35;
    input Real elmt_reactant50;
    input Real elmt_v13;
    input Real elmt_product40;
    input Real elmt_reactant75;
    input Real elmt_product45;
    input Real elmt_v31;
    input Real elmt_product44;
    input Real elmt_product43;
    input Real elmt_product64;
    input Real elmt_reactant36;
    input Real elmt_reactant38;
    input Real elmt_v19;
    input Real elmt_v18;
    input Real elmt_reactant39;
    input Real elmt_v39;
    input Real elmt_v17;
    input Real elmt_v16;
    input Real elmt_v15;
    input Real elmt_v37;
    input Real elmt_v14;
    input Real elmt_reactant35;
    input Real elmt_product37;
    input Real elmt_product57;

    Real elmt_nucleus(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_IkBbeta_nuc_NFkB_nuc_conc(unit = "");
    Real elmt_IkBbeta_nuc_NFkB_nuc_amount(unit = "");
    Real elmt_IkBbeta_nuc_NFkB_nuc(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_IkBeps_nuc_conc(unit = "");
    Real elmt_IkBeps_nuc_amount(unit = "");
    Real elmt_IkBeps_nuc(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_IkBalpha_nuc_NFkB_nuc_conc(unit = "");
    Real elmt_IkBalpha_nuc_NFkB_nuc_amount(unit = "");
    Real elmt_IkBalpha_nuc_NFkB_nuc(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_IkBbeta_transcript_conc(unit = "");
    Real elmt_IkBbeta_transcript_amount(unit = "");
    Real elmt_IkBbeta_transcript(unit = "") "";
    Real elmt_IkBeps_transcript_conc(unit = "");
    Real elmt_IkBeps_transcript_amount(unit = "");
    Real elmt_IkBeps_transcript(unit = "") "";
    Real elmt_IkBalpha_nuc_conc(unit = "");
    Real elmt_IkBalpha_nuc_amount(unit = "");
    Real elmt_IkBalpha_nuc(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_NFkB_nuc_conc(unit = "");
    Real elmt_NFkB_nuc_amount(unit = "");
    Real elmt_NFkB_nuc(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_IkBalpha_transcript_conc(unit = "");
    Real elmt_IkBalpha_transcript_amount(unit = "");
    Real elmt_IkBalpha_transcript(unit = "") "";
    Real elmt_IkBbeta_nuc_conc(unit = "");
    Real elmt_IkBbeta_nuc_amount(unit = "");
    Real elmt_IkBbeta_nuc(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_IkBeps_nuc_NFkB_nuc_conc(unit = "");
    Real elmt_IkBeps_nuc_NFkB_nuc_amount(unit = "");
    Real elmt_IkBeps_nuc_NFkB_nuc(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_nucleus = 1.0;
        elmt_IkBbeta_nuc_NFkB_nuc_conc = 0.0;
        elmt_IkBeps_nuc_conc = 0.0;
        elmt_IkBalpha_nuc_NFkB_nuc_conc = 0.0;
        elmt_IkBbeta_transcript_conc = 0.0;
        elmt_IkBeps_transcript_conc = 0.0;
        elmt_IkBalpha_nuc_conc = 0.0;
        elmt_NFkB_nuc_conc = 0.001;
        elmt_IkBalpha_transcript_conc = 0.0;
        elmt_IkBbeta_nuc_conc = 0.0;
        elmt_IkBeps_nuc_NFkB_nuc_conc = 0.0;


    equation
        assert(elmt_nucleus >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_nucleus) = 0;
        elmt_IkBbeta_nuc_NFkB_nuc = elmt_IkBbeta_nuc_NFkB_nuc_conc;
        elmt_IkBeps_nuc = elmt_IkBeps_nuc_conc;
        elmt_IkBalpha_nuc_NFkB_nuc = elmt_IkBalpha_nuc_NFkB_nuc_conc;
        elmt_IkBbeta_transcript = elmt_IkBbeta_transcript_conc;
        elmt_IkBeps_transcript = elmt_IkBeps_transcript_conc;
        elmt_IkBalpha_nuc = elmt_IkBalpha_nuc_conc;
        elmt_NFkB_nuc = elmt_NFkB_nuc_conc;
        elmt_IkBalpha_transcript = elmt_IkBalpha_transcript_conc;
        elmt_IkBbeta_nuc = elmt_IkBbeta_nuc_conc;
        elmt_IkBeps_nuc_NFkB_nuc = elmt_IkBeps_nuc_NFkB_nuc_conc;
        der(elmt_IkBbeta_nuc_NFkB_nuc_amount) = ((- (elmt_v39 * elmt_reactant80)) + (elmt_v15 * elmt_product40));
        der(elmt_IkBeps_nuc_amount) = ((elmt_v35 * elmt_product71) + (- (elmt_v16 * elmt_reactant42)));
        der(elmt_IkBalpha_nuc_NFkB_nuc_amount) = ((- (elmt_v37 * elmt_reactant75)) + (elmt_v14 * elmt_product37));
        der(elmt_IkBbeta_transcript_amount) = ((- (elmt_v21 * elmt_reactant48)) + (elmt_v20 * elmt_product47));
        der(elmt_IkBeps_transcript_amount) = ((- (elmt_v23 * elmt_reactant50)) + (elmt_v22 * elmt_product49));
        der(elmt_IkBalpha_nuc_amount) = ((elmt_v27 * elmt_product57) + (- (elmt_v14 * elmt_reactant36)));
        der(elmt_NFkB_nuc_amount) = ((elmt_v13 * elmt_product34) + (- (elmt_v16 * elmt_reactant41)) + (- (elmt_v15 * elmt_reactant38)) + (- (elmt_v14 * elmt_reactant35)));
        der(elmt_IkBalpha_transcript_amount) = ((- (elmt_v19 * elmt_reactant46)) + (elmt_v18 * elmt_product45) + (elmt_v17 * elmt_product44));
        der(elmt_IkBbeta_nuc_amount) = ((elmt_v31 * elmt_product64) + (- (elmt_v15 * elmt_reactant39)));
        der(elmt_IkBeps_nuc_NFkB_nuc_amount) = ((- (elmt_v41 * elmt_reactant85)) + (elmt_v16 * elmt_product43));

    algorithm
        elmt_IkBbeta_nuc_NFkB_nuc_conc := elmt_IkBbeta_nuc_NFkB_nuc_amount / elmt_nucleus;
        elmt_IkBeps_nuc_conc := elmt_IkBeps_nuc_amount / elmt_nucleus;
        elmt_IkBalpha_nuc_NFkB_nuc_conc := elmt_IkBalpha_nuc_NFkB_nuc_amount / elmt_nucleus;
        elmt_IkBbeta_transcript_conc := elmt_IkBbeta_transcript_amount / elmt_nucleus;
        elmt_IkBeps_transcript_conc := elmt_IkBeps_transcript_amount / elmt_nucleus;
        elmt_IkBalpha_nuc_conc := elmt_IkBalpha_nuc_amount / elmt_nucleus;
        elmt_NFkB_nuc_conc := elmt_NFkB_nuc_amount / elmt_nucleus;
        elmt_IkBalpha_transcript_conc := elmt_IkBalpha_transcript_amount / elmt_nucleus;
        elmt_IkBbeta_nuc_conc := elmt_IkBbeta_nuc_amount / elmt_nucleus;
        elmt_IkBeps_nuc_NFkB_nuc_conc := elmt_IkBeps_nuc_NFkB_nuc_amount / elmt_nucleus;
end Class_elmt_nucleus;
