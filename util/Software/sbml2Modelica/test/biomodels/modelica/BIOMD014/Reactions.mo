within BIOMD014;
class Reactions

    input Real elmt_S_0_1_m1;
    input Real elmt_S_m1_0_0;
    input Real elmt_S_RAFK_2_0_0;
    input Real elmt_S_m1_0_1;
    input Real elmt_S_m1_2_0;
    input Real elmt_S_m1_2_1;
    input Real elmt_K_2_0;
    input Real elmt_K_2_1;
    input Real elmt_S_0_1_0;
    input Real elmt_S_0_1_1;
    input Real elmt_S_RAFK_2_2_0;
    input Real elmt_S_RAFK_m1_1_0;
    input Real elmt_S_1_0_m1;
    input Real elmt_RAFP;
    input Real elmt_K_K_2_1_3_1;
    input Real elmt_S_0_m1_m1;
    input Real elmt_K_K_1_0_2_2;
    input Real elmt_RAFK;
    input Real elmt_S_RAFK_0_m1_0;
    input Real elmt_S_RAFK_m1_m1_0;
    input Real elmt_S_2_m1_0;
    input Real elmt_S_2_0_0;
    input Real elmt_S_0_0_m1;
    input Real elmt_S_RAFK_2_m1_0;
    input Real elmt_K_K_2_0_3_1;
    input Real elmt_S_m1_m1_1;
    input Real elmt_K_RAFP_3_1;
    input Real elmt_S_2_2_1;
    input Real elmt_S_m1_2_m1;
    input Real elmt_S_m1_m1_0;
    input Real elmt_S_RAFK_0_1_0;
    input Real elmt_S_2_0_1;
    input Real elmt_S_2_2_0;
    input Real elmt_S_1_2_0;
    input Real elmt_S_1_2_1;
    input Real elmt_S_RAFK_1_1_0;
    input Real elmt_MAPKP;
    input Real elmt_K_3_1;
    input Real elmt_S_0_m1_1;
    input Real elmt_S_0_m1_0;
    input Real elmt_K_MAPKP_1_2;
    input Real elmt_K_MAPKP_1_1;
    input Real elmt_S_2_2_m1;
    input Real elmt_S_1_0_0;
    input Real elmt_S_1_0_1;
    input Real elmt_S_0_2_1;
    input Real elmt_S_RAFK_2_1_0;
    input Real elmt_S_m1_1_0;
    input Real elmt_S_m1_1_1;
    input Real elmt_K_1_0;
    input Real elmt_S_1_m1_1;
    input Real elmt_K_1_1;
    input Real elmt_K_3_0;
    input Real elmt_K_1_2;
    input Real elmt_S_1_m1_0;
    input Real elmt_S_0_0_1;
    input Real elmt_S_RAFK_m1_0_0;
    input Real elmt_S_1_2_m1;
    input Real elmt_S_2_m1_m1;
    input Real elmt_S_0_2_0;
    input Real elmt_S_RAFK_m1_2_0;
    input Real elmt_S_0_0_0;
    input Real elmt_S_m1_1_m1;
    input Real elmt_MEKP;
    input Real elmt_K_RAFK_3_0;
    input Real elmt_S_2_1_m1;
    input Real elmt_S_2_m1_1;
    input Real elmt_S_0_2_m1;
    input Real elmt_K_MEKP_2_2;
    input Real elmt_S_m1_m1_m1;
    input Real elmt_S_1_m1_m1;
    input Real elmt_S_1_1_m1;
    input Real elmt_S_RAFK_0_0_0;
    input Real elmt_S_2_1_0;
    input Real elmt_K_MEKP_2_1;
    input Real elmt_S_RAFK_0_2_0;
    input Real elmt_S_2_1_1;
    input Real elmt_S_1_1_1;
    input Real elmt_S_RAFK_1_2_0;
    input Real elmt_K_K_1_1_2_2;
    input Real elmt_S_RAFK_1_0_0;
    input Real elmt_S_m1_0_m1;
    input Real elmt_K_2_2;
    input Real elmt_S_RAFK_1_m1_0;
    input Real elmt_S_2_0_m1;
    input Real elmt_S_1_1_0;

    Real elmt_Reaction109(unit = "") "binding of MEK-P on scaffold";
    parameter Real elmt_Reaction109_elmt_kpon(unit "") = 0.0 "";
    Real elmt_reactant325 "";
    Real elmt_reactant324 "";
    Real elmt_product326 "";
    Real elmt_Reaction111(unit = "") "binding of MEK-P on scaffold";
    parameter Real elmt_Reaction111_elmt_kpon(unit "") = 0.0 "";
    Real elmt_reactant330 "";
    Real elmt_product332 "";
    Real elmt_reactant331 "";
    Real elmt_Reaction232(unit = "") "dissociation of RAF from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction232_elmt_koff(unit "") = 0.5 "";
    Real elmt_reactant693 "";
    Real elmt_product695 "";
    Real elmt_product694 "";
    Real elmt_Reaction110(unit = "") "dissociation of MEK-P from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction110_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_reactant327 "";
    Real elmt_product329 "";
    Real elmt_product328 "";
    Real elmt_Reaction231(unit = "") "binding of RAF on scaffold";
    parameter Real elmt_Reaction231_elmt_kon(unit "") = 10.0 "";
    Real elmt_reactant691 "";
    Real elmt_reactant690 "";
    Real elmt_product692 "";
    Real elmt_Reaction230(unit = "") "dissociation of RAF-P from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction230_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_reactant687 "";
    Real elmt_product689 "";
    Real elmt_product688 "";
    Real elmt_Reaction115(unit = "") "binding of MEK-PP on scaffold";
    parameter Real elmt_Reaction115_elmt_kpon(unit "") = 0.0 "";
    Real elmt_product344 "";
    Real elmt_reactant343 "";
    Real elmt_reactant342 "";
    Real elmt_Reaction236(unit = "") "dissociation of RAF from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction236_elmt_koff(unit "") = 0.5 "";
    Real elmt_reactant705 "";
    Real elmt_product707 "";
    Real elmt_product706 "";
    Real elmt_Reaction114(unit = "") "dissociation of MEK-P from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction114_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_product340 "";
    Real elmt_reactant339 "";
    Real elmt_product341 "";
    Real elmt_Reaction235(unit = "") "binding of RAF on scaffold";
    parameter Real elmt_Reaction235_elmt_kon(unit "") = 10.0 "";
    Real elmt_reactant703 "";
    Real elmt_reactant702 "";
    Real elmt_product704 "";
    Real elmt_Reaction113(unit = "") "binding of MEK-P on scaffold";
    parameter Real elmt_Reaction113_elmt_kpon(unit "") = 0.0 "";
    Real elmt_reactant337 "";
    Real elmt_reactant336 "";
    Real elmt_product338 "";
    Real elmt_Reaction234(unit = "") "dissociation of RAF-P from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction234_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_reactant699 "";
    Real elmt_product700 "";
    Real elmt_product701 "";
    Real elmt_Reaction112(unit = "") "dissociation of MEK-P from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction112_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_product335 "";
    Real elmt_product334 "";
    Real elmt_reactant333 "";
    Real elmt_Reaction233(unit = "") "binding of RAF-P on scaffold";
    parameter Real elmt_Reaction233_elmt_kpon(unit "") = 0.0 "";
    Real elmt_product698 "";
    Real elmt_reactant697 "";
    Real elmt_reactant696 "";
    Real elmt_Reaction119(unit = "") "binding of MEK-PP on scaffold";
    parameter Real elmt_Reaction119_elmt_kpon(unit "") = 0.0 "";
    Real elmt_product356 "";
    Real elmt_reactant355 "";
    Real elmt_reactant354 "";
    Real elmt_Reaction118(unit = "") "dissociation of MEK-PP from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction118_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_reactant351 "";
    Real elmt_product353 "";
    Real elmt_product352 "";
    Real elmt_Reaction239(unit = "") "phosphorylation of MAPK on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction239_elmt_k7(unit "") = 0.1 "";
    Real elmt_reactant714 "";
    Real elmt_product715 "";
    Real elmt_Reaction117(unit = "") "binding of MEK-PP on scaffold";
    parameter Real elmt_Reaction117_elmt_kpon(unit "") = 0.0 "";
    Real elmt_product350 "";
    Real elmt_reactant349 "";
    Real elmt_reactant348 "";
    Real elmt_Reaction238(unit = "") "dissociation of RAF-P from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction238_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_reactant711 "";
    Real elmt_product713 "";
    Real elmt_product712 "";
    Real elmt_Reaction116(unit = "") "dissociation of MEK-PP from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction116_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_product346 "";
    Real elmt_reactant345 "";
    Real elmt_product347 "";
    Real elmt_Reaction237(unit = "") "binding of RAF-P on scaffold";
    parameter Real elmt_Reaction237_elmt_kpon(unit "") = 0.0 "";
    Real elmt_reactant709 "";
    Real elmt_reactant708 "";
    Real elmt_product710 "";
    Real elmt_Reaction219(unit = "") "binding of RAF on scaffold";
    parameter Real elmt_Reaction219_elmt_kon(unit "") = 10.0 "";
    Real elmt_reactant655 "";
    Real elmt_reactant654 "";
    Real elmt_product656 "";
    Real elmt_Reaction100(unit = "") "dissociation of MAPK-PP from scaffold";
    parameter Real elmt_Reaction100_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_reactant297 "";
    Real elmt_product299 "";
    Real elmt_product298 "";
    Real elmt_Reaction221(unit = "") "binding of RAF-P on scaffold";
    parameter Real elmt_Reaction221_elmt_kpon(unit "") = 0.0 "";
    Real elmt_reactant660 "";
    Real elmt_product662 "";
    Real elmt_reactant661 "";
    Real elmt_Reaction220(unit = "") "dissociation of RAF from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction220_elmt_koff(unit "") = 0.5 "";
    Real elmt_reactant657 "";
    Real elmt_product659 "";
    Real elmt_product658 "";
    Real elmt_Reaction104(unit = "") "dissociation of MEK from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction104_elmt_koff(unit "") = 0.5 "";
    Real elmt_product311 "";
    Real elmt_product310 "";
    Real elmt_reactant309 "";
    Real elmt_Reaction225(unit = "") "binding of RAF-P on scaffold";
    parameter Real elmt_Reaction225_elmt_kpon(unit "") = 0.0 "";
    Real elmt_product674 "";
    Real elmt_reactant673 "";
    Real elmt_reactant672 "";
    Real elmt_Reaction103(unit = "") "binding of MEK on scaffold";
    parameter Real elmt_Reaction103_elmt_kon(unit "") = 10.0 "";
    Real elmt_reactant307 "";
    Real elmt_reactant306 "";
    Real elmt_product308 "";
    Real elmt_Reaction224(unit = "") "dissociation of RAF from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction224_elmt_koff(unit "") = 0.5 "";
    Real elmt_product670 "";
    Real elmt_reactant669 "";
    Real elmt_product671 "";
    Real elmt_Reaction102(unit = "") "dissociation of MAPK-PP from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction102_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_reactant303 "";
    Real elmt_product304 "";
    Real elmt_product305 "";
    Real elmt_Reaction223(unit = "") "binding of RAF on scaffold";
    parameter Real elmt_Reaction223_elmt_kon(unit "") = 10.0 "";
    Real elmt_reactant667 "";
    Real elmt_reactant666 "";
    Real elmt_product668 "";
    Real elmt_Reaction101(unit = "") "binding of MAPK-PP on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction101_elmt_kpon(unit "") = 0.0 "";
    Real elmt_product302 "";
    Real elmt_reactant301 "";
    Real elmt_reactant300 "";
    Real elmt_Reaction222(unit = "") "dissociation of RAF-P from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction222_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_product665 "";
    Real elmt_product664 "";
    Real elmt_reactant663 "";
    Real elmt_Reaction108(unit = "") "dissociation of MEK from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction108_elmt_koff(unit "") = 0.5 "";
    Real elmt_product322 "";
    Real elmt_product323 "";
    Real elmt_reactant321 "";
    Real elmt_Reaction229(unit = "") "binding of RAF-P on scaffold";
    parameter Real elmt_Reaction229_elmt_kpon(unit "") = 0.0 "";
    Real elmt_product686 "";
    Real elmt_reactant685 "";
    Real elmt_reactant684 "";
    Real elmt_Reaction107(unit = "") "binding of MEK on scaffold";
    parameter Real elmt_Reaction107_elmt_kon(unit "") = 10.0 "";
    Real elmt_reactant319 "";
    Real elmt_reactant318 "";
    Real elmt_product320 "";
    Real elmt_Reaction228(unit = "") "dissociation of RAF from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction228_elmt_koff(unit "") = 0.5 "";
    Real elmt_reactant681 "";
    Real elmt_product683 "";
    Real elmt_product682 "";
    Real elmt_Reaction106(unit = "") "dissociation of MEK from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction106_elmt_koff(unit "") = 0.5 "";
    Real elmt_reactant315 "";
    Real elmt_product317 "";
    Real elmt_product316 "";
    Real elmt_Reaction227(unit = "") "binding of RAF on scaffold";
    parameter Real elmt_Reaction227_elmt_kon(unit "") = 10.0 "";
    Real elmt_product680 "";
    Real elmt_reactant679 "";
    Real elmt_reactant678 "";
    Real elmt_Reaction105(unit = "") "binding of MEK on scaffold";
    parameter Real elmt_Reaction105_elmt_kon(unit "") = 10.0 "";
    Real elmt_reactant313 "";
    Real elmt_reactant312 "";
    Real elmt_product314 "";
    Real elmt_Reaction226(unit = "") "dissociation of RAF-P from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction226_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_product676 "";
    Real elmt_reactant675 "";
    Real elmt_product677 "";
    Real elmt_Reaction209(unit = "") "binding of RAF-P on scaffold";
    parameter Real elmt_Reaction209_elmt_kpon(unit "") = 0.0 "";
    Real elmt_reactant625 "";
    Real elmt_reactant624 "";
    Real elmt_product626 "";
    Real elmt_Reaction208(unit = "") "dissociation of RAF from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction208_elmt_koff(unit "") = 0.5 "";
    Real elmt_reactant621 "";
    Real elmt_product623 "";
    Real elmt_product622 "";
    Real elmt_Reaction210(unit = "") "dissociation of RAF-P from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction210_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_reactant627 "";
    Real elmt_product629 "";
    Real elmt_product628 "";
    Real elmt_Reaction214(unit = "") "dissociation of RAF-P from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction214_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_product641 "";
    Real elmt_product640 "";
    Real elmt_reactant639 "";
    Real elmt_Reaction213(unit = "") "binding of RAF-P on scaffold";
    parameter Real elmt_Reaction213_elmt_kpon(unit "") = 0.0 "";
    Real elmt_reactant637 "";
    Real elmt_reactant636 "";
    Real elmt_product638 "";
    Real elmt_Reaction212(unit = "") "dissociation of RAF from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction212_elmt_koff(unit "") = 0.5 "";
    Real elmt_reactant633 "";
    Real elmt_product634 "";
    Real elmt_product635 "";
    Real elmt_Reaction211(unit = "") "binding of RAF on scaffold";
    parameter Real elmt_Reaction211_elmt_kon(unit "") = 10.0 "";
    Real elmt_product632 "";
    Real elmt_reactant631 "";
    Real elmt_reactant630 "";
    Real elmt_Reaction218(unit = "") "dissociation of RAF-P from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction218_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_product652 "";
    Real elmt_product653 "";
    Real elmt_reactant651 "";
    Real elmt_Reaction217(unit = "") "binding of RAF-P on scaffold";
    parameter Real elmt_Reaction217_elmt_kpon(unit "") = 0.0 "";
    Real elmt_reactant649 "";
    Real elmt_reactant648 "";
    Real elmt_product650 "";
    Real elmt_Reaction216(unit = "") "dissociation of RAF from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction216_elmt_koff(unit "") = 0.5 "";
    Real elmt_reactant645 "";
    Real elmt_product647 "";
    Real elmt_product646 "";
    Real elmt_Reaction215(unit = "") "binding of RAF on scaffold";
    parameter Real elmt_Reaction215_elmt_kon(unit "") = 10.0 "";
    Real elmt_reactant643 "";
    Real elmt_reactant642 "";
    Real elmt_product644 "";
    Real elmt_Reaction16(unit = "") "binding of MEK-PP and MEK phosphatase";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction16_elmt_a6(unit "") = 10.0 "";
    Real elmt_product47 "";
    Real elmt_reactant45 "";
    Real elmt_reactant46 "";
    Real elmt_Reaction15(unit = "") "phosphorylation of MEK-P";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction15_elmt_k5(unit "") = 0.1 "";
    Real elmt_reactant42 "";
    Real elmt_product44 "";
    Real elmt_product43 "";
    Real elmt_Reaction14(unit = "") "dissociation of MEK-P_RAF-P";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction14_elmt_d5(unit "") = 0.4 "";
    Real elmt_product41 "";
    Real elmt_product40 "";
    Real elmt_reactant39 "";
    Real elmt_Reaction13(unit = "") "binding of MEK-P and RAF-P";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction13_elmt_a5(unit "") = 3.3 "";
    Real elmt_reactant36 "";
    Real elmt_product38 "";
    Real elmt_reactant37 "";
    Real elmt_Reaction12(unit = "") "dephosphorylation of MEK-P";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction12_elmt_k4(unit "") = 0.1 "";
    Real elmt_product34 "";
    Real elmt_product35 "";
    Real elmt_reactant33 "";
    Real elmt_Reaction11(unit = "") "dissociation of MEK-P_MEKPase";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction11_elmt_d4(unit "") = 0.8 "";
    Real elmt_reactant30 "";
    Real elmt_product32 "";
    Real elmt_product31 "";
    Real elmt_Reaction10(unit = "") "binding of MEK-P and MEK phosphatase";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction10_elmt_a4(unit "") = 10.0 "";
    Real elmt_reactant27 "";
    Real elmt_reactant28 "";
    Real elmt_product29 "";
    Real elmt_Reaction203(unit = "") "binding of RAF on scaffold";
    parameter Real elmt_Reaction203_elmt_kon(unit "") = 10.0 "";
    Real elmt_reactant607 "";
    Real elmt_reactant606 "";
    Real elmt_product608 "";
    Real elmt_Reaction202(unit = "") "dissociation of RAF-P from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction202_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_reactant603 "";
    Real elmt_product605 "";
    Real elmt_product604 "";
    Real elmt_Reaction201(unit = "") "binding of RAF-P on scaffold";
    parameter Real elmt_Reaction201_elmt_kpon(unit "") = 0.0 "";
    Real elmt_reactant601 "";
    Real elmt_reactant600 "";
    Real elmt_product602 "";
    Real elmt_Reaction200(unit = "") "dissociation of RAF from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction200_elmt_koff(unit "") = 0.5 "";
    Real elmt_product599 "";
    Real elmt_product598 "";
    Real elmt_reactant597 "";
    Real elmt_Reaction207(unit = "") "binding of RAF on scaffold";
    parameter Real elmt_Reaction207_elmt_kon(unit "") = 10.0 "";
    Real elmt_reactant619 "";
    Real elmt_reactant618 "";
    Real elmt_product620 "";
    Real elmt_Reaction206(unit = "") "dissociation of RAF-P from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction206_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_reactant615 "";
    Real elmt_product616 "";
    Real elmt_product617 "";
    Real elmt_Reaction205(unit = "") "binding of RAF-P on scaffold";
    parameter Real elmt_Reaction205_elmt_kpon(unit "") = 0.0 "";
    Real elmt_reactant613 "";
    Real elmt_reactant612 "";
    Real elmt_product614 "";
    Real elmt_Reaction204(unit = "") "dissociation of RAF from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction204_elmt_koff(unit "") = 0.5 "";
    Real elmt_reactant609 "";
    Real elmt_product610 "";
    Real elmt_product611 "";
    Real elmt_Reaction27(unit = "") "phosphorylation of MAPK-P";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction27_elmt_k9(unit "") = 0.1 "";
    Real elmt_product79 "";
    Real elmt_product80 "";
    Real elmt_reactant78 "";
    Real elmt_Reaction26(unit = "") "dissociation of MAPK-P_MEK-PP";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction26_elmt_d9(unit "") = 0.6 "";
    Real elmt_reactant75 "";
    Real elmt_product77 "";
    Real elmt_product76 "";
    Real elmt_Reaction25(unit = "") "binding of MAPK-P and MEK-PP";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction25_elmt_a9(unit "") = 20.0 "";
    Real elmt_reactant72 "";
    Real elmt_product74 "";
    Real elmt_reactant73 "";
    Real elmt_Reaction24(unit = "") "dephosphorylation of MAPK-P";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction24_elmt_k8(unit "") = 0.1 "";
    Real elmt_product71 "";
    Real elmt_reactant69 "";
    Real elmt_product70 "";
    Real elmt_Reaction23(unit = "") "dissociation of MAPK-P_MAPKPase";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction23_elmt_d8(unit "") = 0.4 "";
    Real elmt_product67 "";
    Real elmt_product68 "";
    Real elmt_reactant66 "";
    Real elmt_Reaction22(unit = "") "binding of MAPK-P and MAPK phosphatase";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction22_elmt_a8(unit "") = 5.0 "";
    Real elmt_reactant63 "";
    Real elmt_reactant64 "";
    Real elmt_product65 "";
    Real elmt_Reaction21(unit = "") "phosphorylation of MAPK";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction21_elmt_k7(unit "") = 0.1 "";
    Real elmt_product62 "";
    Real elmt_product61 "";
    Real elmt_reactant60 "";
    Real elmt_Reaction20(unit = "") "dissociation of MAPK_MEK-PP";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction20_elmt_d7(unit "") = 0.6 "";
    Real elmt_product59 "";
    Real elmt_product58 "";
    Real elmt_reactant57 "";
    Real elmt_Reaction19(unit = "") "binding of MAPK and MEK-PP";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction19_elmt_a7(unit "") = 20.0 "";
    Real elmt_product56 "";
    Real elmt_reactant54 "";
    Real elmt_reactant55 "";
    Real elmt_Reaction18(unit = "") "dephosphorylation of MEK-PP";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction18_elmt_k6(unit "") = 0.1 "";
    Real elmt_product52 "";
    Real elmt_reactant51 "";
    Real elmt_product53 "";
    Real elmt_Reaction17(unit = "") "dissociation of MEK-PP_MEKPase";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction17_elmt_d6(unit "") = 0.8 "";
    Real elmt_product50 "";
    Real elmt_product49 "";
    Real elmt_reactant48 "";
    Real elmt_Reaction30(unit = "") "dephosphorylation of MAPK-PP";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction30_elmt_k10(unit "") = 0.1 "";
    Real elmt_product89 "";
    Real elmt_product88 "";
    Real elmt_reactant87 "";
    Real elmt_Reaction38(unit = "") "dissociation of MAPK from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction38_elmt_koff(unit "") = 0.5 "";
    Real elmt_product113 "";
    Real elmt_product112 "";
    Real elmt_reactant111 "";
    Real elmt_Reaction37(unit = "") "binding of MAPK on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction37_elmt_kon(unit "") = 10.0 "";
    Real elmt_reactant109 "";
    Real elmt_reactant108 "";
    Real elmt_product110 "";
    Real elmt_Reaction36(unit = "") "dissociation of MAPK from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction36_elmt_koff(unit "") = 0.5 "";
    Real elmt_reactant105 "";
    Real elmt_product106 "";
    Real elmt_product107 "";
    Real elmt_Reaction35(unit = "") "binding of MAPK on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction35_elmt_kon(unit "") = 10.0 "";
    Real elmt_product104 "";
    Real elmt_reactant103 "";
    Real elmt_reactant102 "";
    Real elmt_Reaction34(unit = "") "dissociation of MAPK from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction34_elmt_koff(unit "") = 0.5 "";
    Real elmt_product101 "";
    Real elmt_product100 "";
    Real elmt_reactant99 "";
    Real elmt_Reaction33(unit = "") "binding of MAPK on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction33_elmt_kon(unit "") = 10.0 "";
    Real elmt_reactant96 "";
    Real elmt_reactant97 "";
    Real elmt_product98 "";
    Real elmt_Reaction32(unit = "") "dissociation of MAPK from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction32_elmt_koff(unit "") = 0.5 "";
    Real elmt_product95 "";
    Real elmt_product94 "";
    Real elmt_reactant93 "";
    Real elmt_Reaction31(unit = "") "binding of MAPK on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction31_elmt_kon(unit "") = 10.0 "";
    Real elmt_reactant90 "";
    Real elmt_reactant91 "";
    Real elmt_product92 "";
    Real elmt_Reaction29(unit = "") "dissociation of MAPK-PP_MAPKPase";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction29_elmt_d10(unit "") = 0.4 "";
    Real elmt_product85 "";
    Real elmt_reactant84 "";
    Real elmt_product86 "";
    Real elmt_Reaction28(unit = "") "binding of MAPK-PP and MAPK phosphatase";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction28_elmt_a10(unit "") = 5.0 "";
    Real elmt_product83 "";
    Real elmt_reactant81 "";
    Real elmt_reactant82 "";
    Real elmt_Reaction300(unit = "") "phosphorylation of RAF on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction300_elmt_k1(unit "") = 0.1 "";
    Real elmt_product885 "";
    Real elmt_product884 "";
    Real elmt_reactant883 "";
    Real elmt_Reaction41(unit = "") "binding of MAPK on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction41_elmt_kon(unit "") = 10.0 "";
    Real elmt_reactant121 "";
    Real elmt_reactant120 "";
    Real elmt_product122 "";
    Real elmt_Reaction40(unit = "") "dissociation of MAPK from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction40_elmt_koff(unit "") = 0.5 "";
    Real elmt_reactant117 "";
    Real elmt_product119 "";
    Real elmt_product118 "";
    Real elmt_Reaction49(unit = "") "binding of MAPK on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction49_elmt_kon(unit "") = 10.0 "";
    Real elmt_product146 "";
    Real elmt_reactant145 "";
    Real elmt_reactant144 "";
    Real elmt_Reaction48(unit = "") "dissociation of MAPK from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction48_elmt_koff(unit "") = 0.5 "";
    Real elmt_reactant141 "";
    Real elmt_product142 "";
    Real elmt_product143 "";
    Real elmt_Reaction47(unit = "") "binding of MAPK on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction47_elmt_kon(unit "") = 10.0 "";
    Real elmt_reactant139 "";
    Real elmt_reactant138 "";
    Real elmt_product140 "";
    Real elmt_Reaction46(unit = "") "dissociation of MAPK from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction46_elmt_koff(unit "") = 0.5 "";
    Real elmt_product137 "";
    Real elmt_product136 "";
    Real elmt_reactant135 "";
    Real elmt_Reaction45(unit = "") "binding of MAPK on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction45_elmt_kon(unit "") = 10.0 "";
    Real elmt_reactant132 "";
    Real elmt_product134 "";
    Real elmt_reactant133 "";
    Real elmt_Reaction44(unit = "") "dissociation of MAPK from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction44_elmt_koff(unit "") = 0.5 "";
    Real elmt_product131 "";
    Real elmt_product130 "";
    Real elmt_reactant129 "";
    Real elmt_Reaction43(unit = "") "binding of MAPK on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction43_elmt_kon(unit "") = 10.0 "";
    Real elmt_reactant127 "";
    Real elmt_reactant126 "";
    Real elmt_product128 "";
    Real elmt_Reaction42(unit = "") "dissociation of MAPK from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction42_elmt_koff(unit "") = 0.5 "";
    Real elmt_product124 "";
    Real elmt_product125 "";
    Real elmt_reactant123 "";
    Real elmt_Reaction39(unit = "") "binding of MAPK on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction39_elmt_kon(unit "") = 10.0 "";
    Real elmt_reactant115 "";
    Real elmt_reactant114 "";
    Real elmt_product116 "";
    Real elmt_Reaction52(unit = "") "dissociation of MAPK from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction52_elmt_koff(unit "") = 0.5 "";
    Real elmt_reactant153 "";
    Real elmt_product155 "";
    Real elmt_product154 "";
    Real elmt_Reaction51(unit = "") "binding of MAPK on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction51_elmt_kon(unit "") = 10.0 "";
    Real elmt_reactant151 "";
    Real elmt_reactant150 "";
    Real elmt_product152 "";
    Real elmt_Reaction50(unit = "") "dissociation of MAPK from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction50_elmt_koff(unit "") = 0.5 "";
    Real elmt_product148 "";
    Real elmt_reactant147 "";
    Real elmt_product149 "";
    Real elmt_Reaction59(unit = "") "binding of MAPK-P on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction59_elmt_kpon(unit "") = 0.0 "";
    Real elmt_reactant175 "";
    Real elmt_reactant174 "";
    Real elmt_product176 "";
    Real elmt_Reaction58(unit = "") "dissociation of MAPK-P from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction58_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_reactant171 "";
    Real elmt_product173 "";
    Real elmt_product172 "";
    Real elmt_Reaction57(unit = "") "binding of MAPK-P on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction57_elmt_kpon(unit "") = 0.0 "";
    Real elmt_product170 "";
    Real elmt_reactant169 "";
    Real elmt_reactant168 "";
    Real elmt_Reaction56(unit = "") "dissociation of MAPK-P from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction56_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_reactant165 "";
    Real elmt_product167 "";
    Real elmt_product166 "";
    Real elmt_Reaction55(unit = "") "binding of MAPK-P on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction55_elmt_kpon(unit "") = 0.0 "";
    Real elmt_reactant163 "";
    Real elmt_reactant162 "";
    Real elmt_product164 "";
    Real elmt_Reaction54(unit = "") "dissociation of MAPK from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction54_elmt_koff(unit "") = 0.5 "";
    Real elmt_product160 "";
    Real elmt_reactant159 "";
    Real elmt_product161 "";
    Real elmt_Reaction53(unit = "") "binding of MAPK on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction53_elmt_kon(unit "") = 10.0 "";
    Real elmt_product158 "";
    Real elmt_reactant157 "";
    Real elmt_reactant156 "";
    Real elmt_Reaction63(unit = "") "binding of MAPK-P on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction63_elmt_kpon(unit "") = 0.0 "";
    Real elmt_reactant187 "";
    Real elmt_reactant186 "";
    Real elmt_product188 "";
    Real elmt_Reaction62(unit = "") "dissociation of MAPK-P from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction62_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_reactant183 "";
    Real elmt_product185 "";
    Real elmt_product184 "";
    Real elmt_Reaction61(unit = "") "binding of MAPK-P on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction61_elmt_kpon(unit "") = 0.0 "";
    Real elmt_reactant181 "";
    Real elmt_reactant180 "";
    Real elmt_product182 "";
    Real elmt_Reaction60(unit = "") "dissociation of MAPK-P from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction60_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_product179 "";
    Real elmt_product178 "";
    Real elmt_reactant177 "";
    Real elmt_Reaction69(unit = "") "binding of MAPK-P on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction69_elmt_kpon(unit "") = 0.0 "";
    Real elmt_reactant205 "";
    Real elmt_reactant204 "";
    Real elmt_product206 "";
    Real elmt_Reaction68(unit = "") "dissociation of MAPK-P from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction68_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_product203 "";
    Real elmt_product202 "";
    Real elmt_reactant201 "";
    Real elmt_Reaction67(unit = "") "binding of MAPK-P on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction67_elmt_kpon(unit "") = 0.0 "";
    Real elmt_reactant198 "";
    Real elmt_product200 "";
    Real elmt_reactant199 "";
    Real elmt_Reaction191(unit = "") "binding of RAF on scaffold";
    parameter Real elmt_Reaction191_elmt_kon(unit "") = 10.0 "";
    Real elmt_reactant571 "";
    Real elmt_reactant570 "";
    Real elmt_product572 "";
    Real elmt_Reaction66(unit = "") "dissociation of MAPK-P from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction66_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_reactant195 "";
    Real elmt_product197 "";
    Real elmt_product196 "";
    Real elmt_Reaction190(unit = "") "dissociation of RAF-P from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction190_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_reactant567 "";
    Real elmt_product568 "";
    Real elmt_product569 "";
    Real elmt_Reaction65(unit = "") "binding of MAPK-P on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction65_elmt_kpon(unit "") = 0.0 "";
    Real elmt_reactant193 "";
    Real elmt_reactant192 "";
    Real elmt_product194 "";
    Real elmt_Reaction64(unit = "") "dissociation of MAPK-P from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction64_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_reactant189 "";
    Real elmt_product191 "";
    Real elmt_product190 "";
    Real elmt_Reaction195(unit = "") "binding of RAF on scaffold";
    parameter Real elmt_Reaction195_elmt_kon(unit "") = 10.0 "";
    Real elmt_reactant583 "";
    Real elmt_reactant582 "";
    Real elmt_product584 "";
    Real elmt_Reaction194(unit = "") "dissociation of RAF-P from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction194_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_product581 "";
    Real elmt_reactant579 "";
    Real elmt_product580 "";
    Real elmt_Reaction193(unit = "") "binding of RAF-P on scaffold";
    parameter Real elmt_Reaction193_elmt_kpon(unit "") = 0.0 "";
    Real elmt_reactant577 "";
    Real elmt_reactant576 "";
    Real elmt_product578 "";
    Real elmt_Reaction192(unit = "") "dissociation of RAF from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction192_elmt_koff(unit "") = 0.5 "";
    Real elmt_product575 "";
    Real elmt_product574 "";
    Real elmt_reactant573 "";
    Real elmt_Reaction199(unit = "") "binding of RAF on scaffold";
    parameter Real elmt_Reaction199_elmt_kon(unit "") = 10.0 "";
    Real elmt_reactant594 "";
    Real elmt_product596 "";
    Real elmt_reactant595 "";
    Real elmt_Reaction198(unit = "") "dissociation of RAF from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction198_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_reactant591 "";
    Real elmt_product593 "";
    Real elmt_product592 "";
    Real elmt_Reaction197(unit = "") "binding of RAF-P on scaffold";
    parameter Real elmt_Reaction197_elmt_kpon(unit "") = 0.0 "";
    Real elmt_reactant589 "";
    Real elmt_reactant588 "";
    Real elmt_product590 "";
    Real elmt_Reaction196(unit = "") "dissociation of RAF from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction196_elmt_koff(unit "") = 0.5 "";
    Real elmt_product586 "";
    Real elmt_product587 "";
    Real elmt_reactant585 "";
    Real elmt_Reaction74(unit = "") "dissociation of MAPK-P from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction74_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_reactant219 "";
    Real elmt_product221 "";
    Real elmt_product220 "";
    Real elmt_Reaction73(unit = "") "binding of MAPK-P on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction73_elmt_kpon(unit "") = 0.0 "";
    Real elmt_reactant217 "";
    Real elmt_reactant216 "";
    Real elmt_product218 "";
    Real elmt_Reaction72(unit = "") "dissociation of MAPK-P from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction72_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_product214 "";
    Real elmt_reactant213 "";
    Real elmt_product215 "";
    Real elmt_Reaction71(unit = "") "binding of MAPK-P on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction71_elmt_kpon(unit "") = 0.0 "";
    Real elmt_product212 "";
    Real elmt_reactant211 "";
    Real elmt_reactant210 "";
    Real elmt_Reaction70(unit = "") "dissociation of MAPK-P from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction70_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_reactant207 "";
    Real elmt_product209 "";
    Real elmt_product208 "";
    Real elmt_Reaction79(unit = "") "binding of MAPK-PP on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction79_elmt_kpon(unit "") = 0.0 "";
    Real elmt_product236 "";
    Real elmt_reactant235 "";
    Real elmt_reactant234 "";
    Real elmt_Reaction78(unit = "") "dissociation of MAPK-P from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction78_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_reactant231 "";
    Real elmt_product233 "";
    Real elmt_product232 "";
    Real elmt_Reaction180(unit = "") "dissociation of RAF from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction180_elmt_koff(unit "") = 0.5 "";
    Real elmt_reactant537 "";
    Real elmt_product539 "";
    Real elmt_product538 "";
    Real elmt_Reaction77(unit = "") "binding of MAPK-P on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction77_elmt_kpon(unit "") = 0.0 "";
    Real elmt_product230 "";
    Real elmt_reactant229 "";
    Real elmt_reactant228 "";
    Real elmt_Reaction76(unit = "") "dissociation of MAPK-P from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction76_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_reactant225 "";
    Real elmt_product227 "";
    Real elmt_product226 "";
    Real elmt_Reaction75(unit = "") "binding of MAPK-P on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction75_elmt_kpon(unit "") = 0.0 "";
    Real elmt_product224 "";
    Real elmt_reactant223 "";
    Real elmt_reactant222 "";
    Real elmt_Reaction184(unit = "") "dissociation of RAF from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction184_elmt_koff(unit "") = 0.5 "";
    Real elmt_reactant549 "";
    Real elmt_product551 "";
    Real elmt_product550 "";
    Real elmt_Reaction183(unit = "") "binding of RAF on scaffold";
    parameter Real elmt_Reaction183_elmt_kon(unit "") = 10.0 "";
    Real elmt_reactant547 "";
    Real elmt_reactant546 "";
    Real elmt_product548 "";
    Real elmt_Reaction182(unit = "") "dissociation of RAF-P from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction182_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_product544 "";
    Real elmt_reactant543 "";
    Real elmt_product545 "";
    Real elmt_Reaction181(unit = "") "binding of RAF-P on scaffold";
    parameter Real elmt_Reaction181_elmt_kpon(unit "") = 0.0 "";
    Real elmt_product542 "";
    Real elmt_reactant541 "";
    Real elmt_reactant540 "";
    Real elmt_Reaction188(unit = "") "dissociation of RAF from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction188_elmt_koff(unit "") = 0.5 "";
    Real elmt_reactant561 "";
    Real elmt_product563 "";
    Real elmt_product562 "";
    Real elmt_Reaction187(unit = "") "binding of RAF on scaffold";
    parameter Real elmt_Reaction187_elmt_kon(unit "") = 10.0 "";
    Real elmt_product560 "";
    Real elmt_reactant559 "";
    Real elmt_reactant558 "";
    Real elmt_Reaction186(unit = "") "dissociation of RAF-P from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction186_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_reactant555 "";
    Real elmt_product557 "";
    Real elmt_product556 "";
    Real elmt_Reaction185(unit = "") "binding of RAF-P on scaffold";
    parameter Real elmt_Reaction185_elmt_kpon(unit "") = 0.0 "";
    Real elmt_product554 "";
    Real elmt_reactant553 "";
    Real elmt_reactant552 "";
    Real elmt_Reaction189(unit = "") "binding of RAF-P on scaffold";
    parameter Real elmt_Reaction189_elmt_kpon(unit "") = 0.0 "";
    Real elmt_product566 "";
    Real elmt_reactant565 "";
    Real elmt_reactant564 "";
    Real elmt_Reaction85(unit = "") "binding of MAPK-PP on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction85_elmt_kpon(unit "") = 0.0 "";
    Real elmt_reactant253 "";
    Real elmt_reactant252 "";
    Real elmt_product254 "";
    Real elmt_Reaction84(unit = "") "dissociation of MAPK-PP from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction84_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_product251 "";
    Real elmt_reactant249 "";
    Real elmt_product250 "";
    Real elmt_Reaction83(unit = "") "binding of MAPK-PP on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction83_elmt_kpon(unit "") = 0.0 "";
    Real elmt_reactant247 "";
    Real elmt_reactant246 "";
    Real elmt_product248 "";
    Real elmt_Reaction82(unit = "") "dissociation of MAPK-PP from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction82_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_product245 "";
    Real elmt_product244 "";
    Real elmt_reactant243 "";
    Real elmt_Reaction81(unit = "") "binding of MAPK-PP on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction81_elmt_kpon(unit "") = 0.0 "";
    Real elmt_reactant241 "";
    Real elmt_reactant240 "";
    Real elmt_product242 "";
    Real elmt_Reaction80(unit = "") "dissociation of MAPK-PP from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction80_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_reactant237 "";
    Real elmt_product238 "";
    Real elmt_product239 "";
    Real elmt_Reaction89(unit = "") "binding of MAPK-PP on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction89_elmt_kpon(unit "") = 0.0 "";
    Real elmt_reactant264 "";
    Real elmt_product266 "";
    Real elmt_reactant265 "";
    Real elmt_Reaction290(unit = "") "dissociation of RAF_RAFK";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction290_elmt_d1a(unit "") = 0.0 "";
    Real elmt_reactant853 "";
    Real elmt_product854 "";
    Real elmt_product855 "";
    Real elmt_Reaction88(unit = "") "dissociation of MAPK-PP from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction88_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_reactant261 "";
    Real elmt_product263 "";
    Real elmt_product262 "";
    Real elmt_Reaction87(unit = "") "binding of MAPK-PP on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction87_elmt_kpon(unit "") = 0.0 "";
    Real elmt_reactant259 "";
    Real elmt_reactant258 "";
    Real elmt_product260 "";
    Real elmt_Reaction86(unit = "") "dissociation of MAPK-PP from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction86_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_product256 "";
    Real elmt_product257 "";
    Real elmt_reactant255 "";
    Real elmt_Reaction9(unit = "") "phosphorylation of MEK";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction9_elmt_k3(unit "") = 0.1 "";
    Real elmt_product26 "";
    Real elmt_product25 "";
    Real elmt_reactant24 "";
    Real elmt_Reaction173(unit = "") "binding of MEK-PP on scaffold";
    parameter Real elmt_Reaction173_elmt_kpon(unit "") = 0.0 "";
    Real elmt_reactant517 "";
    Real elmt_reactant516 "";
    Real elmt_product518 "";
    Real elmt_Reaction294(unit = "") "phosphorylation of RAF on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction294_elmt_k1(unit "") = 0.1 "";
    Real elmt_reactant865 "";
    Real elmt_product867 "";
    Real elmt_product866 "";
    Real elmt_Reaction8(unit = "") "dissociation of MEK_RAF-P";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction8_elmt_d3(unit "") = 0.42 "";
    Real elmt_product23 "";
    Real elmt_product22 "";
    Real elmt_reactant21 "";
    Real elmt_Reaction172(unit = "") "dissociation of MEK-PP from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction172_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_reactant513 "";
    Real elmt_product515 "";
    Real elmt_product514 "";
    Real elmt_Reaction293(unit = "") "dissociation of RAF_RAFK";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction293_elmt_d1a(unit "") = 0.0 "";
    Real elmt_product863 "";
    Real elmt_reactant862 "";
    Real elmt_product864 "";
    Real elmt_Reaction7(unit = "") "binding of MEK and RAF-P";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction7_elmt_a3(unit "") = 3.3 "";
    Real elmt_reactant18 "";
    Real elmt_reactant19 "";
    Real elmt_product20 "";
    Real elmt_Reaction171(unit = "") "binding of MEK-PP on scaffold";
    parameter Real elmt_Reaction171_elmt_kpon(unit "") = 0.0 "";
    Real elmt_reactant511 "";
    Real elmt_reactant510 "";
    Real elmt_product512 "";
    Real elmt_Reaction292(unit = "") "binding of RAF and RAFK";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction292_elmt_k1a(unit "") = 100.0 "";
    Real elmt_product861 "";
    Real elmt_reactant859 "";
    Real elmt_reactant860 "";
    Real elmt_Reaction6(unit = "") "dephosphorylation of RAF-P";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction6_elmt_k2(unit "") = 0.1 "";
    Real elmt_product16 "";
    Real elmt_reactant15 "";
    Real elmt_product17 "";
    Real elmt_Reaction170(unit = "") "dissociation of MEK-PP from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction170_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_reactant507 "";
    Real elmt_product509 "";
    Real elmt_product508 "";
    Real elmt_Reaction291(unit = "") "phosphorylation of RAF on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction291_elmt_k1(unit "") = 0.1 "";
    Real elmt_reactant856 "";
    Real elmt_product858 "";
    Real elmt_product857 "";
    Real elmt_Reaction5(unit = "") "dissociation of RAF-P_RAFPase";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction5_elmt_d2(unit "") = 0.5 "";
    Real elmt_product14 "";
    Real elmt_product13 "";
    Real elmt_reactant12 "";
    Real elmt_Reaction177(unit = "") "binding of RAF-P on scaffold";
    parameter Real elmt_Reaction177_elmt_kpon(unit "") = 0.0 "";
    Real elmt_product530 "";
    Real elmt_reactant529 "";
    Real elmt_reactant528 "";
    Real elmt_Reaction298(unit = "") "binding of RAF and RAFK";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction298_elmt_k1a(unit "") = 100.0 "";
    Real elmt_reactant878 "";
    Real elmt_reactant877 "";
    Real elmt_product879 "";
    Real elmt_Reaction4(unit = "") "binding of RAF-P and RAF phosphatase";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction4_elmt_a2(unit "") = 0.5 "";
    Real elmt_product11 "";
    Real elmt_reactant9 "";
    Real elmt_reactant10 "";
    Real elmt_Reaction176(unit = "") "dissociation of RAF from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction176_elmt_koff(unit "") = 0.5 "";
    Real elmt_reactant525 "";
    Real elmt_product527 "";
    Real elmt_product526 "";
    Real elmt_Reaction297(unit = "") "phosphorylation of RAF on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction297_elmt_k1(unit "") = 0.1 "";
    Real elmt_reactant874 "";
    Real elmt_product876 "";
    Real elmt_product875 "";
    Real elmt_Reaction3(unit = "") "phosphorylation of RAF";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction3_elmt_k1(unit "") = 0.1 "";
    Real elmt_product8 "";
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_Reaction175(unit = "") "binding of RAF on scaffold";
    parameter Real elmt_Reaction175_elmt_kon(unit "") = 10.0 "";
    Real elmt_reactant523 "";
    Real elmt_reactant522 "";
    Real elmt_product524 "";
    Real elmt_Reaction296(unit = "") "dissociation of RAF_RAFK";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction296_elmt_d1a(unit "") = 0.0 "";
    Real elmt_product872 "";
    Real elmt_product873 "";
    Real elmt_reactant871 "";
    Real elmt_Reaction2(unit = "") "dissociation of RAF_RAFK";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction2_elmt_d1(unit "") = 0.4 "";
    Real elmt_reactant3 "";
    Real elmt_product5 "";
    Real elmt_product4 "";
    Real elmt_Reaction174(unit = "") "dissociation of MEK-PP from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction174_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_product520 "";
    Real elmt_reactant519 "";
    Real elmt_product521 "";
    Real elmt_Reaction295(unit = "") "binding of RAF and RAFK";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction295_elmt_k1a(unit "") = 100.0 "";
    Real elmt_reactant869 "";
    Real elmt_reactant868 "";
    Real elmt_product870 "";
    Real elmt_Reaction1(unit = "") "binding of RAF and RAFK";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction1_elmt_a1(unit "") = 1.0 "";
    Real elmt_reactant1 "";
    Real elmt_reactant0 "";
    Real elmt_product2 "";
    Real elmt_Reaction179(unit = "") "binding of RAF on scaffold";
    parameter Real elmt_Reaction179_elmt_kon(unit "") = 10.0 "";
    Real elmt_reactant535 "";
    Real elmt_reactant534 "";
    Real elmt_product536 "";
    Real elmt_Reaction178(unit = "") "dissociation of RAF-P from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction178_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_product533 "";
    Real elmt_product532 "";
    Real elmt_reactant531 "";
    Real elmt_Reaction299(unit = "") "dissociation of RAF_RAFK";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction299_elmt_d1a(unit "") = 0.0 "";
    Real elmt_reactant880 "";
    Real elmt_product882 "";
    Real elmt_product881 "";
    Real elmt_Reaction96(unit = "") "dissociation of MAPK-PP from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction96_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_reactant285 "";
    Real elmt_product287 "";
    Real elmt_product286 "";
    Real elmt_Reaction95(unit = "") "binding of MAPK-PP on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction95_elmt_kpon(unit "") = 0.0 "";
    Real elmt_reactant283 "";
    Real elmt_reactant282 "";
    Real elmt_product284 "";
    Real elmt_Reaction94(unit = "") "dissociation of MAPK-PP from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction94_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_product281 "";
    Real elmt_product280 "";
    Real elmt_reactant279 "";
    Real elmt_Reaction93(unit = "") "binding of MAPK-PP on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction93_elmt_kpon(unit "") = 0.0 "";
    Real elmt_product278 "";
    Real elmt_reactant277 "";
    Real elmt_reactant276 "";
    Real elmt_Reaction92(unit = "") "dissociation of MAPK-PP from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction92_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_reactant273 "";
    Real elmt_product274 "";
    Real elmt_product275 "";
    Real elmt_Reaction91(unit = "") "binding of MAPK-PP on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction91_elmt_kpon(unit "") = 0.0 "";
    Real elmt_reactant271 "";
    Real elmt_reactant270 "";
    Real elmt_product272 "";
    Real elmt_Reaction90(unit = "") "dissociation of MAPK-PP from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction90_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_product269 "";
    Real elmt_product268 "";
    Real elmt_reactant267 "";
    Real elmt_Reaction99(unit = "") "binding of MAPK-PP on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction99_elmt_kpon(unit "") = 0.0 "";
    Real elmt_reactant295 "";
    Real elmt_reactant294 "";
    Real elmt_product296 "";
    Real elmt_Reaction98(unit = "") "dissociation of MAPK-PP from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction98_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_reactant291 "";
    Real elmt_product292 "";
    Real elmt_product293 "";
    Real elmt_Reaction97(unit = "") "binding of MAPK-PP on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction97_elmt_kpon(unit "") = 0.0 "";
    Real elmt_reactant289 "";
    Real elmt_reactant288 "";
    Real elmt_product290 "";
    Real elmt_Reaction162(unit = "") "dissociation of MEK from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction162_elmt_koff(unit "") = 0.5 "";
    Real elmt_reactant483 "";
    Real elmt_product485 "";
    Real elmt_product484 "";
    Real elmt_Reaction283(unit = "") "binding of RAF and RAFK";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction283_elmt_k1a(unit "") = 100.0 "";
    Real elmt_reactant833 "";
    Real elmt_reactant832 "";
    Real elmt_product834 "";
    Real elmt_Reaction161(unit = "") "binding of MEK on scaffold";
    parameter Real elmt_Reaction161_elmt_kon(unit "") = 10.0 "";
    Real elmt_reactant481 "";
    Real elmt_reactant480 "";
    Real elmt_product482 "";
    Real elmt_Reaction282(unit = "") "phosphorylation of RAF on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction282_elmt_k1(unit "") = 0.1 "";
    Real elmt_reactant829 "";
    Real elmt_product830 "";
    Real elmt_product831 "";
    Real elmt_Reaction160(unit = "") "dissociation of MEK from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction160_elmt_koff(unit "") = 0.5 "";
    Real elmt_product478 "";
    Real elmt_reactant477 "";
    Real elmt_product479 "";
    Real elmt_Reaction281(unit = "") "dissociation of RAF_RAFK";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction281_elmt_d1a(unit "") = 0.0 "";
    Real elmt_reactant826 "";
    Real elmt_product828 "";
    Real elmt_product827 "";
    Real elmt_Reaction280(unit = "") "binding of RAF and RAFK";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction280_elmt_k1a(unit "") = 100.0 "";
    Real elmt_reactant824 "";
    Real elmt_reactant823 "";
    Real elmt_product825 "";
    Real elmt_Reaction166(unit = "") "dissociation of MEK-P from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction166_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_reactant495 "";
    Real elmt_product497 "";
    Real elmt_product496 "";
    Real elmt_Reaction287(unit = "") "dissociation of RAF_RAFK";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction287_elmt_d1a(unit "") = 0.0 "";
    Real elmt_reactant844 "";
    Real elmt_product846 "";
    Real elmt_product845 "";
    Real elmt_Reaction165(unit = "") "binding of MEK-P on scaffold";
    parameter Real elmt_Reaction165_elmt_kpon(unit "") = 0.0 "";
    Real elmt_reactant493 "";
    Real elmt_reactant492 "";
    Real elmt_product494 "";
    Real elmt_Reaction286(unit = "") "binding of RAF and RAFK";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction286_elmt_k1a(unit "") = 100.0 "";
    Real elmt_reactant842 "";
    Real elmt_reactant841 "";
    Real elmt_product843 "";
    Real elmt_Reaction164(unit = "") "dissociation of MEK-P from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction164_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_product490 "";
    Real elmt_reactant489 "";
    Real elmt_product491 "";
    Real elmt_Reaction285(unit = "") "phosphorylation of RAF on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction285_elmt_k1(unit "") = 0.1 "";
    Real elmt_reactant838 "";
    Real elmt_product840 "";
    Real elmt_product839 "";
    Real elmt_Reaction163(unit = "") "binding of MEK-P on scaffold";
    parameter Real elmt_Reaction163_elmt_kpon(unit "") = 0.0 "";
    Real elmt_product488 "";
    Real elmt_reactant487 "";
    Real elmt_reactant486 "";
    Real elmt_Reaction284(unit = "") "dissociation of RAF_RAFK";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction284_elmt_d1a(unit "") = 0.0 "";
    Real elmt_reactant835 "";
    Real elmt_product836 "";
    Real elmt_product837 "";
    Real elmt_Reaction169(unit = "") "binding of MEK-PP on scaffold";
    parameter Real elmt_Reaction169_elmt_kpon(unit "") = 0.0 "";
    Real elmt_reactant505 "";
    Real elmt_reactant504 "";
    Real elmt_product506 "";
    Real elmt_Reaction168(unit = "") "dissociation of MEK-P from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction168_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_reactant501 "";
    Real elmt_product502 "";
    Real elmt_product503 "";
    Real elmt_Reaction289(unit = "") "binding of RAF and RAFK";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction289_elmt_k1a(unit "") = 100.0 "";
    Real elmt_product852 "";
    Real elmt_reactant851 "";
    Real elmt_reactant850 "";
    Real elmt_Reaction167(unit = "") "binding of MEK-P on scaffold";
    parameter Real elmt_Reaction167_elmt_kpon(unit "") = 0.0 "";
    Real elmt_product500 "";
    Real elmt_reactant499 "";
    Real elmt_reactant498 "";
    Real elmt_Reaction288(unit = "") "phosphorylation of RAF on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction288_elmt_k1(unit "") = 0.1 "";
    Real elmt_reactant847 "";
    Real elmt_product849 "";
    Real elmt_product848 "";
    Real elmt_Reaction151(unit = "") "binding of MEK-PP on scaffold";
    parameter Real elmt_Reaction151_elmt_kpon(unit "") = 0.0 "";
    Real elmt_reactant451 "";
    Real elmt_reactant450 "";
    Real elmt_product452 "";
    Real elmt_Reaction272(unit = "") "dissociation of RAF_RAFK";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction272_elmt_d1a(unit "") = 0.0 "";
    Real elmt_reactant799 "";
    Real elmt_product801 "";
    Real elmt_product800 "";
    Real elmt_Reaction150(unit = "") "dissociation of MEK-P from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction150_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_reactant447 "";
    Real elmt_product449 "";
    Real elmt_product448 "";
    Real elmt_Reaction271(unit = "") "binding of RAF and RAFK";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction271_elmt_k1a(unit "") = 100.0 "";
    Real elmt_reactant797 "";
    Real elmt_reactant796 "";
    Real elmt_product798 "";
    Real elmt_Reaction270(unit = "") "phosphorylation of RAF on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction270_elmt_k1(unit "") = 0.1 "";
    Real elmt_product795 "";
    Real elmt_product794 "";
    Real elmt_reactant793 "";
    Real elmt_Reaction155(unit = "") "binding of MEK-PP on scaffold";
    parameter Real elmt_Reaction155_elmt_kpon(unit "") = 0.0 "";
    Real elmt_reactant462 "";
    Real elmt_product464 "";
    Real elmt_reactant463 "";
    Real elmt_Reaction276(unit = "") "phosphorylation of RAF on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction276_elmt_k1(unit "") = 0.1 "";
    Real elmt_reactant811 "";
    Real elmt_product813 "";
    Real elmt_product812 "";
    Real elmt_Reaction154(unit = "") "dissociation of MEK-PP from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction154_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_product461 "";
    Real elmt_product460 "";
    Real elmt_reactant459 "";
    Real elmt_Reaction275(unit = "") "dissociation of RAF_RAFK";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction275_elmt_d1a(unit "") = 0.0 "";
    Real elmt_reactant808 "";
    Real elmt_product809 "";
    Real elmt_product810 "";
    Real elmt_Reaction153(unit = "") "binding of MEK-PP on scaffold";
    parameter Real elmt_Reaction153_elmt_kpon(unit "") = 0.0 "";
    Real elmt_reactant457 "";
    Real elmt_reactant456 "";
    Real elmt_product458 "";
    Real elmt_Reaction274(unit = "") "binding of RAF and RAFK";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction274_elmt_k1a(unit "") = 100.0 "";
    Real elmt_reactant806 "";
    Real elmt_reactant805 "";
    Real elmt_product807 "";
    Real elmt_Reaction152(unit = "") "dissociation of MEK-PP from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction152_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_product454 "";
    Real elmt_product455 "";
    Real elmt_reactant453 "";
    Real elmt_Reaction273(unit = "") "phosphorylation of RAF on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction273_elmt_k1(unit "") = 0.1 "";
    Real elmt_reactant802 "";
    Real elmt_product803 "";
    Real elmt_product804 "";
    Real elmt_Reaction159(unit = "") "binding of MEK on scaffold";
    parameter Real elmt_Reaction159_elmt_kon(unit "") = 10.0 "";
    Real elmt_product476 "";
    Real elmt_reactant475 "";
    Real elmt_reactant474 "";
    Real elmt_Reaction158(unit = "") "dissociation of MEK from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction158_elmt_koff(unit "") = 0.5 "";
    Real elmt_reactant471 "";
    Real elmt_product472 "";
    Real elmt_product473 "";
    Real elmt_Reaction279(unit = "") "phosphorylation of RAF on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction279_elmt_k1(unit "") = 0.1 "";
    Real elmt_reactant820 "";
    Real elmt_product821 "";
    Real elmt_product822 "";
    Real elmt_Reaction157(unit = "") "binding of MEK on scaffold";
    parameter Real elmt_Reaction157_elmt_kon(unit "") = 10.0 "";
    Real elmt_reactant469 "";
    Real elmt_reactant468 "";
    Real elmt_product470 "";
    Real elmt_Reaction278(unit = "") "dissociation of RAF_RAFK";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction278_elmt_d1a(unit "") = 0.0 "";
    Real elmt_reactant817 "";
    Real elmt_product818 "";
    Real elmt_product819 "";
    Real elmt_Reaction156(unit = "") "dissociation of MEK-PP from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction156_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_product467 "";
    Real elmt_product466 "";
    Real elmt_reactant465 "";
    Real elmt_Reaction277(unit = "") "binding of RAF and RAFK";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction277_elmt_k1a(unit "") = 100.0 "";
    Real elmt_reactant815 "";
    Real elmt_reactant814 "";
    Real elmt_product816 "";
    Real elmt_Reaction140(unit = "") "dissociation of MEK from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction140_elmt_koff(unit "") = 0.5 "";
    Real elmt_reactant417 "";
    Real elmt_product418 "";
    Real elmt_product419 "";
    Real elmt_Reaction261(unit = "") "phosphorylation of RAF on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction261_elmt_k1(unit "") = 0.1 "";
    Real elmt_reactant766 "";
    Real elmt_product768 "";
    Real elmt_product767 "";
    Real elmt_Reaction260(unit = "") "dissociation of RAF_RAFK";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction260_elmt_d1a(unit "") = 0.0 "";
    Real elmt_product764 "";
    Real elmt_reactant763 "";
    Real elmt_product765 "";
    Real elmt_Reaction144(unit = "") "dissociation of MEK from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction144_elmt_koff(unit "") = 0.5 "";
    Real elmt_product431 "";
    Real elmt_reactant429 "";
    Real elmt_product430 "";
    Real elmt_Reaction265(unit = "") "binding of RAF and RAFK";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction265_elmt_k1a(unit "") = 100.0 "";
    Real elmt_product780 "";
    Real elmt_reactant779 "";
    Real elmt_reactant778 "";
    Real elmt_Reaction143(unit = "") "binding of MEK on scaffold";
    parameter Real elmt_Reaction143_elmt_kon(unit "") = 10.0 "";
    Real elmt_reactant427 "";
    Real elmt_reactant426 "";
    Real elmt_product428 "";
    Real elmt_Reaction264(unit = "") "phosphorylation of RAF on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction264_elmt_k1(unit "") = 0.1 "";
    Real elmt_reactant775 "";
    Real elmt_product777 "";
    Real elmt_product776 "";
    Real elmt_Reaction142(unit = "") "dissociation of MEK from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction142_elmt_koff(unit "") = 0.5 "";
    Real elmt_reactant423 "";
    Real elmt_product425 "";
    Real elmt_product424 "";
    Real elmt_Reaction263(unit = "") "dissociation of RAF_RAFK";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction263_elmt_d1a(unit "") = 0.0 "";
    Real elmt_product773 "";
    Real elmt_product774 "";
    Real elmt_reactant772 "";
    Real elmt_Reaction141(unit = "") "binding of MEK on scaffold";
    parameter Real elmt_Reaction141_elmt_kon(unit "") = 10.0 "";
    Real elmt_product422 "";
    Real elmt_reactant421 "";
    Real elmt_reactant420 "";
    Real elmt_Reaction262(unit = "") "binding of RAF and RAFK";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction262_elmt_k1a(unit "") = 100.0 "";
    Real elmt_reactant770 "";
    Real elmt_reactant769 "";
    Real elmt_product771 "";
    Real elmt_Reaction148(unit = "") "dissociation of MEK-P from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction148_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_product443 "";
    Real elmt_product442 "";
    Real elmt_reactant441 "";
    Real elmt_Reaction269(unit = "") "dissociation of RAF_RAFK";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction269_elmt_d1a(unit "") = 0.0 "";
    Real elmt_reactant790 "";
    Real elmt_product791 "";
    Real elmt_product792 "";
    Real elmt_Reaction147(unit = "") "binding of MEK-P on scaffold";
    parameter Real elmt_Reaction147_elmt_kpon(unit "") = 0.0 "";
    Real elmt_reactant439 "";
    Real elmt_reactant438 "";
    Real elmt_product440 "";
    Real elmt_Reaction268(unit = "") "binding of RAF and RAFK";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction268_elmt_k1a(unit "") = 100.0 "";
    Real elmt_reactant788 "";
    Real elmt_reactant787 "";
    Real elmt_product789 "";
    Real elmt_Reaction146(unit = "") "dissociation of MEK-P from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction146_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_reactant435 "";
    Real elmt_product436 "";
    Real elmt_product437 "";
    Real elmt_Reaction267(unit = "") "phosphorylation of RAF on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction267_elmt_k1(unit "") = 0.1 "";
    Real elmt_product786 "";
    Real elmt_product785 "";
    Real elmt_reactant784 "";
    Real elmt_Reaction145(unit = "") "binding of MEK-P on scaffold";
    parameter Real elmt_Reaction145_elmt_kpon(unit "") = 0.0 "";
    Real elmt_product434 "";
    Real elmt_reactant433 "";
    Real elmt_reactant432 "";
    Real elmt_Reaction266(unit = "") "dissociation of RAF_RAFK";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction266_elmt_d1a(unit "") = 0.0 "";
    Real elmt_reactant781 "";
    Real elmt_product783 "";
    Real elmt_product782 "";
    Real elmt_Reaction149(unit = "") "binding of MEK-P on scaffold";
    parameter Real elmt_Reaction149_elmt_kpon(unit "") = 0.0 "";
    Real elmt_reactant445 "";
    Real elmt_reactant444 "";
    Real elmt_product446 "";
    Real elmt_Reaction250(unit = "") "phosphorylation of MEK-P on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction250_elmt_k5a(unit "") = 0.1 "";
    Real elmt_reactant736 "";
    Real elmt_product737 "";
    Real elmt_Reaction133(unit = "") "binding of MEK-PP on scaffold";
    parameter Real elmt_Reaction133_elmt_kpon(unit "") = 0.0 "";
    Real elmt_reactant396 "";
    Real elmt_product398 "";
    Real elmt_reactant397 "";
    Real elmt_Reaction254(unit = "") "dissociation of RAF_RAFK";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction254_elmt_d1a(unit "") = 0.0 "";
    Real elmt_reactant745 "";
    Real elmt_product747 "";
    Real elmt_product746 "";
    Real elmt_Reaction132(unit = "") "dissociation of MEK-P from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction132_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_reactant393 "";
    Real elmt_product395 "";
    Real elmt_product394 "";
    Real elmt_Reaction253(unit = "") "binding of RAF and RAFK";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction253_elmt_k1a(unit "") = 100.0 "";
    Real elmt_reactant743 "";
    Real elmt_reactant742 "";
    Real elmt_product744 "";
    Real elmt_Reaction131(unit = "") "binding of MEK-P on scaffold";
    parameter Real elmt_Reaction131_elmt_kpon(unit "") = 0.0 "";
    Real elmt_reactant391 "";
    Real elmt_reactant390 "";
    Real elmt_product392 "";
    Real elmt_Reaction252(unit = "") "phosphorylation of MEK-P on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction252_elmt_k5a(unit "") = 0.1 "";
    Real elmt_product741 "";
    Real elmt_reactant740 "";
    Real elmt_Reaction130(unit = "") "dissociation of MEK-P from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction130_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_product388 "";
    Real elmt_product389 "";
    Real elmt_reactant387 "";
    Real elmt_Reaction251(unit = "") "phosphorylation of MEK on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction251_elmt_k3(unit "") = 0.1 "";
    Real elmt_reactant738 "";
    Real elmt_product739 "";
    Real elmt_Reaction137(unit = "") "binding of MEK-PP on scaffold";
    parameter Real elmt_Reaction137_elmt_kpon(unit "") = 0.0 "";
    Real elmt_product410 "";
    Real elmt_reactant409 "";
    Real elmt_reactant408 "";
    Real elmt_Reaction258(unit = "") "phosphorylation of RAF on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction258_elmt_k1(unit "") = 0.1 "";
    Real elmt_reactant757 "";
    Real elmt_product759 "";
    Real elmt_product758 "";
    Real elmt_Reaction136(unit = "") "dissociation of MEK-PP from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction136_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_reactant405 "";
    Real elmt_product407 "";
    Real elmt_product406 "";
    Real elmt_Reaction257(unit = "") "dissociation of RAF_RAFK";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction257_elmt_d1a(unit "") = 0.0 "";
    Real elmt_reactant754 "";
    Real elmt_product755 "";
    Real elmt_product756 "";
    Real elmt_Reaction135(unit = "") "binding of MEK-PP on scaffold";
    parameter Real elmt_Reaction135_elmt_kpon(unit "") = 0.0 "";
    Real elmt_reactant403 "";
    Real elmt_reactant402 "";
    Real elmt_product404 "";
    Real elmt_Reaction256(unit = "") "binding of RAF and RAFK";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction256_elmt_k1a(unit "") = 100.0 "";
    Real elmt_product753 "";
    Real elmt_reactant752 "";
    Real elmt_reactant751 "";
    Real elmt_Reaction134(unit = "") "dissociation of MEK-PP from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction134_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_product401 "";
    Real elmt_product400 "";
    Real elmt_reactant399 "";
    Real elmt_Reaction255(unit = "") "phosphorylation of RAF on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction255_elmt_k1(unit "") = 0.1 "";
    Real elmt_product750 "";
    Real elmt_reactant748 "";
    Real elmt_product749 "";
    Real elmt_Reaction139(unit = "") "binding of MEK on scaffold";
    parameter Real elmt_Reaction139_elmt_kon(unit "") = 10.0 "";
    Real elmt_reactant415 "";
    Real elmt_reactant414 "";
    Real elmt_product416 "";
    Real elmt_Reaction138(unit = "") "dissociation of MEK-PP from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction138_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_product412 "";
    Real elmt_reactant411 "";
    Real elmt_product413 "";
    Real elmt_Reaction259(unit = "") "binding of RAF and RAFK";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction259_elmt_k1a(unit "") = 100.0 "";
    Real elmt_product762 "";
    Real elmt_reactant761 "";
    Real elmt_reactant760 "";
    Real elmt_Reaction122(unit = "") "dissociation of MEK from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction122_elmt_koff(unit "") = 0.5 "";
    Real elmt_reactant363 "";
    Real elmt_product365 "";
    Real elmt_product364 "";
    Real elmt_Reaction243(unit = "") "phosphorylation of MAPK-P on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction243_elmt_k9a(unit "") = 0.1 "";
    Real elmt_reactant722 "";
    Real elmt_product723 "";
    Real elmt_Reaction121(unit = "") "binding of MEK on scaffold";
    parameter Real elmt_Reaction121_elmt_kon(unit "") = 10.0 "";
    Real elmt_reactant361 "";
    Real elmt_reactant360 "";
    Real elmt_product362 "";
    Real elmt_Reaction242(unit = "") "phosphorylation of MAPK-P on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction242_elmt_k9a(unit "") = 0.1 "";
    Real elmt_reactant720 "";
    Real elmt_product721 "";
    Real elmt_Reaction120(unit = "") "dissociation of MEK-PP from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction120_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_reactant357 "";
    Real elmt_product359 "";
    Real elmt_product358 "";
    Real elmt_Reaction241(unit = "") "phosphorylation of MAPK on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction241_elmt_k7(unit "") = 0.1 "";
    Real elmt_reactant718 "";
    Real elmt_product719 "";
    Real elmt_Reaction240(unit = "") "phosphorylation of MAPK on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction240_elmt_k7(unit "") = 0.1 "";
    Real elmt_reactant716 "";
    Real elmt_product717 "";
    Real elmt_Reaction126(unit = "") "dissociation of MEK from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction126_elmt_koff(unit "") = 0.5 "";
    Real elmt_product377 "";
    Real elmt_product376 "";
    Real elmt_reactant375 "";
    Real elmt_Reaction247(unit = "") "phosphorylation of MEK on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction247_elmt_k3(unit "") = 0.1 "";
    Real elmt_product731 "";
    Real elmt_reactant730 "";
    Real elmt_Reaction125(unit = "") "binding of MEK on scaffold";
    parameter Real elmt_Reaction125_elmt_kon(unit "") = 10.0 "";
    Real elmt_reactant373 "";
    Real elmt_reactant372 "";
    Real elmt_product374 "";
    Real elmt_Reaction246(unit = "") "phosphorylation of MEK-P on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction246_elmt_k5a(unit "") = 0.1 "";
    Real elmt_reactant728 "";
    Real elmt_product729 "";
    Real elmt_Reaction124(unit = "") "dissociation of MEK from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction124_elmt_koff(unit "") = 0.5 "";
    Real elmt_reactant369 "";
    Real elmt_product371 "";
    Real elmt_product370 "";
    Real elmt_Reaction245(unit = "") "phosphorylation of MEK on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction245_elmt_k3(unit "") = 0.1 "";
    Real elmt_reactant726 "";
    Real elmt_product727 "";
    Real elmt_Reaction123(unit = "") "binding of MEK on scaffold";
    parameter Real elmt_Reaction123_elmt_kon(unit "") = 10.0 "";
    Real elmt_product368 "";
    Real elmt_reactant367 "";
    Real elmt_reactant366 "";
    Real elmt_Reaction244(unit = "") "phosphorylation of MAPK-P on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction244_elmt_k9a(unit "") = 0.1 "";
    Real elmt_reactant724 "";
    Real elmt_product725 "";
    Real elmt_Reaction129(unit = "") "binding of MEK-P on scaffold";
    parameter Real elmt_Reaction129_elmt_kpon(unit "") = 0.0 "";
    Real elmt_reactant385 "";
    Real elmt_reactant384 "";
    Real elmt_product386 "";
    Real elmt_Reaction128(unit = "") "dissociation of MEK-P from scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction128_elmt_kpoff(unit "") = 0.05 "";
    Real elmt_reactant381 "";
    Real elmt_product383 "";
    Real elmt_product382 "";
    Real elmt_Reaction249(unit = "") "phosphorylation of MEK on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction249_elmt_k3(unit "") = 0.1 "";
    Real elmt_reactant734 "";
    Real elmt_product735 "";
    Real elmt_Reaction127(unit = "") "binding of MEK-P on scaffold";
    parameter Real elmt_Reaction127_elmt_kpon(unit "") = 0.0 "";
    Real elmt_product380 "";
    Real elmt_reactant379 "";
    Real elmt_reactant378 "";
    Real elmt_Reaction248(unit = "") "phosphorylation of MEK-P on scaffold";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Reaction248_elmt_k5a(unit "") = 0.1 "";
    Real elmt_reactant732 "";
    Real elmt_product733 "";


    initial equation
        elmt_reactant42 = 1.0;
        elmt_reactant627 = 1.0;
        elmt_reactant869 = 1.0;
        elmt_reactant868 = 1.0;
        elmt_reactant625 = 1.0;
        elmt_reactant48 = 1.0;
        elmt_reactant45 = 1.0;
        elmt_reactant46 = 1.0;
        elmt_reactant877 = 1.0;
        elmt_reactant633 = 1.0;
        elmt_reactant874 = 1.0;
        elmt_reactant631 = 1.0;
        elmt_reactant630 = 1.0;
        elmt_reactant871 = 1.0;
        elmt_reactant51 = 1.0;
        elmt_reactant639 = 1.0;
        elmt_reactant637 = 1.0;
        elmt_reactant636 = 1.0;
        elmt_reactant878 = 1.0;
        elmt_reactant54 = 1.0;
        elmt_reactant55 = 1.0;
        elmt_reactant57 = 1.0;
        elmt_reactant880 = 1.0;
        elmt_reactant645 = 1.0;
        elmt_reactant403 = 1.0;
        elmt_reactant402 = 1.0;
        elmt_reactant643 = 1.0;
        elmt_reactant642 = 1.0;
        elmt_reactant883 = 1.0;
        elmt_reactant609 = 1.0;
        elmt_reactant607 = 1.0;
        elmt_reactant606 = 1.0;
        elmt_reactant847 = 1.0;
        elmt_reactant603 = 1.0;
        elmt_reactant27 = 1.0;
        elmt_reactant28 = 1.0;
        elmt_reactant21 = 1.0;
        elmt_reactant24 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_reactant19 = 1.0;
        elmt_reactant613 = 1.0;
        elmt_reactant612 = 1.0;
        elmt_reactant853 = 1.0;
        elmt_reactant851 = 1.0;
        elmt_reactant850 = 1.0;
        elmt_reactant30 = 1.0;
        elmt_reactant619 = 1.0;
        elmt_reactant618 = 1.0;
        elmt_reactant859 = 1.0;
        elmt_reactant615 = 1.0;
        elmt_reactant856 = 1.0;
        elmt_reactant36 = 1.0;
        elmt_reactant37 = 1.0;
        elmt_reactant39 = 1.0;
        elmt_reactant33 = 1.0;
        elmt_reactant624 = 1.0;
        elmt_reactant865 = 1.0;
        elmt_reactant621 = 1.0;
        elmt_reactant862 = 1.0;
        elmt_reactant860 = 1.0;
        elmt_reactant829 = 1.0;
        elmt_reactant826 = 1.0;
        elmt_reactant824 = 1.0;
        elmt_reactant823 = 1.0;
        elmt_reactant833 = 1.0;
        elmt_reactant832 = 1.0;
        elmt_reactant838 = 1.0;
        elmt_reactant835 = 1.0;
        elmt_reactant15 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_reactant844 = 1.0;
        elmt_reactant601 = 1.0;
        elmt_reactant600 = 1.0;
        elmt_reactant842 = 1.0;
        elmt_reactant841 = 1.0;
        elmt_reactant808 = 1.0;
        elmt_reactant806 = 1.0;
        elmt_reactant805 = 1.0;
        elmt_reactant802 = 1.0;
        elmt_reactant811 = 1.0;
        elmt_reactant817 = 1.0;
        elmt_reactant815 = 1.0;
        elmt_reactant814 = 1.0;
        elmt_reactant820 = 1.0;
        elmt_product729 = 1.0;
        elmt_product731 = 1.0;
        elmt_product737 = 1.0;
        elmt_product739 = 1.0;
        elmt_product733 = 1.0;
        elmt_product735 = 1.0;
        elmt_product500 = 1.0;
        elmt_product741 = 1.0;
        elmt_product506 = 1.0;
        elmt_product747 = 1.0;
        elmt_product508 = 1.0;
        elmt_product749 = 1.0;
        elmt_product502 = 1.0;
        elmt_product744 = 1.0;
        elmt_product746 = 1.0;
        elmt_product503 = 1.0;
        elmt_product707 = 1.0;
        elmt_product715 = 1.0;
        elmt_product717 = 1.0;
        elmt_product710 = 1.0;
        elmt_product713 = 1.0;
        elmt_product712 = 1.0;
        elmt_product719 = 1.0;
        elmt_product725 = 1.0;
        elmt_product727 = 1.0;
        elmt_product721 = 1.0;
        elmt_product723 = 1.0;
        elmt_reactant84 = 1.0;
        elmt_reactant81 = 1.0;
        elmt_reactant82 = 1.0;
        elmt_reactant87 = 1.0;
        elmt_reactant96 = 1.0;
        elmt_reactant97 = 1.0;
        elmt_reactant90 = 1.0;
        elmt_reactant91 = 1.0;
        elmt_reactant93 = 1.0;
        elmt_reactant99 = 1.0;
        elmt_product704 = 1.0;
        elmt_product706 = 1.0;
        elmt_product700 = 1.0;
        elmt_product701 = 1.0;
        elmt_reactant63 = 1.0;
        elmt_reactant64 = 1.0;
        elmt_reactant60 = 1.0;
        elmt_reactant69 = 1.0;
        elmt_reactant66 = 1.0;
        elmt_reactant72 = 1.0;
        elmt_reactant73 = 1.0;
        elmt_reactant75 = 1.0;
        elmt_reactant78 = 1.0;
        elmt_product575 = 1.0;
        elmt_product332 = 1.0;
        elmt_product574 = 1.0;
        elmt_product335 = 1.0;
        elmt_product334 = 1.0;
        elmt_product572 = 1.0;
        elmt_product578 = 1.0;
        elmt_product338 = 1.0;
        elmt_product580 = 1.0;
        elmt_product344 = 1.0;
        elmt_product586 = 1.0;
        elmt_product101 = 1.0;
        elmt_product346 = 1.0;
        elmt_product104 = 1.0;
        elmt_product587 = 1.0;
        elmt_product340 = 1.0;
        elmt_product581 = 1.0;
        elmt_product100 = 1.0;
        elmt_product584 = 1.0;
        elmt_product341 = 1.0;
        elmt_product106 = 1.0;
        elmt_product347 = 1.0;
        elmt_product107 = 1.0;
        elmt_product11 = 1.0;
        elmt_reactant297 = 1.0;
        elmt_product311 = 1.0;
        elmt_product795 = 1.0;
        elmt_product310 = 1.0;
        elmt_product794 = 1.0;
        elmt_reactant295 = 1.0;
        elmt_product554 = 1.0;
        elmt_reactant294 = 1.0;
        elmt_product791 = 1.0;
        elmt_product551 = 1.0;
        elmt_reactant291 = 1.0;
        elmt_product550 = 1.0;
        elmt_product792 = 1.0;
        elmt_product557 = 1.0;
        elmt_product314 = 1.0;
        elmt_product556 = 1.0;
        elmt_product798 = 1.0;
        elmt_product317 = 1.0;
        elmt_product316 = 1.0;
        elmt_product23 = 1.0;
        elmt_product22 = 1.0;
        elmt_product20 = 1.0;
        elmt_product322 = 1.0;
        elmt_product563 = 1.0;
        elmt_product566 = 1.0;
        elmt_product323 = 1.0;
        elmt_product560 = 1.0;
        elmt_product320 = 1.0;
        elmt_product562 = 1.0;
        elmt_product16 = 1.0;
        elmt_product329 = 1.0;
        elmt_product14 = 1.0;
        elmt_product13 = 1.0;
        elmt_product326 = 1.0;
        elmt_product568 = 1.0;
        elmt_product328 = 1.0;
        elmt_product569 = 1.0;
        elmt_product17 = 1.0;
        elmt_product773 = 1.0;
        elmt_product530 = 1.0;
        elmt_product533 = 1.0;
        elmt_reactant273 = 1.0;
        elmt_product532 = 1.0;
        elmt_product774 = 1.0;
        elmt_reactant271 = 1.0;
        elmt_reactant270 = 1.0;
        elmt_product771 = 1.0;
        elmt_product539 = 1.0;
        elmt_product538 = 1.0;
        elmt_reactant279 = 1.0;
        elmt_product777 = 1.0;
        elmt_product776 = 1.0;
        elmt_reactant277 = 1.0;
        elmt_product536 = 1.0;
        elmt_reactant276 = 1.0;
        elmt_product542 = 1.0;
        elmt_reactant285 = 1.0;
        elmt_product783 = 1.0;
        elmt_product302 = 1.0;
        elmt_product544 = 1.0;
        elmt_product786 = 1.0;
        elmt_reactant283 = 1.0;
        elmt_product785 = 1.0;
        elmt_reactant282 = 1.0;
        elmt_product780 = 1.0;
        elmt_product782 = 1.0;
        elmt_product308 = 1.0;
        elmt_product304 = 1.0;
        elmt_product545 = 1.0;
        elmt_reactant289 = 1.0;
        elmt_product548 = 1.0;
        elmt_reactant288 = 1.0;
        elmt_product305 = 1.0;
        elmt_product789 = 1.0;
        elmt_product509 = 1.0;
        elmt_reactant253 = 1.0;
        elmt_reactant495 = 1.0;
        elmt_reactant252 = 1.0;
        elmt_product750 = 1.0;
        elmt_reactant493 = 1.0;
        elmt_product753 = 1.0;
        elmt_reactant492 = 1.0;
        elmt_product759 = 1.0;
        elmt_product758 = 1.0;
        elmt_reactant259 = 1.0;
        elmt_reactant258 = 1.0;
        elmt_product518 = 1.0;
        elmt_reactant499 = 1.0;
        elmt_product755 = 1.0;
        elmt_product512 = 1.0;
        elmt_reactant498 = 1.0;
        elmt_reactant255 = 1.0;
        elmt_product515 = 1.0;
        elmt_product514 = 1.0;
        elmt_product756 = 1.0;
        elmt_reactant264 = 1.0;
        elmt_product520 = 1.0;
        elmt_product762 = 1.0;
        elmt_product764 = 1.0;
        elmt_reactant261 = 1.0;
        elmt_product521 = 1.0;
        elmt_product527 = 1.0;
        elmt_product524 = 1.0;
        elmt_reactant267 = 1.0;
        elmt_product765 = 1.0;
        elmt_product526 = 1.0;
        elmt_product768 = 1.0;
        elmt_reactant265 = 1.0;
        elmt_product767 = 1.0;
        elmt_product74 = 1.0;
        elmt_product71 = 1.0;
        elmt_product77 = 1.0;
        elmt_product76 = 1.0;
        elmt_reactant229 = 1.0;
        elmt_product170 = 1.0;
        elmt_product173 = 1.0;
        elmt_product172 = 1.0;
        elmt_product70 = 1.0;
        elmt_product179 = 1.0;
        elmt_reactant231 = 1.0;
        elmt_product178 = 1.0;
        elmt_reactant471 = 1.0;
        elmt_product176 = 1.0;
        elmt_reactant237 = 1.0;
        elmt_product68 = 1.0;
        elmt_reactant235 = 1.0;
        elmt_reactant477 = 1.0;
        elmt_reactant234 = 1.0;
        elmt_reactant475 = 1.0;
        elmt_reactant474 = 1.0;
        elmt_product85 = 1.0;
        elmt_product83 = 1.0;
        elmt_product89 = 1.0;
        elmt_product88 = 1.0;
        elmt_product86 = 1.0;
        elmt_product182 = 1.0;
        elmt_product184 = 1.0;
        elmt_product80 = 1.0;
        elmt_reactant241 = 1.0;
        elmt_reactant483 = 1.0;
        elmt_reactant240 = 1.0;
        elmt_reactant481 = 1.0;
        elmt_reactant480 = 1.0;
        elmt_product185 = 1.0;
        elmt_product188 = 1.0;
        elmt_reactant249 = 1.0;
        elmt_product79 = 1.0;
        elmt_reactant247 = 1.0;
        elmt_reactant489 = 1.0;
        elmt_reactant246 = 1.0;
        elmt_reactant487 = 1.0;
        elmt_reactant486 = 1.0;
        elmt_reactant243 = 1.0;
        elmt_product95 = 1.0;
        elmt_product94 = 1.0;
        elmt_product98 = 1.0;
        elmt_reactant207 = 1.0;
        elmt_product392 = 1.0;
        elmt_product92 = 1.0;
        elmt_reactant693 = 1.0;
        elmt_reactant451 = 1.0;
        elmt_reactant450 = 1.0;
        elmt_product398 = 1.0;
        elmt_reactant691 = 1.0;
        elmt_reactant690 = 1.0;
        elmt_product158 = 1.0;
        elmt_product395 = 1.0;
        elmt_product152 = 1.0;
        elmt_product394 = 1.0;
        elmt_product155 = 1.0;
        elmt_product154 = 1.0;
        elmt_reactant217 = 1.0;
        elmt_reactant459 = 1.0;
        elmt_reactant216 = 1.0;
        elmt_reactant699 = 1.0;
        elmt_reactant457 = 1.0;
        elmt_reactant456 = 1.0;
        elmt_reactant697 = 1.0;
        elmt_reactant213 = 1.0;
        elmt_reactant696 = 1.0;
        elmt_reactant211 = 1.0;
        elmt_reactant453 = 1.0;
        elmt_reactant210 = 1.0;
        elmt_reactant219 = 1.0;
        elmt_product160 = 1.0;
        elmt_product161 = 1.0;
        elmt_reactant462 = 1.0;
        elmt_product167 = 1.0;
        elmt_product164 = 1.0;
        elmt_product166 = 1.0;
        elmt_reactant228 = 1.0;
        elmt_reactant469 = 1.0;
        elmt_reactant468 = 1.0;
        elmt_reactant225 = 1.0;
        elmt_reactant223 = 1.0;
        elmt_reactant465 = 1.0;
        elmt_reactant222 = 1.0;
        elmt_reactant463 = 1.0;
        elmt_product34 = 1.0;
        elmt_reactant429 = 1.0;
        elmt_product32 = 1.0;
        elmt_reactant669 = 1.0;
        elmt_product31 = 1.0;
        elmt_reactant427 = 1.0;
        elmt_product371 = 1.0;
        elmt_product370 = 1.0;
        elmt_product377 = 1.0;
        elmt_product134 = 1.0;
        elmt_product376 = 1.0;
        elmt_product137 = 1.0;
        elmt_product136 = 1.0;
        elmt_product131 = 1.0;
        elmt_product130 = 1.0;
        elmt_product374 = 1.0;
        elmt_reactant679 = 1.0;
        elmt_reactant678 = 1.0;
        elmt_product26 = 1.0;
        elmt_product25 = 1.0;
        elmt_reactant435 = 1.0;
        elmt_reactant675 = 1.0;
        elmt_reactant433 = 1.0;
        elmt_reactant432 = 1.0;
        elmt_reactant673 = 1.0;
        elmt_product29 = 1.0;
        elmt_reactant672 = 1.0;
        elmt_product41 = 1.0;
        elmt_product40 = 1.0;
        elmt_product44 = 1.0;
        elmt_product43 = 1.0;
        elmt_reactant439 = 1.0;
        elmt_reactant438 = 1.0;
        elmt_product380 = 1.0;
        elmt_product140 = 1.0;
        elmt_product382 = 1.0;
        elmt_product146 = 1.0;
        elmt_product388 = 1.0;
        elmt_reactant681 = 1.0;
        elmt_product148 = 1.0;
        elmt_product389 = 1.0;
        elmt_product142 = 1.0;
        elmt_product383 = 1.0;
        elmt_product386 = 1.0;
        elmt_product143 = 1.0;
        elmt_product38 = 1.0;
        elmt_reactant205 = 1.0;
        elmt_reactant447 = 1.0;
        elmt_reactant204 = 1.0;
        elmt_reactant687 = 1.0;
        elmt_product35 = 1.0;
        elmt_reactant445 = 1.0;
        elmt_reactant444 = 1.0;
        elmt_reactant685 = 1.0;
        elmt_product149 = 1.0;
        elmt_reactant201 = 1.0;
        elmt_reactant684 = 1.0;
        elmt_reactant441 = 1.0;
        elmt_product52 = 1.0;
        elmt_product50 = 1.0;
        elmt_reactant409 = 1.0;
        elmt_product56 = 1.0;
        elmt_reactant408 = 1.0;
        elmt_reactant649 = 1.0;
        elmt_reactant648 = 1.0;
        elmt_product53 = 1.0;
        elmt_reactant405 = 1.0;
        elmt_product590 = 1.0;
        elmt_product113 = 1.0;
        elmt_product112 = 1.0;
        elmt_product596 = 1.0;
        elmt_product599 = 1.0;
        elmt_product356 = 1.0;
        elmt_product598 = 1.0;
        elmt_product593 = 1.0;
        elmt_product350 = 1.0;
        elmt_product592 = 1.0;
        elmt_product353 = 1.0;
        elmt_product352 = 1.0;
        elmt_product110 = 1.0;
        elmt_reactant657 = 1.0;
        elmt_product49 = 1.0;
        elmt_reactant415 = 1.0;
        elmt_reactant414 = 1.0;
        elmt_reactant655 = 1.0;
        elmt_product47 = 1.0;
        elmt_reactant654 = 1.0;
        elmt_reactant411 = 1.0;
        elmt_product359 = 1.0;
        elmt_product116 = 1.0;
        elmt_product358 = 1.0;
        elmt_reactant651 = 1.0;
        elmt_product119 = 1.0;
        elmt_product118 = 1.0;
        elmt_product62 = 1.0;
        elmt_product61 = 1.0;
        elmt_product67 = 1.0;
        elmt_product65 = 1.0;
        elmt_reactant417 = 1.0;
        elmt_reactant660 = 1.0;
        elmt_product124 = 1.0;
        elmt_product365 = 1.0;
        elmt_product368 = 1.0;
        elmt_product125 = 1.0;
        elmt_product362 = 1.0;
        elmt_product122 = 1.0;
        elmt_product364 = 1.0;
        elmt_reactant426 = 1.0;
        elmt_reactant667 = 1.0;
        elmt_product59 = 1.0;
        elmt_reactant666 = 1.0;
        elmt_product58 = 1.0;
        elmt_reactant423 = 1.0;
        elmt_product128 = 1.0;
        elmt_reactant663 = 1.0;
        elmt_reactant421 = 1.0;
        elmt_reactant420 = 1.0;
        elmt_reactant661 = 1.0;
        elmt_reactant507 = 1.0;
        elmt_reactant748 = 1.0;
        elmt_reactant505 = 1.0;
        elmt_reactant504 = 1.0;
        elmt_reactant513 = 1.0;
        elmt_reactant754 = 1.0;
        elmt_reactant511 = 1.0;
        elmt_reactant510 = 1.0;
        elmt_reactant752 = 1.0;
        elmt_reactant751 = 1.0;
        elmt_reactant519 = 1.0;
        elmt_reactant517 = 1.0;
        elmt_reactant516 = 1.0;
        elmt_reactant757 = 1.0;
        elmt_reactant525 = 1.0;
        elmt_reactant766 = 1.0;
        elmt_reactant523 = 1.0;
        elmt_reactant522 = 1.0;
        elmt_reactant763 = 1.0;
        elmt_reactant761 = 1.0;
        elmt_reactant760 = 1.0;
        elmt_reactant728 = 1.0;
        elmt_reactant726 = 1.0;
        elmt_reactant724 = 1.0;
        elmt_reactant734 = 1.0;
        elmt_reactant732 = 1.0;
        elmt_reactant730 = 1.0;
        elmt_reactant738 = 1.0;
        elmt_reactant736 = 1.0;
        elmt_reactant745 = 1.0;
        elmt_reactant501 = 1.0;
        elmt_reactant743 = 1.0;
        elmt_reactant742 = 1.0;
        elmt_reactant740 = 1.0;
        elmt_reactant709 = 1.0;
        elmt_reactant708 = 1.0;
        elmt_reactant705 = 1.0;
        elmt_reactant703 = 1.0;
        elmt_reactant702 = 1.0;
        elmt_reactant711 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_reactant718 = 1.0;
        elmt_reactant716 = 1.0;
        elmt_reactant714 = 1.0;
        elmt_reactant722 = 1.0;
        elmt_reactant720 = 1.0;
        elmt_product194 = 1.0;
        elmt_product191 = 1.0;
        elmt_product190 = 1.0;
        elmt_product197 = 1.0;
        elmt_product196 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product608 = 1.0;
        elmt_product610 = 1.0;
        elmt_product852 = 1.0;
        elmt_product616 = 1.0;
        elmt_product858 = 1.0;
        elmt_product857 = 1.0;
        elmt_product617 = 1.0;
        elmt_product854 = 1.0;
        elmt_product611 = 1.0;
        elmt_product614 = 1.0;
        elmt_product855 = 1.0;
        elmt_product861 = 1.0;
        elmt_product863 = 1.0;
        elmt_product620 = 1.0;
        elmt_product626 = 1.0;
        elmt_product629 = 1.0;
        elmt_product628 = 1.0;
        elmt_product623 = 1.0;
        elmt_product622 = 1.0;
        elmt_product864 = 1.0;
        elmt_product867 = 1.0;
        elmt_product866 = 1.0;
        elmt_product828 = 1.0;
        elmt_product830 = 1.0;
        elmt_product836 = 1.0;
        elmt_product837 = 1.0;
        elmt_product831 = 1.0;
        elmt_product834 = 1.0;
        elmt_product8 = 1.0;
        elmt_product7 = 1.0;
        elmt_product839 = 1.0;
        elmt_product5 = 1.0;
        elmt_product4 = 1.0;
        elmt_product2 = 1.0;
        elmt_product840 = 1.0;
        elmt_product605 = 1.0;
        elmt_product604 = 1.0;
        elmt_product846 = 1.0;
        elmt_product849 = 1.0;
        elmt_product848 = 1.0;
        elmt_product843 = 1.0;
        elmt_product845 = 1.0;
        elmt_product602 = 1.0;
        elmt_product807 = 1.0;
        elmt_product809 = 1.0;
        elmt_product813 = 1.0;
        elmt_product816 = 1.0;
        elmt_product810 = 1.0;
        elmt_product812 = 1.0;
        elmt_product818 = 1.0;
        elmt_product819 = 1.0;
        elmt_product825 = 1.0;
        elmt_product827 = 1.0;
        elmt_product821 = 1.0;
        elmt_product822 = 1.0;
        elmt_product803 = 1.0;
        elmt_product804 = 1.0;
        elmt_product801 = 1.0;
        elmt_product800 = 1.0;
        elmt_reactant198 = 1.0;
        elmt_product212 = 1.0;
        elmt_product454 = 1.0;
        elmt_product695 = 1.0;
        elmt_product698 = 1.0;
        elmt_product214 = 1.0;
        elmt_reactant195 = 1.0;
        elmt_product455 = 1.0;
        elmt_product692 = 1.0;
        elmt_reactant193 = 1.0;
        elmt_product694 = 1.0;
        elmt_reactant192 = 1.0;
        elmt_product452 = 1.0;
        elmt_product458 = 1.0;
        elmt_product215 = 1.0;
        elmt_product218 = 1.0;
        elmt_reactant199 = 1.0;
        elmt_product464 = 1.0;
        elmt_product467 = 1.0;
        elmt_product224 = 1.0;
        elmt_product466 = 1.0;
        elmt_product461 = 1.0;
        elmt_product460 = 1.0;
        elmt_product221 = 1.0;
        elmt_product220 = 1.0;
        elmt_product227 = 1.0;
        elmt_product226 = 1.0;
        elmt_product674 = 1.0;
        elmt_reactant175 = 1.0;
        elmt_product431 = 1.0;
        elmt_product676 = 1.0;
        elmt_reactant174 = 1.0;
        elmt_product434 = 1.0;
        elmt_product670 = 1.0;
        elmt_reactant171 = 1.0;
        elmt_product430 = 1.0;
        elmt_product671 = 1.0;
        elmt_product436 = 1.0;
        elmt_product677 = 1.0;
        elmt_reactant177 = 1.0;
        elmt_product437 = 1.0;
        elmt_reactant187 = 1.0;
        elmt_product443 = 1.0;
        elmt_reactant186 = 1.0;
        elmt_product200 = 1.0;
        elmt_product442 = 1.0;
        elmt_product203 = 1.0;
        elmt_product686 = 1.0;
        elmt_product202 = 1.0;
        elmt_reactant183 = 1.0;
        elmt_product680 = 1.0;
        elmt_product683 = 1.0;
        elmt_reactant181 = 1.0;
        elmt_product682 = 1.0;
        elmt_reactant180 = 1.0;
        elmt_product440 = 1.0;
        elmt_product209 = 1.0;
        elmt_product208 = 1.0;
        elmt_product689 = 1.0;
        elmt_product688 = 1.0;
        elmt_product446 = 1.0;
        elmt_reactant189 = 1.0;
        elmt_product449 = 1.0;
        elmt_product206 = 1.0;
        elmt_product448 = 1.0;
        elmt_product652 = 1.0;
        elmt_reactant396 = 1.0;
        elmt_product410 = 1.0;
        elmt_reactant153 = 1.0;
        elmt_product412 = 1.0;
        elmt_product653 = 1.0;
        elmt_reactant151 = 1.0;
        elmt_reactant393 = 1.0;
        elmt_reactant150 = 1.0;
        elmt_reactant391 = 1.0;
        elmt_product650 = 1.0;
        elmt_reactant390 = 1.0;
        elmt_product418 = 1.0;
        elmt_product659 = 1.0;
        elmt_reactant159 = 1.0;
        elmt_product419 = 1.0;
        elmt_product656 = 1.0;
        elmt_reactant157 = 1.0;
        elmt_reactant399 = 1.0;
        elmt_product413 = 1.0;
        elmt_product658 = 1.0;
        elmt_reactant156 = 1.0;
        elmt_product416 = 1.0;
        elmt_reactant397 = 1.0;
        elmt_reactant165 = 1.0;
        elmt_product662 = 1.0;
        elmt_product665 = 1.0;
        elmt_reactant163 = 1.0;
        elmt_product664 = 1.0;
        elmt_reactant162 = 1.0;
        elmt_product422 = 1.0;
        elmt_product428 = 1.0;
        elmt_reactant169 = 1.0;
        elmt_product425 = 1.0;
        elmt_reactant168 = 1.0;
        elmt_product424 = 1.0;
        elmt_product668 = 1.0;
        elmt_reactant132 = 1.0;
        elmt_product872 = 1.0;
        elmt_reactant373 = 1.0;
        elmt_product632 = 1.0;
        elmt_reactant372 = 1.0;
        elmt_product873 = 1.0;
        elmt_product870 = 1.0;
        elmt_product638 = 1.0;
        elmt_reactant139 = 1.0;
        elmt_product879 = 1.0;
        elmt_reactant138 = 1.0;
        elmt_reactant379 = 1.0;
        elmt_product634 = 1.0;
        elmt_product876 = 1.0;
        elmt_reactant378 = 1.0;
        elmt_reactant135 = 1.0;
        elmt_product875 = 1.0;
        elmt_product635 = 1.0;
        elmt_reactant133 = 1.0;
        elmt_reactant375 = 1.0;
        elmt_product641 = 1.0;
        elmt_reactant385 = 1.0;
        elmt_product640 = 1.0;
        elmt_product882 = 1.0;
        elmt_reactant384 = 1.0;
        elmt_product885 = 1.0;
        elmt_reactant141 = 1.0;
        elmt_product401 = 1.0;
        elmt_product884 = 1.0;
        elmt_product400 = 1.0;
        elmt_reactant381 = 1.0;
        elmt_product881 = 1.0;
        elmt_product407 = 1.0;
        elmt_product406 = 1.0;
        elmt_reactant147 = 1.0;
        elmt_product644 = 1.0;
        elmt_product647 = 1.0;
        elmt_reactant145 = 1.0;
        elmt_reactant387 = 1.0;
        elmt_product646 = 1.0;
        elmt_reactant144 = 1.0;
        elmt_product404 = 1.0;
        elmt_reactant109 = 1.0;
        elmt_reactant108 = 1.0;
        elmt_product292 = 1.0;
        elmt_product293 = 1.0;
        elmt_product290 = 1.0;
        elmt_reactant594 = 1.0;
        elmt_reactant351 = 1.0;
        elmt_product299 = 1.0;
        elmt_reactant591 = 1.0;
        elmt_product296 = 1.0;
        elmt_product298 = 1.0;
        elmt_reactant117 = 1.0;
        elmt_reactant115 = 1.0;
        elmt_reactant357 = 1.0;
        elmt_reactant114 = 1.0;
        elmt_reactant355 = 1.0;
        elmt_reactant597 = 1.0;
        elmt_reactant354 = 1.0;
        elmt_reactant111 = 1.0;
        elmt_reactant595 = 1.0;
        elmt_reactant121 = 1.0;
        elmt_reactant363 = 1.0;
        elmt_reactant120 = 1.0;
        elmt_reactant361 = 1.0;
        elmt_reactant360 = 1.0;
        elmt_reactant129 = 1.0;
        elmt_reactant127 = 1.0;
        elmt_reactant369 = 1.0;
        elmt_reactant126 = 1.0;
        elmt_reactant367 = 1.0;
        elmt_reactant366 = 1.0;
        elmt_reactant123 = 1.0;
        elmt_product272 = 1.0;
        elmt_reactant330 = 1.0;
        elmt_product278 = 1.0;
        elmt_reactant571 = 1.0;
        elmt_reactant570 = 1.0;
        elmt_product274 = 1.0;
        elmt_product275 = 1.0;
        elmt_reactant337 = 1.0;
        elmt_reactant579 = 1.0;
        elmt_reactant336 = 1.0;
        elmt_reactant577 = 1.0;
        elmt_reactant576 = 1.0;
        elmt_reactant333 = 1.0;
        elmt_reactant331 = 1.0;
        elmt_reactant573 = 1.0;
        elmt_reactant339 = 1.0;
        elmt_product281 = 1.0;
        elmt_product280 = 1.0;
        elmt_reactant583 = 1.0;
        elmt_reactant582 = 1.0;
        elmt_product284 = 1.0;
        elmt_product287 = 1.0;
        elmt_product286 = 1.0;
        elmt_reactant349 = 1.0;
        elmt_reactant348 = 1.0;
        elmt_reactant105 = 1.0;
        elmt_reactant589 = 1.0;
        elmt_reactant588 = 1.0;
        elmt_reactant345 = 1.0;
        elmt_reactant103 = 1.0;
        elmt_reactant102 = 1.0;
        elmt_reactant343 = 1.0;
        elmt_reactant585 = 1.0;
        elmt_reactant342 = 1.0;
        elmt_reactant309 = 1.0;
        elmt_reactant307 = 1.0;
        elmt_reactant549 = 1.0;
        elmt_reactant306 = 1.0;
        elmt_product490 = 1.0;
        elmt_product250 = 1.0;
        elmt_product491 = 1.0;
        elmt_product256 = 1.0;
        elmt_product497 = 1.0;
        elmt_reactant790 = 1.0;
        elmt_product257 = 1.0;
        elmt_product494 = 1.0;
        elmt_product251 = 1.0;
        elmt_product254 = 1.0;
        elmt_product496 = 1.0;
        elmt_reactant558 = 1.0;
        elmt_reactant315 = 1.0;
        elmt_reactant799 = 1.0;
        elmt_reactant313 = 1.0;
        elmt_reactant555 = 1.0;
        elmt_reactant797 = 1.0;
        elmt_reactant312 = 1.0;
        elmt_reactant796 = 1.0;
        elmt_reactant553 = 1.0;
        elmt_reactant552 = 1.0;
        elmt_reactant793 = 1.0;
        elmt_reactant319 = 1.0;
        elmt_reactant318 = 1.0;
        elmt_reactant559 = 1.0;
        elmt_product260 = 1.0;
        elmt_reactant561 = 1.0;
        elmt_product266 = 1.0;
        elmt_product269 = 1.0;
        elmt_product268 = 1.0;
        elmt_product263 = 1.0;
        elmt_product262 = 1.0;
        elmt_reactant327 = 1.0;
        elmt_reactant325 = 1.0;
        elmt_reactant567 = 1.0;
        elmt_reactant324 = 1.0;
        elmt_reactant565 = 1.0;
        elmt_reactant564 = 1.0;
        elmt_reactant321 = 1.0;
        elmt_reactant529 = 1.0;
        elmt_reactant528 = 1.0;
        elmt_reactant769 = 1.0;
        elmt_product470 = 1.0;
        elmt_product476 = 1.0;
        elmt_reactant770 = 1.0;
        elmt_product233 = 1.0;
        elmt_product236 = 1.0;
        elmt_product478 = 1.0;
        elmt_product230 = 1.0;
        elmt_product472 = 1.0;
        elmt_product232 = 1.0;
        elmt_product473 = 1.0;
        elmt_reactant778 = 1.0;
        elmt_reactant535 = 1.0;
        elmt_reactant534 = 1.0;
        elmt_reactant775 = 1.0;
        elmt_product238 = 1.0;
        elmt_reactant531 = 1.0;
        elmt_product479 = 1.0;
        elmt_reactant772 = 1.0;
        elmt_product239 = 1.0;
        elmt_reactant537 = 1.0;
        elmt_reactant779 = 1.0;
        elmt_product245 = 1.0;
        elmt_reactant781 = 1.0;
        elmt_product244 = 1.0;
        elmt_product488 = 1.0;
        elmt_product482 = 1.0;
        elmt_product485 = 1.0;
        elmt_product242 = 1.0;
        elmt_product484 = 1.0;
        elmt_reactant547 = 1.0;
        elmt_reactant546 = 1.0;
        elmt_reactant788 = 1.0;
        elmt_reactant303 = 1.0;
        elmt_reactant787 = 1.0;
        elmt_reactant301 = 1.0;
        elmt_reactant543 = 1.0;
        elmt_reactant300 = 1.0;
        elmt_product248 = 1.0;
        elmt_reactant784 = 1.0;
        elmt_reactant541 = 1.0;
        elmt_reactant540 = 1.0;


    equation
        elmt_Reaction109 = (elmt_Reaction109_elmt_kpon * elmt_K_2_1 * elmt_S_m1_m1_m1);
        elmt_Reaction111 = (elmt_Reaction111_elmt_kpon * elmt_K_2_1 * elmt_S_m1_m1_0);
        elmt_Reaction232 = (elmt_Reaction232_elmt_koff * elmt_S_2_1_0);
        elmt_Reaction110 = (elmt_Reaction110_elmt_kpoff * elmt_S_m1_1_m1);
        elmt_Reaction231 = (elmt_Reaction231_elmt_kon * elmt_K_3_0 * elmt_S_2_1_m1);
        elmt_Reaction230 = (elmt_Reaction230_elmt_kpoff * elmt_S_2_0_1);
        elmt_Reaction115 = (elmt_Reaction115_elmt_kpon * elmt_K_2_2 * elmt_S_m1_m1_m1);
        elmt_Reaction236 = (elmt_Reaction236_elmt_koff * elmt_S_2_2_0);
        elmt_Reaction114 = (elmt_Reaction114_elmt_kpoff * elmt_S_m1_1_1);
        elmt_Reaction235 = (elmt_Reaction235_elmt_kon * elmt_K_3_0 * elmt_S_2_2_m1);
        elmt_Reaction113 = (elmt_Reaction113_elmt_kpon * elmt_K_2_1 * elmt_S_m1_m1_1);
        elmt_Reaction234 = (elmt_Reaction234_elmt_kpoff * elmt_S_2_1_1);
        elmt_Reaction112 = (elmt_Reaction112_elmt_kpoff * elmt_S_m1_1_0);
        elmt_Reaction233 = (elmt_Reaction233_elmt_kpon * elmt_K_3_1 * elmt_S_2_1_m1);
        elmt_Reaction119 = (elmt_Reaction119_elmt_kpon * elmt_K_2_2 * elmt_S_m1_m1_1);
        elmt_Reaction118 = (elmt_Reaction118_elmt_kpoff * elmt_S_m1_2_0);
        elmt_Reaction239 = (elmt_Reaction239_elmt_k7 * elmt_S_0_2_m1);
        elmt_Reaction117 = (elmt_Reaction117_elmt_kpon * elmt_K_2_2 * elmt_S_m1_m1_0);
        elmt_Reaction238 = (elmt_Reaction238_elmt_kpoff * elmt_S_2_2_1);
        elmt_Reaction116 = (elmt_Reaction116_elmt_kpoff * elmt_S_m1_2_m1);
        elmt_Reaction237 = (elmt_Reaction237_elmt_kpon * elmt_K_3_1 * elmt_S_2_2_m1);
        elmt_Reaction219 = (elmt_Reaction219_elmt_kon * elmt_K_3_0 * elmt_S_1_2_m1);
        elmt_Reaction100 = (elmt_Reaction100_elmt_kpoff * elmt_S_2_2_0);
        elmt_Reaction221 = (elmt_Reaction221_elmt_kpon * elmt_K_3_1 * elmt_S_1_2_m1);
        elmt_Reaction220 = (elmt_Reaction220_elmt_koff * elmt_S_1_2_0);
        elmt_Reaction104 = (elmt_Reaction104_elmt_koff * elmt_S_m1_0_m1);
        elmt_Reaction225 = (elmt_Reaction225_elmt_kpon * elmt_K_3_1 * elmt_S_2_m1_m1);
        elmt_Reaction103 = (elmt_Reaction103_elmt_kon * elmt_K_2_0 * elmt_S_m1_m1_m1);
        elmt_Reaction224 = (elmt_Reaction224_elmt_koff * elmt_S_2_m1_0);
        elmt_Reaction102 = (elmt_Reaction102_elmt_kpoff * elmt_S_2_2_1);
        elmt_Reaction223 = (elmt_Reaction223_elmt_kon * elmt_K_3_0 * elmt_S_2_m1_m1);
        elmt_Reaction101 = (elmt_Reaction101_elmt_kpon * elmt_K_1_2 * elmt_S_m1_2_1);
        elmt_Reaction222 = (elmt_Reaction222_elmt_kpoff * elmt_S_1_2_1);
        elmt_Reaction108 = (elmt_Reaction108_elmt_koff * elmt_S_m1_0_1);
        elmt_Reaction229 = (elmt_Reaction229_elmt_kpon * elmt_K_3_1 * elmt_S_2_0_m1);
        elmt_Reaction107 = (elmt_Reaction107_elmt_kon * elmt_K_2_0 * elmt_S_m1_m1_1);
        elmt_Reaction228 = (elmt_Reaction228_elmt_koff * elmt_S_2_0_0);
        elmt_Reaction106 = (elmt_Reaction106_elmt_koff * elmt_S_m1_0_0);
        elmt_Reaction227 = (elmt_Reaction227_elmt_kon * elmt_K_3_0 * elmt_S_2_0_m1);
        elmt_Reaction105 = (elmt_Reaction105_elmt_kon * elmt_K_2_0 * elmt_S_m1_m1_0);
        elmt_Reaction226 = (elmt_Reaction226_elmt_kpoff * elmt_S_2_m1_1);
        elmt_Reaction209 = (elmt_Reaction209_elmt_kpon * elmt_K_3_1 * elmt_S_1_m1_m1);
        elmt_Reaction208 = (elmt_Reaction208_elmt_koff * elmt_S_1_m1_0);
        elmt_Reaction210 = (elmt_Reaction210_elmt_kpoff * elmt_S_1_m1_1);
        elmt_Reaction214 = (elmt_Reaction214_elmt_kpoff * elmt_S_1_0_1);
        elmt_Reaction213 = (elmt_Reaction213_elmt_kpon * elmt_K_3_1 * elmt_S_1_0_m1);
        elmt_Reaction212 = (elmt_Reaction212_elmt_koff * elmt_S_1_0_0);
        elmt_Reaction211 = (elmt_Reaction211_elmt_kon * elmt_K_3_0 * elmt_S_1_0_m1);
        elmt_Reaction218 = (elmt_Reaction218_elmt_kpoff * elmt_S_1_1_1);
        elmt_Reaction217 = (elmt_Reaction217_elmt_kpon * elmt_K_3_1 * elmt_S_1_1_m1);
        elmt_Reaction216 = (elmt_Reaction216_elmt_koff * elmt_S_1_1_0);
        elmt_Reaction215 = (elmt_Reaction215_elmt_kon * elmt_K_3_0 * elmt_S_1_1_m1);
        elmt_Reaction16 = (elmt_Reaction16_elmt_a6 * elmt_MEKP * elmt_K_2_2);
        elmt_Reaction15 = (elmt_Reaction15_elmt_k5 * elmt_K_K_2_1_3_1);
        elmt_Reaction14 = (elmt_Reaction14_elmt_d5 * elmt_K_K_2_1_3_1);
        elmt_Reaction13 = (elmt_Reaction13_elmt_a5 * elmt_K_2_1 * elmt_K_3_1);
        elmt_Reaction12 = (elmt_Reaction12_elmt_k4 * elmt_K_MEKP_2_1);
        elmt_Reaction11 = (elmt_Reaction11_elmt_d4 * elmt_K_MEKP_2_1);
        elmt_Reaction10 = (elmt_Reaction10_elmt_a4 * elmt_MEKP * elmt_K_2_1);
        elmt_Reaction203 = (elmt_Reaction203_elmt_kon * elmt_K_3_0 * elmt_S_0_2_m1);
        elmt_Reaction202 = (elmt_Reaction202_elmt_kpoff * elmt_S_0_1_1);
        elmt_Reaction201 = (elmt_Reaction201_elmt_kpon * elmt_K_3_1 * elmt_S_0_1_m1);
        elmt_Reaction200 = (elmt_Reaction200_elmt_koff * elmt_S_0_1_0);
        elmt_Reaction207 = (elmt_Reaction207_elmt_kon * elmt_K_3_0 * elmt_S_1_m1_m1);
        elmt_Reaction206 = (elmt_Reaction206_elmt_kpoff * elmt_S_0_2_1);
        elmt_Reaction205 = (elmt_Reaction205_elmt_kpon * elmt_K_3_1 * elmt_S_0_2_m1);
        elmt_Reaction204 = (elmt_Reaction204_elmt_koff * elmt_S_0_2_0);
        elmt_Reaction27 = (elmt_Reaction27_elmt_k9 * elmt_K_K_1_1_2_2);
        elmt_Reaction26 = (elmt_Reaction26_elmt_d9 * elmt_K_K_1_1_2_2);
        elmt_Reaction25 = (elmt_Reaction25_elmt_a9 * elmt_K_1_1 * elmt_K_2_2);
        elmt_Reaction24 = (elmt_Reaction24_elmt_k8 * elmt_K_MAPKP_1_1);
        elmt_Reaction23 = (elmt_Reaction23_elmt_d8 * elmt_K_MAPKP_1_1);
        elmt_Reaction22 = (elmt_Reaction22_elmt_a8 * elmt_MAPKP * elmt_K_1_1);
        elmt_Reaction21 = (elmt_Reaction21_elmt_k7 * elmt_K_K_1_0_2_2);
        elmt_Reaction20 = (elmt_Reaction20_elmt_d7 * elmt_K_K_1_0_2_2);
        elmt_Reaction19 = (elmt_Reaction19_elmt_a7 * elmt_K_1_0 * elmt_K_2_2);
        elmt_Reaction18 = (elmt_Reaction18_elmt_k6 * elmt_K_MEKP_2_2);
        elmt_Reaction17 = (elmt_Reaction17_elmt_d6 * elmt_K_MEKP_2_2);
        elmt_Reaction30 = (elmt_Reaction30_elmt_k10 * elmt_K_MAPKP_1_2);
        elmt_Reaction38 = (elmt_Reaction38_elmt_koff * elmt_S_0_0_m1);
        elmt_Reaction37 = (elmt_Reaction37_elmt_kon * elmt_K_1_0 * elmt_S_m1_0_m1);
        elmt_Reaction36 = (elmt_Reaction36_elmt_koff * elmt_S_0_m1_1);
        elmt_Reaction35 = (elmt_Reaction35_elmt_kon * elmt_K_1_0 * elmt_S_m1_m1_1);
        elmt_Reaction34 = (elmt_Reaction34_elmt_koff * elmt_S_0_m1_0);
        elmt_Reaction33 = (elmt_Reaction33_elmt_kon * elmt_K_1_0 * elmt_S_m1_m1_0);
        elmt_Reaction32 = (elmt_Reaction32_elmt_koff * elmt_S_0_m1_m1);
        elmt_Reaction31 = (elmt_Reaction31_elmt_kon * elmt_K_1_0 * elmt_S_m1_m1_m1);
        elmt_Reaction29 = (elmt_Reaction29_elmt_d10 * elmt_K_MAPKP_1_2);
        elmt_Reaction28 = (elmt_Reaction28_elmt_a10 * elmt_MAPKP * elmt_K_1_2);
        elmt_Reaction300 = (elmt_Reaction300_elmt_k1 * elmt_S_RAFK_2_2_0);
        elmt_Reaction41 = (elmt_Reaction41_elmt_kon * elmt_K_1_0 * elmt_S_m1_0_1);
        elmt_Reaction40 = (elmt_Reaction40_elmt_koff * elmt_S_0_0_0);
        elmt_Reaction49 = (elmt_Reaction49_elmt_kon * elmt_K_1_0 * elmt_S_m1_2_m1);
        elmt_Reaction48 = (elmt_Reaction48_elmt_koff * elmt_S_0_1_1);
        elmt_Reaction47 = (elmt_Reaction47_elmt_kon * elmt_K_1_0 * elmt_S_m1_1_1);
        elmt_Reaction46 = (elmt_Reaction46_elmt_koff * elmt_S_0_1_0);
        elmt_Reaction45 = (elmt_Reaction45_elmt_kon * elmt_K_1_0 * elmt_S_m1_1_0);
        elmt_Reaction44 = (elmt_Reaction44_elmt_koff * elmt_S_0_1_m1);
        elmt_Reaction43 = (elmt_Reaction43_elmt_kon * elmt_K_1_0 * elmt_S_m1_1_m1);
        elmt_Reaction42 = (elmt_Reaction42_elmt_koff * elmt_S_0_0_1);
        elmt_Reaction39 = (elmt_Reaction39_elmt_kon * elmt_K_1_0 * elmt_S_m1_0_0);
        elmt_Reaction52 = (elmt_Reaction52_elmt_koff * elmt_S_0_2_0);
        elmt_Reaction51 = (elmt_Reaction51_elmt_kon * elmt_K_1_0 * elmt_S_m1_2_0);
        elmt_Reaction50 = (elmt_Reaction50_elmt_koff * elmt_S_0_2_m1);
        elmt_Reaction59 = (elmt_Reaction59_elmt_kpon * elmt_K_1_1 * elmt_S_m1_m1_1);
        elmt_Reaction58 = (elmt_Reaction58_elmt_kpoff * elmt_S_1_m1_0);
        elmt_Reaction57 = (elmt_Reaction57_elmt_kpon * elmt_K_1_1 * elmt_S_m1_m1_0);
        elmt_Reaction56 = (elmt_Reaction56_elmt_kpoff * elmt_S_1_m1_m1);
        elmt_Reaction55 = (elmt_Reaction55_elmt_kpon * elmt_K_1_1 * elmt_S_m1_m1_m1);
        elmt_Reaction54 = (elmt_Reaction54_elmt_koff * elmt_S_0_2_1);
        elmt_Reaction53 = (elmt_Reaction53_elmt_kon * elmt_K_1_0 * elmt_S_m1_2_1);
        elmt_Reaction63 = (elmt_Reaction63_elmt_kpon * elmt_K_1_1 * elmt_S_m1_0_0);
        elmt_Reaction62 = (elmt_Reaction62_elmt_kpoff * elmt_S_1_0_m1);
        elmt_Reaction61 = (elmt_Reaction61_elmt_kpon * elmt_K_1_1 * elmt_S_m1_0_m1);
        elmt_Reaction60 = (elmt_Reaction60_elmt_kpoff * elmt_S_1_m1_1);
        elmt_Reaction69 = (elmt_Reaction69_elmt_kpon * elmt_K_1_1 * elmt_S_m1_1_0);
        elmt_Reaction68 = (elmt_Reaction68_elmt_kpoff * elmt_S_1_1_m1);
        elmt_Reaction67 = (elmt_Reaction67_elmt_kpon * elmt_K_1_1 * elmt_S_m1_1_m1);
        elmt_Reaction191 = (elmt_Reaction191_elmt_kon * elmt_K_3_0 * elmt_S_0_m1_m1);
        elmt_Reaction66 = (elmt_Reaction66_elmt_kpoff * elmt_S_1_0_1);
        elmt_Reaction190 = (elmt_Reaction190_elmt_kpoff * elmt_S_m1_2_1);
        elmt_Reaction65 = (elmt_Reaction65_elmt_kpon * elmt_K_1_1 * elmt_S_m1_0_1);
        elmt_Reaction64 = (elmt_Reaction64_elmt_kpoff * elmt_S_1_0_0);
        elmt_Reaction195 = (elmt_Reaction195_elmt_kon * elmt_K_3_0 * elmt_S_0_0_m1);
        elmt_Reaction194 = (elmt_Reaction194_elmt_kpoff * elmt_S_0_m1_1);
        elmt_Reaction193 = (elmt_Reaction193_elmt_kpon * elmt_K_3_1 * elmt_S_0_m1_m1);
        elmt_Reaction192 = (elmt_Reaction192_elmt_koff * elmt_S_0_m1_0);
        elmt_Reaction199 = (elmt_Reaction199_elmt_kon * elmt_K_3_0 * elmt_S_0_1_m1);
        elmt_Reaction198 = (elmt_Reaction198_elmt_kpoff * elmt_S_0_0_1);
        elmt_Reaction197 = (elmt_Reaction197_elmt_kpon * elmt_K_3_1 * elmt_S_0_0_m1);
        elmt_Reaction196 = (elmt_Reaction196_elmt_koff * elmt_S_0_0_0);
        elmt_Reaction74 = (elmt_Reaction74_elmt_kpoff * elmt_S_1_2_m1);
        elmt_Reaction73 = (elmt_Reaction73_elmt_kpon * elmt_K_1_1 * elmt_S_m1_2_m1);
        elmt_Reaction72 = (elmt_Reaction72_elmt_kpoff * elmt_S_1_1_1);
        elmt_Reaction71 = (elmt_Reaction71_elmt_kpon * elmt_K_1_1 * elmt_S_m1_1_1);
        elmt_Reaction70 = (elmt_Reaction70_elmt_kpoff * elmt_S_1_1_0);
        elmt_Reaction79 = (elmt_Reaction79_elmt_kpon * elmt_K_1_2 * elmt_S_m1_m1_m1);
        elmt_Reaction78 = (elmt_Reaction78_elmt_kpoff * elmt_S_1_2_1);
        elmt_Reaction180 = (elmt_Reaction180_elmt_koff * elmt_S_m1_0_0);
        elmt_Reaction77 = (elmt_Reaction77_elmt_kpon * elmt_K_1_1 * elmt_S_m1_2_1);
        elmt_Reaction76 = (elmt_Reaction76_elmt_kpoff * elmt_S_1_2_0);
        elmt_Reaction75 = (elmt_Reaction75_elmt_kpon * elmt_K_1_1 * elmt_S_m1_2_0);
        elmt_Reaction184 = (elmt_Reaction184_elmt_koff * elmt_S_m1_1_0);
        elmt_Reaction183 = (elmt_Reaction183_elmt_kon * elmt_K_3_0 * elmt_S_m1_1_m1);
        elmt_Reaction182 = (elmt_Reaction182_elmt_kpoff * elmt_S_m1_0_1);
        elmt_Reaction181 = (elmt_Reaction181_elmt_kpon * elmt_K_3_1 * elmt_S_m1_0_m1);
        elmt_Reaction188 = (elmt_Reaction188_elmt_koff * elmt_S_m1_2_0);
        elmt_Reaction187 = (elmt_Reaction187_elmt_kon * elmt_K_3_0 * elmt_S_m1_2_m1);
        elmt_Reaction186 = (elmt_Reaction186_elmt_kpoff * elmt_S_m1_1_1);
        elmt_Reaction185 = (elmt_Reaction185_elmt_kpon * elmt_K_3_1 * elmt_S_m1_1_m1);
        elmt_Reaction189 = (elmt_Reaction189_elmt_kpon * elmt_K_3_1 * elmt_S_m1_2_m1);
        elmt_Reaction85 = (elmt_Reaction85_elmt_kpon * elmt_K_1_2 * elmt_S_m1_0_m1);
        elmt_Reaction84 = (elmt_Reaction84_elmt_kpoff * elmt_S_2_m1_1);
        elmt_Reaction83 = (elmt_Reaction83_elmt_kpon * elmt_K_1_2 * elmt_S_m1_m1_1);
        elmt_Reaction82 = (elmt_Reaction82_elmt_kpoff * elmt_S_2_m1_0);
        elmt_Reaction81 = (elmt_Reaction81_elmt_kpon * elmt_K_1_2 * elmt_S_m1_m1_0);
        elmt_Reaction80 = (elmt_Reaction80_elmt_kpoff * elmt_S_2_m1_m1);
        elmt_Reaction89 = (elmt_Reaction89_elmt_kpon * elmt_K_1_2 * elmt_S_m1_0_1);
        elmt_Reaction290 = (elmt_Reaction290_elmt_d1a * elmt_S_RAFK_2_m1_0);
        elmt_Reaction88 = (elmt_Reaction88_elmt_kpoff * elmt_S_2_0_0);
        elmt_Reaction87 = (elmt_Reaction87_elmt_kpon * elmt_K_1_2 * elmt_S_m1_0_0);
        elmt_Reaction86 = (elmt_Reaction86_elmt_kpoff * elmt_S_2_0_m1);
        elmt_Reaction9 = (elmt_Reaction9_elmt_k3 * elmt_K_K_2_0_3_1);
        elmt_Reaction173 = (elmt_Reaction173_elmt_kpon * elmt_K_2_2 * elmt_S_2_m1_1);
        elmt_Reaction294 = (elmt_Reaction294_elmt_k1 * elmt_S_RAFK_2_0_0);
        elmt_Reaction8 = (elmt_Reaction8_elmt_d3 * elmt_K_K_2_0_3_1);
        elmt_Reaction172 = (elmt_Reaction172_elmt_kpoff * elmt_S_2_2_0);
        elmt_Reaction293 = (elmt_Reaction293_elmt_d1a * elmt_S_RAFK_2_0_0);
        elmt_Reaction7 = (elmt_Reaction7_elmt_a3 * elmt_K_2_0 * elmt_K_3_1);
        elmt_Reaction171 = (elmt_Reaction171_elmt_kpon * elmt_K_2_2 * elmt_S_2_m1_0);
        elmt_Reaction292 = (elmt_Reaction292_elmt_k1a * elmt_RAFK * elmt_S_2_0_0);
        elmt_Reaction6 = (elmt_Reaction6_elmt_k2 * elmt_K_RAFP_3_1);
        elmt_Reaction170 = (elmt_Reaction170_elmt_kpoff * elmt_S_2_2_m1);
        elmt_Reaction291 = (elmt_Reaction291_elmt_k1 * elmt_S_RAFK_2_m1_0);
        elmt_Reaction5 = (elmt_Reaction5_elmt_d2 * elmt_K_RAFP_3_1);
        elmt_Reaction177 = (elmt_Reaction177_elmt_kpon * elmt_K_3_1 * elmt_S_m1_m1_m1);
        elmt_Reaction298 = (elmt_Reaction298_elmt_k1a * elmt_RAFK * elmt_S_2_2_0);
        elmt_Reaction4 = (elmt_Reaction4_elmt_a2 * elmt_RAFP * elmt_K_3_1);
        elmt_Reaction176 = (elmt_Reaction176_elmt_koff * elmt_S_m1_m1_0);
        elmt_Reaction297 = (elmt_Reaction297_elmt_k1 * elmt_S_RAFK_2_1_0);
        elmt_Reaction3 = (elmt_Reaction3_elmt_k1 * elmt_K_RAFK_3_0);
        elmt_Reaction175 = (elmt_Reaction175_elmt_kon * elmt_K_3_0 * elmt_S_m1_m1_m1);
        elmt_Reaction296 = (elmt_Reaction296_elmt_d1a * elmt_S_RAFK_2_1_0);
        elmt_Reaction2 = (elmt_Reaction2_elmt_d1 * elmt_K_RAFK_3_0);
        elmt_Reaction174 = (elmt_Reaction174_elmt_kpoff * elmt_S_2_2_1);
        elmt_Reaction295 = (elmt_Reaction295_elmt_k1a * elmt_RAFK * elmt_S_2_1_0);
        elmt_Reaction1 = (elmt_Reaction1_elmt_a1 * elmt_RAFK * elmt_K_3_0);
        elmt_Reaction179 = (elmt_Reaction179_elmt_kon * elmt_K_3_0 * elmt_S_m1_0_m1);
        elmt_Reaction178 = (elmt_Reaction178_elmt_kpoff * elmt_S_m1_m1_1);
        elmt_Reaction299 = (elmt_Reaction299_elmt_d1a * elmt_S_RAFK_2_2_0);
        elmt_Reaction96 = (elmt_Reaction96_elmt_kpoff * elmt_S_2_1_1);
        elmt_Reaction95 = (elmt_Reaction95_elmt_kpon * elmt_K_1_2 * elmt_S_m1_1_1);
        elmt_Reaction94 = (elmt_Reaction94_elmt_kpoff * elmt_S_2_1_0);
        elmt_Reaction93 = (elmt_Reaction93_elmt_kpon * elmt_K_1_2 * elmt_S_m1_1_0);
        elmt_Reaction92 = (elmt_Reaction92_elmt_kpoff * elmt_S_2_1_m1);
        elmt_Reaction91 = (elmt_Reaction91_elmt_kpon * elmt_K_1_2 * elmt_S_m1_1_m1);
        elmt_Reaction90 = (elmt_Reaction90_elmt_kpoff * elmt_S_2_0_1);
        elmt_Reaction99 = (elmt_Reaction99_elmt_kpon * elmt_K_1_2 * elmt_S_m1_2_0);
        elmt_Reaction98 = (elmt_Reaction98_elmt_kpoff * elmt_S_2_2_m1);
        elmt_Reaction97 = (elmt_Reaction97_elmt_kpon * elmt_K_1_2 * elmt_S_m1_2_m1);
        elmt_Reaction162 = (elmt_Reaction162_elmt_koff * elmt_S_2_0_1);
        elmt_Reaction283 = (elmt_Reaction283_elmt_k1a * elmt_RAFK * elmt_S_1_1_0);
        elmt_Reaction161 = (elmt_Reaction161_elmt_kon * elmt_K_2_0 * elmt_S_2_m1_1);
        elmt_Reaction282 = (elmt_Reaction282_elmt_k1 * elmt_S_RAFK_1_0_0);
        elmt_Reaction160 = (elmt_Reaction160_elmt_koff * elmt_S_2_0_0);
        elmt_Reaction281 = (elmt_Reaction281_elmt_d1a * elmt_S_RAFK_1_0_0);
        elmt_Reaction280 = (elmt_Reaction280_elmt_k1a * elmt_RAFK * elmt_S_1_0_0);
        elmt_Reaction166 = (elmt_Reaction166_elmt_kpoff * elmt_S_2_1_0);
        elmt_Reaction287 = (elmt_Reaction287_elmt_d1a * elmt_S_RAFK_1_2_0);
        elmt_Reaction165 = (elmt_Reaction165_elmt_kpon * elmt_K_2_1 * elmt_S_2_m1_0);
        elmt_Reaction286 = (elmt_Reaction286_elmt_k1a * elmt_RAFK * elmt_S_1_2_0);
        elmt_Reaction164 = (elmt_Reaction164_elmt_kpoff * elmt_S_2_1_m1);
        elmt_Reaction285 = (elmt_Reaction285_elmt_k1 * elmt_S_RAFK_1_1_0);
        elmt_Reaction163 = (elmt_Reaction163_elmt_kpon * elmt_K_2_1 * elmt_S_2_m1_m1);
        elmt_Reaction284 = (elmt_Reaction284_elmt_d1a * elmt_S_RAFK_1_1_0);
        elmt_Reaction169 = (elmt_Reaction169_elmt_kpon * elmt_K_2_2 * elmt_S_2_m1_m1);
        elmt_Reaction168 = (elmt_Reaction168_elmt_kpoff * elmt_S_2_1_1);
        elmt_Reaction289 = (elmt_Reaction289_elmt_k1a * elmt_RAFK * elmt_S_2_m1_0);
        elmt_Reaction167 = (elmt_Reaction167_elmt_kpon * elmt_K_2_1 * elmt_S_2_m1_1);
        elmt_Reaction288 = (elmt_Reaction288_elmt_k1 * elmt_S_RAFK_1_2_0);
        elmt_Reaction151 = (elmt_Reaction151_elmt_kpon * elmt_K_2_2 * elmt_S_1_m1_m1);
        elmt_Reaction272 = (elmt_Reaction272_elmt_d1a * elmt_S_RAFK_0_1_0);
        elmt_Reaction150 = (elmt_Reaction150_elmt_kpoff * elmt_S_1_1_1);
        elmt_Reaction271 = (elmt_Reaction271_elmt_k1a * elmt_RAFK * elmt_S_0_1_0);
        elmt_Reaction270 = (elmt_Reaction270_elmt_k1 * elmt_S_RAFK_0_0_0);
        elmt_Reaction155 = (elmt_Reaction155_elmt_kpon * elmt_K_2_2 * elmt_S_1_m1_1);
        elmt_Reaction276 = (elmt_Reaction276_elmt_k1 * elmt_S_RAFK_0_2_0);
        elmt_Reaction154 = (elmt_Reaction154_elmt_kpoff * elmt_S_1_2_0);
        elmt_Reaction275 = (elmt_Reaction275_elmt_d1a * elmt_S_RAFK_0_2_0);
        elmt_Reaction153 = (elmt_Reaction153_elmt_kpon * elmt_K_2_2 * elmt_S_1_m1_0);
        elmt_Reaction274 = (elmt_Reaction274_elmt_k1a * elmt_RAFK * elmt_S_0_2_0);
        elmt_Reaction152 = (elmt_Reaction152_elmt_kpoff * elmt_S_1_2_m1);
        elmt_Reaction273 = (elmt_Reaction273_elmt_k1 * elmt_S_RAFK_0_1_0);
        elmt_Reaction159 = (elmt_Reaction159_elmt_kon * elmt_K_2_0 * elmt_S_2_m1_0);
        elmt_Reaction158 = (elmt_Reaction158_elmt_koff * elmt_S_2_0_m1);
        elmt_Reaction279 = (elmt_Reaction279_elmt_k1 * elmt_S_RAFK_1_m1_0);
        elmt_Reaction157 = (elmt_Reaction157_elmt_kon * elmt_K_2_0 * elmt_S_2_m1_m1);
        elmt_Reaction278 = (elmt_Reaction278_elmt_d1a * elmt_S_RAFK_1_m1_0);
        elmt_Reaction156 = (elmt_Reaction156_elmt_kpoff * elmt_S_1_2_1);
        elmt_Reaction277 = (elmt_Reaction277_elmt_k1a * elmt_RAFK * elmt_S_1_m1_0);
        elmt_Reaction140 = (elmt_Reaction140_elmt_koff * elmt_S_1_0_m1);
        elmt_Reaction261 = (elmt_Reaction261_elmt_k1 * elmt_S_RAFK_m1_1_0);
        elmt_Reaction260 = (elmt_Reaction260_elmt_d1a * elmt_S_RAFK_m1_1_0);
        elmt_Reaction144 = (elmt_Reaction144_elmt_koff * elmt_S_1_0_1);
        elmt_Reaction265 = (elmt_Reaction265_elmt_k1a * elmt_RAFK * elmt_S_0_m1_0);
        elmt_Reaction143 = (elmt_Reaction143_elmt_kon * elmt_K_2_0 * elmt_S_1_m1_1);
        elmt_Reaction264 = (elmt_Reaction264_elmt_k1 * elmt_S_RAFK_m1_2_0);
        elmt_Reaction142 = (elmt_Reaction142_elmt_koff * elmt_S_1_0_0);
        elmt_Reaction263 = (elmt_Reaction263_elmt_d1a * elmt_S_RAFK_m1_2_0);
        elmt_Reaction141 = (elmt_Reaction141_elmt_kon * elmt_K_2_0 * elmt_S_1_m1_0);
        elmt_Reaction262 = (elmt_Reaction262_elmt_k1a * elmt_RAFK * elmt_S_m1_2_0);
        elmt_Reaction148 = (elmt_Reaction148_elmt_kpoff * elmt_S_1_1_0);
        elmt_Reaction269 = (elmt_Reaction269_elmt_d1a * elmt_S_RAFK_0_0_0);
        elmt_Reaction147 = (elmt_Reaction147_elmt_kpon * elmt_K_2_1 * elmt_S_1_m1_0);
        elmt_Reaction268 = (elmt_Reaction268_elmt_k1a * elmt_RAFK * elmt_S_0_0_0);
        elmt_Reaction146 = (elmt_Reaction146_elmt_kpoff * elmt_S_1_1_m1);
        elmt_Reaction267 = (elmt_Reaction267_elmt_k1 * elmt_S_RAFK_0_m1_0);
        elmt_Reaction145 = (elmt_Reaction145_elmt_kpon * elmt_K_2_1 * elmt_S_1_m1_m1);
        elmt_Reaction266 = (elmt_Reaction266_elmt_d1a * elmt_S_RAFK_0_m1_0);
        elmt_Reaction149 = (elmt_Reaction149_elmt_kpon * elmt_K_2_1 * elmt_S_1_m1_1);
        elmt_Reaction250 = (elmt_Reaction250_elmt_k5a * elmt_S_1_1_1);
        elmt_Reaction133 = (elmt_Reaction133_elmt_kpon * elmt_K_2_2 * elmt_S_0_m1_m1);
        elmt_Reaction254 = (elmt_Reaction254_elmt_d1a * elmt_S_RAFK_m1_m1_0);
        elmt_Reaction132 = (elmt_Reaction132_elmt_kpoff * elmt_S_0_1_1);
        elmt_Reaction253 = (elmt_Reaction253_elmt_k1a * elmt_RAFK * elmt_S_m1_m1_0);
        elmt_Reaction131 = (elmt_Reaction131_elmt_kpon * elmt_K_2_1 * elmt_S_0_m1_1);
        elmt_Reaction252 = (elmt_Reaction252_elmt_k5a * elmt_S_2_1_1);
        elmt_Reaction130 = (elmt_Reaction130_elmt_kpoff * elmt_S_0_1_0);
        elmt_Reaction251 = (elmt_Reaction251_elmt_k3 * elmt_S_2_0_1);
        elmt_Reaction137 = (elmt_Reaction137_elmt_kpon * elmt_K_2_2 * elmt_S_0_m1_1);
        elmt_Reaction258 = (elmt_Reaction258_elmt_k1 * elmt_S_RAFK_m1_0_0);
        elmt_Reaction136 = (elmt_Reaction136_elmt_kpoff * elmt_S_0_2_0);
        elmt_Reaction257 = (elmt_Reaction257_elmt_d1a * elmt_S_RAFK_m1_0_0);
        elmt_Reaction135 = (elmt_Reaction135_elmt_kpon * elmt_K_2_2 * elmt_S_0_m1_0);
        elmt_Reaction256 = (elmt_Reaction256_elmt_k1a * elmt_RAFK * elmt_S_m1_0_0);
        elmt_Reaction134 = (elmt_Reaction134_elmt_kpoff * elmt_S_0_2_m1);
        elmt_Reaction255 = (elmt_Reaction255_elmt_k1 * elmt_S_RAFK_m1_m1_0);
        elmt_Reaction139 = (elmt_Reaction139_elmt_kon * elmt_K_2_0 * elmt_S_1_m1_m1);
        elmt_Reaction138 = (elmt_Reaction138_elmt_kpoff * elmt_S_0_2_1);
        elmt_Reaction259 = (elmt_Reaction259_elmt_k1a * elmt_RAFK * elmt_S_m1_1_0);
        elmt_Reaction122 = (elmt_Reaction122_elmt_koff * elmt_S_0_0_m1);
        elmt_Reaction243 = (elmt_Reaction243_elmt_k9a * elmt_S_1_2_0);
        elmt_Reaction121 = (elmt_Reaction121_elmt_kon * elmt_K_2_0 * elmt_S_0_m1_m1);
        elmt_Reaction242 = (elmt_Reaction242_elmt_k9a * elmt_S_1_2_m1);
        elmt_Reaction120 = (elmt_Reaction120_elmt_kpoff * elmt_S_m1_2_1);
        elmt_Reaction241 = (elmt_Reaction241_elmt_k7 * elmt_S_0_2_1);
        elmt_Reaction240 = (elmt_Reaction240_elmt_k7 * elmt_S_0_2_0);
        elmt_Reaction126 = (elmt_Reaction126_elmt_koff * elmt_S_0_0_1);
        elmt_Reaction247 = (elmt_Reaction247_elmt_k3 * elmt_S_0_0_1);
        elmt_Reaction125 = (elmt_Reaction125_elmt_kon * elmt_K_2_0 * elmt_S_0_m1_1);
        elmt_Reaction246 = (elmt_Reaction246_elmt_k5a * elmt_S_m1_1_1);
        elmt_Reaction124 = (elmt_Reaction124_elmt_koff * elmt_S_0_0_0);
        elmt_Reaction245 = (elmt_Reaction245_elmt_k3 * elmt_S_m1_0_1);
        elmt_Reaction123 = (elmt_Reaction123_elmt_kon * elmt_K_2_0 * elmt_S_0_m1_0);
        elmt_Reaction244 = (elmt_Reaction244_elmt_k9a * elmt_S_1_2_1);
        elmt_Reaction129 = (elmt_Reaction129_elmt_kpon * elmt_K_2_1 * elmt_S_0_m1_0);
        elmt_Reaction128 = (elmt_Reaction128_elmt_kpoff * elmt_S_0_1_m1);
        elmt_Reaction249 = (elmt_Reaction249_elmt_k3 * elmt_S_1_0_1);
        elmt_Reaction127 = (elmt_Reaction127_elmt_kpon * elmt_K_2_1 * elmt_S_0_m1_m1);
        elmt_Reaction248 = (elmt_Reaction248_elmt_k5a * elmt_S_0_1_1);
        der(elmt_reactant42) = 0;
        der(elmt_reactant627) = 0;
        der(elmt_reactant869) = 0;
        der(elmt_reactant868) = 0;
        der(elmt_reactant625) = 0;
        der(elmt_reactant48) = 0;
        der(elmt_reactant45) = 0;
        der(elmt_reactant46) = 0;
        der(elmt_reactant877) = 0;
        der(elmt_reactant633) = 0;
        der(elmt_reactant874) = 0;
        der(elmt_reactant631) = 0;
        der(elmt_reactant630) = 0;
        der(elmt_reactant871) = 0;
        der(elmt_reactant51) = 0;
        der(elmt_reactant639) = 0;
        der(elmt_reactant637) = 0;
        der(elmt_reactant636) = 0;
        der(elmt_reactant878) = 0;
        der(elmt_reactant54) = 0;
        der(elmt_reactant55) = 0;
        der(elmt_reactant57) = 0;
        der(elmt_reactant880) = 0;
        der(elmt_reactant645) = 0;
        der(elmt_reactant403) = 0;
        der(elmt_reactant402) = 0;
        der(elmt_reactant643) = 0;
        der(elmt_reactant642) = 0;
        der(elmt_reactant883) = 0;
        der(elmt_reactant609) = 0;
        der(elmt_reactant607) = 0;
        der(elmt_reactant606) = 0;
        der(elmt_reactant847) = 0;
        der(elmt_reactant603) = 0;
        der(elmt_reactant27) = 0;
        der(elmt_reactant28) = 0;
        der(elmt_reactant21) = 0;
        der(elmt_reactant24) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_reactant19) = 0;
        der(elmt_reactant613) = 0;
        der(elmt_reactant612) = 0;
        der(elmt_reactant853) = 0;
        der(elmt_reactant851) = 0;
        der(elmt_reactant850) = 0;
        der(elmt_reactant30) = 0;
        der(elmt_reactant619) = 0;
        der(elmt_reactant618) = 0;
        der(elmt_reactant859) = 0;
        der(elmt_reactant615) = 0;
        der(elmt_reactant856) = 0;
        der(elmt_reactant36) = 0;
        der(elmt_reactant37) = 0;
        der(elmt_reactant39) = 0;
        der(elmt_reactant33) = 0;
        der(elmt_reactant624) = 0;
        der(elmt_reactant865) = 0;
        der(elmt_reactant621) = 0;
        der(elmt_reactant862) = 0;
        der(elmt_reactant860) = 0;
        der(elmt_reactant829) = 0;
        der(elmt_reactant826) = 0;
        der(elmt_reactant824) = 0;
        der(elmt_reactant823) = 0;
        der(elmt_reactant833) = 0;
        der(elmt_reactant832) = 0;
        der(elmt_reactant838) = 0;
        der(elmt_reactant835) = 0;
        der(elmt_reactant15) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_reactant844) = 0;
        der(elmt_reactant601) = 0;
        der(elmt_reactant600) = 0;
        der(elmt_reactant842) = 0;
        der(elmt_reactant841) = 0;
        der(elmt_reactant808) = 0;
        der(elmt_reactant806) = 0;
        der(elmt_reactant805) = 0;
        der(elmt_reactant802) = 0;
        der(elmt_reactant811) = 0;
        der(elmt_reactant817) = 0;
        der(elmt_reactant815) = 0;
        der(elmt_reactant814) = 0;
        der(elmt_reactant820) = 0;
        der(elmt_product729) = 0;
        der(elmt_product731) = 0;
        der(elmt_product737) = 0;
        der(elmt_product739) = 0;
        der(elmt_product733) = 0;
        der(elmt_product735) = 0;
        der(elmt_product500) = 0;
        der(elmt_product741) = 0;
        der(elmt_product506) = 0;
        der(elmt_product747) = 0;
        der(elmt_product508) = 0;
        der(elmt_product749) = 0;
        der(elmt_product502) = 0;
        der(elmt_product744) = 0;
        der(elmt_product746) = 0;
        der(elmt_product503) = 0;
        der(elmt_product707) = 0;
        der(elmt_product715) = 0;
        der(elmt_product717) = 0;
        der(elmt_product710) = 0;
        der(elmt_product713) = 0;
        der(elmt_product712) = 0;
        der(elmt_product719) = 0;
        der(elmt_product725) = 0;
        der(elmt_product727) = 0;
        der(elmt_product721) = 0;
        der(elmt_product723) = 0;
        der(elmt_reactant84) = 0;
        der(elmt_reactant81) = 0;
        der(elmt_reactant82) = 0;
        der(elmt_reactant87) = 0;
        der(elmt_reactant96) = 0;
        der(elmt_reactant97) = 0;
        der(elmt_reactant90) = 0;
        der(elmt_reactant91) = 0;
        der(elmt_reactant93) = 0;
        der(elmt_reactant99) = 0;
        der(elmt_product704) = 0;
        der(elmt_product706) = 0;
        der(elmt_product700) = 0;
        der(elmt_product701) = 0;
        der(elmt_reactant63) = 0;
        der(elmt_reactant64) = 0;
        der(elmt_reactant60) = 0;
        der(elmt_reactant69) = 0;
        der(elmt_reactant66) = 0;
        der(elmt_reactant72) = 0;
        der(elmt_reactant73) = 0;
        der(elmt_reactant75) = 0;
        der(elmt_reactant78) = 0;
        der(elmt_product575) = 0;
        der(elmt_product332) = 0;
        der(elmt_product574) = 0;
        der(elmt_product335) = 0;
        der(elmt_product334) = 0;
        der(elmt_product572) = 0;
        der(elmt_product578) = 0;
        der(elmt_product338) = 0;
        der(elmt_product580) = 0;
        der(elmt_product344) = 0;
        der(elmt_product586) = 0;
        der(elmt_product101) = 0;
        der(elmt_product346) = 0;
        der(elmt_product104) = 0;
        der(elmt_product587) = 0;
        der(elmt_product340) = 0;
        der(elmt_product581) = 0;
        der(elmt_product100) = 0;
        der(elmt_product584) = 0;
        der(elmt_product341) = 0;
        der(elmt_product106) = 0;
        der(elmt_product347) = 0;
        der(elmt_product107) = 0;
        der(elmt_product11) = 0;
        der(elmt_reactant297) = 0;
        der(elmt_product311) = 0;
        der(elmt_product795) = 0;
        der(elmt_product310) = 0;
        der(elmt_product794) = 0;
        der(elmt_reactant295) = 0;
        der(elmt_product554) = 0;
        der(elmt_reactant294) = 0;
        der(elmt_product791) = 0;
        der(elmt_product551) = 0;
        der(elmt_reactant291) = 0;
        der(elmt_product550) = 0;
        der(elmt_product792) = 0;
        der(elmt_product557) = 0;
        der(elmt_product314) = 0;
        der(elmt_product556) = 0;
        der(elmt_product798) = 0;
        der(elmt_product317) = 0;
        der(elmt_product316) = 0;
        der(elmt_product23) = 0;
        der(elmt_product22) = 0;
        der(elmt_product20) = 0;
        der(elmt_product322) = 0;
        der(elmt_product563) = 0;
        der(elmt_product566) = 0;
        der(elmt_product323) = 0;
        der(elmt_product560) = 0;
        der(elmt_product320) = 0;
        der(elmt_product562) = 0;
        der(elmt_product16) = 0;
        der(elmt_product329) = 0;
        der(elmt_product14) = 0;
        der(elmt_product13) = 0;
        der(elmt_product326) = 0;
        der(elmt_product568) = 0;
        der(elmt_product328) = 0;
        der(elmt_product569) = 0;
        der(elmt_product17) = 0;
        der(elmt_product773) = 0;
        der(elmt_product530) = 0;
        der(elmt_product533) = 0;
        der(elmt_reactant273) = 0;
        der(elmt_product532) = 0;
        der(elmt_product774) = 0;
        der(elmt_reactant271) = 0;
        der(elmt_reactant270) = 0;
        der(elmt_product771) = 0;
        der(elmt_product539) = 0;
        der(elmt_product538) = 0;
        der(elmt_reactant279) = 0;
        der(elmt_product777) = 0;
        der(elmt_product776) = 0;
        der(elmt_reactant277) = 0;
        der(elmt_product536) = 0;
        der(elmt_reactant276) = 0;
        der(elmt_product542) = 0;
        der(elmt_reactant285) = 0;
        der(elmt_product783) = 0;
        der(elmt_product302) = 0;
        der(elmt_product544) = 0;
        der(elmt_product786) = 0;
        der(elmt_reactant283) = 0;
        der(elmt_product785) = 0;
        der(elmt_reactant282) = 0;
        der(elmt_product780) = 0;
        der(elmt_product782) = 0;
        der(elmt_product308) = 0;
        der(elmt_product304) = 0;
        der(elmt_product545) = 0;
        der(elmt_reactant289) = 0;
        der(elmt_product548) = 0;
        der(elmt_reactant288) = 0;
        der(elmt_product305) = 0;
        der(elmt_product789) = 0;
        der(elmt_product509) = 0;
        der(elmt_reactant253) = 0;
        der(elmt_reactant495) = 0;
        der(elmt_reactant252) = 0;
        der(elmt_product750) = 0;
        der(elmt_reactant493) = 0;
        der(elmt_product753) = 0;
        der(elmt_reactant492) = 0;
        der(elmt_product759) = 0;
        der(elmt_product758) = 0;
        der(elmt_reactant259) = 0;
        der(elmt_reactant258) = 0;
        der(elmt_product518) = 0;
        der(elmt_reactant499) = 0;
        der(elmt_product755) = 0;
        der(elmt_product512) = 0;
        der(elmt_reactant498) = 0;
        der(elmt_reactant255) = 0;
        der(elmt_product515) = 0;
        der(elmt_product514) = 0;
        der(elmt_product756) = 0;
        der(elmt_reactant264) = 0;
        der(elmt_product520) = 0;
        der(elmt_product762) = 0;
        der(elmt_product764) = 0;
        der(elmt_reactant261) = 0;
        der(elmt_product521) = 0;
        der(elmt_product527) = 0;
        der(elmt_product524) = 0;
        der(elmt_reactant267) = 0;
        der(elmt_product765) = 0;
        der(elmt_product526) = 0;
        der(elmt_product768) = 0;
        der(elmt_reactant265) = 0;
        der(elmt_product767) = 0;
        der(elmt_product74) = 0;
        der(elmt_product71) = 0;
        der(elmt_product77) = 0;
        der(elmt_product76) = 0;
        der(elmt_reactant229) = 0;
        der(elmt_product170) = 0;
        der(elmt_product173) = 0;
        der(elmt_product172) = 0;
        der(elmt_product70) = 0;
        der(elmt_product179) = 0;
        der(elmt_reactant231) = 0;
        der(elmt_product178) = 0;
        der(elmt_reactant471) = 0;
        der(elmt_product176) = 0;
        der(elmt_reactant237) = 0;
        der(elmt_product68) = 0;
        der(elmt_reactant235) = 0;
        der(elmt_reactant477) = 0;
        der(elmt_reactant234) = 0;
        der(elmt_reactant475) = 0;
        der(elmt_reactant474) = 0;
        der(elmt_product85) = 0;
        der(elmt_product83) = 0;
        der(elmt_product89) = 0;
        der(elmt_product88) = 0;
        der(elmt_product86) = 0;
        der(elmt_product182) = 0;
        der(elmt_product184) = 0;
        der(elmt_product80) = 0;
        der(elmt_reactant241) = 0;
        der(elmt_reactant483) = 0;
        der(elmt_reactant240) = 0;
        der(elmt_reactant481) = 0;
        der(elmt_reactant480) = 0;
        der(elmt_product185) = 0;
        der(elmt_product188) = 0;
        der(elmt_reactant249) = 0;
        der(elmt_product79) = 0;
        der(elmt_reactant247) = 0;
        der(elmt_reactant489) = 0;
        der(elmt_reactant246) = 0;
        der(elmt_reactant487) = 0;
        der(elmt_reactant486) = 0;
        der(elmt_reactant243) = 0;
        der(elmt_product95) = 0;
        der(elmt_product94) = 0;
        der(elmt_product98) = 0;
        der(elmt_reactant207) = 0;
        der(elmt_product392) = 0;
        der(elmt_product92) = 0;
        der(elmt_reactant693) = 0;
        der(elmt_reactant451) = 0;
        der(elmt_reactant450) = 0;
        der(elmt_product398) = 0;
        der(elmt_reactant691) = 0;
        der(elmt_reactant690) = 0;
        der(elmt_product158) = 0;
        der(elmt_product395) = 0;
        der(elmt_product152) = 0;
        der(elmt_product394) = 0;
        der(elmt_product155) = 0;
        der(elmt_product154) = 0;
        der(elmt_reactant217) = 0;
        der(elmt_reactant459) = 0;
        der(elmt_reactant216) = 0;
        der(elmt_reactant699) = 0;
        der(elmt_reactant457) = 0;
        der(elmt_reactant456) = 0;
        der(elmt_reactant697) = 0;
        der(elmt_reactant213) = 0;
        der(elmt_reactant696) = 0;
        der(elmt_reactant211) = 0;
        der(elmt_reactant453) = 0;
        der(elmt_reactant210) = 0;
        der(elmt_reactant219) = 0;
        der(elmt_product160) = 0;
        der(elmt_product161) = 0;
        der(elmt_reactant462) = 0;
        der(elmt_product167) = 0;
        der(elmt_product164) = 0;
        der(elmt_product166) = 0;
        der(elmt_reactant228) = 0;
        der(elmt_reactant469) = 0;
        der(elmt_reactant468) = 0;
        der(elmt_reactant225) = 0;
        der(elmt_reactant223) = 0;
        der(elmt_reactant465) = 0;
        der(elmt_reactant222) = 0;
        der(elmt_reactant463) = 0;
        der(elmt_product34) = 0;
        der(elmt_reactant429) = 0;
        der(elmt_product32) = 0;
        der(elmt_reactant669) = 0;
        der(elmt_product31) = 0;
        der(elmt_reactant427) = 0;
        der(elmt_product371) = 0;
        der(elmt_product370) = 0;
        der(elmt_product377) = 0;
        der(elmt_product134) = 0;
        der(elmt_product376) = 0;
        der(elmt_product137) = 0;
        der(elmt_product136) = 0;
        der(elmt_product131) = 0;
        der(elmt_product130) = 0;
        der(elmt_product374) = 0;
        der(elmt_reactant679) = 0;
        der(elmt_reactant678) = 0;
        der(elmt_product26) = 0;
        der(elmt_product25) = 0;
        der(elmt_reactant435) = 0;
        der(elmt_reactant675) = 0;
        der(elmt_reactant433) = 0;
        der(elmt_reactant432) = 0;
        der(elmt_reactant673) = 0;
        der(elmt_product29) = 0;
        der(elmt_reactant672) = 0;
        der(elmt_product41) = 0;
        der(elmt_product40) = 0;
        der(elmt_product44) = 0;
        der(elmt_product43) = 0;
        der(elmt_reactant439) = 0;
        der(elmt_reactant438) = 0;
        der(elmt_product380) = 0;
        der(elmt_product140) = 0;
        der(elmt_product382) = 0;
        der(elmt_product146) = 0;
        der(elmt_product388) = 0;
        der(elmt_reactant681) = 0;
        der(elmt_product148) = 0;
        der(elmt_product389) = 0;
        der(elmt_product142) = 0;
        der(elmt_product383) = 0;
        der(elmt_product386) = 0;
        der(elmt_product143) = 0;
        der(elmt_product38) = 0;
        der(elmt_reactant205) = 0;
        der(elmt_reactant447) = 0;
        der(elmt_reactant204) = 0;
        der(elmt_reactant687) = 0;
        der(elmt_product35) = 0;
        der(elmt_reactant445) = 0;
        der(elmt_reactant444) = 0;
        der(elmt_reactant685) = 0;
        der(elmt_product149) = 0;
        der(elmt_reactant201) = 0;
        der(elmt_reactant684) = 0;
        der(elmt_reactant441) = 0;
        der(elmt_product52) = 0;
        der(elmt_product50) = 0;
        der(elmt_reactant409) = 0;
        der(elmt_product56) = 0;
        der(elmt_reactant408) = 0;
        der(elmt_reactant649) = 0;
        der(elmt_reactant648) = 0;
        der(elmt_product53) = 0;
        der(elmt_reactant405) = 0;
        der(elmt_product590) = 0;
        der(elmt_product113) = 0;
        der(elmt_product112) = 0;
        der(elmt_product596) = 0;
        der(elmt_product599) = 0;
        der(elmt_product356) = 0;
        der(elmt_product598) = 0;
        der(elmt_product593) = 0;
        der(elmt_product350) = 0;
        der(elmt_product592) = 0;
        der(elmt_product353) = 0;
        der(elmt_product352) = 0;
        der(elmt_product110) = 0;
        der(elmt_reactant657) = 0;
        der(elmt_product49) = 0;
        der(elmt_reactant415) = 0;
        der(elmt_reactant414) = 0;
        der(elmt_reactant655) = 0;
        der(elmt_product47) = 0;
        der(elmt_reactant654) = 0;
        der(elmt_reactant411) = 0;
        der(elmt_product359) = 0;
        der(elmt_product116) = 0;
        der(elmt_product358) = 0;
        der(elmt_reactant651) = 0;
        der(elmt_product119) = 0;
        der(elmt_product118) = 0;
        der(elmt_product62) = 0;
        der(elmt_product61) = 0;
        der(elmt_product67) = 0;
        der(elmt_product65) = 0;
        der(elmt_reactant417) = 0;
        der(elmt_reactant660) = 0;
        der(elmt_product124) = 0;
        der(elmt_product365) = 0;
        der(elmt_product368) = 0;
        der(elmt_product125) = 0;
        der(elmt_product362) = 0;
        der(elmt_product122) = 0;
        der(elmt_product364) = 0;
        der(elmt_reactant426) = 0;
        der(elmt_reactant667) = 0;
        der(elmt_product59) = 0;
        der(elmt_reactant666) = 0;
        der(elmt_product58) = 0;
        der(elmt_reactant423) = 0;
        der(elmt_product128) = 0;
        der(elmt_reactant663) = 0;
        der(elmt_reactant421) = 0;
        der(elmt_reactant420) = 0;
        der(elmt_reactant661) = 0;
        der(elmt_reactant507) = 0;
        der(elmt_reactant748) = 0;
        der(elmt_reactant505) = 0;
        der(elmt_reactant504) = 0;
        der(elmt_reactant513) = 0;
        der(elmt_reactant754) = 0;
        der(elmt_reactant511) = 0;
        der(elmt_reactant510) = 0;
        der(elmt_reactant752) = 0;
        der(elmt_reactant751) = 0;
        der(elmt_reactant519) = 0;
        der(elmt_reactant517) = 0;
        der(elmt_reactant516) = 0;
        der(elmt_reactant757) = 0;
        der(elmt_reactant525) = 0;
        der(elmt_reactant766) = 0;
        der(elmt_reactant523) = 0;
        der(elmt_reactant522) = 0;
        der(elmt_reactant763) = 0;
        der(elmt_reactant761) = 0;
        der(elmt_reactant760) = 0;
        der(elmt_reactant728) = 0;
        der(elmt_reactant726) = 0;
        der(elmt_reactant724) = 0;
        der(elmt_reactant734) = 0;
        der(elmt_reactant732) = 0;
        der(elmt_reactant730) = 0;
        der(elmt_reactant738) = 0;
        der(elmt_reactant736) = 0;
        der(elmt_reactant745) = 0;
        der(elmt_reactant501) = 0;
        der(elmt_reactant743) = 0;
        der(elmt_reactant742) = 0;
        der(elmt_reactant740) = 0;
        der(elmt_reactant709) = 0;
        der(elmt_reactant708) = 0;
        der(elmt_reactant705) = 0;
        der(elmt_reactant703) = 0;
        der(elmt_reactant702) = 0;
        der(elmt_reactant711) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_reactant718) = 0;
        der(elmt_reactant716) = 0;
        der(elmt_reactant714) = 0;
        der(elmt_reactant722) = 0;
        der(elmt_reactant720) = 0;
        der(elmt_product194) = 0;
        der(elmt_product191) = 0;
        der(elmt_product190) = 0;
        der(elmt_product197) = 0;
        der(elmt_product196) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product608) = 0;
        der(elmt_product610) = 0;
        der(elmt_product852) = 0;
        der(elmt_product616) = 0;
        der(elmt_product858) = 0;
        der(elmt_product857) = 0;
        der(elmt_product617) = 0;
        der(elmt_product854) = 0;
        der(elmt_product611) = 0;
        der(elmt_product614) = 0;
        der(elmt_product855) = 0;
        der(elmt_product861) = 0;
        der(elmt_product863) = 0;
        der(elmt_product620) = 0;
        der(elmt_product626) = 0;
        der(elmt_product629) = 0;
        der(elmt_product628) = 0;
        der(elmt_product623) = 0;
        der(elmt_product622) = 0;
        der(elmt_product864) = 0;
        der(elmt_product867) = 0;
        der(elmt_product866) = 0;
        der(elmt_product828) = 0;
        der(elmt_product830) = 0;
        der(elmt_product836) = 0;
        der(elmt_product837) = 0;
        der(elmt_product831) = 0;
        der(elmt_product834) = 0;
        der(elmt_product8) = 0;
        der(elmt_product7) = 0;
        der(elmt_product839) = 0;
        der(elmt_product5) = 0;
        der(elmt_product4) = 0;
        der(elmt_product2) = 0;
        der(elmt_product840) = 0;
        der(elmt_product605) = 0;
        der(elmt_product604) = 0;
        der(elmt_product846) = 0;
        der(elmt_product849) = 0;
        der(elmt_product848) = 0;
        der(elmt_product843) = 0;
        der(elmt_product845) = 0;
        der(elmt_product602) = 0;
        der(elmt_product807) = 0;
        der(elmt_product809) = 0;
        der(elmt_product813) = 0;
        der(elmt_product816) = 0;
        der(elmt_product810) = 0;
        der(elmt_product812) = 0;
        der(elmt_product818) = 0;
        der(elmt_product819) = 0;
        der(elmt_product825) = 0;
        der(elmt_product827) = 0;
        der(elmt_product821) = 0;
        der(elmt_product822) = 0;
        der(elmt_product803) = 0;
        der(elmt_product804) = 0;
        der(elmt_product801) = 0;
        der(elmt_product800) = 0;
        der(elmt_reactant198) = 0;
        der(elmt_product212) = 0;
        der(elmt_product454) = 0;
        der(elmt_product695) = 0;
        der(elmt_product698) = 0;
        der(elmt_product214) = 0;
        der(elmt_reactant195) = 0;
        der(elmt_product455) = 0;
        der(elmt_product692) = 0;
        der(elmt_reactant193) = 0;
        der(elmt_product694) = 0;
        der(elmt_reactant192) = 0;
        der(elmt_product452) = 0;
        der(elmt_product458) = 0;
        der(elmt_product215) = 0;
        der(elmt_product218) = 0;
        der(elmt_reactant199) = 0;
        der(elmt_product464) = 0;
        der(elmt_product467) = 0;
        der(elmt_product224) = 0;
        der(elmt_product466) = 0;
        der(elmt_product461) = 0;
        der(elmt_product460) = 0;
        der(elmt_product221) = 0;
        der(elmt_product220) = 0;
        der(elmt_product227) = 0;
        der(elmt_product226) = 0;
        der(elmt_product674) = 0;
        der(elmt_reactant175) = 0;
        der(elmt_product431) = 0;
        der(elmt_product676) = 0;
        der(elmt_reactant174) = 0;
        der(elmt_product434) = 0;
        der(elmt_product670) = 0;
        der(elmt_reactant171) = 0;
        der(elmt_product430) = 0;
        der(elmt_product671) = 0;
        der(elmt_product436) = 0;
        der(elmt_product677) = 0;
        der(elmt_reactant177) = 0;
        der(elmt_product437) = 0;
        der(elmt_reactant187) = 0;
        der(elmt_product443) = 0;
        der(elmt_reactant186) = 0;
        der(elmt_product200) = 0;
        der(elmt_product442) = 0;
        der(elmt_product203) = 0;
        der(elmt_product686) = 0;
        der(elmt_product202) = 0;
        der(elmt_reactant183) = 0;
        der(elmt_product680) = 0;
        der(elmt_product683) = 0;
        der(elmt_reactant181) = 0;
        der(elmt_product682) = 0;
        der(elmt_reactant180) = 0;
        der(elmt_product440) = 0;
        der(elmt_product209) = 0;
        der(elmt_product208) = 0;
        der(elmt_product689) = 0;
        der(elmt_product688) = 0;
        der(elmt_product446) = 0;
        der(elmt_reactant189) = 0;
        der(elmt_product449) = 0;
        der(elmt_product206) = 0;
        der(elmt_product448) = 0;
        der(elmt_product652) = 0;
        der(elmt_reactant396) = 0;
        der(elmt_product410) = 0;
        der(elmt_reactant153) = 0;
        der(elmt_product412) = 0;
        der(elmt_product653) = 0;
        der(elmt_reactant151) = 0;
        der(elmt_reactant393) = 0;
        der(elmt_reactant150) = 0;
        der(elmt_reactant391) = 0;
        der(elmt_product650) = 0;
        der(elmt_reactant390) = 0;
        der(elmt_product418) = 0;
        der(elmt_product659) = 0;
        der(elmt_reactant159) = 0;
        der(elmt_product419) = 0;
        der(elmt_product656) = 0;
        der(elmt_reactant157) = 0;
        der(elmt_reactant399) = 0;
        der(elmt_product413) = 0;
        der(elmt_product658) = 0;
        der(elmt_reactant156) = 0;
        der(elmt_product416) = 0;
        der(elmt_reactant397) = 0;
        der(elmt_reactant165) = 0;
        der(elmt_product662) = 0;
        der(elmt_product665) = 0;
        der(elmt_reactant163) = 0;
        der(elmt_product664) = 0;
        der(elmt_reactant162) = 0;
        der(elmt_product422) = 0;
        der(elmt_product428) = 0;
        der(elmt_reactant169) = 0;
        der(elmt_product425) = 0;
        der(elmt_reactant168) = 0;
        der(elmt_product424) = 0;
        der(elmt_product668) = 0;
        der(elmt_reactant132) = 0;
        der(elmt_product872) = 0;
        der(elmt_reactant373) = 0;
        der(elmt_product632) = 0;
        der(elmt_reactant372) = 0;
        der(elmt_product873) = 0;
        der(elmt_product870) = 0;
        der(elmt_product638) = 0;
        der(elmt_reactant139) = 0;
        der(elmt_product879) = 0;
        der(elmt_reactant138) = 0;
        der(elmt_reactant379) = 0;
        der(elmt_product634) = 0;
        der(elmt_product876) = 0;
        der(elmt_reactant378) = 0;
        der(elmt_reactant135) = 0;
        der(elmt_product875) = 0;
        der(elmt_product635) = 0;
        der(elmt_reactant133) = 0;
        der(elmt_reactant375) = 0;
        der(elmt_product641) = 0;
        der(elmt_reactant385) = 0;
        der(elmt_product640) = 0;
        der(elmt_product882) = 0;
        der(elmt_reactant384) = 0;
        der(elmt_product885) = 0;
        der(elmt_reactant141) = 0;
        der(elmt_product401) = 0;
        der(elmt_product884) = 0;
        der(elmt_product400) = 0;
        der(elmt_reactant381) = 0;
        der(elmt_product881) = 0;
        der(elmt_product407) = 0;
        der(elmt_product406) = 0;
        der(elmt_reactant147) = 0;
        der(elmt_product644) = 0;
        der(elmt_product647) = 0;
        der(elmt_reactant145) = 0;
        der(elmt_reactant387) = 0;
        der(elmt_product646) = 0;
        der(elmt_reactant144) = 0;
        der(elmt_product404) = 0;
        der(elmt_reactant109) = 0;
        der(elmt_reactant108) = 0;
        der(elmt_product292) = 0;
        der(elmt_product293) = 0;
        der(elmt_product290) = 0;
        der(elmt_reactant594) = 0;
        der(elmt_reactant351) = 0;
        der(elmt_product299) = 0;
        der(elmt_reactant591) = 0;
        der(elmt_product296) = 0;
        der(elmt_product298) = 0;
        der(elmt_reactant117) = 0;
        der(elmt_reactant115) = 0;
        der(elmt_reactant357) = 0;
        der(elmt_reactant114) = 0;
        der(elmt_reactant355) = 0;
        der(elmt_reactant597) = 0;
        der(elmt_reactant354) = 0;
        der(elmt_reactant111) = 0;
        der(elmt_reactant595) = 0;
        der(elmt_reactant121) = 0;
        der(elmt_reactant363) = 0;
        der(elmt_reactant120) = 0;
        der(elmt_reactant361) = 0;
        der(elmt_reactant360) = 0;
        der(elmt_reactant129) = 0;
        der(elmt_reactant127) = 0;
        der(elmt_reactant369) = 0;
        der(elmt_reactant126) = 0;
        der(elmt_reactant367) = 0;
        der(elmt_reactant366) = 0;
        der(elmt_reactant123) = 0;
        der(elmt_product272) = 0;
        der(elmt_reactant330) = 0;
        der(elmt_product278) = 0;
        der(elmt_reactant571) = 0;
        der(elmt_reactant570) = 0;
        der(elmt_product274) = 0;
        der(elmt_product275) = 0;
        der(elmt_reactant337) = 0;
        der(elmt_reactant579) = 0;
        der(elmt_reactant336) = 0;
        der(elmt_reactant577) = 0;
        der(elmt_reactant576) = 0;
        der(elmt_reactant333) = 0;
        der(elmt_reactant331) = 0;
        der(elmt_reactant573) = 0;
        der(elmt_reactant339) = 0;
        der(elmt_product281) = 0;
        der(elmt_product280) = 0;
        der(elmt_reactant583) = 0;
        der(elmt_reactant582) = 0;
        der(elmt_product284) = 0;
        der(elmt_product287) = 0;
        der(elmt_product286) = 0;
        der(elmt_reactant349) = 0;
        der(elmt_reactant348) = 0;
        der(elmt_reactant105) = 0;
        der(elmt_reactant589) = 0;
        der(elmt_reactant588) = 0;
        der(elmt_reactant345) = 0;
        der(elmt_reactant103) = 0;
        der(elmt_reactant102) = 0;
        der(elmt_reactant343) = 0;
        der(elmt_reactant585) = 0;
        der(elmt_reactant342) = 0;
        der(elmt_reactant309) = 0;
        der(elmt_reactant307) = 0;
        der(elmt_reactant549) = 0;
        der(elmt_reactant306) = 0;
        der(elmt_product490) = 0;
        der(elmt_product250) = 0;
        der(elmt_product491) = 0;
        der(elmt_product256) = 0;
        der(elmt_product497) = 0;
        der(elmt_reactant790) = 0;
        der(elmt_product257) = 0;
        der(elmt_product494) = 0;
        der(elmt_product251) = 0;
        der(elmt_product254) = 0;
        der(elmt_product496) = 0;
        der(elmt_reactant558) = 0;
        der(elmt_reactant315) = 0;
        der(elmt_reactant799) = 0;
        der(elmt_reactant313) = 0;
        der(elmt_reactant555) = 0;
        der(elmt_reactant797) = 0;
        der(elmt_reactant312) = 0;
        der(elmt_reactant796) = 0;
        der(elmt_reactant553) = 0;
        der(elmt_reactant552) = 0;
        der(elmt_reactant793) = 0;
        der(elmt_reactant319) = 0;
        der(elmt_reactant318) = 0;
        der(elmt_reactant559) = 0;
        der(elmt_product260) = 0;
        der(elmt_reactant561) = 0;
        der(elmt_product266) = 0;
        der(elmt_product269) = 0;
        der(elmt_product268) = 0;
        der(elmt_product263) = 0;
        der(elmt_product262) = 0;
        der(elmt_reactant327) = 0;
        der(elmt_reactant325) = 0;
        der(elmt_reactant567) = 0;
        der(elmt_reactant324) = 0;
        der(elmt_reactant565) = 0;
        der(elmt_reactant564) = 0;
        der(elmt_reactant321) = 0;
        der(elmt_reactant529) = 0;
        der(elmt_reactant528) = 0;
        der(elmt_reactant769) = 0;
        der(elmt_product470) = 0;
        der(elmt_product476) = 0;
        der(elmt_reactant770) = 0;
        der(elmt_product233) = 0;
        der(elmt_product236) = 0;
        der(elmt_product478) = 0;
        der(elmt_product230) = 0;
        der(elmt_product472) = 0;
        der(elmt_product232) = 0;
        der(elmt_product473) = 0;
        der(elmt_reactant778) = 0;
        der(elmt_reactant535) = 0;
        der(elmt_reactant534) = 0;
        der(elmt_reactant775) = 0;
        der(elmt_product238) = 0;
        der(elmt_reactant531) = 0;
        der(elmt_product479) = 0;
        der(elmt_reactant772) = 0;
        der(elmt_product239) = 0;
        der(elmt_reactant537) = 0;
        der(elmt_reactant779) = 0;
        der(elmt_product245) = 0;
        der(elmt_reactant781) = 0;
        der(elmt_product244) = 0;
        der(elmt_product488) = 0;
        der(elmt_product482) = 0;
        der(elmt_product485) = 0;
        der(elmt_product242) = 0;
        der(elmt_product484) = 0;
        der(elmt_reactant547) = 0;
        der(elmt_reactant546) = 0;
        der(elmt_reactant788) = 0;
        der(elmt_reactant303) = 0;
        der(elmt_reactant787) = 0;
        der(elmt_reactant301) = 0;
        der(elmt_reactant543) = 0;
        der(elmt_reactant300) = 0;
        der(elmt_product248) = 0;
        der(elmt_reactant784) = 0;
        der(elmt_reactant541) = 0;
        der(elmt_reactant540) = 0;

end Reactions;
