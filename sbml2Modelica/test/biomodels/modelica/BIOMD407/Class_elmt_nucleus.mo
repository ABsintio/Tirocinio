within BIOMD407;
class Class_elmt_nucleus

    input Real elmt_reactant83;
    input Real elmt_reactant84;
    input Real elmt_reactant80;
    input Real elmt_product99;
    input Real elmt_reactant82;
    input Real elmt_product113;
    input Real elmt_J42;
    input Real elmt_J64;
    input Real elmt_J61;
    input Real elmt_J62;
    input Real elmt_J60;
    input Real elmt_product111;
    input Real elmt_J49;
    input Real elmt_J48;
    input Real elmt_J45;
    input Real elmt_J46;
    input Real elmt_J43;
    input Real elmt_J66;
    input Real elmt_reactant76;
    input Real elmt_reactant77;
    input Real elmt_reactant79;
    input Real elmt_J50;
    input Real elmt_product103;
    input Real elmt_product100;
    input Real elmt_reactant107;
    input Real elmt_product109;
    input Real elmt_reactant105;
    input Real elmt_J59;
    input Real elmt_reactant104;
    input Real elmt_product106;
    input Real elmt_J56;
    input Real elmt_J57;

    Real elmt_nucleus(unit = "m3.0") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_A20_mRNA_amount(unit = "");
    Real elmt_A20_mRNA_conc(unit = "m-3.0.");
    Real elmt_A20_mRNA(unit = "") "A20_mRNA";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_IkBa_NFkB_N_amount(unit = "");
    Real elmt_IkBa_NFkB_N_conc(unit = "m-3.0.");
    Real elmt_IkBa_NFkB_N(unit = "") "IkBa:NFkB_N";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_IkBa_N_amount(unit = "");
    Real elmt_IkBa_N_conc(unit = "m-3.0.");
    Real elmt_IkBa_N(unit = "") "IkBa_N";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_NFkB_N_amount(unit = "");
    Real elmt_NFkB_N_conc(unit = "m-3.0.");
    Real elmt_NFkB_N(unit = "") "NFkB_N";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_XIAP_mRNA_amount(unit = "");
    Real elmt_XIAP_mRNA_conc(unit = "m-3.0.");
    Real elmt_XIAP_mRNA(unit = "") "XIAP_mRNA";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_IkBa_mRNA_amount(unit = "");
    Real elmt_IkBa_mRNA_conc(unit = "m-3.0.");
    Real elmt_IkBa_mRNA(unit = "") "IkBa_mRNA";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_FLIP_mRNA_amount(unit = "");
    Real elmt_FLIP_mRNA_conc(unit = "m-3.0.");
    Real elmt_FLIP_mRNA(unit = "") "FLIP_mRNA";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_nucleus = 1.056;
        elmt_A20_mRNA_amount = 5.56657E-5;
        elmt_IkBa_NFkB_N_amount = 9.00189E-5;
        elmt_IkBa_N_amount = 0.0013839;
        elmt_NFkB_N_amount = 6.91431E-4;
        elmt_XIAP_mRNA_amount = 2.19646E-4;
        elmt_IkBa_mRNA_amount = 5.31517E-5;
        elmt_FLIP_mRNA_amount = 1.39056E-4;


    equation
        assert(elmt_nucleus >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_nucleus) = 0;
        elmt_A20_mRNA = elmt_A20_mRNA_amount;
        elmt_IkBa_NFkB_N = elmt_IkBa_NFkB_N_amount;
        elmt_IkBa_N = elmt_IkBa_N_amount;
        elmt_NFkB_N = elmt_NFkB_N_amount;
        elmt_XIAP_mRNA = elmt_XIAP_mRNA_amount;
        elmt_IkBa_mRNA = elmt_IkBa_mRNA_amount;
        elmt_FLIP_mRNA = elmt_FLIP_mRNA_amount;
        der(elmt_A20_mRNA_amount) = ((- (elmt_J48 * elmt_reactant82)) + (elmt_J62 * elmt_product109));
        der(elmt_IkBa_NFkB_N_amount) = ((- (elmt_J46 * elmt_reactant80)) + (- (elmt_J61 * elmt_reactant107)) + (elmt_J60 * elmt_product106));
        der(elmt_IkBa_N_amount) = ((- (elmt_J45 * elmt_reactant79)) + (elmt_J59 * elmt_product103) + (- (elmt_J60 * elmt_reactant105)));
        der(elmt_NFkB_N_amount) = ((- (elmt_J42 * elmt_reactant76)) + (elmt_J56 * elmt_product99) + (- (elmt_J60 * elmt_reactant104)));
        der(elmt_XIAP_mRNA_amount) = ((- (elmt_J49 * elmt_reactant83)) + (elmt_J64 * elmt_product111));
        der(elmt_IkBa_mRNA_amount) = ((- (elmt_J43 * elmt_reactant77)) + (elmt_J57 * elmt_product100));
        der(elmt_FLIP_mRNA_amount) = ((- (elmt_J50 * elmt_reactant84)) + (elmt_J66 * elmt_product113));

    algorithm
        elmt_A20_mRNA_conc := elmt_A20_mRNA_amount / elmt_nucleus;
        elmt_IkBa_NFkB_N_conc := elmt_IkBa_NFkB_N_amount / elmt_nucleus;
        elmt_IkBa_N_conc := elmt_IkBa_N_amount / elmt_nucleus;
        elmt_NFkB_N_conc := elmt_NFkB_N_amount / elmt_nucleus;
        elmt_XIAP_mRNA_conc := elmt_XIAP_mRNA_amount / elmt_nucleus;
        elmt_IkBa_mRNA_conc := elmt_IkBa_mRNA_amount / elmt_nucleus;
        elmt_FLIP_mRNA_conc := elmt_FLIP_mRNA_amount / elmt_nucleus;
end Class_elmt_nucleus;
