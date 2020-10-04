within BIOMD192;
class Reactions

    input Real elmt_nucleus;
    input Real elmt_RanGAP;
    input Real elmt_GDP;
    input Real elmt_RanGTP_cy;
    input Real elmt_RCC1_RanGTP;
    input Real elmt_RCC1;
    input Real elmt_RanGDP_cy;
    input Real elmt_RanGDP_nuc;
    input Real elmt_GTP;
    input Real elmt_RCC1_Ran;
    input Real elmt_RanGTP_nuc;
    input Real elmt_cytoplasm;
    input Real elmt_RCC1_RanGDP;
    input Real elmt_RanBP1;
    input Real elmt_RanGTP_RanBP1;

    Real elmt_Cytoplasmic_transfer(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_Cytoplasmic_transfer_elmt_kpermRanGTP(unit "s-1.0") = 0.03 "";
    Real elmt_product13 "";
    Real elmt_reactant12 "";
    Real elmt_RanBP1_RanGDP(unit = "") "RanBP1_RanGDP";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_RanBP1_RanGDP_elmt_Km(unit "m-3.0.") = 0.1 "";
    parameter Real elmt_RanBP1_RanGDP_elmt_kcat(unit "s-1.0") = 10.8 "";
    Real elmt_reactant19 "";
    Real elmt_product21 "";
    Real elmt_product20 "";
    Real elmt_Nucleoplasmic_transfer(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_Nucleoplasmic_transfer_elmt_kpermRanGDP(unit "s-1.0") = 0.12 "";
    Real elmt_reactant14 "";
    Real elmt_product15 "";
    Real elmt_GTP_binding(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_GTP_binding_elmt_r6(unit "s-1.0") = 19.0 "";
    parameter Real elmt_GTP_binding_elmt_r3(unit "m3.0.mol-1.0.s-1.0") = 0.6 "";
    Real elmt_product8 "";
    Real elmt_reactant6 "";
    Real elmt_reactant7 "";
    Real elmt_RanGTP_release(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_RanGTP_release_elmt_r5(unit "m3.0.mol-1.0.s-1.0") = 100.0 "";
    parameter Real elmt_RanGTP_release_elmt_r4(unit "s-1.0") = 55.0 "";
    Real elmt_product11 "";
    Real elmt_product10 "";
    Real elmt_reactant9 "";
    Real elmt_RanGAP_RanGDP(unit = "") "RanGAP_RanGDP";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_RanGAP_RanGDP_elmt_Km_GAP(unit "m-3.0.") = 0.7 "";
    parameter Real elmt_RanGAP_RanGDP_elmt_kcat_GAP(unit "s-1.0") = 10.6 "";
    Real elmt_product23 "";
    Real elmt_reactant22 "";
    Real elmt_RanGTP_binding(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_RanGTP_binding_elmt_koff(unit "s-1.0") = 4.0E-4 "";
    parameter Real elmt_RanGTP_binding_elmt_kon(unit "m3.0.mol-1.0.s-1.0") = 0.3 "";
    Real elmt_reactant16 "";
    Real elmt_reactant17 "";
    Real elmt_product18 "";
    Real elmt_GDP_dissociation(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_GDP_dissociation_elmt_r7(unit "m3.0.mol-1.0.s-1.0") = 11.0 "";
    parameter Real elmt_GDP_dissociation_elmt_r2(unit "s-1.0") = 21.0 "";
    Real elmt_reactant3 "";
    Real elmt_product5 "";
    Real elmt_product4 "";
    Real elmt_RCC1_binding(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_RCC1_binding_elmt_r8(unit "s-1.0") = 55.0 "";
    parameter Real elmt_RCC1_binding_elmt_r1(unit "m3.0.mol-1.0.s-1.0") = 74.0 "";
    Real elmt_reactant1 "";
    Real elmt_reactant0 "";
    Real elmt_product2 "";


    initial equation
        elmt_product8 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product23 = 1.0;
        elmt_product11 = 1.0;
        elmt_product21 = 1.0;
        elmt_product10 = 1.0;
        elmt_product20 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_reactant16 = 1.0;
        elmt_reactant17 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant22 = 1.0;
        elmt_product4 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product2 = 1.0;
        elmt_reactant19 = 1.0;
        elmt_product15 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product13 = 1.0;
        elmt_product18 = 1.0;


    equation
        elmt_Cytoplasmic_transfer = (elmt_Cytoplasmic_transfer_elmt_kpermRanGTP * elmt_nucleus * (elmt_RanGTP_nuc - elmt_RanGTP_cy));
        elmt_RanBP1_RanGDP = ((elmt_cytoplasm * elmt_RanBP1_RanGDP_elmt_kcat * elmt_RanGTP_RanBP1 * elmt_RanGAP) / (elmt_RanGTP_RanBP1 + elmt_RanBP1_RanGDP_elmt_Km));
        elmt_Nucleoplasmic_transfer = (elmt_Nucleoplasmic_transfer_elmt_kpermRanGDP * elmt_nucleus * (elmt_RanGDP_nuc - elmt_RanGDP_cy));
        elmt_GTP_binding = (elmt_nucleus * ((elmt_GTP_binding_elmt_r3 * elmt_RCC1_Ran * elmt_GTP) - (elmt_GTP_binding_elmt_r6 * elmt_RCC1_RanGTP)));
        elmt_RanGTP_release = (elmt_nucleus * ((elmt_RanGTP_release_elmt_r4 * elmt_RCC1_RanGTP) - (elmt_RanGTP_release_elmt_r5 * elmt_RanGTP_nuc * elmt_RCC1)));
        elmt_RanGAP_RanGDP = ((elmt_cytoplasm * elmt_RanGAP_RanGDP_elmt_kcat_GAP * elmt_RanGTP_cy * elmt_RanGAP) / (elmt_RanGAP_RanGDP_elmt_Km_GAP + elmt_RanGTP_cy));
        elmt_RanGTP_binding = (((elmt_RanGTP_binding_elmt_kon * elmt_RanGTP_cy * elmt_RanBP1) - (elmt_RanGTP_binding_elmt_koff * elmt_RanGTP_RanBP1)) * elmt_cytoplasm);
        elmt_GDP_dissociation = (elmt_nucleus * ((elmt_GDP_dissociation_elmt_r2 * elmt_RCC1_RanGDP) - (elmt_GDP_dissociation_elmt_r7 * elmt_RCC1_Ran * elmt_GDP)));
        elmt_RCC1_binding = (elmt_nucleus * ((elmt_RCC1_binding_elmt_r1 * elmt_RanGDP_nuc * elmt_RCC1) - (elmt_RCC1_binding_elmt_r8 * elmt_RCC1_RanGDP)));
        der(elmt_product8) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product23) = 0;
        der(elmt_product11) = 0;
        der(elmt_product21) = 0;
        der(elmt_product10) = 0;
        der(elmt_product20) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_reactant16) = 0;
        der(elmt_reactant17) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant22) = 0;
        der(elmt_product4) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product2) = 0;
        der(elmt_reactant19) = 0;
        der(elmt_product15) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product13) = 0;
        der(elmt_product18) = 0;

end Reactions;
