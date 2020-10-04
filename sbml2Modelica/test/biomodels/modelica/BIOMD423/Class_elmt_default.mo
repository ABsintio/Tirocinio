within BIOMD423;
class Class_elmt_default

    input Real elmt_reactant20;
    input Real elmt_product11;
    input Real elmt_v1c;
    input Real elmt_v1b;
    input Real elmt_v1a;
    input Real elmt_reactant18;
    input Real elmt_v3;
    input Real elmt_v2;
    input Real elmt_v1g;
    input Real elmt_v1e;
    input Real elmt_v1d;
    input Real elmt_reactant2;
    input Real elmt_product9;
    input Real elmt_v1r;
    input Real elmt_product7;
    input Real elmt_reactant4;
    input Real elmt_reactant6;
    input Real elmt_reactant8;
    input Real elmt_product21;
    input Real elmt_product1;
    input Real elmt_reactant14;
    input Real elmt_reactant16;
    input Real elmt_product5;
    input Real elmt_reactant10;
    input Real elmt_vm3;
    input Real elmt_vm2;
    input Real elmt_reactant12;
    input Real elmt_product3;
    input Real elmt_reactant0;
    input Real elmt_product15;
    input Real elmt_product13;
    input Real elmt_product19;
    input Real elmt_product17;

    Real elmt_default(unit = "") "default";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_IRp_conc(unit = "");
    Real elmt_IRp_amount(unit = "");
    Real elmt_IRp(unit = "") "IRp";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_IRSiP_conc(unit = "");
    Real elmt_IRSiP_amount(unit = "");
    Real elmt_IRSiP(unit = "") "IRSiP";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_IRiP_conc(unit = "");
    Real elmt_IRiP_amount(unit = "");
    Real elmt_IRiP(unit = "") "IRiP";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_IRins_conc(unit = "");
    Real elmt_IRins_amount(unit = "");
    Real elmt_IRins(unit = "") "IRins";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_IRi_conc(unit = "");
    Real elmt_IRi_amount(unit = "");
    Real elmt_IRi(unit = "") "IRi";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_X_conc(unit = "");
    Real elmt_X_amount(unit = "");
    Real elmt_X(unit = "") "X";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_IR_conc(unit = "");
    Real elmt_IR_amount(unit = "");
    Real elmt_IR(unit = "") "IR";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_IRS_conc(unit = "");
    Real elmt_IRS_amount(unit = "");
    Real elmt_IRS(unit = "") "IRS";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Xp_conc(unit = "");
    Real elmt_Xp_amount(unit = "");
    Real elmt_Xp(unit = "") "Xp";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_default = 1.0;
        elmt_IRp_conc = 0.0383525925240207;
        elmt_IRSiP_conc = 0.560018057744573;
        elmt_IRiP_conc = 0.424076631823384;
        elmt_IRins_conc = 0.59688996214639;
        elmt_IRi_conc = 4.83863890758515E-6;
        elmt_X_conc = 9.99635886407151;
        elmt_IR_conc = 8.94067597532632;
        elmt_IRS_conc = 9.43998194225544;
        elmt_Xp_conc = 0.00364113592848386;


    equation
        assert(elmt_default >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_default) = 0;
        elmt_IRp = elmt_IRp_conc;
        elmt_IRSiP = elmt_IRSiP_conc;
        elmt_IRiP = elmt_IRiP_conc;
        elmt_IRins = elmt_IRins_conc;
        elmt_IRi = elmt_IRi_conc;
        elmt_X = elmt_X_conc;
        elmt_IR = elmt_IR_conc;
        elmt_IRS = elmt_IRS_conc;
        elmt_Xp = elmt_Xp_conc;
        der(elmt_IRp_amount) = ((elmt_v1c * elmt_product5) + (- (elmt_v1g * elmt_reactant10)) + (- (elmt_v1d * elmt_reactant6)));
        der(elmt_IRSiP_amount) = ((elmt_v2 * elmt_product15) + (- (elmt_vm2 * elmt_reactant16)));
        der(elmt_IRiP_amount) = ((- (elmt_v1e * elmt_reactant8)) + (elmt_v1d * elmt_product7));
        der(elmt_IRins_amount) = ((- (elmt_v1c * elmt_reactant4)) + (- (elmt_v1b * elmt_reactant2)) + (elmt_v1a * elmt_product1));
        der(elmt_IRi_amount) = ((- (elmt_v1r * elmt_reactant12)) + (elmt_v1e * elmt_product9));
        der(elmt_X_amount) = ((- (elmt_v3 * elmt_reactant18)) + (elmt_vm3 * elmt_product21));
        der(elmt_IR_amount) = ((elmt_v1b * elmt_product3) + (elmt_v1r * elmt_product13) + (- (elmt_v1a * elmt_reactant0)) + (elmt_v1g * elmt_product11));
        der(elmt_IRS_amount) = ((- (elmt_v2 * elmt_reactant14)) + (elmt_vm2 * elmt_product17));
        der(elmt_Xp_amount) = ((elmt_v3 * elmt_product19) + (- (elmt_vm3 * elmt_reactant20)));

    algorithm
        elmt_IRp_conc := elmt_IRp_amount / elmt_default;
        elmt_IRSiP_conc := elmt_IRSiP_amount / elmt_default;
        elmt_IRiP_conc := elmt_IRiP_amount / elmt_default;
        elmt_IRins_conc := elmt_IRins_amount / elmt_default;
        elmt_IRi_conc := elmt_IRi_amount / elmt_default;
        elmt_X_conc := elmt_X_amount / elmt_default;
        elmt_IR_conc := elmt_IR_amount / elmt_default;
        elmt_IRS_conc := elmt_IRS_amount / elmt_default;
        elmt_Xp_conc := elmt_Xp_amount / elmt_default;
end Class_elmt_default;
