within BIOMD351;
class Class_elmt_compartment_0000001

    input Real elmt_product11;
    input Real elmt_reac_DIIxI;
    input Real elmt_reac_prodR;
    input Real elmt_reac_DIAxA;
    input Real elmt_reac_degrA;
    input Real elmt_reactant9;
    input Real elmt_reac_degrI;
    input Real elmt_reactant1;
    input Real elmt_reactant4;
    input Real elmt_reactant3;
    input Real elmt_reactant6;
    input Real elmt_reac_degrDIA;
    input Real elmt_reac_prodA;
    input Real elmt_reactant8;
    input Real elmt_reactant7;
    input Real elmt_reac_degrR;
    input Real elmt_reactant14;
    input Real elmt_reactant10;
    input Real elmt_product5;
    input Real elmt_reac_prodI;
    input Real elmt_reac_degrDII;
    input Real elmt_reactant0;
    input Real elmt_reactant12;
    input Real elmt_product2;
    input Real elmt_reac_DIA;
    input Real elmt_product16;
    input Real elmt_product15;
    input Real elmt_product13;
    input Real elmt_reac_DII;
    input Real elmt_product17;

    Real elmt_compartment_0000001(unit = "") "c_1";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_aux_conc(unit = "");
    Real elmt_aux_amount(unit = "");
    Real elmt_aux(unit = "") "auxin";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_I_conc(unit = "");
    Real elmt_I_amount(unit = "");
    Real elmt_I(unit = "") "Aux/IAA";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_D_IA_conc(unit = "");
    Real elmt_D_IA_amount(unit = "");
    Real elmt_D_IA(unit = "") "Aux/IAA:ARF";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_A_conc(unit = "");
    Real elmt_A_amount(unit = "");
    Real elmt_A(unit = "") "ARF";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_D_II_conc(unit = "");
    Real elmt_D_II_amount(unit = "");
    Real elmt_D_II(unit = "") "Aux/IAA:Aux/IAA";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_R_conc(unit = "");
    Real elmt_R_amount(unit = "");
    Real elmt_R(unit = "") "mRNA";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_compartment_0000001 = 1.0;
        elmt_I_conc = 10.0;
        elmt_D_IA_conc = 10.0;
        elmt_A_conc = 10.0;
        elmt_D_II_conc = 10.0;
        elmt_R_conc = 1.0;


    equation
        assert(elmt_compartment_0000001 >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment_0000001) = 0;
        elmt_aux = elmt_aux_conc;
        elmt_I = elmt_I_conc;
        elmt_D_IA = elmt_D_IA_conc;
        elmt_A = elmt_A_conc;
        elmt_D_II = elmt_D_II_conc;
        elmt_R = elmt_R_conc;
        elmt_aux_amount = (if (time > 1000.0) then 5.0 else 0.0) * elmt_compartment_0000001;
        der(elmt_I_amount) = ((- (elmt_reac_degrI * elmt_reactant6)) + (elmt_reac_DIIxI * elmt_product13) + (elmt_reac_prodI * elmt_product15) + (- (elmt_reac_DIA * elmt_reactant1)) + (- (elmt_reac_DII * elmt_reactant4)) + (- (elmt_reac_DII * elmt_reactant3)));
        der(elmt_D_IA_amount) = ((- (elmt_reac_degrDIA * elmt_reactant8)) + (elmt_reac_DIA * elmt_product2) + (- (elmt_reac_DIAxA * elmt_reactant10)));
        der(elmt_A_amount) = ((elmt_reac_prodA * elmt_product16) + (- (elmt_reac_DIA * elmt_reactant0)) + (elmt_reac_DIAxA * elmt_product11) + (- (elmt_reac_degrA * elmt_reactant7)));
        der(elmt_D_II_amount) = ((- (elmt_reac_DIIxI * elmt_reactant12)) + (- (elmt_reac_degrDII * elmt_reactant9)) + (elmt_reac_DII * elmt_product5));
        der(elmt_R_amount) = ((- (elmt_reac_degrR * elmt_reactant14)) + (elmt_reac_prodR * elmt_product17));

    algorithm
        elmt_aux_conc := elmt_aux_amount / elmt_compartment_0000001;
        elmt_I_conc := elmt_I_amount / elmt_compartment_0000001;
        elmt_D_IA_conc := elmt_D_IA_amount / elmt_compartment_0000001;
        elmt_A_conc := elmt_A_amount / elmt_compartment_0000001;
        elmt_D_II_conc := elmt_D_II_amount / elmt_compartment_0000001;
        elmt_R_conc := elmt_R_amount / elmt_compartment_0000001;
end Class_elmt_compartment_0000001;
