within BIOMD162;
class Class_elmt_ER

    Real elmt_ER(unit = "") "ER";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Ca_D_ER_conc(unit = "");
    Real elmt_Ca_D_ER_amount(unit = "");
    Real elmt_Ca_D_ER(unit = "") "";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <Compound Name=\"Ca_D\"/>
        </VCellInfo>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Ca_ER_conc(unit = "");
    Real elmt_Ca_ER_amount(unit = "");
    Real elmt_Ca_ER(unit = "") "";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <Compound Name=\"Ca\"/>
        </VCellInfo>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_ER = 2500.0;
        elmt_Ca_D_ER_conc = 240800.0;
        elmt_Ca_ER_conc = 240800.0;


    equation
        assert(elmt_ER >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_ER) = 0;
        elmt_Ca_D_ER = elmt_Ca_D_ER_conc;
        elmt_Ca_ER = elmt_Ca_ER_conc;
        der(elmt_Ca_D_ER_amount) = 0;
        der(elmt_Ca_ER_amount) = 0;

    algorithm
        elmt_Ca_D_ER_conc := elmt_Ca_D_ER_amount / elmt_ER;
        elmt_Ca_ER_conc := elmt_Ca_ER_amount / elmt_ER;
end Class_elmt_ER;
