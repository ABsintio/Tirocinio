within BIOMD068;
class Class_elmt_compartment

    input Real elmt_vThr;
    input Real elmt_reactant2;
    input Real elmt_vCys;
    input Real elmt_reactant6;
    input Real elmt_product1;
    input Real elmt_v1;

    Real elmt_compartment(unit = "") "Cell";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_AdoMet_conc(unit = "");
    Real elmt_AdoMet_amount(unit = "");
    Real elmt_AdoMet(unit = "") "S-adenosylmethionine";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Phi_conc(unit = "");
    Real elmt_Phi_amount(unit = "");
    Real elmt_Phi(unit = "") "Inorganic phosphate";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_TS_conc(unit = "");
    Real elmt_TS_amount(unit = "");
    Real elmt_TS(unit = "") "Threonine synthase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Phser_conc(unit = "");
    Real elmt_Phser_amount(unit = "");
    Real elmt_Phser(unit = "") "Phosphohomoserine";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Cystathionine_conc(unit = "");
    Real elmt_Cystathionine_amount(unit = "");
    Real elmt_Cystathionine(unit = "") "Cystathionine";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_CGS_conc(unit = "");
    Real elmt_CGS_amount(unit = "");
    Real elmt_CGS(unit = "") "Cystathionine gamma-synthase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Thr_conc(unit = "");
    Real elmt_Thr_amount(unit = "");
    Real elmt_Thr(unit = "") "Threonine";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Cys_conc(unit = "");
    Real elmt_Cys_amount(unit = "");
    Real elmt_Cys(unit = "") "Cysteine";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Hser_conc(unit = "");
    Real elmt_Hser_amount(unit = "");
    Real elmt_Hser(unit = "") "Homoserine";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_compartment = 1.0;
        elmt_AdoMet_conc = 20.0;
        elmt_Phi_conc = 10000.0;
        elmt_TS_conc = 5.0;
        elmt_Phser_conc = 0.0;
        elmt_Cystathionine_conc = 0.0;
        elmt_CGS_conc = 0.7;
        elmt_Thr_conc = 0.0;
        elmt_Cys_conc = 15.0;
        elmt_Hser_conc = 0.0;


    equation
        assert(elmt_compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment) = 0;
        elmt_AdoMet = elmt_AdoMet_conc;
        elmt_Phi = elmt_Phi_conc;
        elmt_TS = elmt_TS_conc;
        elmt_Phser = elmt_Phser_conc;
        elmt_Cystathionine = elmt_Cystathionine_conc;
        elmt_CGS = elmt_CGS_conc;
        elmt_Thr = elmt_Thr_conc;
        elmt_Cys = elmt_Cys_conc;
        elmt_Hser = elmt_Hser_conc;
        der(elmt_AdoMet_amount) = 0;
        der(elmt_Phi_amount) = 0;
        der(elmt_TS_amount) = 0;
        der(elmt_Cystathionine_amount) = 0;
        der(elmt_CGS_amount) = 0;
        der(elmt_Thr_amount) = 0;
        der(elmt_Cys_amount) = 0;
        der(elmt_Hser_amount) = 0;
        der(elmt_Phser_amount) = ((- (elmt_vThr * elmt_reactant6)) + (- (elmt_vCys * elmt_reactant2)) + (elmt_v1 * elmt_product1));

    algorithm
        elmt_AdoMet_conc := elmt_AdoMet_amount / elmt_compartment;
        elmt_Phi_conc := elmt_Phi_amount / elmt_compartment;
        elmt_TS_conc := elmt_TS_amount / elmt_compartment;
        elmt_Phser_conc := elmt_Phser_amount / elmt_compartment;
        elmt_Cystathionine_conc := elmt_Cystathionine_amount / elmt_compartment;
        elmt_CGS_conc := elmt_CGS_amount / elmt_compartment;
        elmt_Thr_conc := elmt_Thr_amount / elmt_compartment;
        elmt_Cys_conc := elmt_Cys_amount / elmt_compartment;
        elmt_Hser_conc := elmt_Hser_amount / elmt_compartment;
end Class_elmt_compartment;
