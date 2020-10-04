within BIOMD268;
class Class_elmt_cell

    input Real elmt_reactant52;
    input Real elmt_V_GNMT;
    input Real elmt_product109;
    input Real elmt_product58;
    input Real elmt_V_BHMT;
    input Real elmt_product117;
    input Real elmt_V_SDH;
    input Real elmt_V_DMGD;
    input Real elmt_reactant56;

    Real elmt_cell(unit = "m3.0") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_Fol_conc(unit = "m-123.0.");
    Real elmt_Fol_amount(unit = "m-120.0.");
    Real elmt_Fol(unit = "m-123.0.") "Folate";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_src_conc(unit = "m-129.0.");
    Real elmt_src_amount(unit = "m-126.0.");
    Real elmt_src(unit = "m-129.0.") "Sarcosine";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_HCHO_conc(unit = "m-126.0.");
    Real elmt_HCHO_amount(unit = "m-123.0.");
    Real elmt_HCHO(unit = "m-126.0.") "Formaldehyde";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_dmg_conc(unit = "m-132.0.");
    Real elmt_dmg_amount(unit = "m-129.0.");
    Real elmt_dmg(unit = "m-132.0.") "Dimethylglycine";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_cell = 1.0;
        elmt_Fol_conc = 20.1;
        elmt_src_conc = 9.16245914628594;
        elmt_HCHO_conc = 500.0;
        elmt_dmg_conc = 0.707382712261505;


    equation
        assert(elmt_cell >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cell) = 0;
        elmt_Fol = elmt_Fol_conc;
        elmt_src = elmt_src_conc;
        elmt_HCHO = elmt_HCHO_conc;
        elmt_dmg = elmt_dmg_conc;
        der(elmt_Fol_amount) = 0;
        der(elmt_HCHO_amount) = 0;
        der(elmt_src_amount) = ((elmt_V_GNMT * elmt_product117) + (- (elmt_V_SDH * elmt_reactant52)) + (elmt_V_DMGD * elmt_product58));
        der(elmt_dmg_amount) = ((- (elmt_V_DMGD * elmt_reactant56)) + (elmt_V_BHMT * elmt_product109));

    algorithm
        elmt_Fol_conc := elmt_Fol_amount / elmt_cell;
        elmt_src_conc := elmt_src_amount / elmt_cell;
        elmt_HCHO_conc := elmt_HCHO_amount / elmt_cell;
        elmt_dmg_conc := elmt_dmg_amount / elmt_cell;
end Class_elmt_cell;
