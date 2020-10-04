within BIOMD110;
class Class_elmt_cell

    input Real elmt_reaction_0000022;
    input Real elmt_reaction_0000021;
    input Real elmt_reaction_0000020;
    input Real elmt_product29;
    input Real elmt_reaction_0000023;
    input Real elmt_reaction_0000019;
    input Real elmt_reaction_0000018;
    input Real elmt_reaction_0000017;
    input Real elmt_reaction_0000016;
    input Real elmt_reactant15;
    input Real elmt_reactant16;
    input Real elmt_reactant11;
    input Real elmt_reaction_0000011;
    input Real elmt_reaction_0000010;
    input Real elmt_reaction_0000015;
    input Real elmt_reaction_0000014;
    input Real elmt_reaction_0000013;
    input Real elmt_reaction_0000007;
    input Real elmt_reaction_0000006;
    input Real elmt_reaction_0000005;
    input Real elmt_reactant20;
    input Real elmt_product12;
    input Real elmt_product10;
    input Real elmt_reactant25;
    input Real elmt_reactant26;
    input Real elmt_reactant27;
    input Real elmt_reactant28;
    input Real elmt_reactant21;
    input Real elmt_reactant22;
    input Real elmt_reactant24;
    input Real elmt_reactant18;
    input Real elmt_reaction_0000004;
    input Real elmt_reaction_0000003;
    input Real elmt_reaction_0000002;
    input Real elmt_reaction_0000001;
    input Real elmt_product9;
    input Real elmt_reactant1;
    input Real elmt_reactant4;
    input Real elmt_reactant30;
    input Real elmt_product7;
    input Real elmt_reactant3;
    input Real elmt_reactant6;
    input Real elmt_product23;
    input Real elmt_reactant8;
    input Real elmt_product0;
    input Real elmt_reaction_000008;
    input Real elmt_product5;
    input Real elmt_reaction_000009;
    input Real elmt_product2;
    input Real elmt_product14;
    input Real elmt_product13;
    input Real elmt_product19;
    input Real elmt_product17;

    Real elmt_cell(unit = "") "cell";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_totalCyclin_conc(unit = "");
    Real elmt_totalCyclin_amount(unit = "");
    Real elmt_totalCyclin(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_i_conc(unit = "");
    Real elmt_i_amount(unit = "");
    Real elmt_i(unit = "") "Free CKI";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_c0_conc(unit = "");
    Real elmt_c0_amount(unit = "");
    Real elmt_c0(unit = "") "Total CDK";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_c_conc(unit = "");
    Real elmt_c_amount(unit = "");
    Real elmt_c(unit = "") "Free CDK";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_z0_conc(unit = "");
    Real elmt_z0_amount(unit = "");
    Real elmt_z0(unit = "") "Unphosphorylated CDC25";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_ix_conc(unit = "");
    Real elmt_ix_amount(unit = "");
    Real elmt_ix(unit = "") "Cyclin:CDK:CKI complex with CKI unphosphorylated";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_y_conc(unit = "");
    Real elmt_y_amount(unit = "");
    Real elmt_y(unit = "") "Free cyclin";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_ixp_conc(unit = "");
    Real elmt_ixp_amount(unit = "");
    Real elmt_ixp(unit = "") "Cyclin:CDK:CKI complex with CKI phosphorylated";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_x_conc(unit = "");
    Real elmt_x_amount(unit = "");
    Real elmt_x(unit = "") "Active Cyclin:CDK complex";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_u_conc(unit = "");
    Real elmt_u_amount(unit = "");
    Real elmt_u(unit = "") "Active SKP2 or APC";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_x1_conc(unit = "");
    Real elmt_x1_amount(unit = "");
    Real elmt_x1(unit = "") " Inactive Cyclin:CDK complex";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_w0_conc(unit = "");
    Real elmt_w0_amount(unit = "");
    Real elmt_w0(unit = "") "Unphosphorylated wee1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_w1_conc(unit = "");
    Real elmt_w1_amount(unit = "");
    Real elmt_w1(unit = "") "phosphorylated wee1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_z1_conc(unit = "");
    Real elmt_z1_amount(unit = "");
    Real elmt_z1(unit = "") "One-site phosphorylated CDC25";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_z2_conc(unit = "");
    Real elmt_z2_amount(unit = "");
    Real elmt_z2(unit = "") "Two-site phosphorylated CDC25";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_cell = 1.0;
        elmt_i_conc = 0.0;
        elmt_c0_conc = 200.0;
        elmt_z0_conc = 0.0;
        elmt_ix_conc = 0.0;
        elmt_y_conc = 0.0;
        elmt_ixp_conc = 0.0;
        elmt_x_conc = 0.1;
        elmt_u_conc = 0.0;
        elmt_x1_conc = 0.1;
        elmt_w0_conc = 0.0;
        elmt_w1_conc = 0.0;
        elmt_z1_conc = 0.0;
        elmt_z2_conc = 0.0;


    equation
        assert(elmt_cell >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cell) = 0;
        elmt_totalCyclin = elmt_totalCyclin_conc;
        elmt_i = elmt_i_conc;
        elmt_c0 = elmt_c0_conc;
        elmt_c = elmt_c_conc;
        elmt_z0 = elmt_z0_conc;
        elmt_ix = elmt_ix_conc;
        elmt_y = elmt_y_conc;
        elmt_ixp = elmt_ixp_conc;
        elmt_x = elmt_x_conc;
        elmt_u = elmt_u_conc;
        elmt_x1 = elmt_x1_conc;
        elmt_w0 = elmt_w0_conc;
        elmt_w1 = elmt_w1_conc;
        elmt_z1 = elmt_z1_conc;
        elmt_z2 = elmt_z2_conc;
        elmt_totalCyclin_amount = (elmt_x + elmt_x1 + elmt_y) * elmt_cell;
        der(elmt_c0_amount) = 0;
        elmt_c_amount = ((elmt_c0 - (elmt_x + elmt_x1 + elmt_ix + elmt_ixp)) / (elmt_c0 * elmt_cell)) * elmt_cell;
        der(elmt_z0_amount) = ((- (elmt_reaction_0000019 * elmt_reactant26)) + (elmt_reaction_0000022 * elmt_product29) + (- (elmt_reaction_0000004 * elmt_reactant4)));
        der(elmt_i_amount) = ((- (elmt_reaction_0000011 * elmt_reactant15)) + (elmt_reaction_0000010 * elmt_product14) + (- (elmt_reaction_0000015 * elmt_reactant21)));
        der(elmt_ix_amount) = ((elmt_reaction_0000011 * elmt_product17) + (- (elmt_reaction_0000014 * elmt_reactant18)));
        der(elmt_y_amount) = ((- (elmt_reaction_0000003 * elmt_reactant3)) + (- (elmt_reaction_0000002 * elmt_reactant1)) + (elmt_reaction_0000001 * elmt_product0));
        der(elmt_ixp_amount) = ((- (elmt_reaction_0000016 * elmt_reactant22)) + (elmt_reaction_0000014 * elmt_product19));
        der(elmt_x_amount) = ((- (elmt_reaction_0000005 * elmt_reactant6)) + (elmt_reaction_0000016 * elmt_product23) + (- (elmt_reaction_0000011 * elmt_reactant16)) + (- (elmt_reaction_0000023 * elmt_reactant30)));
        der(elmt_u_amount) = ((elmt_reaction_000009 * elmt_product13) + (- (elmt_reaction_0000013 * elmt_reactant20)));
        der(elmt_x1_amount) = ((elmt_reaction_0000005 * elmt_product7) + (elmt_reaction_0000002 * elmt_product2));
        der(elmt_w0_amount) = ((elmt_reaction_0000007 * elmt_product10) + (- (elmt_reaction_0000017 * elmt_reactant24)) + (- (elmt_reaction_000008 * elmt_reactant11)));
        der(elmt_w1_amount) = ((- (elmt_reaction_0000018 * elmt_reactant25)) + (elmt_reaction_000008 * elmt_product12));
        der(elmt_z1_amount) = ((- (elmt_reaction_0000006 * elmt_reactant8)) + (- (elmt_reaction_0000020 * elmt_reactant27)) + (elmt_reaction_0000004 * elmt_product5));
        der(elmt_z2_amount) = ((elmt_reaction_0000006 * elmt_product9) + (- (elmt_reaction_0000021 * elmt_reactant28)));

    algorithm
        elmt_totalCyclin_conc := elmt_totalCyclin_amount / elmt_cell;
        elmt_i_conc := elmt_i_amount / elmt_cell;
        elmt_c0_conc := elmt_c0_amount / elmt_cell;
        elmt_c_conc := elmt_c_amount / elmt_cell;
        elmt_z0_conc := elmt_z0_amount / elmt_cell;
        elmt_ix_conc := elmt_ix_amount / elmt_cell;
        elmt_y_conc := elmt_y_amount / elmt_cell;
        elmt_ixp_conc := elmt_ixp_amount / elmt_cell;
        elmt_x_conc := elmt_x_amount / elmt_cell;
        elmt_u_conc := elmt_u_amount / elmt_cell;
        elmt_x1_conc := elmt_x1_amount / elmt_cell;
        elmt_w0_conc := elmt_w0_amount / elmt_cell;
        elmt_w1_conc := elmt_w1_amount / elmt_cell;
        elmt_z1_conc := elmt_z1_amount / elmt_cell;
        elmt_z2_conc := elmt_z2_amount / elmt_cell;
end Class_elmt_cell;
