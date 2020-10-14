within BIOMD407;
class Class_elmt_extracellular

    input Real elmt_reactant3;
    input Real elmt_reactant18;
    input Real elmt_reactant19;
    input Real elmt_reactant8;
    input Real elmt_J18;
    input Real elmt_product20;
    input Real elmt_J19;
    input Real elmt_product1;
    input Real elmt_J8;
    input Real elmt_reactant21;
    input Real elmt_J3;
    input Real elmt_J1;

    Real elmt_extracellular(unit = "m3.0") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_TNF_TNFR_E_amount(unit = "");
    Real elmt_TNF_TNFR_E_conc(unit = "m-3.0.");
    Real elmt_TNF_TNFR_E(unit = "") "TNF:TNFR_E";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_TNFR_E_amount(unit = "");
    Real elmt_TNFR_E_conc(unit = "m-3.0.");
    Real elmt_TNFR_E(unit = "") "TNFR_E";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_TNF_E_amount(unit = "");
    Real elmt_TNF_E_conc(unit = "m-3.0.");
    Real elmt_TNF_E(unit = "") "TNF_E";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_extracellular = 1344.0;
        elmt_TNF_TNFR_E_amount = 0.0;
        elmt_TNFR_E_amount = 0.005;
        elmt_TNF_E_amount = 0.2688;


    equation
        assert(elmt_extracellular >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_extracellular) = 0;
        elmt_TNF_TNFR_E = elmt_TNF_TNFR_E_amount;
        elmt_TNFR_E = elmt_TNFR_E_amount;
        elmt_TNF_E = elmt_TNF_E_amount;
        der(elmt_TNF_TNFR_E_amount) = ((- (elmt_J8 * elmt_reactant8)) + (elmt_J18 * elmt_product20) + (- (elmt_J19 * elmt_reactant21)));
        der(elmt_TNFR_E_amount) = ((- (elmt_J3 * elmt_reactant3)) + (elmt_J1 * elmt_product1) + (- (elmt_J18 * elmt_reactant18)));
        der(elmt_TNF_E_amount) = (- (elmt_J18 * elmt_reactant19));

    algorithm
        elmt_TNF_TNFR_E_conc := elmt_TNF_TNFR_E_amount / elmt_extracellular;
        elmt_TNFR_E_conc := elmt_TNFR_E_amount / elmt_extracellular;
        elmt_TNF_E_conc := elmt_TNF_E_amount / elmt_extracellular;
end Class_elmt_extracellular;
