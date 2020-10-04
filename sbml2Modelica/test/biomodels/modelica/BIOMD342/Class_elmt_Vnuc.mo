within BIOMD342;
class Class_elmt_Vnuc

    input Real elmt_re15;
    input Real elmt_re16;
    input Real elmt_product51;
    input Real elmt_product50;
    input Real elmt_re17;
    input Real elmt_reactant42;
    input Real elmt_re19;
    input Real elmt_product31;
    input Real elmt_product53;
    input Real elmt_reactant49;
    input Real elmt_re14;
    input Real elmt_product48;
    input Real elmt_product41;
    input Real elmt_re26;
    input Real elmt_re27;
    input Real elmt_reactant52;
    input Real elmt_reactant36;
    input Real elmt_reactant58;
    input Real elmt_re20;
    input Real elmt_re22;
    input Real elmt_reactant32;
    input Real elmt_re23;
    input Real elmt_re24;
    input Real elmt_product59;
    input Real elmt_product35;
    input Real elmt_product57;

    Real elmt_Vnuc(unit = "m3.0") "Nucleus";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_PSmad2n_conc(unit = "m-57.0.");
    Real elmt_PSmad2n_amount(unit = "m-54.0.");
    Real elmt_PSmad2n(unit = "m-57.0.") "PSmad2n";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_PSmad2_Smad4_n_conc(unit = "m-63.0.");
    Real elmt_PSmad2_Smad4_n_amount(unit = "m-60.0.");
    Real elmt_PSmad2_Smad4_n(unit = "m-63.0.") "PSmad2_Smad4_n";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Smad4n_conc(unit = "m-54.0.");
    Real elmt_Smad4n_amount(unit = "m-51.0.");
    Real elmt_Smad4n(unit = "m-54.0.") "Smad4n";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Smad2n_conc(unit = "m-51.0.");
    Real elmt_Smad2n_amount(unit = "m-48.0.");
    Real elmt_Smad2n(unit = "m-51.0.") "Smad2n";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_PSmad2_PSmad2_n_conc(unit = "m-60.0.");
    Real elmt_PSmad2_PSmad2_n_amount(unit = "m-57.0.");
    Real elmt_PSmad2_PSmad2_n(unit = "m-60.0.") "PSmad2_PSmad2_n";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_Vnuc = 1.0E-12;
        elmt_PSmad2n_conc = 0.0;
        elmt_PSmad2_Smad4_n_conc = 0.0;
        elmt_Smad4n_conc = 50.8;
        elmt_Smad2n_conc = 28.5;
        elmt_PSmad2_PSmad2_n_conc = 0.0;


    equation
        assert(elmt_Vnuc >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Vnuc) = 0;
        elmt_PSmad2n = elmt_PSmad2n_conc;
        elmt_PSmad2_Smad4_n = elmt_PSmad2_Smad4_n_conc;
        elmt_Smad4n = elmt_Smad4n_conc;
        elmt_Smad2n = elmt_Smad2n_conc;
        elmt_PSmad2_PSmad2_n = elmt_PSmad2_PSmad2_n_conc;
        der(elmt_PSmad2n_amount) = ((elmt_re19 * elmt_product41) + (elmt_re27 * elmt_product59) + (- (elmt_re20 * elmt_reactant42)) + (elmt_re23 * elmt_product50) + (- (elmt_re24 * elmt_reactant52)));
        der(elmt_PSmad2_Smad4_n_amount) = ((elmt_re22 * elmt_product48) + (- (elmt_re23 * elmt_reactant49)));
        der(elmt_Smad4n_amount) = ((elmt_re16 * elmt_product35) + (- (elmt_re17 * elmt_reactant36)) + (elmt_re23 * elmt_product51));
        der(elmt_Smad2n_amount) = ((- (elmt_re15 * elmt_reactant32)) + (elmt_re14 * elmt_product31) + (elmt_re24 * elmt_product53));
        der(elmt_PSmad2_PSmad2_n_amount) = ((elmt_re26 * elmt_product57) + (- (elmt_re27 * elmt_reactant58)));

    algorithm
        elmt_PSmad2n_conc := elmt_PSmad2n_amount / elmt_Vnuc;
        elmt_PSmad2_Smad4_n_conc := elmt_PSmad2_Smad4_n_amount / elmt_Vnuc;
        elmt_Smad4n_conc := elmt_Smad4n_amount / elmt_Vnuc;
        elmt_Smad2n_conc := elmt_Smad2n_amount / elmt_Vnuc;
        elmt_PSmad2_PSmad2_n_conc := elmt_PSmad2_PSmad2_n_amount / elmt_Vnuc;
end Class_elmt_Vnuc;
