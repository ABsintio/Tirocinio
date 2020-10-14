within BIOMD203;
class Class_elmt_compartment

    input Real elmt_reactant2;
    input Real elmt_J0;
    input Real elmt_reactant6;
    input Real elmt_reactant8;
    input Real elmt_product10;
    input Real elmt_product1;
    input Real elmt_J7;
    input Real elmt_J8;
    input Real elmt_reactant15;
    input Real elmt_J5;
    input Real elmt_J6;
    input Real elmt_J3;
    input Real elmt_product5;
    input Real elmt_J4;
    input Real elmt_reactant11;
    input Real elmt_J1;
    input Real elmt_J2;
    input Real elmt_reactant19;
    input Real elmt_J9;
    input Real elmt_reactant9;
    input Real elmt_product14;
    input Real elmt_product18;

    Real elmt_compartment(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_SOX2_Gene_conc(unit = "");
    Real elmt_SOX2_Gene_amount(unit = "");
    Real elmt_SOX2_Gene(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_OCT4_Gene_conc(unit = "");
    Real elmt_OCT4_Gene_amount(unit = "");
    Real elmt_OCT4_Gene(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_OCT4_conc(unit = "");
    Real elmt_OCT4_amount(unit = "");
    Real elmt_OCT4(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_OCT4_SOX2_conc(unit = "");
    Real elmt_OCT4_SOX2_amount(unit = "");
    Real elmt_OCT4_SOX2(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_targetGene_conc(unit = "");
    Real elmt_targetGene_amount(unit = "");
    Real elmt_targetGene(unit = "") "";
    Real elmt_NANOG_conc(unit = "");
    Real elmt_NANOG_amount(unit = "");
    Real elmt_NANOG(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_NANOG_Gene_conc(unit = "");
    Real elmt_NANOG_Gene_amount(unit = "");
    Real elmt_NANOG_Gene(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Protein_conc(unit = "");
    Real elmt_Protein_amount(unit = "");
    Real elmt_Protein(unit = "") "";
    Real elmt_degradation_conc(unit = "");
    Real elmt_degradation_amount(unit = "");
    Real elmt_degradation(unit = "") "";
    Real elmt_p53_conc(unit = "");
    Real elmt_p53_amount(unit = "");
    Real elmt_p53(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_A_conc(unit = "");
    Real elmt_A_amount(unit = "");
    Real elmt_A(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_SOX2_conc(unit = "");
    Real elmt_SOX2_amount(unit = "");
    Real elmt_SOX2(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_compartment = 1.0;
        elmt_SOX2_Gene_conc = (0.0 / elmt_compartment);
        elmt_OCT4_Gene_conc = (0.0 / elmt_compartment);
        elmt_OCT4_conc = (0.01 / elmt_compartment);
        elmt_OCT4_SOX2_conc = (0.1 / elmt_compartment);
        elmt_targetGene_conc = (0.01 / elmt_compartment);
        elmt_NANOG_conc = (0.01 / elmt_compartment);
        elmt_NANOG_Gene_conc = (0.0 / elmt_compartment);
        elmt_Protein_conc = (0.0 / elmt_compartment);
        elmt_degradation_conc = (0.0 / elmt_compartment);
        elmt_p53_conc = (0.0 / elmt_compartment);
        elmt_A_conc = (10.0 / elmt_compartment);
        elmt_SOX2_conc = (0.01 / elmt_compartment);


    equation
        assert(elmt_compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment) = 0;
        elmt_SOX2_Gene = elmt_SOX2_Gene_conc;
        elmt_OCT4_Gene = elmt_OCT4_Gene_conc;
        elmt_OCT4 = elmt_OCT4_conc;
        elmt_OCT4_SOX2 = elmt_OCT4_SOX2_conc;
        elmt_targetGene = elmt_targetGene_conc;
        elmt_NANOG = elmt_NANOG_conc;
        elmt_NANOG_Gene = elmt_NANOG_Gene_conc;
        elmt_Protein = elmt_Protein_conc;
        elmt_degradation = elmt_degradation_conc;
        elmt_p53 = elmt_p53_conc;
        elmt_A = elmt_A_conc;
        elmt_SOX2 = elmt_SOX2_conc;
        der(elmt_SOX2_Gene_amount) = 0;
        der(elmt_OCT4_Gene_amount) = 0;
        der(elmt_targetGene_amount) = 0;
        der(elmt_NANOG_Gene_amount) = 0;
        der(elmt_degradation_amount) = 0;
        der(elmt_p53_amount) = 0;
        der(elmt_A_amount) = 0;
        der(elmt_OCT4_amount) = ((elmt_J0 * elmt_product1) + (- (elmt_J4 * elmt_reactant8)) + (- (elmt_J1 * elmt_reactant2)));
        der(elmt_OCT4_SOX2_amount) = ((- (elmt_J5 * elmt_reactant11)) + (elmt_J4 * elmt_product10));
        der(elmt_NANOG_amount) = ((- (elmt_J3 * elmt_reactant6)) + (elmt_J2 * elmt_product5));
        der(elmt_Protein_amount) = ((- (elmt_J9 * elmt_reactant19)) + (elmt_J8 * elmt_product18));
        der(elmt_SOX2_amount) = ((- (elmt_J7 * elmt_reactant15)) + (elmt_J6 * elmt_product14) + (- (elmt_J4 * elmt_reactant9)));

    algorithm
        elmt_SOX2_Gene_conc := elmt_SOX2_Gene_amount / elmt_compartment;
        elmt_OCT4_Gene_conc := elmt_OCT4_Gene_amount / elmt_compartment;
        elmt_OCT4_conc := elmt_OCT4_amount / elmt_compartment;
        elmt_OCT4_SOX2_conc := elmt_OCT4_SOX2_amount / elmt_compartment;
        elmt_targetGene_conc := elmt_targetGene_amount / elmt_compartment;
        elmt_NANOG_conc := elmt_NANOG_amount / elmt_compartment;
        elmt_NANOG_Gene_conc := elmt_NANOG_Gene_amount / elmt_compartment;
        elmt_Protein_conc := elmt_Protein_amount / elmt_compartment;
        elmt_degradation_conc := elmt_degradation_amount / elmt_compartment;
        elmt_p53_conc := elmt_p53_amount / elmt_compartment;
        elmt_A_conc := elmt_A_amount / elmt_compartment;
        elmt_SOX2_conc := elmt_SOX2_amount / elmt_compartment;
end Class_elmt_compartment;
