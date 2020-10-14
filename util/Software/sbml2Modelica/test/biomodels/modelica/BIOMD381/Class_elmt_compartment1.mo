within BIOMD381;
class Class_elmt_compartment1

    input Real elmt_k;
    input Real elmt_Amax;
    input Real elmt_J;
    input Real elmt_e2;
    input Real elmt_f1;
    input Real elmt_e1;
    input Real elmt_f2;
    input Real elmt_c;
    input Real elmt_d;
    input Real elmt_b;
    input Real elmt_W;
    input Real elmt_alpha;
    input Real elmt_delta;
    input Real elmt_kc;

    Real elmt_compartment1(unit = "") "compartment1";
    Real elmt_Cy_conc(unit = "");
    Real elmt_Cy_amount(unit = "");
    Real elmt_Cy(unit = "") "Cy";
    Real elmt_M_conc(unit = "");
    Real elmt_M_amount(unit = "");
    Real elmt_M(unit = "") "M";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Ma_conc(unit = "");
    Real elmt_Ma_amount(unit = "");
    Real elmt_Ma(unit = "") "Ma";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Ba_conc(unit = "");
    Real elmt_Ba_amount(unit = "");
    Real elmt_Ba(unit = "") "Ba";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Bn_conc(unit = "");
    Real elmt_Bn_amount(unit = "");
    Real elmt_Bn(unit = "") "Bn";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_compartment1 = 1.0;
        elmt_Cy_conc = 0.0;
        elmt_M_conc = 477000.0;
        elmt_Ma_conc = 0.0;
        elmt_Ba_conc = 0.0;
        elmt_Bn_conc = 0.0;


    equation
        assert(elmt_compartment1 >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment1) = 0;
        elmt_Cy = elmt_Cy_conc;
        elmt_M = elmt_M_conc;
        elmt_Ma = elmt_Ma_conc;
        elmt_Ba = elmt_Ba_conc;
        elmt_Bn = elmt_Bn_conc;
        der(elmt_Cy_amount / elmt_compartment1) = ((elmt_alpha * elmt_Bn * elmt_Ma) - (elmt_delta * elmt_Cy));
        der(elmt_M_amount / elmt_compartment1) = ((((elmt_J + ((elmt_k + elmt_b) * elmt_Ma)) - (elmt_c * elmt_M)) - (elmt_f1 * elmt_M * elmt_Ba)) - (elmt_e1 * elmt_M * (elmt_M + elmt_Ma)));
        der(elmt_Ma_amount / elmt_compartment1) = (((elmt_f1 * elmt_M * elmt_Ba) - (elmt_k * elmt_Ma)) - (elmt_e2 * elmt_Ma * (elmt_M + elmt_Ma)));
        der(elmt_Ba_amount / elmt_compartment1) = ((elmt_W + ((elmt_Amax * elmt_Cy) / (elmt_kc + elmt_Cy))) - (((elmt_f1 * elmt_M) + (elmt_f2 * elmt_Ma) + elmt_d) * elmt_Ba));
        der(elmt_Bn_amount / elmt_compartment1) = ((elmt_d * elmt_Ba) - (((elmt_f1 * elmt_M) + (elmt_f2 * elmt_Ma)) * elmt_Bn));

    algorithm
        elmt_Cy_conc := elmt_Cy_amount / elmt_compartment1;
        elmt_M_conc := elmt_M_amount / elmt_compartment1;
        elmt_Ma_conc := elmt_Ma_amount / elmt_compartment1;
        elmt_Ba_conc := elmt_Ba_amount / elmt_compartment1;
        elmt_Bn_conc := elmt_Bn_amount / elmt_compartment1;
end Class_elmt_compartment1;
