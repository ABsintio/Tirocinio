within BIOMD389;
class Class_elmt_vacuole

    input Real elmt_Diffu;
    input Real elmt_product57;

    Real elmt_vacuole(unit = "") "vacuole";
    Real elmt_SucV_conc(unit = "");
    Real elmt_SucV_amount(unit = "");
    Real elmt_SucV(unit = "") "SucV";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_vacuole = 1.0;
        elmt_SucV_conc = 77.31;


    equation
        assert(elmt_vacuole >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_vacuole) = 0;
        elmt_SucV = elmt_SucV_conc;
        der(elmt_SucV_amount) = (elmt_Diffu * elmt_product57);

    algorithm
        elmt_SucV_conc := elmt_SucV_amount / elmt_vacuole;
end Class_elmt_vacuole;
