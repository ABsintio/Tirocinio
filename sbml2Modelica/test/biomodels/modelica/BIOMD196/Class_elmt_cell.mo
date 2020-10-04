within BIOMD196;
class Class_elmt_cell

    input Real elmt_wee1phosphorylation;
    input Real elmt_product10;
    input Real elmt_wee1dephosphorylation;
    input Real elmt_reactant21;
    input Real elmt_c;
    input Real elmt_MPFdissociation;
    input Real elmt__2;
    input Real elmt_totAPC;
    input Real elmt_reactant9;
    input Real elmt_MPFPreMPFtransition;
    input Real elmt_totcdc25;
    input Real elmt_totwee1;
    input Real elmt_PreMPFMPFtransition;
    input Real elmt_cyclinsythesis;
    input Real elmt_product8;
    input Real elmt_reactant1;
    input Real elmt_cdc25phosphorylation;
    input Real elmt_reactant4;
    input Real elmt_product23;
    input Real elmt_reactant5;
    input Real elmt_product20;
    input Real elmt_reactant7;
    input Real elmt_cyclindegradation;
    input Real elmt_product0;
    input Real elmt_reactant17;
    input Real elmt_cdc25dephosphorylation;
    input Real elmt_reactant11;
    input Real elmt_cellmass;
    input Real elmt_product3;
    input Real elmt_APCdephosphorylation;
    input Real elmt_cyclincdkcomplexformation;
    input Real elmt_product16;
    input Real elmt_product14;

    input Boolean elmt_event0;

    input Real assign_elmt_m;

    Real elmt_cell(unit = "") "cell";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_m_conc(unit = "");
    Real elmt_m_amount(unit = "");
    Real elmt_m(unit = "") "cell_mass";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_x5_conc(unit = "");
    Real elmt_x5_amount(unit = "");
    Real elmt_x5(unit = "") "Wee1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_y6_conc(unit = "");
    Real elmt_y6_amount(unit = "");
    Real elmt_y6(unit = "") "APC";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_x6_conc(unit = "");
    Real elmt_x6_amount(unit = "");
    Real elmt_x6(unit = "") "APC_P";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Pre_MPF_conc(unit = "");
    Real elmt_Pre_MPF_amount(unit = "");
    Real elmt_Pre_MPF(unit = "") "Pre_MPF";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_x3_conc(unit = "");
    Real elmt_x3_amount(unit = "");
    Real elmt_x3(unit = "") "MPF";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_y4_conc(unit = "");
    Real elmt_y4_amount(unit = "");
    Real elmt_y4(unit = "") "cdc25";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_x4_conc(unit = "");
    Real elmt_x4_amount(unit = "");
    Real elmt_x4(unit = "") "cdc25_P";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_y5_conc(unit = "");
    Real elmt_y5_amount(unit = "");
    Real elmt_y5(unit = "") "Wee1_P";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_x1_conc(unit = "");
    Real elmt_x1_amount(unit = "");
    Real elmt_x1(unit = "") "cyclin";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_x2_conc(unit = "");
    Real elmt_x2_amount(unit = "");
    Real elmt_x2(unit = "") "free CDK";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_cell = 1.0;
        elmt_m_conc = (0.473 / elmt_cell);
        elmt_x5_conc = (0.1 / elmt_cell);
        elmt_x6_conc = (0.1 / elmt_cell);
        elmt_Pre_MPF_conc = (0.2 / elmt_cell);
        elmt_x3_conc = (0.1 / elmt_cell);
        elmt_y4_conc = (0.9 / elmt_cell);
        elmt_x1_conc = (0.01 / elmt_cell);


    equation
        assert(elmt_cell >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cell) = 0;
        elmt_m = elmt_m_conc;
        elmt_x5 = elmt_x5_conc;
        elmt_y6 = elmt_y6_conc;
        elmt_x6 = elmt_x6_conc;
        elmt_Pre_MPF = elmt_Pre_MPF_conc;
        elmt_x3 = elmt_x3_conc;
        elmt_y4 = elmt_y4_conc;
        elmt_x4 = elmt_x4_conc;
        elmt_y5 = elmt_y5_conc;
        elmt_x1 = elmt_x1_conc;
        elmt_x2 = elmt_x2_conc;
        elmt_y6_amount = (elmt_totAPC - elmt_x6) * elmt_cell;
        elmt_x4_amount = (elmt_totcdc25 - elmt_y4) * elmt_cell;
        elmt_y5_amount = (elmt_totwee1 - elmt_x5) * elmt_cell;
        elmt_x2_amount = ((elmt_c - elmt_Pre_MPF) - elmt_x3) * elmt_cell;
        der(elmt_m_amount) = (elmt_cellmass * elmt_product23);
        der(elmt_x5_amount) = ((- (elmt_wee1phosphorylation * elmt_reactant17)) + (elmt_wee1dephosphorylation * elmt_product16));
        der(elmt_x6_amount) = ((elmt__2 * elmt_product20) + (- (elmt_APCdephosphorylation * elmt_reactant21)));
        der(elmt_Pre_MPF_amount) = ((elmt_cyclincdkcomplexformation * elmt_product3) + (elmt_MPFPreMPFtransition * elmt_product10) + (- (elmt_PreMPFMPFtransition * elmt_reactant7)));
        der(elmt_x3_amount) = ((- (elmt_MPFdissociation * elmt_reactant5)) + (- (elmt_MPFPreMPFtransition * elmt_reactant9)) + (elmt_PreMPFMPFtransition * elmt_product8));
        der(elmt_y4_amount) = ((- (elmt_cdc25phosphorylation * elmt_reactant11)) + (elmt_cdc25dephosphorylation * elmt_product14));
        der(elmt_x1_amount) = ((- (elmt_cyclindegradation * elmt_reactant4)) + (- (elmt_cyclincdkcomplexformation * elmt_reactant1)) + (elmt_cyclinsythesis * elmt_product0));

        when elmt_event0 then
            reinit(elmt_m_amount, assign_elmt_m * pre(elmt_cell));
        end when;
    algorithm
        elmt_m_conc := elmt_m_amount / elmt_cell;
        elmt_x5_conc := elmt_x5_amount / elmt_cell;
        elmt_y6_conc := elmt_y6_amount / elmt_cell;
        elmt_x6_conc := elmt_x6_amount / elmt_cell;
        elmt_Pre_MPF_conc := elmt_Pre_MPF_amount / elmt_cell;
        elmt_x3_conc := elmt_x3_amount / elmt_cell;
        elmt_y4_conc := elmt_y4_amount / elmt_cell;
        elmt_x4_conc := elmt_x4_amount / elmt_cell;
        elmt_y5_conc := elmt_y5_amount / elmt_cell;
        elmt_x1_conc := elmt_x1_amount / elmt_cell;
        elmt_x2_conc := elmt_x2_amount / elmt_cell;
end Class_elmt_cell;
