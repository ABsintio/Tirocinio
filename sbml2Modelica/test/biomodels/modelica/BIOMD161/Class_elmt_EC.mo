within BIOMD161;
class Class_elmt_EC

    Real elmt_EC(unit = "") "EC";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_EGF_EC_conc(unit = "");
    Real elmt_EGF_EC_amount(unit = "");
    Real elmt_EGF_EC(unit = "") "";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <Compound Name=\"EGF\"/>
      </VCellInfo>
                            </annotation>"));

    initial equation
        elmt_EC = 1.0;
        elmt_EGF_EC_conc = 4.02136;


    equation
        assert(elmt_EC >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_EC) = 0;
        elmt_EGF_EC = elmt_EGF_EC_conc;
        der(elmt_EGF_EC_amount) = 0;

    algorithm
        elmt_EGF_EC_conc := elmt_EGF_EC_amount / elmt_EC;
end Class_elmt_EC;
