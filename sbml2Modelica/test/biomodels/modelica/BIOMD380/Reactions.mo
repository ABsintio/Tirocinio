within BIOMD380;
class Reactions

    input Real elmt_udg;
    input Real elmt_heat;
    input Real elmt_glx;
    input Real elmt_utp;
    input Real elmt_f6p;
    input Real elmt_glc;
    input Real elmt_atp;
    input Real elmt_cell;
    input Real elmt_g1p;
    input Real elmt_g6p;
    input Real elmt_t6p;
    input Real elmt_adp;
    input Real elmt_trh;

    Real elmt_tps(unit = "") "T6P synthase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_tps_elmt_Kg6p(unit "m-3.0.") = 3.8 "";
    parameter Real elmt_tps_elmt_Vmax(unit "m-3.0..s-1.0") = 1.371 "";
    parameter Real elmt_tps_elmt_Kudg(unit "m-3.0.") = 0.886 "";
    parameter Real elmt_tps_elmt_activity(unit "") = 1.0 "";
    parameter Real elmt_tps_elmt_shock(unit "") = 12.0 "";
    Real elmt_reactant15 "";
    Real elmt_reactant16 "";
    Real elmt_product19 "";
    Real elmt_product18 "";
    Real elmt_product17 "";
    Real elmt_pgm(unit = "") "phosphoglucomutase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_pgm_elmt_Keq(unit "") = 0.1667 "";
    parameter Real elmt_pgm_elmt_Kg6p(unit "m-3.0.") = 0.05 "";
    parameter Real elmt_pgm_elmt_Vmax(unit "m-3.0..s-1.0") = 0.3545 "";
    parameter Real elmt_pgm_elmt_Kg1p(unit "m-3.0.") = 0.023 "";
    parameter Real elmt_pgm_elmt_shock(unit "") = 16.0 "";
    Real elmt_product10 "";
    Real elmt_reactant9 "";
    Real elmt_hxt(unit = "") "glucose transport";
    parameter Real elmt_hxt_elmt_Kglc(unit "m-3.0.") = 1.1918 "";
    parameter Real elmt_hxt_elmt_Vmax(unit "m-3.0..s-1.0") = 97.24 "";
    parameter Real elmt_hxt_elmt_Ki(unit "") = 0.91 "";
    parameter Real elmt_hxt_elmt_shock(unit "") = 8.0 "";
    Real elmt_reactant2 "";
    Real elmt_product3 "";
    Real elmt_tpp(unit = "") "T6P phosphatase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_tpp_elmt_Kt6p(unit "m-3.0.") = 0.5 "";
    parameter Real elmt_tpp_elmt_Vmax(unit "m-3.0..s-1.0") = 6.5 "";
    parameter Real elmt_tpp_elmt_shock(unit "") = 18.0 "";
    Real elmt_product14 "";
    Real elmt_product13 "";
    Real elmt_reactant11 "";
    Real elmt_reactant12 "";
    Real elmt_pgi(unit = "") "G6P isomerase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_pgi_elmt_Kf6p(unit "m-3.0.") = 0.29 "";
    parameter Real elmt_pgi_elmt_Keq(unit "") = 0.3 "";
    parameter Real elmt_pgi_elmt_Kg6p(unit "m-3.0.") = 1.4 "";
    parameter Real elmt_pgi_elmt_Vmax(unit "m-3.0..s-1.0") = 1071.0 "";
    parameter Real elmt_pgi_elmt_shock(unit "") = 1.0 "";
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_nth(unit = "") "trehalase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_nth_elmt_Vmax(unit "m-3.0..s-1.0") = 15.2 "";
    parameter Real elmt_nth_elmt_Ktrh(unit "m-3.0.") = 2.99 "";
    parameter Real elmt_nth_elmt_shock(unit "") = 6.0 "";
    Real elmt_reactant20 "";
    Real elmt_product22 "";
    Real elmt_reactant21 "";
    Real elmt_ugp(unit = "") "UDP glucose phosphorylase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_ugp_elmt_Kutp(unit "m-3.0.") = 0.11 "";
    parameter Real elmt_ugp_elmt_Kiudg(unit "m-3.0.") = 0.0035 "";
    parameter Real elmt_ugp_elmt_Vmax(unit "m-3.0..s-1.0") = 36.82 "";
    parameter Real elmt_ugp_elmt_Kiutp(unit "m-3.0.") = 0.11 "";
    parameter Real elmt_ugp_elmt_Kg1p(unit "m-3.0.") = 0.32 "";
    parameter Real elmt_ugp_elmt_shock(unit "") = 16.0 "";
    Real elmt_reactant25 "";
    Real elmt_product27 "";
    Real elmt_product26 "";
    Real elmt_reactant23 "";
    Real elmt_reactant24 "";
    Real elmt_hxk(unit = "") "hexokinase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_hxk_elmt_Keq(unit "") = 2000.0 "";
    parameter Real elmt_hxk_elmt_Kg6p(unit "m-3.0.") = 30.0 "";
    parameter Real elmt_hxk_elmt_Kglc(unit "m-3.0.") = 0.08 "";
    parameter Real elmt_hxk_elmt_Vmax(unit "m-3.0..s-1.0") = 289.6 "";
    parameter Real elmt_hxk_elmt_Katp(unit "m-3.0.") = 0.15 "";
    parameter Real elmt_hxk_elmt_Kadp(unit "m-3.0.") = 0.23 "";
    parameter Real elmt_hxk_elmt_Kit6p(unit "m-3.0.") = 0.04 "";
    parameter Real elmt_hxk_elmt_shock(unit "") = 8.0 "";
    Real elmt_product8 "";
    Real elmt_reactant4 "";
    Real elmt_product7 "";
    Real elmt_product6 "";
    Real elmt_reactant5 "";


    initial equation
        elmt_reactant20 = 1.0;
        elmt_product10 = 1.0;
        elmt_reactant25 = 1.0;
        elmt_reactant21 = 1.0;
        elmt_reactant23 = 1.0;
        elmt_reactant24 = 1.0;
        elmt_product27 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product26 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_product8 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product7 = 1.0;
        elmt_product6 = 1.0;
        elmt_product22 = 2.0;
        elmt_reactant5 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant15 = 1.0;
        elmt_reactant16 = 1.0;
        elmt_reactant11 = 1.0;
        elmt_product3 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product14 = 1.0;
        elmt_product13 = 1.0;
        elmt_product19 = 1.0;
        elmt_product18 = 1.0;
        elmt_product17 = 1.0;


    equation
        elmt_tps = (((elmt_cell * elmt_tps_elmt_activity * Functions.pow(elmt_tps_elmt_shock, elmt_heat) * elmt_tps_elmt_Vmax * elmt_g6p * elmt_udg) / (elmt_tps_elmt_Kg6p * elmt_tps_elmt_Kudg)) / ((1.0 + (elmt_g6p / elmt_tps_elmt_Kg6p)) * (1.0 + (elmt_udg / elmt_tps_elmt_Kudg))));
        elmt_pgm = ((((elmt_cell * Functions.pow(elmt_pgm_elmt_shock, elmt_heat) * elmt_pgm_elmt_Vmax) / elmt_pgm_elmt_Kg6p) * (elmt_g6p - (elmt_g1p / elmt_pgm_elmt_Keq))) / (1.0 + (elmt_g6p / elmt_pgm_elmt_Kg6p) + (elmt_g1p / elmt_pgm_elmt_Kg1p)));
        elmt_hxt = (((elmt_cell * Functions.pow(elmt_hxt_elmt_shock, elmt_heat) * elmt_hxt_elmt_Vmax * (elmt_glx - elmt_glc)) / elmt_hxt_elmt_Kglc) / (1.0 + ((elmt_glx + elmt_glc) / elmt_hxt_elmt_Kglc) + ((elmt_hxt_elmt_Ki * elmt_glx * elmt_glc) / Functions.pow(elmt_hxt_elmt_Kglc, 2.0))));
        elmt_tpp = (((elmt_cell * Functions.pow(elmt_tpp_elmt_shock, elmt_heat) * elmt_tpp_elmt_Vmax * elmt_t6p) / elmt_tpp_elmt_Kt6p) / (1.0 + (elmt_t6p / elmt_tpp_elmt_Kt6p)));
        elmt_pgi = ((((elmt_cell * Functions.pow(elmt_pgi_elmt_shock, elmt_heat) * elmt_pgi_elmt_Vmax) / elmt_pgi_elmt_Kg6p) * (elmt_g6p - (elmt_f6p / elmt_pgi_elmt_Keq))) / (1.0 + (elmt_g6p / elmt_pgi_elmt_Kg6p) + (elmt_f6p / elmt_pgi_elmt_Kf6p)));
        elmt_nth = (((elmt_cell * Functions.pow(elmt_nth_elmt_shock, elmt_heat) * elmt_nth_elmt_Vmax * elmt_trh) / elmt_nth_elmt_Ktrh) / (1.0 + (elmt_trh / elmt_nth_elmt_Ktrh)));
        elmt_ugp = (((elmt_cell * Functions.pow(elmt_ugp_elmt_shock, elmt_heat) * elmt_ugp_elmt_Vmax * elmt_utp * elmt_g1p) / (elmt_ugp_elmt_Kutp * elmt_ugp_elmt_Kg1p)) / ((elmt_ugp_elmt_Kiutp / elmt_ugp_elmt_Kutp) + (elmt_utp / elmt_ugp_elmt_Kutp) + (elmt_g1p / elmt_ugp_elmt_Kg1p) + ((elmt_utp * elmt_g1p) / (elmt_ugp_elmt_Kutp * elmt_ugp_elmt_Kg1p)) + (((elmt_ugp_elmt_Kiutp / elmt_ugp_elmt_Kutp) * elmt_udg) / elmt_ugp_elmt_Kiudg) + ((elmt_g1p * elmt_udg) / (elmt_ugp_elmt_Kg1p * elmt_ugp_elmt_Kiudg))));
        elmt_hxk = ((((elmt_cell * Functions.pow(elmt_hxk_elmt_shock, elmt_heat) * elmt_hxk_elmt_Vmax) / (elmt_hxk_elmt_Kglc * elmt_hxk_elmt_Katp)) * ((elmt_glc * elmt_atp) - ((elmt_g6p * elmt_adp) / elmt_hxk_elmt_Keq))) / ((1.0 + (elmt_glc / elmt_hxk_elmt_Kglc) + (elmt_g6p / elmt_hxk_elmt_Kg6p) + (elmt_t6p / elmt_hxk_elmt_Kit6p)) * (1.0 + (elmt_atp / elmt_hxk_elmt_Katp) + (elmt_adp / elmt_hxk_elmt_Kadp))));
        der(elmt_reactant20) = 0;
        der(elmt_product10) = 0;
        der(elmt_reactant25) = 0;
        der(elmt_reactant21) = 0;
        der(elmt_reactant23) = 0;
        der(elmt_reactant24) = 0;
        der(elmt_product27) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product26) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_product8) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product7) = 0;
        der(elmt_product6) = 0;
        der(elmt_product22) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant15) = 0;
        der(elmt_reactant16) = 0;
        der(elmt_reactant11) = 0;
        der(elmt_product3) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product14) = 0;
        der(elmt_product13) = 0;
        der(elmt_product19) = 0;
        der(elmt_product18) = 0;
        der(elmt_product17) = 0;

end Reactions;
