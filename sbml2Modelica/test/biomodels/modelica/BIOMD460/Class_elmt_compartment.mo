within BIOMD460;
class Class_elmt_compartment

    input Real elmt_reactant2;
    input Real elmt_reactant4;
    input Real elmt_v3;
    input Real elmt_product1;
    input Real elmt_v1;
    input Real elmt_v2;
    input Real elmt_product5;
    input Real elmt_product3;

    Real elmt_compartment(unit = "") "compartment";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_lacz_conc(unit = "");
    Real elmt_lacz_amount(unit = "");
    Real elmt_lacz(unit = "") "lacz";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_x_conc(unit = "");
    Real elmt_x_amount(unit = "");
    Real elmt_x(unit = "") "x";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_sigb_conc(unit = "");
    Real elmt_sigb_amount(unit = "");
    Real elmt_sigb(unit = "") "sigb";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_IPTG_conc(unit = "");
    Real elmt_IPTG_amount(unit = "");
    Real elmt_IPTG(unit = "") "IPTG";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_compartment = 1.0;
        elmt_lacz_conc = 0.0;
        elmt_x_conc = 0.0;
        elmt_sigb_conc = 0.0;
        elmt_IPTG_conc = 100.0;


    equation
        assert(elmt_compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment) = 0;
        elmt_lacz = elmt_lacz_conc;
        elmt_x = elmt_x_conc;
        elmt_sigb = elmt_sigb_conc;
        elmt_IPTG = elmt_IPTG_conc;
        der(elmt_IPTG_amount) = 0;
        der(elmt_lacz_amount) = (elmt_v2 * elmt_product3);
        der(elmt_x_amount) = (elmt_v3 * elmt_product5);
        der(elmt_sigb_amount) = ((- (elmt_v3 * elmt_reactant4)) + (elmt_v1 * elmt_product1) + (- (elmt_v2 * elmt_reactant2)));

    algorithm
        elmt_lacz_conc := elmt_lacz_amount / elmt_compartment;
        elmt_x_conc := elmt_x_amount / elmt_compartment;
        elmt_sigb_conc := elmt_sigb_amount / elmt_compartment;
        elmt_IPTG_conc := elmt_IPTG_amount / elmt_compartment;
end Class_elmt_compartment;
