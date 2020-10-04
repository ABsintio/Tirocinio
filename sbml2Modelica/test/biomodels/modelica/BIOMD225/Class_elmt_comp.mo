within BIOMD225;
class Class_elmt_comp

    input Real elmt_reactant2;
    input Real elmt_reactant4;
    input Real elmt_product1;
    input Real elmt_vpfk;
    input Real elmt_vfba;
    input Real elmt_KeqGPI;
    input Real elmt_product3;
    input Real elmt_vgk;

    Real elmt_comp(unit = "") "compartment";
    Real elmt_FBP_conc(unit = "");
    Real elmt_FBP_amount(unit = "");
    Real elmt_FBP(unit = "") "FBP";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_G3P_conc(unit = "");
    Real elmt_G3P_amount(unit = "");
    Real elmt_G3P(unit = "") "G3P";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_F6P_conc(unit = "");
    Real elmt_F6P_amount(unit = "");
    Real elmt_F6P(unit = "") "F6P";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_GLC_conc(unit = "");
    Real elmt_GLC_amount(unit = "");
    Real elmt_GLC(unit = "") "GLC";
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
        elmt_comp = 1.0;
        elmt_FBP_conc = 6.3612E-4;
        elmt_G3P_conc = 0.0;
        elmt_GLC_conc = 10.0;
        elmt_G6P_F6P_conc = 3.71728;


    equation
        assert(elmt_comp >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_comp) = 0;
        elmt_FBP = elmt_FBP_conc;
        elmt_G3P = elmt_G3P_conc;
        elmt_F6P = elmt_F6P_conc;
        elmt_GLC = elmt_GLC_conc;
        elmt_G6P_F6P = elmt_G6P_F6P_conc;
        der(elmt_G3P_amount) = 0;
        elmt_F6P_amount = ((elmt_G6P_F6P * elmt_KeqGPI) / (1.0 + elmt_KeqGPI)) * elmt_comp;
        der(elmt_GLC_amount) = 0;
        der(elmt_FBP_amount) = ((elmt_vpfk * elmt_product3) + (- (elmt_vfba * elmt_reactant4)));
        der(elmt_G6P_F6P_amount) = ((- (elmt_vpfk * elmt_reactant2)) + (elmt_vgk * elmt_product1));

    algorithm
        elmt_FBP_conc := elmt_FBP_amount / elmt_comp;
        elmt_G3P_conc := elmt_G3P_amount / elmt_comp;
        elmt_F6P_conc := elmt_F6P_amount / elmt_comp;
        elmt_GLC_conc := elmt_GLC_amount / elmt_comp;
        elmt_G6P_F6P_conc := elmt_G6P_F6P_amount / elmt_comp;
end Class_elmt_comp;
