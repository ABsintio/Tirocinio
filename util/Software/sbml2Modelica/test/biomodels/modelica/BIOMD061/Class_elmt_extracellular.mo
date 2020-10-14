within BIOMD061;
class Class_elmt_extracellular

    input Real elmt_vdifACA;
    input Real elmt_reactant2;
    input Real elmt_voutGlyc;
    input Real elmt_reactant51;
    input Real elmt_product50;
    input Real elmt_reactant53;
    input Real elmt_voutEtOH;
    input Real elmt_reactant47;
    input Real elmt_product1;
    input Real elmt_vlacto;
    input Real elmt_reactant39;
    input Real elmt_reactant54;
    input Real elmt_vinCN;
    input Real elmt_voutACA;
    input Real elmt_vdifEtOH;
    input Real elmt_product38;
    input Real elmt_product57;
    input Real elmt_product46;
    input Real elmt_vinGlc;
    input Real elmt_vdifGlyc;
    input Real elmt_vGlcTrans;

    Real elmt_extracellular(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_P_conc(unit = "");
    Real elmt_P_amount(unit = "");
    Real elmt_P(unit = "") "";
    Real elmt_EtOHX_conc(unit = "");
    Real elmt_EtOHX_amount(unit = "");
    Real elmt_EtOHX(unit = "") "Extracellular ethanol";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_CNX0_conc(unit = "");
    Real elmt_CNX0_amount(unit = "");
    Real elmt_CNX0(unit = "") "Mixed flow cyanide";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_GlcX0_conc(unit = "");
    Real elmt_GlcX0_amount(unit = "");
    Real elmt_GlcX0(unit = "") "Mixed flow glucose";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_CNX_conc(unit = "");
    Real elmt_CNX_amount(unit = "");
    Real elmt_CNX(unit = "") "Extracellular cyanide";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_GlycX_conc(unit = "");
    Real elmt_GlycX_amount(unit = "");
    Real elmt_GlycX(unit = "") "Extracellular glycerol";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_ACAX_conc(unit = "");
    Real elmt_ACAX_amount(unit = "");
    Real elmt_ACAX(unit = "") "Extracellular acetaldehyde";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_GlcX_conc(unit = "");
    Real elmt_GlcX_amount(unit = "");
    Real elmt_GlcX(unit = "") "Extracellular glucose";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    initial equation
        elmt_extracellular = 1.0;
        elmt_P_conc = 0.0;
        elmt_EtOHX_conc = 16.4514;
        elmt_CNX0_conc = 5.6;
        elmt_GlcX0_conc = 24.0;
        elmt_CNX_conc = 5.20358;
        elmt_GlycX_conc = 1.68478;
        elmt_ACAX_conc = 1.28836;
        elmt_GlcX_conc = 6.7;


    equation
        assert(elmt_extracellular >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_extracellular) = 0;
        elmt_P = elmt_P_conc;
        elmt_EtOHX = elmt_EtOHX_conc;
        elmt_CNX0 = elmt_CNX0_conc;
        elmt_GlcX0 = elmt_GlcX0_conc;
        elmt_CNX = elmt_CNX_conc;
        elmt_GlycX = elmt_GlycX_conc;
        elmt_ACAX = elmt_ACAX_conc;
        elmt_GlcX = elmt_GlcX_conc;
        der(elmt_P_amount) = 0;
        der(elmt_CNX0_amount) = 0;
        der(elmt_GlcX0_amount) = 0;
        der(elmt_EtOHX_amount) = ((elmt_vdifEtOH * elmt_product38) + (- (elmt_voutEtOH * elmt_reactant39)));
        der(elmt_CNX_amount) = ((elmt_vinCN * elmt_product57) + (- (elmt_vlacto * elmt_reactant53)));
        der(elmt_GlycX_amount) = ((- (elmt_voutGlyc * elmt_reactant47)) + (elmt_vdifGlyc * elmt_product46));
        der(elmt_ACAX_amount) = ((- (elmt_voutACA * elmt_reactant51)) + (elmt_vdifACA * elmt_product50) + (- (elmt_vlacto * elmt_reactant54)));
        der(elmt_GlcX_amount) = ((elmt_vinGlc * elmt_product1) + (- (elmt_vGlcTrans * elmt_reactant2)));

    algorithm
        elmt_P_conc := elmt_P_amount / elmt_extracellular;
        elmt_EtOHX_conc := elmt_EtOHX_amount / elmt_extracellular;
        elmt_CNX0_conc := elmt_CNX0_amount / elmt_extracellular;
        elmt_GlcX0_conc := elmt_GlcX0_amount / elmt_extracellular;
        elmt_CNX_conc := elmt_CNX_amount / elmt_extracellular;
        elmt_GlycX_conc := elmt_GlycX_amount / elmt_extracellular;
        elmt_ACAX_conc := elmt_ACAX_amount / elmt_extracellular;
        elmt_GlcX_conc := elmt_GlcX_amount / elmt_extracellular;
end Class_elmt_extracellular;
