within BIOMD579;
class Class_elmt_c3

    input Real elmt_re73;
    input Real elmt_re74;
    input Real elmt_re159;
    input Real elmt_product290;
    input Real elmt_product278;
    input Real elmt_product157;
    input Real elmt_product159;
    input Real elmt_product274;
    input Real elmt_reactant270;
    input Real elmt_product155;
    input Real elmt_product282;
    input Real elmt_re165;
    input Real elmt_reactant264;
    input Real elmt_re166;
    input Real elmt_reactant262;
    input Real elmt_re167;
    input Real elmt_re168;
    input Real elmt_re161;
    input Real elmt_re162;
    input Real elmt_re163;
    input Real elmt_re164;
    input Real elmt_re72;
    input Real elmt_product286;
    input Real elmt_re160;
    input Real elmt_reactant268;
    input Real elmt_reactant266;

    Real elmt_c3(unit = "m3.0") "IMS";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>IMS</celldesigner:name>
          </celldesigner:extension>
        </annotation>"));
    Real elmt_s129_conc(unit = "m-702.0.");
    Real elmt_s129_amount(unit = "m-699.0.");
    Real elmt_s129(unit = "m-702.0.") "C20car_ims";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
            <celldesigner:speciesIdentity>
              <celldesigner:class>SIMPLE_MOLECULE</celldesigner:class>
              <celldesigner:name>C20car_ims</celldesigner:name>
            </celldesigner:speciesIdentity>
          </celldesigner:extension>
        </annotation>"));
    Real elmt_s127_conc(unit = "m-699.0.");
    Real elmt_s127_amount(unit = "m-696.0.");
    Real elmt_s127(unit = "m-699.0.") "C22car_ims";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
            <celldesigner:speciesIdentity>
              <celldesigner:class>SIMPLE_MOLECULE</celldesigner:class>
              <celldesigner:name>C22car_ims</celldesigner:name>
            </celldesigner:speciesIdentity>
          </celldesigner:extension>
        </annotation>"));
    Real elmt_s389_conc(unit = "m-714.0.");
    Real elmt_s389_amount(unit = "m-711.0.");
    Real elmt_s389(unit = "m-714.0.") "2H+";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
            <celldesigner:speciesIdentity>
              <celldesigner:class>ION</celldesigner:class>
              <celldesigner:name>2H+</celldesigner:name>
            </celldesigner:speciesIdentity>
          </celldesigner:extension>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_s400_conc(unit = "m-717.0.");
    Real elmt_s400_amount(unit = "m-714.0.");
    Real elmt_s400(unit = "m-717.0.") "Creatine Kinase";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
            <celldesigner:speciesIdentity>
              <celldesigner:class>PROTEIN</celldesigner:class>
              <celldesigner:proteinReference>pr97</celldesigner:proteinReference>
            </celldesigner:speciesIdentity>
            <celldesigner:listOfCatalyzedReactions>
              <celldesigner:catalyzed reaction=\"re175\"/>
            </celldesigner:listOfCatalyzedReactions>
          </celldesigner:extension>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_s135_conc(unit = "m-711.0.");
    Real elmt_s135_amount(unit = "m-708.0.");
    Real elmt_s135(unit = "m-711.0.") "C14car_ims";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
            <celldesigner:speciesIdentity>
              <celldesigner:class>SIMPLE_MOLECULE</celldesigner:class>
              <celldesigner:name>C14car_ims</celldesigner:name>
            </celldesigner:speciesIdentity>
          </celldesigner:extension>
        </annotation>"));
    Real elmt_s133_conc(unit = "m-708.0.");
    Real elmt_s133_amount(unit = "m-705.0.");
    Real elmt_s133(unit = "m-708.0.") "C16car_ims";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
            <celldesigner:speciesIdentity>
              <celldesigner:class>SIMPLE_MOLECULE</celldesigner:class>
              <celldesigner:name>C16car_ims</celldesigner:name>
            </celldesigner:speciesIdentity>
          </celldesigner:extension>
        </annotation>"));
    Real elmt_s131_conc(unit = "m-705.0.");
    Real elmt_s131_amount(unit = "m-702.0.");
    Real elmt_s131(unit = "m-705.0.") "C18car_ims";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
            <celldesigner:speciesIdentity>
              <celldesigner:class>SIMPLE_MOLECULE</celldesigner:class>
              <celldesigner:name>C18car_ims</celldesigner:name>
            </celldesigner:speciesIdentity>
          </celldesigner:extension>
        </annotation>"));

    initial equation
        elmt_c3 = 1.0;
        elmt_s129_conc = (0.0 / elmt_c3);
        elmt_s127_conc = (0.0 / elmt_c3);
        elmt_s389_conc = (0.0 / elmt_c3);
        elmt_s400_conc = (0.0 / elmt_c3);
        elmt_s135_conc = (0.0 / elmt_c3);
        elmt_s133_conc = (0.0 / elmt_c3);
        elmt_s131_conc = (0.0 / elmt_c3);


    equation
        assert(elmt_c3 >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_c3) = 0;
        elmt_s129 = elmt_s129_conc;
        elmt_s127 = elmt_s127_conc;
        elmt_s389 = elmt_s389_conc;
        elmt_s400 = elmt_s400_conc;
        elmt_s135 = elmt_s135_conc;
        elmt_s133 = elmt_s133_conc;
        elmt_s131 = elmt_s131_conc;
        der(elmt_s400_amount) = 0;
        der(elmt_s129_amount) = ((- (elmt_re165 * elmt_reactant270)) + (elmt_re160 * elmt_product278));
        der(elmt_s127_amount) = ((elmt_re159 * elmt_product274) + (- (elmt_re164 * elmt_reactant262)));
        der(elmt_s389_amount) = ((elmt_re73 * elmt_product157) + (elmt_re74 * elmt_product159) + (elmt_re72 * elmt_product155));
        der(elmt_s135_amount) = ((- (elmt_re168 * elmt_reactant264)) + (elmt_re163 * elmt_product290));
        der(elmt_s133_amount) = ((- (elmt_re167 * elmt_reactant266)) + (elmt_re162 * elmt_product286));
        der(elmt_s131_amount) = ((- (elmt_re166 * elmt_reactant268)) + (elmt_re161 * elmt_product282));

    algorithm
        elmt_s129_conc := elmt_s129_amount / elmt_c3;
        elmt_s127_conc := elmt_s127_amount / elmt_c3;
        elmt_s389_conc := elmt_s389_amount / elmt_c3;
        elmt_s400_conc := elmt_s400_amount / elmt_c3;
        elmt_s135_conc := elmt_s135_amount / elmt_c3;
        elmt_s133_conc := elmt_s133_amount / elmt_c3;
        elmt_s131_conc := elmt_s131_amount / elmt_c3;
end Class_elmt_c3;
