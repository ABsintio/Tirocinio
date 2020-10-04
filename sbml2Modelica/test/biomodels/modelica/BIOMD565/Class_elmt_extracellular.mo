within BIOMD565;
class Class_elmt_extracellular

    input Real elmt_EX_CUR;
    input Real elmt_reactant95;
    input Real elmt_product94;
    input Real elmt_vPTS;
    input Real elmt_product93;
    input Real elmt_reactant90;
    input Real elmt_product77;
    input Real elmt_FER_t;
    input Real elmt_vEXTER;
    input Real elmt_CUR_t;
    input Real elmt_EX_FER;
    input Real elmt_reactant0;

    Real elmt_extracellular(unit = "m3.0") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_cglcex_conc(unit = "m-3.0.");
    Real elmt_cglcex_amount(unit = "");
    Real elmt_cglcex(unit = "m-3.0.") "Extracellular Glucose";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_fer_ext_conc(unit = "m-6.0.");
    Real elmt_fer_ext_amount(unit = "m-3.0.");
    Real elmt_fer_ext(unit = "m-6.0.") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_cur_ext_conc(unit = "m-9.0.");
    Real elmt_cur_ext_amount(unit = "m-6.0.");
    Real elmt_cur_ext(unit = "m-9.0.") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_extracellular = 65.0;
        elmt_cglcex_conc = 55.5;
        elmt_fer_ext_conc = 271.5;
        elmt_cur_ext_conc = 0.0;


    equation
        assert(elmt_extracellular >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_extracellular) = 0;
        elmt_cglcex = elmt_cglcex_conc;
        elmt_fer_ext = elmt_fer_ext_conc;
        elmt_cur_ext = elmt_cur_ext_conc;
        der(elmt_cglcex_amount) = ((elmt_vEXTER * elmt_product77) + (- (elmt_vPTS * elmt_reactant0)));
        der(elmt_fer_ext_amount) = ((- (elmt_FER_t * elmt_reactant90)) + (elmt_EX_FER * elmt_product94));
        der(elmt_cur_ext_amount) = ((elmt_CUR_t * elmt_product93) + (- (elmt_EX_CUR * elmt_reactant95)));

    algorithm
        elmt_cglcex_conc := elmt_cglcex_amount / elmt_extracellular;
        elmt_fer_ext_conc := elmt_fer_ext_amount / elmt_extracellular;
        elmt_cur_ext_conc := elmt_cur_ext_amount / elmt_extracellular;
end Class_elmt_extracellular;
