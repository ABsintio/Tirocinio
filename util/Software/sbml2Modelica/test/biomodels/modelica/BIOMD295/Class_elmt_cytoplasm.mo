within BIOMD295;
class Class_elmt_cytoplasm

    input Real elmt_FCtrl;
    input Real elmt_reactant4;
    input Real elmt_product6;
    input Real elmt_reactant3;
    input Real elmt_FCptrl;
    input Real elmt_FCtrs;
    input Real elmt_reactant8;
    input Real elmt_reactant7;
    input Real elmt_FCptrs;
    input Real elmt_FCdeg;
    input Real elmt_FCpdeg;
    input Real elmt_product2;

    Real elmt_cytoplasm(unit = "") "cytoplasm";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_FCp_conc(unit = "");
    Real elmt_FCp_amount(unit = "");
    Real elmt_FCp(unit = "") "FCp";
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
        elmt_cytoplasm = 1.0;
        elmt_FCp_conc = 2.7123114824279;
        elmt_FC_conc = 2.46246334204771;


    equation
        assert(elmt_cytoplasm >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cytoplasm) = 0;
        elmt_FCp = elmt_FCp_conc;
        elmt_FC = elmt_FC_conc;
        der(elmt_FCp_amount) = ((elmt_FCptrl * elmt_product6) + (- (elmt_FCptrs * elmt_reactant8)) + (- (elmt_FCpdeg * elmt_reactant7)));
        der(elmt_FC_amount) = ((elmt_FCtrl * elmt_product2) + (- (elmt_FCtrs * elmt_reactant4)) + (- (elmt_FCdeg * elmt_reactant3)));

    algorithm
        elmt_FCp_conc := elmt_FCp_amount / elmt_cytoplasm;
        elmt_FC_conc := elmt_FC_amount / elmt_cytoplasm;
end Class_elmt_cytoplasm;
