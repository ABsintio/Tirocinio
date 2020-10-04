within BIOMD071;
class Class_elmt_tot_cell

    input Real elmt_Gly3Pc;
    input Real elmt_vTPI;
    input Real elmt_reactant30;
    input Real elmt_reactant3;
    input Real elmt_Gly3Pg;
    input Real elmt_product12;
    input Real elmt_vPGK;
    input Real elmt_vPK;
    input Real elmt_vGPO;
    input Real elmt_product1;
    input Real elmt_glycosome;
    input Real elmt_cytosol;
    input Real elmt_reactant13;
    input Real elmt_vGDH;
    input Real elmt_vHK;
    input Real elmt_reactant19;
    input Real elmt_product24;
    input Real elmt_vALD;
    input Real elmt_product28;
    input Real elmt_vGlcTr;

    Real elmt_tot_cell(unit = "") "total cell";
    Real elmt_Nb_conc(unit = "");
    Real elmt_Nb_amount(unit = "");
    Real elmt_Nb(unit = "") "3-PGA 2-PGA PEP";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Gly3P_conc(unit = "");
    Real elmt_Gly3P_amount(unit = "");
    Real elmt_Gly3P(unit = "") "Glycerol 3-phosphate";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_DHAP_conc(unit = "");
    Real elmt_DHAP_amount(unit = "");
    Real elmt_DHAP(unit = "") "Dihydroxyacetone phosphate";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_GlcI_conc(unit = "");
    Real elmt_GlcI_amount(unit = "");
    Real elmt_GlcI(unit = "") "Glucose";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_tot_cell = 5.7;
        elmt_Nb_conc = 1.59603;
        elmt_DHAP_conc = 3.89921;
        elmt_GlcI_conc = 0.0340009;


    equation
        assert(elmt_tot_cell >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_tot_cell) = 0;
        elmt_Nb = elmt_Nb_conc;
        elmt_Gly3P = elmt_Gly3P_conc;
        elmt_DHAP = elmt_DHAP_conc;
        elmt_GlcI = elmt_GlcI_conc;
        elmt_Gly3P_amount = (((elmt_Gly3Pc * elmt_cytosol) + (elmt_Gly3Pg * elmt_glycosome)) / elmt_tot_cell) * elmt_tot_cell;
        der(elmt_Nb_amount) = ((elmt_vPGK * elmt_product28) + (- (elmt_vPK * elmt_reactant30)));
        der(elmt_DHAP_amount) = ((- (elmt_vTPI * elmt_reactant13)) + (elmt_vGPO * elmt_product24) + (- (elmt_vGDH * elmt_reactant19)) + (elmt_vALD * elmt_product12));
        der(elmt_GlcI_amount) = ((- (elmt_vHK * elmt_reactant3)) + (elmt_vGlcTr * elmt_product1));

    algorithm
        elmt_Nb_conc := elmt_Nb_amount / elmt_tot_cell;
        elmt_Gly3P_conc := elmt_Gly3P_amount / elmt_tot_cell;
        elmt_DHAP_conc := elmt_DHAP_amount / elmt_tot_cell;
        elmt_GlcI_conc := elmt_GlcI_amount / elmt_tot_cell;
end Class_elmt_tot_cell;
