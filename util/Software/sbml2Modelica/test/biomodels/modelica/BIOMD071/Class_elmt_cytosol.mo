within BIOMD071;
class Class_elmt_cytosol

    input Real elmt_BPGA13;
    input Real elmt_GAP;
    input Real elmt_vATPase;
    input Real elmt_Fru6P;
    input Real elmt_Glc6P;
    input Real elmt_product32;
    input Real elmt_Fru16BP;
    input Real elmt_vPK;
    input Real elmt_product31;
    input Real elmt_Keq_PGM;
    input Real elmt_KeqAK;
    input Real elmt_Vc;
    input Real elmt_reactant25;
    input Real elmt_reactant33;
    input Real elmt_sumAc;
    input Real elmt_vPyrTr;
    input Real elmt_Vg;
    input Real elmt_PGAg;
    input Real elmt_DHAP;
    input Real elmt_Keq_ENO;
    input Real elmt_sumc4;
    input Real elmt_Pg;
    input Real elmt_sumc5;

    Real elmt_cytosol(unit = "") "cytosol";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Gly3Pc_conc(unit = "");
    Real elmt_Gly3Pc_amount(unit = "");
    Real elmt_Gly3Pc(unit = "") "Gy3P c.";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_PEPc_conc(unit = "");
    Real elmt_PEPc_amount(unit = "");
    Real elmt_PEPc(unit = "") "PEP c.";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Pc_conc(unit = "");
    Real elmt_Pc_amount(unit = "");
    Real elmt_Pc(unit = "") "Phosphates cytosol";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_ATPc_conc(unit = "");
    Real elmt_ATPc_amount(unit = "");
    Real elmt_ATPc(unit = "") "ATP cyt.";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_ADPc_conc(unit = "");
    Real elmt_ADPc_amount(unit = "");
    Real elmt_ADPc(unit = "") "ADP cyt.";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_DHAPc_conc(unit = "");
    Real elmt_DHAPc_amount(unit = "");
    Real elmt_DHAPc(unit = "") "DHAP cyt.";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Pyr_conc(unit = "");
    Real elmt_Pyr_amount(unit = "");
    Real elmt_Pyr(unit = "") "Pyruvate";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_cytosol = 5.4554;
        elmt_Pc_conc = 6.51839;
        elmt_Pyr_conc = 4.77413;


    equation
        assert(elmt_cytosol >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cytosol) = 0;
        elmt_Gly3Pc = elmt_Gly3Pc_conc;
        elmt_PEPc = elmt_PEPc_conc;
        elmt_Pc = elmt_Pc_conc;
        elmt_ATPc = elmt_ATPc_conc;
        elmt_ADPc = elmt_ADPc_conc;
        elmt_DHAPc = elmt_DHAPc_conc;
        elmt_Pyr = elmt_Pyr_conc;
        elmt_Gly3Pc_amount = (elmt_sumc5 - elmt_DHAPc) * elmt_cytosol;
        elmt_PEPc_amount = (elmt_Keq_ENO * elmt_Keq_PGM * elmt_PGAg) * elmt_cytosol;
        elmt_ATPc_amount = ((((elmt_Pc * (1.0 - (4.0 * elmt_KeqAK))) - elmt_sumAc) + Functions.pow((Functions.pow((elmt_sumAc - ((1.0 - (4.0 * elmt_KeqAK)) * elmt_Pc)), 2.0) + (4.0 * (1.0 - (4.0 * elmt_KeqAK)) * elmt_KeqAK * Functions.pow(elmt_Pc, 2.0))), 0.5)) / (2.0 * (1.0 - (4.0 * elmt_KeqAK)))) * elmt_cytosol;
        elmt_ADPc_amount = (elmt_Pc - (2.0 * elmt_ATPc)) * elmt_cytosol;
        elmt_DHAPc_amount = ((elmt_sumc5 * (1.0 + (elmt_Vc / elmt_Vg)) * elmt_DHAP) / ((elmt_sumc4 + ((elmt_sumc5 * elmt_Vc) / elmt_Vg)) - (elmt_BPGA13 + (2.0 * elmt_Fru16BP) + elmt_Fru6P + elmt_GAP + elmt_Glc6P + elmt_Pg))) * elmt_cytosol;
        der(elmt_Pc_amount) = ((- (elmt_vATPase * elmt_reactant33)) + (elmt_vPK * elmt_product31));
        der(elmt_Pyr_amount) = ((elmt_vPK * elmt_product32) + (- (elmt_vPyrTr * elmt_reactant25)));

    algorithm
        elmt_Gly3Pc_conc := elmt_Gly3Pc_amount / elmt_cytosol;
        elmt_PEPc_conc := elmt_PEPc_amount / elmt_cytosol;
        elmt_Pc_conc := elmt_Pc_amount / elmt_cytosol;
        elmt_ATPc_conc := elmt_ATPc_amount / elmt_cytosol;
        elmt_ADPc_conc := elmt_ADPc_amount / elmt_cytosol;
        elmt_DHAPc_conc := elmt_DHAPc_amount / elmt_cytosol;
        elmt_Pyr_conc := elmt_Pyr_amount / elmt_cytosol;
end Class_elmt_cytosol;
