within BIOMD255;
class Class_elmt_endosomes

    input Real elmt_product2013;
    input Real elmt_product2055;
    input Real elmt_v741;
    input Real elmt_v730;
    input Real elmt_product2052;
    input Real elmt_product2061;
    input Real elmt_v729;
    input Real elmt_v728;
    input Real elmt_reactant1634;
    input Real elmt_reactant2225;
    input Real elmt_reactant2226;
    input Real elmt_v599;
    input Real elmt_v742;
    input Real elmt_reactant567;
    input Real elmt_product2019;
    input Real elmt_v799;
    input Real elmt_v744;
    input Real elmt_v208;
    input Real elmt_v801;
    input Real elmt_product2224;
    input Real elmt_product2016;

    Real elmt_endosomes(unit = "m3.0") "endosomes";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
      </rdf:RDF>
    </annotation>"));
    Real elmt_c16_amount(unit = "");
    Real elmt_c16_conc(unit = "m-3.0");
    Real elmt_c16(unit = "") "EGF";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
      </rdf:RDF>
    </annotation>"));
    Real elmt_c530_amount(unit = "");
    Real elmt_c530_conc(unit = "m-3.0");
    Real elmt_c530(unit = "") "ErbB1_h:ATP";
    Real elmt_c437_amount(unit = "");
    Real elmt_c437_conc(unit = "m-3.0");
    Real elmt_c437(unit = "") "(ErbB1:ErbB3)_P:GAP:Grb2:Gab1_P:ERK_PP_i";
    Real elmt_c515_amount(unit = "");
    Real elmt_c515_conc(unit = "m-3.0");
    Real elmt_c515(unit = "") "HRG";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
      </rdf:RDF>
    </annotation>"));
    Real elmt_c438_amount(unit = "");
    Real elmt_c438_conc(unit = "m-3.0");
    Real elmt_c438(unit = "") "(ErbB1:ErbB4)_P:GAP:Grb2:Gab1_P_ERK_PP";
    Real elmt_c440_amount(unit = "");
    Real elmt_c440_conc(unit = "m-3.0");
    Real elmt_c440(unit = "") "(ErbB1:ErbB4)_P:GAP:Grb2:Gab1_P:ERK_PP_i";

    initial equation
        elmt_endosomes = 1.0;
        elmt_c16_amount = 0.0;
        elmt_c530_amount = 0.0;
        elmt_c437_amount = 0.0;
        elmt_c515_amount = 0.0;
        elmt_c438_amount = 0.0;
        elmt_c440_amount = 0.0;


    equation
        assert(elmt_endosomes >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_endosomes) = 0;
        elmt_c16 = elmt_c16_amount;
        elmt_c530 = elmt_c530_amount;
        elmt_c437 = elmt_c437_amount;
        elmt_c515 = elmt_c515_amount;
        elmt_c438 = elmt_c438_amount;
        elmt_c440 = elmt_c440_amount;
        der(elmt_c515_amount) = 0;
        der(elmt_c16_amount) = ((- (elmt_v208 * elmt_reactant567)) + (- (elmt_v801 * elmt_reactant2226)) + (- (elmt_v599 * elmt_reactant1634)));
        der(elmt_c530_amount) = ((- (elmt_v801 * elmt_reactant2225)) + (elmt_v799 * elmt_product2224));
        der(elmt_c437_amount) = ((elmt_v744 * elmt_product2061) + (elmt_v728 * elmt_product2013));
        der(elmt_c438_amount) = ((elmt_v741 * elmt_product2052) + (elmt_v729 * elmt_product2016));
        der(elmt_c440_amount) = ((elmt_v742 * elmt_product2055) + (elmt_v730 * elmt_product2019));

    algorithm
        elmt_c16_conc := elmt_c16_amount / elmt_endosomes;
        elmt_c530_conc := elmt_c530_amount / elmt_endosomes;
        elmt_c437_conc := elmt_c437_amount / elmt_endosomes;
        elmt_c515_conc := elmt_c515_amount / elmt_endosomes;
        elmt_c438_conc := elmt_c438_amount / elmt_endosomes;
        elmt_c440_conc := elmt_c440_amount / elmt_endosomes;
end Class_elmt_endosomes;
