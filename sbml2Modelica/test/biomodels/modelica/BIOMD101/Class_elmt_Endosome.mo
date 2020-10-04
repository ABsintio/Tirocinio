within BIOMD101;
class Class_elmt_Endosome

    input Real elmt_v13;
    input Real elmt_v12;
    input Real elmt_v9;
    input Real elmt_reactant20;
    input Real elmt_product6;
    input Real elmt_v7;
    input Real elmt_v8;
    input Real elmt_product10;
    input Real elmt_v4;
    input Real elmt_product19;
    input Real elmt_reactant11;
    input Real elmt_reactant13;

    Real elmt_Endosome(unit = "") "Endosome";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_RII_endo_amount(unit = "");
    Real elmt_RII_endo_conc(unit = "");
    Real elmt_RII_endo(unit = "") "Receptor 2 endosome";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_lRIRII_endo_amount(unit = "");
    Real elmt_lRIRII_endo_conc(unit = "");
    Real elmt_lRIRII_endo(unit = "") "ligand receptor complex-endosome";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_RI_endo_amount(unit = "");
    Real elmt_RI_endo_conc(unit = "");
    Real elmt_RI_endo(unit = "") "Receptor 1-endosome";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_Endosome = 1.0;
        elmt_RII_endo_amount = 0.0;
        elmt_lRIRII_endo_amount = 40.0;
        elmt_RI_endo_amount = 0.0;


    equation
        assert(elmt_Endosome >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Endosome) = 0;
        elmt_RII_endo = elmt_RII_endo_amount;
        elmt_lRIRII_endo = elmt_lRIRII_endo_amount;
        elmt_RI_endo = elmt_RI_endo_amount;
        der(elmt_RII_endo_amount) = ((- (elmt_v13 * elmt_reactant20)) + (elmt_v12 * elmt_product19));
        der(elmt_lRIRII_endo_amount) = ((- (elmt_v9 * elmt_reactant13)) + (elmt_v4 * elmt_product6));
        der(elmt_RI_endo_amount) = ((elmt_v7 * elmt_product10) + (- (elmt_v8 * elmt_reactant11)));

    algorithm
        elmt_RII_endo_conc := elmt_RII_endo_amount / elmt_Endosome;
        elmt_lRIRII_endo_conc := elmt_lRIRII_endo_amount / elmt_Endosome;
        elmt_RI_endo_conc := elmt_RI_endo_amount / elmt_Endosome;
end Class_elmt_Endosome;
