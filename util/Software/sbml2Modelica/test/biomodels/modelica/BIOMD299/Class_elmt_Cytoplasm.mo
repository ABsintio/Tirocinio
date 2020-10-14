within BIOMD299;
class Class_elmt_Cytoplasm

    input Real elmt_k1;
    input Real elmt_M;
    input Real elmt_vd;
    input Real elmt_Kd;
    input Real elmt_k2;
    input Real elmt_ks;
    input Real elmt_FN;

    Real elmt_Cytoplasm(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_FC_conc(unit = "");
    Real elmt_FC_amount(unit = "");
    Real elmt_FC(unit = "") "FC";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_Cytoplasm = 1.0;
        elmt_FC_conc = 0.1;


    equation
        assert(elmt_Cytoplasm >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Cytoplasm) = 0;
        elmt_FC = elmt_FC_conc;
        der(elmt_FC_amount / elmt_Cytoplasm) = (((elmt_ks * elmt_M) + (elmt_k2 * elmt_FN)) - ((elmt_vd * (elmt_FC / (elmt_Kd + elmt_FC))) + (elmt_k1 * elmt_FC)));

    algorithm
        elmt_FC_conc := elmt_FC_amount / elmt_Cytoplasm;
end Class_elmt_Cytoplasm;
