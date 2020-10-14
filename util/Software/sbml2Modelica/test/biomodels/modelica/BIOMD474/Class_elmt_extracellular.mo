within BIOMD474;
class Class_elmt_extracellular

    input Real elmt_nucleus;
    input Real elmt_cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1;
    input Real elmt_cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0;
    input Real elmt_nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0;
    input Real elmt_nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1;
    input Real elmt_dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1;
    input Real elmt_nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1;
    input Real elmt_dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0;
    input Real elmt_nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0;
    input Real elmt_dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1;
    input Real elmt_dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0;
    input Real elmt_dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1;
    input Real elmt_dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0;
    input Real elmt_cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0;
    input Real elmt_cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1;
    input Real elmt_cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0;
    input Real elmt_cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1;
    input Real elmt_nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1;
    input Real elmt_dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1;
    input Real elmt_nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0;
    input Real elmt_dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0;
    input Real elmt_nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1;
    input Real elmt_nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0;
    input Real elmt_cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1;
    input Real elmt_cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0;
    input Real elmt_nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0;
    input Real elmt_dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1;
    input Real elmt_nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1;
    input Real elmt_dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0;
    input Real elmt_dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0;
    input Real elmt_dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1;
    input Real elmt_nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1;
    input Real elmt_nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1;
    input Real elmt_nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0;
    input Real elmt_nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0;
    input Real elmt_dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0;
    input Real elmt_nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0;
    input Real elmt_dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0;
    input Real elmt_cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0;
    input Real elmt_dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1;
    input Real elmt_nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1;
    input Real elmt_dnabound;
    input Real elmt_cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1;
    input Real elmt_cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0;
    input Real elmt_cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1;
    input Real elmt_cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1;
    input Real elmt_cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1;
    input Real elmt_cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0;
    input Real elmt_cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0;
    input Real elmt_cytoplasm;
    input Real elmt_dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1;

    Real elmt_extracellular(unit = "m3.0") "extracellular";
 annotation(Documentation(info="<annotation>
                <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
                </rdf:RDF>
              </annotation>"));
    Real elmt_nucleus_Foxo1_tot_conc(unit = "m-36.0");
    Real elmt_nucleus_Foxo1_tot_amount(unit = "m-33.0");
    Real elmt_nucleus_Foxo1_tot(unit = "m-36.0") "nucleus_Foxo1_tot";
 annotation(Documentation(info="<annotation>
                <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
                </rdf:RDF>
              </annotation>"));
    Real elmt_Foxo1_Pd1_tot_conc(unit = "m-18.0");
    Real elmt_Foxo1_Pd1_tot_amount(unit = "m-15.0");
    Real elmt_Foxo1_Pd1_tot(unit = "m-18.0") "Foxo1_Pd1_tot";
 annotation(Documentation(info="<annotation>
                <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
                </rdf:RDF>
              </annotation>"));
    Real elmt_dnabound_Foxo1_tot_conc(unit = "m-39.0");
    Real elmt_dnabound_Foxo1_tot_amount(unit = "m-36.0");
    Real elmt_dnabound_Foxo1_tot(unit = "m-39.0") "dnabound_Foxo1_tot";
 annotation(Documentation(info="<annotation>
                <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
                </rdf:RDF>
              </annotation>"));
    Real elmt_Foxo1_pUb1_tot_conc(unit = "m-30.0");
    Real elmt_Foxo1_pUb1_tot_amount(unit = "m-27.0");
    Real elmt_Foxo1_pUb1_tot(unit = "m-30.0") "Foxo1_pUb1_tot";
 annotation(Documentation(info="<annotation>
                <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
                </rdf:RDF>
              </annotation>"));
    Real elmt_extracellular_ROS_conc(unit = "m-6.0");
    Real elmt_extracellular_ROS_amount(unit = "m-3.0");
    Real elmt_extracellular_ROS(unit = "m-6.0") "extracellular_ROS";
 annotation(Documentation(info="<annotation>
                <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
                </rdf:RDF>
              </annotation>"));
    Real elmt_Foxo1_Pa1_tot_conc(unit = "m-12.0");
    Real elmt_Foxo1_Pa1_tot_amount(unit = "m-9.0");
    Real elmt_Foxo1_Pa1_tot(unit = "m-12.0") "Foxo1_Pa1_tot";
 annotation(Documentation(info="<annotation>
                <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
                </rdf:RDF>
              </annotation>"));
    Real elmt_Foxo1_Pe0_tot_conc(unit = "m-21.0");
    Real elmt_Foxo1_Pe0_tot_amount(unit = "m-18.0");
    Real elmt_Foxo1_Pe0_tot(unit = "m-21.0") "Foxo1_Pe0_tot";
 annotation(Documentation(info="<annotation>
                <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
                </rdf:RDF>
              </annotation>"));
    Real elmt_Foxo1_Pe1_tot_conc(unit = "m-24.0");
    Real elmt_Foxo1_Pe1_tot_amount(unit = "m-21.0");
    Real elmt_Foxo1_Pe1_tot(unit = "m-24.0") "Foxo1_Pe1_tot";
 annotation(Documentation(info="<annotation>
                <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
                </rdf:RDF>
              </annotation>"));
    Real elmt_cytoplasm_Foxo1_tot_conc(unit = "m-33.0");
    Real elmt_cytoplasm_Foxo1_tot_amount(unit = "m-30.0");
    Real elmt_cytoplasm_Foxo1_tot(unit = "m-33.0") "cytoplasm_Foxo1_tot";
 annotation(Documentation(info="<annotation>
                <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
                </rdf:RDF>
              </annotation>"));
    Real elmt_Foxo1_Pd0_tot_conc(unit = "m-15.0");
    Real elmt_Foxo1_Pd0_tot_amount(unit = "m-12.0");
    Real elmt_Foxo1_Pd0_tot(unit = "m-15.0") "Foxo1_Pd0_tot";
 annotation(Documentation(info="<annotation>
                <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
                </rdf:RDF>
              </annotation>"));
    Real elmt_Foxo1_all_conc(unit = "m-42.0");
    Real elmt_Foxo1_all_amount(unit = "m-39.0");
    Real elmt_Foxo1_all(unit = "m-42.0") "Foxo1_all";
 annotation(Documentation(info="<annotation>
                <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
                </rdf:RDF>
              </annotation>"));
    Real elmt_Foxo1_pUb0_tot_conc(unit = "m-27.0");
    Real elmt_Foxo1_pUb0_tot_amount(unit = "m-24.0");
    Real elmt_Foxo1_pUb0_tot(unit = "m-27.0") "Foxo1_pUb0_tot";
 annotation(Documentation(info="<annotation>
                <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
                </rdf:RDF>
              </annotation>"));
    Real elmt_Ins_conc(unit = "m-3.0");
    Real elmt_Ins_amount(unit = "");
    Real elmt_Ins(unit = "m-3.0") "Ins";
 annotation(Documentation(info="<annotation>
                <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
                </rdf:RDF>
              </annotation>"));
    Real elmt_Foxo1_Pa0_tot_conc(unit = "m-9.0");
    Real elmt_Foxo1_Pa0_tot_amount(unit = "m-6.0");
    Real elmt_Foxo1_Pa0_tot(unit = "m-9.0") "Foxo1_Pa0_tot";
 annotation(Documentation(info="<annotation>
                <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
                </rdf:RDF>
              </annotation>"));

    initial equation
        elmt_extracellular = 8.3E-12;
        elmt_extracellular_ROS_conc = (0.0 / elmt_extracellular);
        elmt_Ins_conc = (0.0 / elmt_extracellular);


    equation
        assert(elmt_extracellular >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_extracellular) = 0;
        elmt_nucleus_Foxo1_tot = elmt_nucleus_Foxo1_tot_conc;
        elmt_Foxo1_Pd1_tot = elmt_Foxo1_Pd1_tot_conc;
        elmt_dnabound_Foxo1_tot = elmt_dnabound_Foxo1_tot_conc;
        elmt_Foxo1_pUb1_tot = elmt_Foxo1_pUb1_tot_conc;
        elmt_extracellular_ROS = elmt_extracellular_ROS_conc;
        elmt_Foxo1_Pa1_tot = elmt_Foxo1_Pa1_tot_conc;
        elmt_Foxo1_Pe0_tot = elmt_Foxo1_Pe0_tot_conc;
        elmt_Foxo1_Pe1_tot = elmt_Foxo1_Pe1_tot_conc;
        elmt_cytoplasm_Foxo1_tot = elmt_cytoplasm_Foxo1_tot_conc;
        elmt_Foxo1_Pd0_tot = elmt_Foxo1_Pd0_tot_conc;
        elmt_Foxo1_all = elmt_Foxo1_all_conc;
        elmt_Foxo1_pUb0_tot = elmt_Foxo1_pUb0_tot_conc;
        elmt_Ins = elmt_Ins_conc;
        elmt_Foxo1_Pa0_tot = elmt_Foxo1_Pa0_tot_conc;
        elmt_nucleus_Foxo1_tot_amount = (((elmt_nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0 * elmt_nucleus) + (elmt_nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1 * elmt_nucleus) + (elmt_nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0 * elmt_nucleus) + (elmt_nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1 * elmt_nucleus) + (elmt_nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0 * elmt_nucleus) + (elmt_nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1 * elmt_nucleus) + (elmt_nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0 * elmt_nucleus) + (elmt_nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1 * elmt_nucleus) + (elmt_nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0 * elmt_nucleus) + (elmt_nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1 * elmt_nucleus) + (elmt_nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0 * elmt_nucleus) + (elmt_nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1 * elmt_nucleus) + (elmt_nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0 * elmt_nucleus) + (elmt_nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1 * elmt_nucleus) + (elmt_nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0 * elmt_nucleus) + (elmt_nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1 * elmt_nucleus)) / elmt_extracellular) * elmt_extracellular;
        elmt_Foxo1_Pd1_tot_amount = (((elmt_cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0 * elmt_dnabound) + (elmt_cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1 * elmt_dnabound) + (elmt_cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0 * elmt_dnabound) + (elmt_cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1 * elmt_dnabound) + (elmt_cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0 * elmt_dnabound) + (elmt_cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1 * elmt_dnabound) + (elmt_cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0 * elmt_dnabound) + (elmt_cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1 * elmt_dnabound)) / elmt_extracellular) * elmt_extracellular;
        elmt_dnabound_Foxo1_tot_amount = (((elmt_dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0 * elmt_dnabound) + (elmt_dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1 * elmt_dnabound) + (elmt_dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0 * elmt_dnabound) + (elmt_dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1 * elmt_dnabound) + (elmt_dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0 * elmt_dnabound) + (elmt_dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1 * elmt_dnabound) + (elmt_dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0 * elmt_dnabound) + (elmt_dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1 * elmt_dnabound) + (elmt_dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0 * elmt_dnabound) + (elmt_dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1 * elmt_dnabound) + (elmt_dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0 * elmt_dnabound) + (elmt_dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1 * elmt_dnabound) + (elmt_dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0 * elmt_dnabound) + (elmt_dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1 * elmt_dnabound) + (elmt_dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0 * elmt_dnabound) + (elmt_dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1 * elmt_dnabound)) / elmt_extracellular) * elmt_extracellular;
        elmt_Foxo1_pUb1_tot_amount = (((elmt_cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1 * elmt_dnabound) + (elmt_cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1 * elmt_dnabound) + (elmt_cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1 * elmt_dnabound) + (elmt_cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1 * elmt_dnabound) + (elmt_cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1 * elmt_dnabound) + (elmt_cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1 * elmt_dnabound) + (elmt_cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1 * elmt_dnabound) + (elmt_cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1 * elmt_dnabound)) / elmt_extracellular) * elmt_extracellular;
        der(elmt_extracellular_ROS_amount) = 0;
        elmt_Foxo1_Pa1_tot_amount = (((elmt_cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0 * elmt_dnabound) + (elmt_cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1 * elmt_dnabound) + (elmt_cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0 * elmt_dnabound) + (elmt_cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1 * elmt_dnabound) + (elmt_cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0 * elmt_dnabound) + (elmt_cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1 * elmt_dnabound) + (elmt_cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0 * elmt_dnabound) + (elmt_cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1 * elmt_dnabound)) / elmt_extracellular) * elmt_extracellular;
        elmt_Foxo1_Pe0_tot_amount = (((elmt_cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0 * elmt_dnabound) + (elmt_cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1 * elmt_dnabound) + (elmt_cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0 * elmt_dnabound) + (elmt_cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1 * elmt_dnabound) + (elmt_cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0 * elmt_dnabound) + (elmt_cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1 * elmt_dnabound) + (elmt_cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0 * elmt_dnabound) + (elmt_cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1 * elmt_dnabound)) / elmt_extracellular) * elmt_extracellular;
        elmt_Foxo1_Pe1_tot_amount = (((elmt_cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0 * elmt_dnabound) + (elmt_cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1 * elmt_dnabound) + (elmt_cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0 * elmt_dnabound) + (elmt_cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1 * elmt_dnabound) + (elmt_cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0 * elmt_dnabound) + (elmt_cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1 * elmt_dnabound) + (elmt_cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0 * elmt_dnabound) + (elmt_cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1 * elmt_dnabound)) / elmt_extracellular) * elmt_extracellular;
        elmt_cytoplasm_Foxo1_tot_amount = (((elmt_cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0 * elmt_cytoplasm) + (elmt_cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1 * elmt_cytoplasm) + (elmt_cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0 * elmt_cytoplasm) + (elmt_cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1 * elmt_cytoplasm) + (elmt_cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0 * elmt_cytoplasm) + (elmt_cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1 * elmt_cytoplasm) + (elmt_cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0 * elmt_cytoplasm) + (elmt_cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1 * elmt_cytoplasm) + (elmt_cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0 * elmt_cytoplasm) + (elmt_cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1 * elmt_cytoplasm) + (elmt_cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0 * elmt_cytoplasm) + (elmt_cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1 * elmt_cytoplasm) + (elmt_cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0 * elmt_cytoplasm) + (elmt_cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1 * elmt_cytoplasm) + (elmt_cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0 * elmt_cytoplasm) + (elmt_cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1 * elmt_cytoplasm)) / elmt_extracellular) * elmt_extracellular;
        elmt_Foxo1_Pd0_tot_amount = (((elmt_cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0 * elmt_dnabound) + (elmt_cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1 * elmt_dnabound) + (elmt_cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0 * elmt_dnabound) + (elmt_cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1 * elmt_dnabound) + (elmt_cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0 * elmt_dnabound) + (elmt_cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1 * elmt_dnabound) + (elmt_cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0 * elmt_dnabound) + (elmt_cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1 * elmt_dnabound)) / elmt_extracellular) * elmt_extracellular;
        elmt_Foxo1_all_amount = (((elmt_cytoplasm_Foxo1_tot * elmt_extracellular) + (elmt_nucleus_Foxo1_tot * elmt_extracellular) + (elmt_dnabound_Foxo1_tot * elmt_extracellular)) / elmt_extracellular) * elmt_extracellular;
        elmt_Foxo1_pUb0_tot_amount = (((elmt_cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0 * elmt_dnabound) + (elmt_cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0 * elmt_dnabound) + (elmt_cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0 * elmt_dnabound) + (elmt_cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0 * elmt_dnabound) + (elmt_cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0 * elmt_dnabound) + (elmt_cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0 * elmt_dnabound) + (elmt_cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0 * elmt_dnabound) + (elmt_cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0 * elmt_dnabound)) / elmt_extracellular) * elmt_extracellular;
        der(elmt_Ins_amount) = 0;
        elmt_Foxo1_Pa0_tot_amount = (((elmt_cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0 * elmt_dnabound) + (elmt_cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1 * elmt_dnabound) + (elmt_cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0 * elmt_dnabound) + (elmt_cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1 * elmt_dnabound) + (elmt_cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0 * elmt_dnabound) + (elmt_cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1 * elmt_dnabound) + (elmt_cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0 * elmt_dnabound) + (elmt_cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1 * elmt_cytoplasm) + (elmt_nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1 * elmt_nucleus) + (elmt_dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1 * elmt_dnabound)) / elmt_extracellular) * elmt_extracellular;

    algorithm
        elmt_nucleus_Foxo1_tot_conc := elmt_nucleus_Foxo1_tot_amount / elmt_extracellular;
        elmt_Foxo1_Pd1_tot_conc := elmt_Foxo1_Pd1_tot_amount / elmt_extracellular;
        elmt_dnabound_Foxo1_tot_conc := elmt_dnabound_Foxo1_tot_amount / elmt_extracellular;
        elmt_Foxo1_pUb1_tot_conc := elmt_Foxo1_pUb1_tot_amount / elmt_extracellular;
        elmt_extracellular_ROS_conc := elmt_extracellular_ROS_amount / elmt_extracellular;
        elmt_Foxo1_Pa1_tot_conc := elmt_Foxo1_Pa1_tot_amount / elmt_extracellular;
        elmt_Foxo1_Pe0_tot_conc := elmt_Foxo1_Pe0_tot_amount / elmt_extracellular;
        elmt_Foxo1_Pe1_tot_conc := elmt_Foxo1_Pe1_tot_amount / elmt_extracellular;
        elmt_cytoplasm_Foxo1_tot_conc := elmt_cytoplasm_Foxo1_tot_amount / elmt_extracellular;
        elmt_Foxo1_Pd0_tot_conc := elmt_Foxo1_Pd0_tot_amount / elmt_extracellular;
        elmt_Foxo1_all_conc := elmt_Foxo1_all_amount / elmt_extracellular;
        elmt_Foxo1_pUb0_tot_conc := elmt_Foxo1_pUb0_tot_amount / elmt_extracellular;
        elmt_Ins_conc := elmt_Ins_amount / elmt_extracellular;
        elmt_Foxo1_Pa0_tot_conc := elmt_Foxo1_Pa0_tot_amount / elmt_extracellular;
end Class_elmt_extracellular;
