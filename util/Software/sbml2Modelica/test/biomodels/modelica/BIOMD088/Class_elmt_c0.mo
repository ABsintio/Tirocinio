within BIOMD088;
class Class_elmt_c0

    input Real elmt_product61;
    input Real elmt_re40;

    input Boolean elmt_event_0000001;

    input Real assign_elmt_s2;

    Real elmt_c0(unit = "m3.0") "Default";
    Real elmt_s4_conc(unit = "m-6.0.");
    Real elmt_s4_amount(unit = "m-3.0.");
    Real elmt_s4(unit = "m-6.0.") "thrombin_ligand";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    Real elmt_s2_conc(unit = "m-3.0.");
    Real elmt_s2_amount(unit = "");
    Real elmt_s2(unit = "m-3.0.") "thrombin";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    Real elmt_s267_conc(unit = "m-9.0.");
    Real elmt_s267_amount(unit = "m-6.0.");
    Real elmt_s267(unit = "m-9.0.") "Ca_super_2_plus__endsuper_ ext";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));

    initial equation
        elmt_c0 = 1.0;
        elmt_s4_conc = 0.0;
        elmt_s2_conc = 0.0;
        elmt_s267_conc = 4000.0;


    equation
        assert(elmt_c0 >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_c0) = 0;
        elmt_s4 = elmt_s4_conc;
        elmt_s2 = elmt_s2_conc;
        elmt_s267 = elmt_s267_conc;
        der(elmt_s2_amount / elmt_c0) = 0.0;
        der(elmt_s267_amount) = 0;
        der(elmt_s4_amount) = (elmt_re40 * elmt_product61);

        when elmt_event_0000001 then
            reinit(elmt_s2_amount, assign_elmt_s2 * pre(elmt_c0));
        end when;
    algorithm
        elmt_s4_conc := elmt_s4_amount / elmt_c0;
        elmt_s2_conc := elmt_s2_amount / elmt_c0;
        elmt_s267_conc := elmt_s267_amount / elmt_c0;
end Class_elmt_c0;
