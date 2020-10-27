within S2MBIOMDx8016;
class Class_elmt_compartment_0000004


    input Real elmt_rPn2;
    input Real elmt_reactant14;
    input Real elmt_product13;
    input Real elmt_rP2n;

    Real elmt_compartment_0000004(unit = "") "NUCLEUS";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Pn_conc(unit = "");
    Real elmt_Pn_amount(unit = "");
    Real elmt_Pn(unit = "") "nuclear PER";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
//<notes>
//          <body xmlns="http://www.w3.org/1999/xhtml">
//                <p>Initial condition changed from amount to concentration as per article. Bruce Shapiro</p>
//                    </body>
//          
//        </notes>

    initial equation
        elmt_compartment_0000004 = 1.0E-15;
        elmt_Pn_conc = 0.25;


    equation
        assert(elmt_compartment_0000004 >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment_0000004) = 0;
        elmt_Pn = elmt_Pn_conc;
        der(elmt_Pn_amount) = ((- (elmt_rPn2 * elmt_reactant14)) + (elmt_rP2n * elmt_product13));

    algorithm
        elmt_Pn_conc := elmt_Pn_amount / elmt_compartment_0000004;
end Class_elmt_compartment_0000004;
