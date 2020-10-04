within BIOMD317;
class Reactions

    input Real elmt_X;
    input Real elmt_Z3;
    input Real elmt_Z1;
    input Real elmt_Z2;

    Real elmt_r5(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_r5_elmt_T3(unit "") = 0.8 "";
    Real elmt_product4 "";
    Real elmt_r6(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_r6_elmt_a(unit "") = 1.0 "";
    Real elmt_reactant5 "";
    Real elmt_r3(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_r3_elmt_T2(unit "") = 0.5 "";
    Real elmt_product2 "";
    Real elmt_r4(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_r4_elmt_a(unit "") = 1.0 "";
    Real elmt_reactant3 "";
    Real elmt_r1(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_r1_elmt_T1(unit "") = 0.1 "";
    Real elmt_product0 "";
    Real elmt_r2(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_r2_elmt_a(unit "") = 1.0 "";
    Real elmt_reactant1 "";


    initial equation
        elmt_reactant1 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_product0 = 1.0;
        elmt_product4 = 1.0;
        elmt_product2 = 1.0;


    equation
        elmt_r5 = ((if (elmt_X >= elmt_r5_elmt_T3) then 1.0 else 0.0));
        elmt_r6 = (elmt_r6_elmt_a * elmt_Z3);
        elmt_r3 = ((if (elmt_X >= elmt_r3_elmt_T2) then 1.0 else 0.0));
        elmt_r4 = (elmt_r4_elmt_a * elmt_Z2);
        elmt_r1 = ((if (elmt_X >= elmt_r1_elmt_T1) then 1.0 else 0.0));
        elmt_r2 = (elmt_r2_elmt_a * elmt_Z1);
        der(elmt_reactant1) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_product0) = 0;
        der(elmt_product4) = 0;
        der(elmt_product2) = 0;

end Reactions;
