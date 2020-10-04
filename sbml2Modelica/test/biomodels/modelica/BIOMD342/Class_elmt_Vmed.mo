within BIOMD342;
class Class_elmt_Vmed

    input Real elmt_product63;
    input Real elmt_reactant62;
    input Real elmt_re9;
    input Real elmt_re29;
    input Real elmt_reactant16;

    input Boolean elmt_single_pulse_TGF_beta_washout;

    input Real assign_elmt_TGF_beta_ex;

    Real elmt_Vmed(unit = "m3.0") "Medium";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_TGF_beta_ns_conc(unit = "m-6.0.");
    Real elmt_TGF_beta_ns_amount(unit = "m-3.0.");
    Real elmt_TGF_beta_ns(unit = "m-6.0.") "TGF_beta_ns";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_TGF_beta_ex_conc(unit = "m-3.0.");
    Real elmt_TGF_beta_ex_amount(unit = "");
    Real elmt_TGF_beta_ex(unit = "m-3.0.") "TGF_beta_ex";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_TGF_beta_ns_conc = 0.0;
        elmt_TGF_beta_ex_conc = 0.05;


    equation
        assert(elmt_Vmed >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        elmt_Vmed = (0.002 / (1000000.0 * exp(((log(1.45) * time) / 1440.0))));
        elmt_TGF_beta_ns = elmt_TGF_beta_ns_conc;
        elmt_TGF_beta_ex = elmt_TGF_beta_ex_conc;
        der(elmt_TGF_beta_ns_amount) = (elmt_re29 * elmt_product63);
        der(elmt_TGF_beta_ex_amount) = ((- (elmt_re29 * elmt_reactant62)) + (- (elmt_re9 * elmt_reactant16)));

        when elmt_single_pulse_TGF_beta_washout then
            reinit(elmt_TGF_beta_ex_amount, assign_elmt_TGF_beta_ex * pre(elmt_Vmed));
        end when;
    algorithm
        elmt_TGF_beta_ns_conc := elmt_TGF_beta_ns_amount / elmt_Vmed;
        elmt_TGF_beta_ex_conc := elmt_TGF_beta_ex_amount / elmt_Vmed;
end Class_elmt_Vmed;
