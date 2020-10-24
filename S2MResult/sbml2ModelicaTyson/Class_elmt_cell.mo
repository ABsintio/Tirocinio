within sbml2ModelicaTyson;
class Class_elmt_cell


    input Real elmt_product11;
    input Real elmt_Reaction9;
    input Real elmt_Reaction8;
    input Real elmt_Reaction7;
    input Real elmt_Reaction6;
    input Real elmt_Reaction5;
    input Real elmt_reactant18;
    input Real elmt_Reaction4;
    input Real elmt_Reaction3;
    input Real elmt_Reaction2;
    input Real elmt_Reaction1;
    input Real elmt_product9;
    input Real elmt_product6;
    input Real elmt_reactant3;
    input Real elmt_reactant5;
    input Real elmt_reactant8;
    input Real elmt_reactant7;
    input Real elmt_product1;
    input Real elmt_reactant14;
    input Real elmt_reactant16;
    input Real elmt_reactant10;
    input Real elmt_product4;
    input Real elmt_reactant0;
    input Real elmt_product2;
    input Real elmt_product13;
    input Real elmt_product19;

    Real elmt_cell(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_M_conc(unit = "");
    Real elmt_M_amount(unit = "");
    Real elmt_M(unit = "") "p-cyclin_cdc2";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_CT_conc(unit = "");
    Real elmt_CT_amount(unit = "");
    Real elmt_CT(unit = "") "total_cdc2";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_C2_conc(unit = "");
    Real elmt_C2_amount(unit = "");
    Real elmt_C2(unit = "") "cdc2k";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_Y_conc(unit = "");
    Real elmt_Y_amount(unit = "");
    Real elmt_Y(unit = "") "cyclin";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_EmptySet_conc(unit = "");
    Real elmt_EmptySet_amount(unit = "");
    Real elmt_EmptySet(unit = "") "";
    Real elmt_CP_conc(unit = "");
    Real elmt_CP_amount(unit = "");
    Real elmt_CP(unit = "") "cdc2k-P";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_pM_conc(unit = "");
    Real elmt_pM_amount(unit = "");
    Real elmt_pM(unit = "") "p-cyclin_cdc2-p";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_YT_conc(unit = "");
    Real elmt_YT_amount(unit = "");
    Real elmt_YT(unit = "") "total_cyclin";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_YP_conc(unit = "");
    Real elmt_YP_amount(unit = "");
    Real elmt_YP(unit = "") "p-cyclin";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_cell = 1.0;
        elmt_M_conc = (0.0 / elmt_cell);
        elmt_C2_conc = (0.0 / elmt_cell);
        elmt_Y_conc = (0.0 / elmt_cell);
        elmt_EmptySet_conc = (0.0 / elmt_cell);
        elmt_CP_conc = (0.75 / elmt_cell);
        elmt_pM_conc = (0.25 / elmt_cell);
        elmt_YP_conc = (0.0 / elmt_cell);


    equation
        assert(elmt_cell >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cell) = 0;
        elmt_M = elmt_M_conc;
        elmt_CT = elmt_CT_conc;
        elmt_C2 = elmt_C2_conc;
        elmt_Y = elmt_Y_conc;
        elmt_EmptySet = elmt_EmptySet_conc;
        elmt_CP = elmt_CP_conc;
        elmt_pM = elmt_pM_conc;
        elmt_YT = elmt_YT_conc;
        elmt_YP = elmt_YP_conc;
        elmt_CT_amount = (elmt_C2 + elmt_CP + elmt_M + elmt_pM) * elmt_cell;
        der(elmt_EmptySet_amount) = 0;
        elmt_YT_amount = (elmt_Y + elmt_YP + elmt_M + elmt_pM) * elmt_cell;
        der(elmt_M_amount) = ((elmt_Reaction9 * elmt_product19) + (- (elmt_Reaction5 * elmt_reactant10)) + (- (elmt_Reaction1 * elmt_reactant0)));
        der(elmt_C2_amount) = ((elmt_Reaction3 * elmt_product6) + (- (elmt_Reaction2 * elmt_reactant3)) + (elmt_Reaction1 * elmt_product1));
        der(elmt_Y_amount) = ((- (elmt_Reaction7 * elmt_reactant14)) + (elmt_Reaction6 * elmt_product13) + (- (elmt_Reaction4 * elmt_reactant8)));
        der(elmt_CP_amount) = ((- (elmt_Reaction4 * elmt_reactant7)) + (- (elmt_Reaction3 * elmt_reactant5)) + (elmt_Reaction2 * elmt_product4));
        der(elmt_pM_amount) = ((- (elmt_Reaction9 * elmt_reactant18)) + (elmt_Reaction5 * elmt_product11) + (elmt_Reaction4 * elmt_product9));
        der(elmt_YP_amount) = ((- (elmt_Reaction8 * elmt_reactant16)) + (elmt_Reaction1 * elmt_product2));

    algorithm
        elmt_M_conc := elmt_M_amount / elmt_cell;
        elmt_CT_conc := elmt_CT_amount / elmt_cell;
        elmt_C2_conc := elmt_C2_amount / elmt_cell;
        elmt_Y_conc := elmt_Y_amount / elmt_cell;
        elmt_EmptySet_conc := elmt_EmptySet_amount / elmt_cell;
        elmt_CP_conc := elmt_CP_amount / elmt_cell;
        elmt_pM_conc := elmt_pM_amount / elmt_cell;
        elmt_YT_conc := elmt_YT_amount / elmt_cell;
        elmt_YP_conc := elmt_YP_amount / elmt_cell;
end Class_elmt_cell;
