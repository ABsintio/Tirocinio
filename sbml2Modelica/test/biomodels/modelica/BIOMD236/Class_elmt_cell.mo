within BIOMD236;
class Class_elmt_cell

    input Real elmt_reactant2;
    input Real elmt_reactant4;
    input Real elmt_vgapdh;
    input Real elmt_reactant6;
    input Real elmt_KeqTPI;
    input Real elmt_product1;
    input Real elmt_vfba;
    input Real elmt_vpfk;
    input Real elmt_KeqGPI;
    input Real elmt_product5;
    input Real elmt_product3;
    input Real elmt_vgk;

    Real elmt_cell(unit = "") "cell";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_FBP_conc(unit = "");
    Real elmt_FBP_amount(unit = "");
    Real elmt_FBP(unit = "") "fructose-1,6-biphosphate";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_G3P_conc(unit = "");
    Real elmt_G3P_amount(unit = "");
    Real elmt_G3P(unit = "") "glyceraldehyde--phosphate";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_DHAP_conc(unit = "");
    Real elmt_DHAP_amount(unit = "");
    Real elmt_DHAP(unit = "") "dihydroxyacetone-phosphate";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_DHAP_G3P_conc(unit = "");
    Real elmt_DHAP_G3P_amount(unit = "");
    Real elmt_DHAP_G3P(unit = "") "DHAP-G3P pool";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_F6P_conc(unit = "");
    Real elmt_F6P_amount(unit = "");
    Real elmt_F6P(unit = "") "fructose-6-phosphate";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_GLC_conc(unit = "");
    Real elmt_GLC_amount(unit = "");
    Real elmt_GLC(unit = "") "intracellular glucose";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_G6P_F6P_conc(unit = "");
    Real elmt_G6P_F6P_amount(unit = "");
    Real elmt_G6P_F6P(unit = "") "G6P_F6P";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    initial equation
        elmt_cell = 1.0;
        elmt_FBP_conc = 6.3612E-4;
        elmt_DHAP_G3P_conc = 0.00262966;
        elmt_GLC_conc = 10.0;
        elmt_G6P_F6P_conc = 3.71728;


    equation
        assert(elmt_cell >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cell) = 0;
        elmt_FBP = elmt_FBP_conc;
        elmt_G3P = elmt_G3P_conc;
        elmt_DHAP = elmt_DHAP_conc;
        elmt_DHAP_G3P = elmt_DHAP_G3P_conc;
        elmt_F6P = elmt_F6P_conc;
        elmt_GLC = elmt_GLC_conc;
        elmt_G6P_F6P = elmt_G6P_F6P_conc;
        elmt_G3P_amount = ((elmt_DHAP_G3P * elmt_KeqTPI) / (1.0 + elmt_KeqTPI)) * elmt_cell;
        elmt_DHAP_amount = (elmt_DHAP_G3P - elmt_G3P) * elmt_cell;
        elmt_F6P_amount = ((elmt_G6P_F6P * elmt_KeqGPI) / (1.0 + elmt_KeqGPI)) * elmt_cell;
        der(elmt_GLC_amount) = 0;
        der(elmt_FBP_amount) = ((elmt_vpfk * elmt_product3) + (- (elmt_vfba * elmt_reactant4)));
        der(elmt_DHAP_G3P_amount) = ((- (elmt_vgapdh * elmt_reactant6)) + (elmt_vfba * elmt_product5));
        der(elmt_G6P_F6P_amount) = ((- (elmt_vpfk * elmt_reactant2)) + (elmt_vgk * elmt_product1));

    algorithm
        elmt_FBP_conc := elmt_FBP_amount / elmt_cell;
        elmt_G3P_conc := elmt_G3P_amount / elmt_cell;
        elmt_DHAP_conc := elmt_DHAP_amount / elmt_cell;
        elmt_DHAP_G3P_conc := elmt_DHAP_G3P_amount / elmt_cell;
        elmt_F6P_conc := elmt_F6P_amount / elmt_cell;
        elmt_GLC_conc := elmt_GLC_amount / elmt_cell;
        elmt_G6P_F6P_conc := elmt_G6P_F6P_amount / elmt_cell;
end Class_elmt_cell;
