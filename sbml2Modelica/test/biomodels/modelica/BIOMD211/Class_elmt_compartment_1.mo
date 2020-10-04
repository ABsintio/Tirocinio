within BIOMD211;
class Class_elmt_compartment_1

    input Real elmt_product54;
    input Real elmt_vPK;
    input Real elmt_reactant47;
    input Real elmt_vENO;
    input Real elmt_vGPO;
    input Real elmt_reactant25;
    input Real elmt_reactant48;
    input Real elmt_reactant27;
    input Real elmt_reactant43;
    input Real elmt_vPT;
    input Real elmt_reactant45;
    input Real elmt_product49;
    input Real elmt_product26;
    input Real elmt_product46;
    input Real elmt_vANTI;
    input Real elmt_product44;
    input Real elmt_reactant37;
    input Real elmt_reactant33;
    input Real elmt_reactant34;
    input Real elmt_reactant56;
    input Real elmt_vPGT;
    input Real elmt_product38;
    input Real elmt_vPGM;
    input Real elmt_product36;
    input Real elmt_product35;
    input Real elmt_product57;
    input Real elmt_vAKc;
    input Real elmt_vAU;

    Real elmt_compartment_1(unit = "") "cytosol";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_species_2_conc(unit = "");
    Real elmt_species_2_amount(unit = "");
    Real elmt_species_2(unit = "") "adpc";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_species_3_conc(unit = "");
    Real elmt_species_3_amount(unit = "");
    Real elmt_species_3(unit = "") "atpc";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_species_1_conc(unit = "");
    Real elmt_species_1_amount(unit = "");
    Real elmt_species_1(unit = "") "pyruvate";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_species_6_conc(unit = "");
    Real elmt_species_6_amount(unit = "");
    Real elmt_species_6(unit = "") "ampc";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_species_7_conc(unit = "");
    Real elmt_species_7_amount(unit = "");
    Real elmt_species_7(unit = "") "3phosphoglycerate cytosol";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_species_4_conc(unit = "");
    Real elmt_species_4_amount(unit = "");
    Real elmt_species_4(unit = "") "phosphoenolpyruvate";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_species_5_conc(unit = "");
    Real elmt_species_5_amount(unit = "");
    Real elmt_species_5(unit = "") "2phosphoglycerate";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_species_8_conc(unit = "");
    Real elmt_species_8_amount(unit = "");
    Real elmt_species_8(unit = "") "dihydroxyacetonephosphate cytosol";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_species_9_conc(unit = "");
    Real elmt_species_9_amount(unit = "");
    Real elmt_species_9(unit = "") "glycerol3phosphate cytosol";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    initial equation
        elmt_compartment_1 = 1.0;
        elmt_species_2_conc = 1.31652277625;
        elmt_species_3_conc = 0.341738611875;
        elmt_species_1_conc = 10.0;
        elmt_species_6_conc = 2.24173861188;
        elmt_species_7_conc = 0.0;
        elmt_species_4_conc = 0.0;
        elmt_species_5_conc = 0.0;
        elmt_species_8_conc = 2.23134594788;
        elmt_species_9_conc = 2.76865405212;


    equation
        assert(elmt_compartment_1 >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment_1) = 0;
        elmt_species_2 = elmt_species_2_conc;
        elmt_species_3 = elmt_species_3_conc;
        elmt_species_1 = elmt_species_1_conc;
        elmt_species_6 = elmt_species_6_conc;
        elmt_species_7 = elmt_species_7_conc;
        elmt_species_4 = elmt_species_4_conc;
        elmt_species_5 = elmt_species_5_conc;
        elmt_species_8 = elmt_species_8_conc;
        elmt_species_9 = elmt_species_9_conc;
        der(elmt_species_2_amount) = ((- (elmt_vPK * elmt_reactant34)) + (elmt_vAKc * elmt_product49) + (elmt_vAU * elmt_product38));
        der(elmt_species_3_amount) = ((elmt_vPK * elmt_product36) + (- (elmt_vAKc * elmt_reactant47)) + (- (elmt_vAU * elmt_reactant37)));
        der(elmt_species_1_amount) = ((elmt_vPK * elmt_product35) + (- (elmt_vPT * elmt_reactant27)));
        der(elmt_species_6_amount) = (- (elmt_vAKc * elmt_reactant48));
        der(elmt_species_7_amount) = ((elmt_vPGT * elmt_product54) + (- (elmt_vPGM * elmt_reactant43)));
        der(elmt_species_4_amount) = ((- (elmt_vPK * elmt_reactant33)) + (elmt_vENO * elmt_product46));
        der(elmt_species_5_amount) = ((- (elmt_vENO * elmt_reactant45)) + (elmt_vPGM * elmt_product44));
        der(elmt_species_8_amount) = ((- (elmt_vANTI * elmt_reactant56)) + (elmt_vGPO * elmt_product26));
        der(elmt_species_9_amount) = ((elmt_vANTI * elmt_product57) + (- (elmt_vGPO * elmt_reactant25)));

    algorithm
        elmt_species_2_conc := elmt_species_2_amount / elmt_compartment_1;
        elmt_species_3_conc := elmt_species_3_amount / elmt_compartment_1;
        elmt_species_1_conc := elmt_species_1_amount / elmt_compartment_1;
        elmt_species_6_conc := elmt_species_6_amount / elmt_compartment_1;
        elmt_species_7_conc := elmt_species_7_amount / elmt_compartment_1;
        elmt_species_4_conc := elmt_species_4_amount / elmt_compartment_1;
        elmt_species_5_conc := elmt_species_5_amount / elmt_compartment_1;
        elmt_species_8_conc := elmt_species_8_amount / elmt_compartment_1;
        elmt_species_9_conc := elmt_species_9_amount / elmt_compartment_1;
end Class_elmt_compartment_1;
