within BIOMD080;
class Class_elmt_cell

    input Real elmt_product8;
    input Real elmt_reactant1;
    input Real elmt_product7;
    input Real elmt_reactant4;
    input Real elmt_reactant3;
    input Real elmt_reactant6;
    input Real elmt_product11;
    input Real elmt_Reaction_6;
    input Real elmt_Reaction_5;
    input Real elmt_reactant15;
    input Real elmt_reactant10;
    input Real elmt_product5;
    input Real elmt_reactant0;
    input Real elmt_reactant12;
    input Real elmt_product2;
    input Real elmt_Reaction_4;
    input Real elmt_product16;
    input Real elmt_Reaction_3;
    input Real elmt_reactant9;
    input Real elmt_Reaction_2;
    input Real elmt_product14;
    input Real elmt_product13;
    input Real elmt_Reaction_1;

    Real elmt_cell(unit = "") "cell";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_GDP_conc(unit = "");
    Real elmt_GDP_amount(unit = "");
    Real elmt_GDP(unit = "") "GDP";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_GTP_conc(unit = "");
    Real elmt_GTP_amount(unit = "");
    Real elmt_GTP(unit = "") "GTP";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_G_GDP_conc(unit = "");
    Real elmt_G_GDP_amount(unit = "");
    Real elmt_G_GDP(unit = "") "G_GDP";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_G_GTP_conc(unit = "");
    Real elmt_G_GTP_amount(unit = "");
    Real elmt_G_GTP(unit = "") "G_GTP";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_DR_conc(unit = "");
    Real elmt_DR_amount(unit = "");
    Real elmt_DR(unit = "") "DR";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_D_conc(unit = "");
    Real elmt_D_amount(unit = "");
    Real elmt_D(unit = "") "D";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_DRG_GDP_conc(unit = "");
    Real elmt_DRG_GDP_amount(unit = "");
    Real elmt_DRG_GDP(unit = "") "DRG_GDP";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_DRG_conc(unit = "");
    Real elmt_DRG_amount(unit = "");
    Real elmt_DRG(unit = "") "DRG";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_DRG_GTP_conc(unit = "");
    Real elmt_DRG_GTP_amount(unit = "");
    Real elmt_DRG_GTP(unit = "") "DRG_GTP";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_R_conc(unit = "");
    Real elmt_R_amount(unit = "");
    Real elmt_R(unit = "") "R";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_cell = 1.0;
        elmt_GDP_conc = 0.0;
        elmt_GTP_conc = 1.0E-5;
        elmt_G_GDP_conc = 1.0E-6;
        elmt_G_GTP_conc = 0.0;
        elmt_DR_conc = 0.0;
        elmt_D_conc = 3.1E-5;
        elmt_DRG_GDP_conc = 0.0;
        elmt_DRG_conc = 0.0;
        elmt_DRG_GTP_conc = 0.0;
        elmt_R_conc = 1.0E-10;


    equation
        assert(elmt_cell >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cell) = 0;
        elmt_GDP = elmt_GDP_conc;
        elmt_GTP = elmt_GTP_conc;
        elmt_G_GDP = elmt_G_GDP_conc;
        elmt_G_GTP = elmt_G_GTP_conc;
        elmt_DR = elmt_DR_conc;
        elmt_D = elmt_D_conc;
        elmt_DRG_GDP = elmt_DRG_GDP_conc;
        elmt_DRG = elmt_DRG_conc;
        elmt_DRG_GTP = elmt_DRG_GTP_conc;
        elmt_R = elmt_R_conc;
        der(elmt_GDP_amount) = (elmt_Reaction_3 * elmt_product7);
        der(elmt_GTP_amount) = (- (elmt_Reaction_4 * elmt_reactant10));
        der(elmt_G_GDP_amount) = ((elmt_Reaction_6 * elmt_product16) + (- (elmt_Reaction_2 * elmt_reactant4)));
        der(elmt_G_GTP_amount) = ((- (elmt_Reaction_6 * elmt_reactant15)) + (elmt_Reaction_5 * elmt_product13));
        der(elmt_DR_amount) = ((elmt_Reaction_5 * elmt_product14) + (- (elmt_Reaction_2 * elmt_reactant3)) + (elmt_Reaction_1 * elmt_product2));
        der(elmt_D_amount) = (- (elmt_Reaction_1 * elmt_reactant0));
        der(elmt_DRG_GDP_amount) = ((- (elmt_Reaction_3 * elmt_reactant6)) + (elmt_Reaction_2 * elmt_product5));
        der(elmt_DRG_amount) = ((- (elmt_Reaction_4 * elmt_reactant9)) + (elmt_Reaction_3 * elmt_product8));
        der(elmt_DRG_GTP_amount) = ((- (elmt_Reaction_5 * elmt_reactant12)) + (elmt_Reaction_4 * elmt_product11));
        der(elmt_R_amount) = (- (elmt_Reaction_1 * elmt_reactant1));

    algorithm
        elmt_GDP_conc := elmt_GDP_amount / elmt_cell;
        elmt_GTP_conc := elmt_GTP_amount / elmt_cell;
        elmt_G_GDP_conc := elmt_G_GDP_amount / elmt_cell;
        elmt_G_GTP_conc := elmt_G_GTP_amount / elmt_cell;
        elmt_DR_conc := elmt_DR_amount / elmt_cell;
        elmt_D_conc := elmt_D_amount / elmt_cell;
        elmt_DRG_GDP_conc := elmt_DRG_GDP_amount / elmt_cell;
        elmt_DRG_conc := elmt_DRG_amount / elmt_cell;
        elmt_DRG_GTP_conc := elmt_DRG_GTP_amount / elmt_cell;
        elmt_R_conc := elmt_R_amount / elmt_cell;
end Class_elmt_cell;
