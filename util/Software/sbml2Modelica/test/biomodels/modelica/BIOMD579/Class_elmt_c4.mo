within BIOMD579;
class Class_elmt_c4

    input Real elmt_reactant560;
    input Real elmt_re175;
    input Real elmt_re182;
    input Real elmt_product559;

    Real elmt_c4(unit = "m3.0") "mit_outer_membrane";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>mit_outer_membrane</celldesigner:name>
          </celldesigner:extension>
        </annotation>"));
    Real elmt_s123_conc(unit = "m-720.0.");
    Real elmt_s123_amount(unit = "m-717.0.");
    Real elmt_s123(unit = "m-720.0.") "Creatine";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
            <celldesigner:speciesIdentity>
              <celldesigner:class>SIMPLE_MOLECULE</celldesigner:class>
              <celldesigner:name>Creatine</celldesigner:name>
            </celldesigner:speciesIdentity>
            <celldesigner:listOfCatalyzedReactions>
              <celldesigner:catalyzed reaction=\"re159\"/>
              <celldesigner:catalyzed reaction=\"re160\"/>
              <celldesigner:catalyzed reaction=\"re161\"/>
              <celldesigner:catalyzed reaction=\"re162\"/>
              <celldesigner:catalyzed reaction=\"re163\"/>
            </celldesigner:listOfCatalyzedReactions>
          </celldesigner:extension>
        </annotation>"));

    initial equation
        elmt_c4 = 1.0;
        elmt_s123_conc = 36.7;


    equation
        assert(elmt_c4 >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_c4) = 0;
        elmt_s123 = elmt_s123_conc;
        der(elmt_s123_amount) = ((elmt_re175 * elmt_product559) + (- (elmt_re182 * elmt_reactant560)));

    algorithm
        elmt_s123_conc := elmt_s123_amount / elmt_c4;
end Class_elmt_c4;
