within BIOMD244;
class Class_elmt_Environment

    input Real elmt_product134;
    input Real elmt_product137;
    input Real elmt_env_GLCup;
    input Real elmt_env_ACTup;
    input Real elmt_env_growth;
    input Real elmt_reactant136;
    input Real elmt_reactant135;
    input Real elmt_env_ACTex;

    input Boolean elmt_event1;
    input Boolean elmt_event0;

    input Real assign_elmt_ACT;
    input Real assign_elmt_BM;
    input Real assign_elmt_GLC;

    Real elmt_Environment(unit = "m3.0") "Environment";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    Real elmt_ACT_conc(unit = ".m-3.0");
    Real elmt_ACT_amount(unit = "");
    Real elmt_ACT(unit = ".m-3.0") "ACT";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    Real elmt_BM_amount(unit = "");
    Real elmt_BM_conc(unit = "m-3.0");
    Real elmt_BM(unit = "") "BM";
    Real elmt_GLC_conc(unit = ".m-6.0");
    Real elmt_GLC_amount(unit = ".m-3.0");
    Real elmt_GLC(unit = ".m-6.0") "GLC";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));

    initial equation
        elmt_Environment = 1.0;
        elmt_ACT_conc = (0.0 / elmt_Environment);
        elmt_BM_amount = 0.03;
        elmt_GLC_conc = (4.8 / elmt_Environment);


    equation
        assert(elmt_Environment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Environment) = 0;
        elmt_ACT = elmt_ACT_conc;
        elmt_BM = elmt_BM_amount;
        elmt_GLC = elmt_GLC_conc;
        der(elmt_ACT_amount) = ((elmt_env_ACTex * elmt_product137) + (- (elmt_env_ACTup * elmt_reactant136)));
        der(elmt_BM_amount) = (elmt_env_growth * elmt_product134);
        der(elmt_GLC_amount) = (- (elmt_env_GLCup * elmt_reactant135));

        when elmt_event1 then
            reinit(elmt_ACT_amount, assign_elmt_ACT * pre(elmt_Environment));
            reinit(elmt_BM_amount, assign_elmt_BM);
            reinit(elmt_GLC_amount, assign_elmt_GLC * pre(elmt_Environment));
        end when;
        when elmt_event0 then
            reinit(elmt_ACT_amount, assign_elmt_ACT * pre(elmt_Environment));
            reinit(elmt_BM_amount, assign_elmt_BM);
            reinit(elmt_GLC_amount, assign_elmt_GLC * pre(elmt_Environment));
        end when;
    algorithm
        elmt_ACT_conc := elmt_ACT_amount / elmt_Environment;
        elmt_BM_conc := elmt_BM_amount / elmt_Environment;
        elmt_GLC_conc := elmt_GLC_amount / elmt_Environment;
end Class_elmt_Environment;
