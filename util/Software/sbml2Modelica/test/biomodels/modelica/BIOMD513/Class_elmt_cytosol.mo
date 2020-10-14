within BIOMD513;
class Class_elmt_cytosol

    input Real elmt_PGAM_c;
    input Real elmt_GDA_g;
    input Real elmt_GPO_c;
    input Real elmt_reactant21;
    input Real elmt_AK_c;
    input Real elmt_reactant45;
    input Real elmt_ATPu_c;
    input Real elmt_GlcT_c;
    input Real elmt_GlcT_g;
    input Real elmt_product47;
    input Real elmt_product46;
    input Real elmt_product28;
    input Real elmt_reactant2;
    input Real elmt_ENO_c;
    input Real elmt_product40;
    input Real elmt_product60;
    input Real elmt_reactant3;
    input Real elmt_product22;
    input Real elmt_reactant14;
    input Real elmt_reactant37;
    input Real elmt_reactant59;
    input Real elmt_reactant39;
    input Real elmt_product5;
    input Real elmt_reactant10;
    input Real elmt_PYK_c;
    input Real elmt_product4;
    input Real elmt_reactant12;
    input Real elmt_PyrT_c;
    input Real elmt_product38;
    input Real elmt_product13;
    input Real elmt__3PGAT_g;
    input Real elmt_product17;

    Real elmt_cytosol(unit = "") "cytosol";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt__3PGA_c_conc(unit = "");
    Real elmt__3PGA_c_amount(unit = "");
    Real elmt__3PGA_c(unit = "") "_3PGA_c";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_PEP_c_conc(unit = "");
    Real elmt_PEP_c_amount(unit = "");
    Real elmt_PEP_c(unit = "") "PEP_c";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_ATP_c_conc(unit = "");
    Real elmt_ATP_c_amount(unit = "");
    Real elmt_ATP_c(unit = "") "ATP_c";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Glc_c_conc(unit = "");
    Real elmt_Glc_c_amount(unit = "");
    Real elmt_Glc_c(unit = "") "Glc_c";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Gly3P_c_conc(unit = "");
    Real elmt_Gly3P_c_amount(unit = "");
    Real elmt_Gly3P_c(unit = "") "Gly3P_c";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_CO2_c_conc(unit = "");
    Real elmt_CO2_c_amount(unit = "");
    Real elmt_CO2_c(unit = "") "CO2_c";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_DHAP_c_conc(unit = "");
    Real elmt_DHAP_c_amount(unit = "");
    Real elmt_DHAP_c(unit = "") "DHAP_c";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_AMP_c_conc(unit = "");
    Real elmt_AMP_c_amount(unit = "");
    Real elmt_AMP_c(unit = "") "AMP_c";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt__2PGA_c_conc(unit = "");
    Real elmt__2PGA_c_amount(unit = "");
    Real elmt__2PGA_c(unit = "") "_2PGA_c";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_ADP_c_conc(unit = "");
    Real elmt_ADP_c_amount(unit = "");
    Real elmt_ADP_c(unit = "") "ADP_c";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Pyr_c_conc(unit = "");
    Real elmt_Pyr_c_amount(unit = "");
    Real elmt_Pyr_c(unit = "") "Pyr_c";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_cytosol = 5.4549;
        elmt__3PGA_c_conc = 0.1;
        elmt_PEP_c_conc = 1.0;
        elmt_ATP_c_conc = 0.3417;
        elmt_Glc_c_conc = 0.1;
        elmt_Gly3P_c_conc = 2.76867088;
        elmt_CO2_c_conc = 0.0;
        elmt_DHAP_c_conc = 2.23132912;
        elmt_AMP_c_conc = 2.2418;
        elmt__2PGA_c_conc = 0.1;
        elmt_ADP_c_conc = 1.3165;
        elmt_Pyr_c_conc = 10.0;


    equation
        assert(elmt_cytosol >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cytosol) = 0;
        elmt__3PGA_c = elmt__3PGA_c_conc;
        elmt_PEP_c = elmt_PEP_c_conc;
        elmt_ATP_c = elmt_ATP_c_conc;
        elmt_Glc_c = elmt_Glc_c_conc;
        elmt_Gly3P_c = elmt_Gly3P_c_conc;
        elmt_CO2_c = elmt_CO2_c_conc;
        elmt_DHAP_c = elmt_DHAP_c_conc;
        elmt_AMP_c = elmt_AMP_c_conc;
        elmt__2PGA_c = elmt__2PGA_c_conc;
        elmt_ADP_c = elmt_ADP_c_conc;
        elmt_Pyr_c = elmt_Pyr_c_conc;
        der(elmt_CO2_c_amount) = 0;
        der(elmt__3PGA_c_amount) = ((- (elmt_PGAM_c * elmt_reactant12)) + (elmt__3PGAT_g * elmt_product28));
        der(elmt_PEP_c_amount) = ((elmt_ENO_c * elmt_product22) + (- (elmt_PYK_c * elmt_reactant2)));
        der(elmt_ATP_c_amount) = ((elmt_PYK_c * elmt_product5) + (elmt_AK_c * elmt_product47) + (- (elmt_ATPu_c * elmt_reactant39)));
        der(elmt_Glc_c_amount) = ((elmt_GlcT_c * elmt_product17) + (- (elmt_GlcT_g * elmt_reactant10)));
        der(elmt_Gly3P_c_amount) = ((elmt_GDA_g * elmt_product60) + (- (elmt_GPO_c * elmt_reactant37)));
        der(elmt_DHAP_c_amount) = ((- (elmt_GDA_g * elmt_reactant59)) + (elmt_GPO_c * elmt_product38));
        der(elmt_AMP_c_amount) = (elmt_AK_c * elmt_product46);
        der(elmt__2PGA_c_amount) = ((- (elmt_ENO_c * elmt_reactant21)) + (elmt_PGAM_c * elmt_product13));
        der(elmt_ADP_c_amount) = ((- (elmt_PYK_c * elmt_reactant3)) + (- (elmt_AK_c * elmt_reactant45)) + (elmt_ATPu_c * elmt_product40));
        der(elmt_Pyr_c_amount) = ((elmt_PYK_c * elmt_product4) + (- (elmt_PyrT_c * elmt_reactant14)));

    algorithm
        elmt__3PGA_c_conc := elmt__3PGA_c_amount / elmt_cytosol;
        elmt_PEP_c_conc := elmt_PEP_c_amount / elmt_cytosol;
        elmt_ATP_c_conc := elmt_ATP_c_amount / elmt_cytosol;
        elmt_Glc_c_conc := elmt_Glc_c_amount / elmt_cytosol;
        elmt_Gly3P_c_conc := elmt_Gly3P_c_amount / elmt_cytosol;
        elmt_CO2_c_conc := elmt_CO2_c_amount / elmt_cytosol;
        elmt_DHAP_c_conc := elmt_DHAP_c_amount / elmt_cytosol;
        elmt_AMP_c_conc := elmt_AMP_c_amount / elmt_cytosol;
        elmt__2PGA_c_conc := elmt__2PGA_c_amount / elmt_cytosol;
        elmt_ADP_c_conc := elmt_ADP_c_amount / elmt_cytosol;
        elmt_Pyr_c_conc := elmt_Pyr_c_amount / elmt_cytosol;
end Class_elmt_cytosol;
