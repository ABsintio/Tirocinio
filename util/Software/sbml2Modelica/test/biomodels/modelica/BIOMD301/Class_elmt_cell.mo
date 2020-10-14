within BIOMD301;
class Class_elmt_cell

    input Real elmt_r7;
    input Real elmt_r8;
    input Real elmt_r6;
    input Real elmt_product11;
    input Real elmt_r3a;
    input Real elmt_r9;
    input Real elmt_r1b;
    input Real elmt_r1a;
    input Real elmt_r3b;
    input Real elmt_reactant9;
    input Real elmt_r0;
    input Real elmt_reactant2;
    input Real elmt_product8;
    input Real elmt_reactant4;
    input Real elmt_product7;
    input Real elmt_reactant6;
    input Real elmt_r10b;
    input Real elmt_r12;
    input Real elmt_r10a;
    input Real elmt_r11;
    input Real elmt_product1;
    input Real elmt_reactant14;
    input Real elmt_reactant10;
    input Real elmt_product5;
    input Real elmt_product3;
    input Real elmt_reactant12;
    input Real elmt_reactant0;
    input Real elmt_r2b;
    input Real elmt_r2a;
    input Real elmt_product13;

    input Boolean elmt_pulse_start2;
    input Boolean elmt_pulse_start1;
    input Boolean elmt_pulse_start3;

    input Real assign_elmt_ara;

    Real elmt_cell(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_taRNA_conc(unit = "");
    Real elmt_taRNA_amount(unit = "");
    Real elmt_taRNA(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_mT7cr_conc(unit = "");
    Real elmt_mT7cr_amount(unit = "");
    Real elmt_mT7cr(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_pGFP_conc(unit = "");
    Real elmt_pGFP_amount(unit = "");
    Real elmt_pGFP(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_mT3cr_conc(unit = "");
    Real elmt_mT3cr_amount(unit = "");
    Real elmt_mT3cr(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_pT7_conc(unit = "");
    Real elmt_pT7_amount(unit = "");
    Real elmt_pT7(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_ara_conc(unit = "");
    Real elmt_ara_amount(unit = "");
    Real elmt_ara(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_pT3_conc(unit = "");
    Real elmt_pT3_amount(unit = "");
    Real elmt_pT3(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_mGFPcr_conc(unit = "");
    Real elmt_mGFPcr_amount(unit = "");
    Real elmt_mGFPcr(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_cell = 1.0;
        elmt_taRNA_conc = 0.006796941377;
        elmt_mT7cr_conc = 0.3569405099;
        elmt_pGFP_conc = 6.338921181;
        elmt_mT3cr_conc = 0.00566438;
        elmt_pT7_conc = 0.05230744612;
        elmt_ara_conc = 0.0;
        elmt_pT3_conc = 6.41674E-5;
        elmt_mGFPcr_conc = 0.176991329;


    equation
        assert(elmt_cell >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cell) = 0;
        elmt_taRNA = elmt_taRNA_conc;
        elmt_mT7cr = elmt_mT7cr_conc;
        elmt_pGFP = elmt_pGFP_conc;
        elmt_mT3cr = elmt_mT3cr_conc;
        elmt_pT7 = elmt_pT7_conc;
        elmt_ara = elmt_ara_conc;
        elmt_pT3 = elmt_pT3_conc;
        elmt_mGFPcr = elmt_mGFPcr_conc;
        der(elmt_taRNA_amount) = ((- (elmt_r1b * elmt_reactant2)) + (elmt_r1a * elmt_product1));
        der(elmt_mT7cr_amount) = ((- (elmt_r2b * elmt_reactant4)) + (elmt_r2a * elmt_product3));
        der(elmt_pGFP_amount) = ((elmt_r7 * elmt_product8) + (- (elmt_r9 * elmt_reactant10)));
        der(elmt_mT3cr_amount) = ((- (elmt_r10b * elmt_reactant12)) + (elmt_r10a * elmt_product11));
        der(elmt_pT7_amount) = ((- (elmt_r8 * elmt_reactant9)) + (elmt_r6 * elmt_product7));
        der(elmt_ara_amount) = (- (elmt_r0 * elmt_reactant0));
        der(elmt_pT3_amount) = ((- (elmt_r12 * elmt_reactant14)) + (elmt_r11 * elmt_product13));
        der(elmt_mGFPcr_amount) = ((elmt_r3a * elmt_product5) + (- (elmt_r3b * elmt_reactant6)));

        when elmt_pulse_start2 then
            reinit(elmt_ara_amount, assign_elmt_ara * pre(elmt_cell));
        end when;
        when elmt_pulse_start1 then
            reinit(elmt_ara_amount, assign_elmt_ara * pre(elmt_cell));
        end when;
        when elmt_pulse_start3 then
            reinit(elmt_ara_amount, assign_elmt_ara * pre(elmt_cell));
        end when;
    algorithm
        elmt_taRNA_conc := elmt_taRNA_amount / elmt_cell;
        elmt_mT7cr_conc := elmt_mT7cr_amount / elmt_cell;
        elmt_pGFP_conc := elmt_pGFP_amount / elmt_cell;
        elmt_mT3cr_conc := elmt_mT3cr_amount / elmt_cell;
        elmt_pT7_conc := elmt_pT7_amount / elmt_cell;
        elmt_ara_conc := elmt_ara_amount / elmt_cell;
        elmt_pT3_conc := elmt_pT3_amount / elmt_cell;
        elmt_mGFPcr_conc := elmt_mGFPcr_amount / elmt_cell;
end Class_elmt_cell;
