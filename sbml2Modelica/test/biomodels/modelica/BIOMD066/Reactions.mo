within BIOMD066;
class Reactions

    input Real elmt_compartment;
    input Real elmt_aspp;
    input Real elmt_hsp;
    input Real elmt_nadp;
    input Real elmt_asa;
    input Real elmt_phos;
    input Real elmt_asp;
    input Real elmt_thr;
    input Real elmt_hs;
    input Real elmt_nadph;
    input Real elmt_atp;
    input Real elmt_adp;

    Real elmt_vasd(unit = "") "Aspartate semialdehyde dehydrogenase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_vasd_elmt_k2eq(unit "") = 56.4150334574039 "";
    parameter Real elmt_vasd_elmt_k2nadph(unit "m-3.0.") = 0.029 "";
    parameter Real elmt_vasd_elmt_k2asa(unit "m-3.0.") = 0.11 "";
    parameter Real elmt_vasd_elmt_vm2f(unit "m-3.0..s-1.0") = 0.1812 "";
    parameter Real elmt_vasd_elmt_k2nadp(unit "m-3.0.") = 0.144 "";
    parameter Real elmt_vasd_elmt_k2aspp(unit "m-3.0.") = 0.022 "";
    parameter Real elmt_vasd_elmt_k2p(unit "m-3.0.") = 10.0 "";
    Real elmt_product8 "";
    Real elmt_reactant4 "";
    Real elmt_product7 "";
    Real elmt_product6 "";
    Real elmt_reactant5 "";
    Real elmt_vak(unit = "") "Aspartate Kinase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_vak_elmt_vm13(unit "m-3.0..s-1.0") = 0.0722 "";
    parameter Real elmt_vak_elmt_k1aspp(unit "m-3.0.") = 0.017 "";
    parameter Real elmt_vak_elmt_vm11(unit "m-3.0..s-1.0") = 0.15 "";
    parameter Real elmt_vak_elmt_k13adp(unit "m-3.0.") = 0.25 "";
    parameter Real elmt_vak_elmt_k1thr(unit "m-3.0.") = 0.167 "";
    parameter Real elmt_vak_elmt_k1atp(unit "m-3.0.") = 0.98 "";
    parameter Real elmt_vak_elmt_nak3(unit "") = 2.8 "";
    parameter Real elmt_vak_elmt_keqak(unit "") = 6.4E-4 "";
    parameter Real elmt_vak_elmt_nak1(unit "") = 4.09 "";
    parameter Real elmt_vak_elmt_k1lys(unit "m-3.0.") = 0.391 "";
    parameter Real elmt_vak_elmt_lys(unit "m-3.0.") = 0.46 "";
    parameter Real elmt_vak_elmt_k13atp(unit "m-3.0.") = 0.22 "";
    parameter Real elmt_vak_elmt_k13aspp(unit "m-3.0.") = 0.017 "";
    parameter Real elmt_vak_elmt_k1adp(unit "m-3.0.") = 0.25 "";
    parameter Real elmt_vak_elmt_k13(unit "m-3.0.") = 0.32 "";
    parameter Real elmt_vak_elmt_alpha(unit "") = 2.47 "";
    parameter Real elmt_vak_elmt_k11(unit "m-3.0.") = 0.97 "";
    Real elmt_reactant1 "";
    Real elmt_reactant0 "";
    Real elmt_product3 "";
    Real elmt_product2 "";
    Real elmt_vhdh(unit = "") "Homoserine dehydrogenase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_vhdh_elmt_k3hs(unit "m-3.0.") = 3.39 "";
    parameter Real elmt_vhdh_elmt_vm3f(unit "m-3.0..s-1.0") = 1.001 "";
    parameter Real elmt_vhdh_elmt_k3eq(unit "") = 3162.27766016838 "";
    parameter Real elmt_vhdh_elmt_k3thr(unit "m-3.0.") = 0.097 "";
    parameter Real elmt_vhdh_elmt_k3asa(unit "m-3.0.") = 0.24 "";
    parameter Real elmt_vhdh_elmt_k3nadp(unit "m-3.0.") = 0.067 "";
    parameter Real elmt_vhdh_elmt_nhdh1(unit "") = 1.41 "";
    parameter Real elmt_vhdh_elmt_k3nadph(unit "m-3.0.") = 0.037 "";
    parameter Real elmt_vhdh_elmt_alpha3(unit "") = 3.93 "";
    Real elmt_product12 "";
    Real elmt_product11 "";
    Real elmt_reactant9 "";
    Real elmt_reactant10 "";
    Real elmt_vatpase(unit = "") "ATPase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_vatpase_elmt_katpase(unit "kg-1.0..s-1.0") = 4.1E-5 "";
    parameter Real elmt_vatpase_elmt_prot(unit ".m-3.0") = 202.0 "";
    Real elmt_product23 "";
    Real elmt_product24 "";
    Real elmt_reactant22 "";
    Real elmt_vtsy(unit = "") "Threonine synthase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_vtsy_elmt_vm5(unit "m-3.0..s-1.0") = 0.0434 "";
    parameter Real elmt_vtsy_elmt_k5hsp(unit "m-3.0.") = 0.31 "";
    Real elmt_product15 "";
    Real elmt_product14 "";
    Real elmt_reactant13 "";
    Real elmt_vhk(unit = "") "Homoserine kinase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_vhk_elmt_vm4f(unit "m-3.0..s-1.0") = 0.1 "";
    parameter Real elmt_vhk_elmt_k4hs(unit "m-3.0.") = 0.11 "";
    parameter Real elmt_vhk_elmt_k4thr(unit "m-3.0.") = 1.09 "";
    parameter Real elmt_vhk_elmt_lys(unit "m-3.0.") = 0.46 "";
    parameter Real elmt_vhk_elmt_k4atp(unit "m-3.0.") = 0.072 "";
    parameter Real elmt_vhk_elmt_k4lys(unit "m-3.0.") = 9.45 "";
    parameter Real elmt_vhk_elmt_k4iatp(unit "m-3.0.") = 4.35 "";
    parameter Real elmt_vhk_elmt_k4ihs(unit "m-3.0.") = 4.7 "";
    Real elmt_reactant16 "";
    Real elmt_reactant17 "";
    Real elmt_product19 "";
    Real elmt_product18 "";
    Real elmt_vnadph_endo(unit = "") "Endogenous consumption of NADPH";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_vnadph_endo_elmt_knadph(unit "kg-1.0.m3.0.s-1.0") = 5.4E-6 "";
    parameter Real elmt_vnadph_endo_elmt_prot(unit ".m-3.0") = 202.0 "";
    Real elmt_reactant20 "";
    Real elmt_product21 "";


    initial equation
        elmt_reactant20 = 1.0;
        elmt_product12 = 1.0;
        elmt_product11 = 1.0;
        elmt_reactant22 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product24 = 1.0;
        elmt_product8 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product7 = 1.0;
        elmt_product6 = 1.0;
        elmt_product23 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_product21 = 1.0;
        elmt_reactant16 = 1.0;
        elmt_reactant17 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product3 = 1.0;
        elmt_product2 = 1.0;
        elmt_reactant13 = 1.0;
        elmt_product15 = 1.0;
        elmt_product14 = 1.0;
        elmt_product19 = 1.0;
        elmt_product18 = 1.0;


    equation
        elmt_vasd = (elmt_compartment * ((elmt_vasd_elmt_vm2f * ((elmt_aspp * elmt_nadph) - ((elmt_asa * elmt_nadp * elmt_phos) / elmt_vasd_elmt_k2eq))) / (((elmt_vasd_elmt_k2aspp * (1.0 + (elmt_asa / elmt_vasd_elmt_k2asa)) * (1.0 + (elmt_phos / elmt_vasd_elmt_k2p))) + elmt_aspp) * ((elmt_vasd_elmt_k2nadph * (1.0 + (elmt_nadp / elmt_vasd_elmt_k2nadp))) + elmt_nadph))));
        elmt_vak = (elmt_compartment * (((elmt_vak_elmt_vm11 * ((elmt_asp * elmt_atp) - ((elmt_aspp * elmt_adp) / elmt_vak_elmt_keqak))) / ((((elmt_vak_elmt_k11 * (1.0 + Functions.pow((elmt_thr / elmt_vak_elmt_k1thr), elmt_vak_elmt_nak1))) / (1.0 + Functions.pow((elmt_thr / (elmt_vak_elmt_alpha * elmt_vak_elmt_k1thr)), elmt_vak_elmt_nak1))) + ((elmt_vak_elmt_k11 * elmt_aspp) / elmt_vak_elmt_k1aspp) + elmt_asp) * ((elmt_vak_elmt_k1atp * (1.0 + (elmt_adp / elmt_vak_elmt_k1adp))) + elmt_atp))) + ((elmt_vak_elmt_vm13 * ((elmt_asp * elmt_atp) - ((elmt_aspp * elmt_adp) / elmt_vak_elmt_keqak))) / ((1.0 + Functions.pow((elmt_vak_elmt_lys / elmt_vak_elmt_k1lys), elmt_vak_elmt_nak3)) * ((elmt_vak_elmt_k13 * (1.0 + (elmt_aspp / elmt_vak_elmt_k13aspp))) + elmt_asp) * ((elmt_vak_elmt_k13atp * (1.0 + (elmt_adp / elmt_vak_elmt_k13adp))) + elmt_atp)))));
        elmt_vhdh = (elmt_compartment * ((elmt_vhdh_elmt_vm3f * ((elmt_asa * elmt_nadph) - ((elmt_hs * elmt_nadp) / elmt_vhdh_elmt_k3eq))) / (((1.0 + Functions.pow((elmt_thr / elmt_vhdh_elmt_k3thr), elmt_vhdh_elmt_nhdh1)) / (1.0 + Functions.pow((elmt_thr / (elmt_vhdh_elmt_alpha3 * elmt_vhdh_elmt_k3thr)), elmt_vhdh_elmt_nhdh1))) * (elmt_vhdh_elmt_k3asa + elmt_asa + ((elmt_hs * elmt_vhdh_elmt_k3asa) / elmt_vhdh_elmt_k3hs)) * ((elmt_vhdh_elmt_k3nadph * (1.0 + (elmt_nadp / elmt_vhdh_elmt_k3nadp))) + elmt_nadph))));
        elmt_vatpase = (elmt_compartment * elmt_vatpase_elmt_prot * elmt_vatpase_elmt_katpase);
        elmt_vtsy = ((elmt_compartment * elmt_vtsy_elmt_vm5 * elmt_hsp) / (elmt_hsp + elmt_vtsy_elmt_k5hsp));
        elmt_vhk = (elmt_compartment * ((elmt_vhk_elmt_vm4f * elmt_hs * elmt_atp) / ((1.0 + (elmt_vhk_elmt_lys / elmt_vhk_elmt_k4lys)) * (elmt_atp + (elmt_vhk_elmt_k4atp * (1.0 + (elmt_hs / elmt_vhk_elmt_k4ihs)))) * (elmt_hs + (elmt_vhk_elmt_k4hs * (1.0 + (elmt_thr / elmt_vhk_elmt_k4thr)) * (1.0 + (elmt_atp / elmt_vhk_elmt_k4iatp)))))));
        elmt_vnadph_endo = (elmt_compartment * elmt_vnadph_endo_elmt_prot * elmt_vnadph_endo_elmt_knadph * elmt_nadph);
        der(elmt_reactant20) = 0;
        der(elmt_product12) = 0;
        der(elmt_product11) = 0;
        der(elmt_reactant22) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product24) = 0;
        der(elmt_product8) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product7) = 0;
        der(elmt_product6) = 0;
        der(elmt_product23) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_product21) = 0;
        der(elmt_reactant16) = 0;
        der(elmt_reactant17) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product3) = 0;
        der(elmt_product2) = 0;
        der(elmt_reactant13) = 0;
        der(elmt_product15) = 0;
        der(elmt_product14) = 0;
        der(elmt_product19) = 0;
        der(elmt_product18) = 0;

end Reactions;
