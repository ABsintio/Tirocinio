within BIOMD408;
class Class_elmt_CYT

    input Real elmt_product9;
    input Real elmt_J_diff_Pi;
    input Real elmt_product12;
    input Real elmt_product23;
    input Real elmt_product21;
    input Real elmt_product10;
    input Real elmt_reactant8;
    input Real elmt_reactant7;
    input Real elmt_J_diff_ATP;
    input Real elmt_reactant11;
    input Real elmt_J_diff_Cr;
    input Real elmt_J_diff_PCr;
    input Real elmt_J_CK_MM;
    input Real elmt_product15;
    input Real elmt_product13;
    input Real elmt_J_diff_ADP;
    input Real elmt_product19;
    input Real elmt_product17;
    input Real elmt_Jhyd_reaction;

    Real elmt_CYT(unit = "") "CYT";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Cr_conc(unit = "");
    Real elmt_Cr_amount(unit = "");
    Real elmt_Cr(unit = "") "Cr";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_PCr_conc(unit = "");
    Real elmt_PCr_amount(unit = "");
    Real elmt_PCr(unit = "") "PCr";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_ADP_conc(unit = "");
    Real elmt_ADP_amount(unit = "");
    Real elmt_ADP(unit = "") "ADP";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_ATP_conc(unit = "");
    Real elmt_ATP_amount(unit = "");
    Real elmt_ATP(unit = "") "ATP";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_P_i_conc(unit = "");
    Real elmt_P_i_amount(unit = "");
    Real elmt_P_i(unit = "") "P_i";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_CYT = 0.75;
        elmt_Cr_conc = 9789.0;
        elmt_PCr_conc = 5710.0;
        elmt_ADP_conc = 64.0;
        elmt_ATP_conc = 5601.0;
        elmt_P_i_conc = 912.0;


    equation
        assert(elmt_CYT >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_CYT) = 0;
        elmt_Cr = elmt_Cr_conc;
        elmt_PCr = elmt_PCr_conc;
        elmt_ADP = elmt_ADP_conc;
        elmt_ATP = elmt_ATP_conc;
        elmt_P_i = elmt_P_i_conc;
        der(elmt_Cr_amount) = ((- (elmt_J_CK_MM * elmt_reactant7)) + (elmt_J_diff_Cr * elmt_product17));
        der(elmt_PCr_amount) = ((elmt_J_CK_MM * elmt_product9) + (elmt_J_diff_PCr * elmt_product21));
        der(elmt_ADP_amount) = ((elmt_J_CK_MM * elmt_product10) + (elmt_J_diff_ADP * elmt_product19) + (elmt_Jhyd_reaction * elmt_product12));
        der(elmt_ATP_amount) = ((- (elmt_J_CK_MM * elmt_reactant8)) + (elmt_J_diff_ATP * elmt_product23) + (- (elmt_Jhyd_reaction * elmt_reactant11)));
        der(elmt_P_i_amount) = ((elmt_J_diff_Pi * elmt_product15) + (elmt_Jhyd_reaction * elmt_product13));

    algorithm
        elmt_Cr_conc := elmt_Cr_amount / elmt_CYT;
        elmt_PCr_conc := elmt_PCr_amount / elmt_CYT;
        elmt_ADP_conc := elmt_ADP_amount / elmt_CYT;
        elmt_ATP_conc := elmt_ATP_amount / elmt_CYT;
        elmt_P_i_conc := elmt_P_i_amount / elmt_CYT;
end Class_elmt_CYT;
