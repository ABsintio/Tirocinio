within BIOMD162;
class Class_elmt_Extracellular

    Real elmt_Extracellular(unit = "") "Extracellular";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Ca_D_Extracellular_conc(unit = "");
    Real elmt_Ca_D_Extracellular_amount(unit = "");
    Real elmt_Ca_D_Extracellular(unit = "") "";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <Compound Name=\"Ca_D\"/>
        </VCellInfo>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Ca_Extracellular_conc(unit = "");
    Real elmt_Ca_Extracellular_amount(unit = "");
    Real elmt_Ca_Extracellular(unit = "") "";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <Compound Name=\"Ca\"/>
        </VCellInfo>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_Extracellular = 1.0;
        elmt_Ca_D_Extracellular_conc = 602000.0;
        elmt_Ca_Extracellular_conc = 602000.0;


    equation
        assert(elmt_Extracellular >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Extracellular) = 0;
        elmt_Ca_D_Extracellular = elmt_Ca_D_Extracellular_conc;
        elmt_Ca_Extracellular = elmt_Ca_Extracellular_conc;
        der(elmt_Ca_D_Extracellular_amount) = 0;
        der(elmt_Ca_Extracellular_amount) = 0;

    algorithm
        elmt_Ca_D_Extracellular_conc := elmt_Ca_D_Extracellular_amount / elmt_Extracellular;
        elmt_Ca_Extracellular_conc := elmt_Ca_Extracellular_amount / elmt_Extracellular;
end Class_elmt_Extracellular;
