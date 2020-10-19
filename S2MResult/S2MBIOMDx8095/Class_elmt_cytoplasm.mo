within S2MBIOMDx8095;
class Class_elmt_cytoplasm
    extends Modelica.Icons.VariantsPackage;


    input Real elmt_product30;
    input Real elmt_product51;
    input Real elmt_R14;
    input Real elmt_R36;
    input Real elmt_R37;
    input Real elmt_R12;
    input Real elmt_product12;
    input Real elmt_R34;
    input Real elmt_product34;
    input Real elmt_R13;
    input Real elmt_product55;
    input Real elmt_R35;
    input Real elmt_R11;
    input Real elmt_reactant47;
    input Real elmt_reactant26;
    input Real elmt_reactant43;
    input Real elmt_reactant22;
    input Real elmt_R18;
    input Real elmt_R19;
    input Real elmt_R41;
    input Real elmt_R42;
    input Real elmt_R20;
    input Real elmt_product25;
    input Real elmt_product46;
    input Real elmt_R27;
    input Real elmt_R7;
    input Real elmt_R28;
    input Real elmt_reactant52;
    input Real elmt_R25;
    input Real elmt_R5;
    input Real elmt_reactant4;
    input Real elmt_product7;
    input Real elmt_R26;
    input Real elmt_reactant31;
    input Real elmt_R6;
    input Real elmt_R4;
    input Real elmt_R43;
    input Real elmt_product21;
    input Real elmt_R21;
    input Real elmt_reactant8;
    input Real elmt_R44;
    input Real elmt_product42;
    input Real elmt_reactant17;
    input Real elmt_reactant56;
    input Real elmt_product3;
    input Real elmt_reactant13;
    input Real elmt_reactant35;
    input Real elmt_product16;

    Real elmt_cytoplasm(unit = "") "cytoplasm";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_cTc_conc(unit = "");
    Real elmt_cTc_amount(unit = "");
    Real elmt_cTc(unit = "") "cTc";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_cP9c_conc(unit = "");
    Real elmt_cP9c_amount(unit = "");
    Real elmt_cP9c(unit = "") "cP9c";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_cXc_conc(unit = "");
    Real elmt_cXc_amount(unit = "");
    Real elmt_cXc(unit = "") "cXc";
    Real elmt_cP7c_conc(unit = "");
    Real elmt_cP7c_amount(unit = "");
    Real elmt_cP7c(unit = "") "cP7c";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_cYc_conc(unit = "");
    Real elmt_cYc_amount(unit = "");
    Real elmt_cYc(unit = "") "cYc";
    Real elmt_cLc_conc(unit = "");
    Real elmt_cLc_amount(unit = "");
    Real elmt_cLc(unit = "") "cLc";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_cytoplasm = 1.0;
        elmt_cTc_conc = 0.1724;
        elmt_cP9c_conc = 6.0091;
        elmt_cXc_conc = 13.0372;
        elmt_cP7c_conc = 20.0554;
        elmt_cYc_conc = 7.075;
        elmt_cLc_conc = 6.7846;


    equation
        assert(elmt_cytoplasm >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cytoplasm) = 0;
        elmt_cTc = elmt_cTc_conc;
        elmt_cP9c = elmt_cP9c_conc;
        elmt_cXc = elmt_cXc_conc;
        elmt_cP7c = elmt_cP7c_conc;
        elmt_cYc = elmt_cYc_conc;
        elmt_cLc = elmt_cLc_conc;
        der(elmt_cTc_amount) = ((- (elmt_R14 * elmt_reactant17)) + (- (elmt_R12 * elmt_reactant13)) + (elmt_R13 * elmt_product16) + (elmt_R11 * elmt_product12));
        der(elmt_cP9c_amount) = ((elmt_R41 * elmt_product51) + (- (elmt_R42 * elmt_reactant52)) + (elmt_R43 * elmt_product55) + (- (elmt_R44 * elmt_reactant56)));
        der(elmt_cXc_amount) = ((elmt_R18 * elmt_product21) + (- (elmt_R19 * elmt_reactant22)) + (elmt_R20 * elmt_product25) + (- (elmt_R21 * elmt_reactant26)));
        der(elmt_cP7c_amount) = ((elmt_R36 * elmt_product46) + (- (elmt_R37 * elmt_reactant47)) + (elmt_R34 * elmt_product42) + (- (elmt_R35 * elmt_reactant43)));
        der(elmt_cYc_amount) = ((elmt_R27 * elmt_product34) + (- (elmt_R28 * elmt_reactant35)) + (elmt_R25 * elmt_product30) + (- (elmt_R26 * elmt_reactant31)));
        der(elmt_cLc_amount) = ((- (elmt_R7 * elmt_reactant8)) + (- (elmt_R5 * elmt_reactant4)) + (elmt_R6 * elmt_product7) + (elmt_R4 * elmt_product3));

    algorithm
        elmt_cTc_conc := elmt_cTc_amount / elmt_cytoplasm;
        elmt_cP9c_conc := elmt_cP9c_amount / elmt_cytoplasm;
        elmt_cXc_conc := elmt_cXc_amount / elmt_cytoplasm;
        elmt_cP7c_conc := elmt_cP7c_amount / elmt_cytoplasm;
        elmt_cYc_conc := elmt_cYc_amount / elmt_cytoplasm;
        elmt_cLc_conc := elmt_cLc_amount / elmt_cytoplasm;
end Class_elmt_cytoplasm;
