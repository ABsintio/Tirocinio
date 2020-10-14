within BIOMD474;
class Class_elmt_cellsurface

    input Real elmt_reactant20;
    input Real elmt_R1r;
    input Real elmt_product12;
    input Real elmt_product10;
    input Real elmt_R3r;
    input Real elmt_reactant24;
    input Real elmt_R6f;
    input Real elmt_product49;
    input Real elmt_product27;
    input Real elmt_reactant9;
    input Real elmt_R6r;
    input Real elmt_reactant50;
    input Real elmt_reactant1;
    input Real elmt_product7;
    input Real elmt_reactant3;
    input Real elmt_product23;
    input Real elmt_reactant6;
    input Real elmt_R4;
    input Real elmt_R2;
    input Real elmt_reactant14;
    input Real elmt_reactant16;
    input Real elmt_R20r;
    input Real elmt_reactant11;
    input Real elmt_product4;
    input Real elmt_product2;
    input Real elmt_R1f;
    input Real elmt_R3f;
    input Real elmt_R5f;
    input Real elmt_R7f;
    input Real elmt_R5r;
    input Real elmt_product15;
    input Real elmt_R7r;
    input Real elmt_product19;
    input Real elmt_R20f;

    Real elmt_cellsurface(unit = "m3.0") "cellsurface";
 annotation(Documentation(info="<annotation>
                <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
                </rdf:RDF>
              </annotation>"));
    Real elmt_Ins_2_InR_P_conc(unit = "m-54.0");
    Real elmt_Ins_2_InR_P_amount(unit = "m-51.0");
    Real elmt_Ins_2_InR_P(unit = "m-54.0") "Ins_2_InR_P";
 annotation(Documentation(info="<annotation>
                <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
                </rdf:RDF>
              </annotation>"));
    Real elmt_InR_conc(unit = "m-45.0");
    Real elmt_InR_amount(unit = "m-42.0");
    Real elmt_InR(unit = "m-45.0") "InR";
 annotation(Documentation(info="<annotation>
                <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
                </rdf:RDF>
              </annotation>"));
    Real elmt_cellsurface_GLUT4_conc(unit = "m-57.0");
    Real elmt_cellsurface_GLUT4_amount(unit = "m-54.0");
    Real elmt_cellsurface_GLUT4(unit = "m-57.0") "cellsurface_GLUT4";
 annotation(Documentation(info="<annotation>
                <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
                </rdf:RDF>
              </annotation>"));
    Real elmt_Ins_InR_conc(unit = "m-48.0");
    Real elmt_Ins_InR_amount(unit = "m-45.0");
    Real elmt_Ins_InR(unit = "m-48.0") "Ins_InR";
 annotation(Documentation(info="<annotation>
                <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
                </rdf:RDF>
              </annotation>"));
    Real elmt_Ins_InR_P_conc(unit = "m-51.0");
    Real elmt_Ins_InR_P_amount(unit = "m-48.0");
    Real elmt_Ins_InR_P(unit = "m-51.0") "Ins_InR_P";
 annotation(Documentation(info="<annotation>
                <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
                </rdf:RDF>
              </annotation>"));

    initial equation
        elmt_cellsurface = 6.4E-14;
        elmt_Ins_2_InR_P_conc = (0.0 / elmt_cellsurface);
        elmt_InR_conc = (90000.0 / elmt_cellsurface);
        elmt_cellsurface_GLUT4_conc = (4000.0 / elmt_cellsurface);
        elmt_Ins_InR_conc = (0.0 / elmt_cellsurface);
        elmt_Ins_InR_P_conc = (0.0 / elmt_cellsurface);


    equation
        assert(elmt_cellsurface >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cellsurface) = 0;
        elmt_Ins_2_InR_P = elmt_Ins_2_InR_P_conc;
        elmt_InR = elmt_InR_conc;
        elmt_cellsurface_GLUT4 = elmt_cellsurface_GLUT4_conc;
        elmt_Ins_InR = elmt_Ins_InR_conc;
        elmt_Ins_InR_P = elmt_Ins_InR_P_conc;
        der(elmt_Ins_2_InR_P_amount) = ((- (elmt_R6f * elmt_reactant20)) + (elmt_R6r * elmt_product23) + (elmt_R3f * elmt_product10) + (- (elmt_R3r * elmt_reactant11)));
        der(elmt_InR_amount) = ((elmt_R4 * elmt_product15) + (elmt_R1r * elmt_product4) + (- (elmt_R5f * elmt_reactant16)) + (elmt_R5r * elmt_product19) + (- (elmt_R1f * elmt_reactant1)));
        der(elmt_cellsurface_GLUT4_amount) = ((- (elmt_R20r * elmt_reactant50)) + (elmt_R20f * elmt_product49));
        der(elmt_Ins_InR_amount) = ((- (elmt_R2 * elmt_reactant6)) + (- (elmt_R1r * elmt_reactant3)) + (elmt_R1f * elmt_product2));
        der(elmt_Ins_InR_P_amount) = ((- (elmt_R4 * elmt_reactant14)) + (elmt_R2 * elmt_product7) + (- (elmt_R7f * elmt_reactant24)) + (elmt_R7r * elmt_product27) + (- (elmt_R3f * elmt_reactant9)) + (elmt_R3r * elmt_product12));

    algorithm
        elmt_Ins_2_InR_P_conc := elmt_Ins_2_InR_P_amount / elmt_cellsurface;
        elmt_InR_conc := elmt_InR_amount / elmt_cellsurface;
        elmt_cellsurface_GLUT4_conc := elmt_cellsurface_GLUT4_amount / elmt_cellsurface;
        elmt_Ins_InR_conc := elmt_Ins_InR_amount / elmt_cellsurface;
        elmt_Ins_InR_P_conc := elmt_Ins_InR_P_amount / elmt_cellsurface;
end Class_elmt_cellsurface;
