within BIOMD268;
class Class_elmt_mito

    input Real elmt_reactant61;
    input Real elmt_VmMTCH;
    input Real elmt_reactant63;
    input Real elmt_reactant41;
    input Real elmt_VmMTD;
    input Real elmt_reactant42;
    input Real elmt_VmGLYc;
    input Real elmt_VmNE;
    input Real elmt_product54;
    input Real elmt_product53;
    input Real elmt_reactant47;
    input Real elmt_reactant48;
    input Real elmt_VmFTS;
    input Real elmt_reactant65;
    input Real elmt_reactant44;
    input Real elmt_reactant67;
    input Real elmt_VmHCOOHc;
    input Real elmt_product49;
    input Real elmt_VmFTD;
    input Real elmt_product46;
    input Real elmt_VmSHMT;
    input Real elmt_product40;
    input Real elmt_product62;
    input Real elmt_reactant51;
    input Real elmt_V_GDC;
    input Real elmt_product60;
    input Real elmt_product43;
    input Real elmt_reactant59;
    input Real elmt_reactant37;
    input Real elmt_reactant38;
    input Real elmt_V_SDH;
    input Real elmt_V_DMGD;
    input Real elmt_reactant55;
    input Real elmt_reactant35;
    input Real elmt_VmSERc;
    input Real elmt_Fol;
    input Real elmt_product36;
    input Real elmt_product57;
    input Real elmt_product39;

    Real elmt_mito(unit = "m3.0") "mitochondrion";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_m_2cf_conc(unit = "m-105.0.");
    Real elmt_m_2cf_amount(unit = "m-102.0.");
    Real elmt_m_2cf(unit = "m-105.0.") "m_5-10-methylene-THF";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_m_1cf_conc(unit = "m-108.0.");
    Real elmt_m_1cf_amount(unit = "m-105.0.");
    Real elmt_m_1cf(unit = "m-108.0.") "m_5-10-methenyl-THF";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_m_coo_conc(unit = "m-120.0.");
    Real elmt_m_coo_amount(unit = "m-117.0.");
    Real elmt_m_coo(unit = "m-120.0.") "m_Formate";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_m_gly_conc(unit = "m-117.0.");
    Real elmt_m_gly_amount(unit = "m-114.0.");
    Real elmt_m_gly(unit = "m-117.0.") "m_Glycine";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_m_10f_conc(unit = "m-111.0.");
    Real elmt_m_10f_amount(unit = "m-108.0.");
    Real elmt_m_10f(unit = "m-111.0.") "m_10-formyl-THF";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_m_ser_conc(unit = "m-114.0.");
    Real elmt_m_ser_amount(unit = "m-111.0.");
    Real elmt_m_ser(unit = "m-114.0.") "m_Serine";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_CO_conc(unit = "m-99.0.");
    Real elmt_CO_amount(unit = "m-96.0.");
    Real elmt_CO(unit = "m-99.0.") "CO2";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_m_thf_conc(unit = "m-102.0.");
    Real elmt_m_thf_amount(unit = "m-99.0.");
    Real elmt_m_thf(unit = "m-102.0.") "m_THF";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_mito = 1.0;
        elmt_m_2cf_conc = 1.66610924423152;
        elmt_m_1cf_conc = 1.54929073348709;
        elmt_m_coo_conc = 55.820116666595;
        elmt_m_gly_conc = 2040.43402532595;
        elmt_m_10f_conc = 15.9087989350187;
        elmt_m_ser_conc = 2114.87119909779;
        elmt_CO_conc = 0.0;
        elmt_m_thf_conc = ((elmt_Fol / ((2.0 * 1.0) / 4.0)) - (elmt_m_2cf + elmt_m_1cf + elmt_m_10f));


    equation
        assert(elmt_mito >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_mito) = 0;
        elmt_m_2cf = elmt_m_2cf_conc;
        elmt_m_1cf = elmt_m_1cf_conc;
        elmt_m_coo = elmt_m_coo_conc;
        elmt_m_gly = elmt_m_gly_conc;
        elmt_m_10f = elmt_m_10f_conc;
        elmt_m_ser = elmt_m_ser_conc;
        elmt_CO = elmt_CO_conc;
        elmt_m_thf = elmt_m_thf_conc;
        der(elmt_CO_amount) = 0;
        der(elmt_m_2cf_amount) = ((elmt_VmNE * elmt_product46) + (elmt_V_GDC * elmt_product49) + (elmt_V_SDH * elmt_product53) + (elmt_V_DMGD * elmt_product57) + (- (elmt_VmMTD * elmt_reactant59)) + (elmt_VmSHMT * elmt_product40));
        der(elmt_m_1cf_amount) = ((- (elmt_VmMTCH * elmt_reactant61)) + (elmt_VmMTD * elmt_product60));
        der(elmt_m_coo_amount) = ((- (elmt_VmFTS * elmt_reactant42)) + (- (elmt_VmHCOOHc * elmt_reactant65)));
        der(elmt_m_gly_amount) = ((- (elmt_V_GDC * elmt_reactant48)) + (elmt_V_SDH * elmt_product54) + (- (elmt_VmGLYc * elmt_reactant67)) + (elmt_VmSHMT * elmt_product39));
        der(elmt_m_10f_amount) = ((elmt_VmFTS * elmt_product43) + (- (elmt_VmFTD * elmt_reactant35)) + (elmt_VmMTCH * elmt_product62));
        der(elmt_m_ser_amount) = ((- (elmt_VmSHMT * elmt_reactant38)) + (- (elmt_VmSERc * elmt_reactant63)));
        der(elmt_m_thf_amount) = ((- (elmt_VmNE * elmt_reactant44)) + (- (elmt_VmFTS * elmt_reactant41)) + (elmt_VmFTD * elmt_product36) + (- (elmt_V_GDC * elmt_reactant47)) + (- (elmt_V_SDH * elmt_reactant51)) + (- (elmt_V_DMGD * elmt_reactant55)) + (- (elmt_VmSHMT * elmt_reactant37)));

    algorithm
        elmt_m_2cf_conc := elmt_m_2cf_amount / elmt_mito;
        elmt_m_1cf_conc := elmt_m_1cf_amount / elmt_mito;
        elmt_m_coo_conc := elmt_m_coo_amount / elmt_mito;
        elmt_m_gly_conc := elmt_m_gly_amount / elmt_mito;
        elmt_m_10f_conc := elmt_m_10f_amount / elmt_mito;
        elmt_m_ser_conc := elmt_m_ser_amount / elmt_mito;
        elmt_CO_conc := elmt_CO_amount / elmt_mito;
        elmt_m_thf_conc := elmt_m_thf_amount / elmt_mito;
end Class_elmt_mito;
