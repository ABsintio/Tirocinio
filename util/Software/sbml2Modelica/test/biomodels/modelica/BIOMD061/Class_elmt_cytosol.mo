within BIOMD061;
class Class_elmt_cytosol

    input Real elmt_product30;
    input Real elmt_reactant41;
    input Real elmt_reactant42;
    input Real elmt_product32;
    input Real elmt_vlpGlyc;
    input Real elmt_vADH;
    input Real elmt_vconsum;
    input Real elmt_reactant49;
    input Real elmt_reactant45;
    input Real elmt_vdifEtOH;
    input Real elmt_vPFK;
    input Real elmt_product26;
    input Real elmt_product25;
    input Real elmt_product29;
    input Real elmt_vdifACA;
    input Real elmt_product44;
    input Real elmt_product43;
    input Real elmt_reactant14;
    input Real elmt_reactant58;
    input Real elmt_reactant59;
    input Real elmt_reactant17;
    input Real elmt_reactant10;
    input Real elmt_reactant11;
    input Real elmt_vTIM;
    input Real elmt_product36;
    input Real elmt_product35;
    input Real elmt_vALD;
    input Real elmt_reactant61;
    input Real elmt_vlpPEP;
    input Real elmt_reactant63;
    input Real elmt_reactant20;
    input Real elmt_vPDC;
    input Real elmt_reactant64;
    input Real elmt_product12;
    input Real elmt_vPK;
    input Real elmt_reactant27;
    input Real elmt_reactant28;
    input Real elmt_reactant23;
    input Real elmt_vHK;
    input Real elmt_reactant24;
    input Real elmt_reactant19;
    input Real elmt_product9;
    input Real elmt_vGAPDH;
    input Real elmt_product62;
    input Real elmt_reactant4;
    input Real elmt_product7;
    input Real elmt_product6;
    input Real elmt_product60;
    input Real elmt_reactant31;
    input Real elmt_vPGI;
    input Real elmt_reactant5;
    input Real elmt_product22;
    input Real elmt_reactant8;
    input Real elmt_product65;
    input Real elmt_product21;
    input Real elmt_vAK;
    input Real elmt_reactant37;
    input Real elmt_reactant33;
    input Real elmt_reactant34;
    input Real elmt_product3;
    input Real elmt_product16;
    input Real elmt_product15;
    input Real elmt_product13;
    input Real elmt_vstorage;
    input Real elmt_product18;
    input Real elmt_vGlcTrans;
    input Real elmt_vdifGlyc;

    Real elmt_cytosol(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_GAP_conc(unit = "");
    Real elmt_GAP_amount(unit = "");
    Real elmt_GAP(unit = "") "Glyceraldehyde 3-phosphate";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_FBP_conc(unit = "");
    Real elmt_FBP_amount(unit = "");
    Real elmt_FBP(unit = "") "Fructose 1,6-bisphosphate";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_NAD_conc(unit = "");
    Real elmt_NAD_amount(unit = "");
    Real elmt_NAD(unit = "") "NAD";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_ACA_conc(unit = "");
    Real elmt_ACA_amount(unit = "");
    Real elmt_ACA(unit = "") "Acetaldehyde";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_F6P_conc(unit = "");
    Real elmt_F6P_amount(unit = "");
    Real elmt_F6P(unit = "") "Fructose-6-Phosphate";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_ATP_conc(unit = "");
    Real elmt_ATP_amount(unit = "");
    Real elmt_ATP(unit = "") "ATP";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_EtOH_conc(unit = "");
    Real elmt_EtOH_amount(unit = "");
    Real elmt_EtOH(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_Glc_conc(unit = "");
    Real elmt_Glc_amount(unit = "");
    Real elmt_Glc(unit = "") "Cytosolic glucose";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_PEP_conc(unit = "");
    Real elmt_PEP_amount(unit = "");
    Real elmt_PEP(unit = "") "Phosphoenolpyruvate";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_BPG_conc(unit = "");
    Real elmt_BPG_amount(unit = "");
    Real elmt_BPG(unit = "") "1,3-Bisphosphoglycerate";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_Glyc_conc(unit = "");
    Real elmt_Glyc_amount(unit = "");
    Real elmt_Glyc(unit = "") "Glycerol";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_AMP_conc(unit = "");
    Real elmt_AMP_amount(unit = "");
    Real elmt_AMP(unit = "") "AMP";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_G6P_conc(unit = "");
    Real elmt_G6P_amount(unit = "");
    Real elmt_G6P(unit = "") "Glucose-6-Phosphate";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_DHAP_conc(unit = "");
    Real elmt_DHAP_amount(unit = "");
    Real elmt_DHAP(unit = "") "Dihydroxyacetone phosphate";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_ADP_conc(unit = "");
    Real elmt_ADP_amount(unit = "");
    Real elmt_ADP(unit = "") "ADP";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_NADH_conc(unit = "");
    Real elmt_NADH_amount(unit = "");
    Real elmt_NADH(unit = "") "NADH";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_Pyr_conc(unit = "");
    Real elmt_Pyr_amount(unit = "");
    Real elmt_Pyr(unit = "") "Pyruvate";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    initial equation
        elmt_cytosol = 1.0;
        elmt_GAP_conc = 0.115;
        elmt_FBP_conc = 4.64;
        elmt_NAD_conc = 0.65;
        elmt_ACA_conc = 1.48153;
        elmt_F6P_conc = 0.49;
        elmt_ATP_conc = 2.1;
        elmt_EtOH_conc = 19.2379;
        elmt_Glc_conc = 0.573074;
        elmt_PEP_conc = 0.04;
        elmt_BPG_conc = 2.7E-4;
        elmt_Glyc_conc = 4.196;
        elmt_AMP_conc = 0.33;
        elmt_G6P_conc = 4.2;
        elmt_DHAP_conc = 2.95;
        elmt_ADP_conc = 1.5;
        elmt_NADH_conc = 0.33;
        elmt_Pyr_conc = 8.7;


    equation
        assert(elmt_cytosol >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cytosol) = 0;
        elmt_GAP = elmt_GAP_conc;
        elmt_FBP = elmt_FBP_conc;
        elmt_NAD = elmt_NAD_conc;
        elmt_ACA = elmt_ACA_conc;
        elmt_F6P = elmt_F6P_conc;
        elmt_ATP = elmt_ATP_conc;
        elmt_EtOH = elmt_EtOH_conc;
        elmt_Glc = elmt_Glc_conc;
        elmt_PEP = elmt_PEP_conc;
        elmt_BPG = elmt_BPG_conc;
        elmt_Glyc = elmt_Glyc_conc;
        elmt_AMP = elmt_AMP_conc;
        elmt_G6P = elmt_G6P_conc;
        elmt_DHAP = elmt_DHAP_conc;
        elmt_ADP = elmt_ADP_conc;
        elmt_NADH = elmt_NADH_conc;
        elmt_Pyr = elmt_Pyr_conc;
        der(elmt_GAP_amount) = ((- (elmt_vGAPDH * elmt_reactant19)) + (elmt_vTIM * elmt_product18) + (elmt_vALD * elmt_product15));
        der(elmt_FBP_amount) = ((elmt_vPFK * elmt_product12) + (- (elmt_vALD * elmt_reactant14)));
        der(elmt_NAD_amount) = ((elmt_vlpGlyc * elmt_product44) + (elmt_vADH * elmt_product35) + (- (elmt_vGAPDH * elmt_reactant20)));
        der(elmt_ACA_amount) = ((elmt_vPDC * elmt_product32) + (- (elmt_vADH * elmt_reactant34)) + (- (elmt_vdifACA * elmt_reactant49)));
        der(elmt_F6P_amount) = ((- (elmt_vPFK * elmt_reactant10)) + (elmt_vPGI * elmt_product9));
        der(elmt_ATP_amount) = ((elmt_vlpPEP * elmt_product26) + (elmt_vPK * elmt_product30) + (- (elmt_vconsum * elmt_reactant61)) + (- (elmt_vHK * elmt_reactant4)) + (- (elmt_vPFK * elmt_reactant11)) + (- (elmt_vAK * elmt_reactant63)) + (- (elmt_vstorage * elmt_reactant58)));
        der(elmt_EtOH_amount) = ((elmt_vADH * elmt_product36) + (- (elmt_vdifEtOH * elmt_reactant37)));
        der(elmt_Glc_amount) = ((- (elmt_vHK * elmt_reactant5)) + (elmt_vGlcTrans * elmt_product3));
        der(elmt_PEP_amount) = ((elmt_vlpPEP * elmt_product25) + (- (elmt_vPK * elmt_reactant28)));
        der(elmt_BPG_amount) = ((- (elmt_vlpPEP * elmt_reactant23)) + (elmt_vGAPDH * elmt_product22));
        der(elmt_Glyc_amount) = ((elmt_vlpGlyc * elmt_product43) + (- (elmt_vdifGlyc * elmt_reactant45)));
        der(elmt_AMP_amount) = (- (elmt_vAK * elmt_reactant64));
        der(elmt_G6P_amount) = ((elmt_vHK * elmt_product6) + (- (elmt_vPGI * elmt_reactant8)) + (- (elmt_vstorage * elmt_reactant59)));
        der(elmt_DHAP_amount) = ((- (elmt_vlpGlyc * elmt_reactant41)) + (- (elmt_vTIM * elmt_reactant17)) + (elmt_vALD * elmt_product16));
        der(elmt_ADP_amount) = ((- (elmt_vlpPEP * elmt_reactant24)) + (- (elmt_vPK * elmt_reactant27)) + (elmt_vconsum * elmt_product62) + (elmt_vHK * elmt_product7) + (elmt_vPFK * elmt_product13) + (elmt_vAK * elmt_product65) + (elmt_vstorage * elmt_product60));
        der(elmt_NADH_amount) = ((- (elmt_vlpGlyc * elmt_reactant42)) + (- (elmt_vADH * elmt_reactant33)) + (elmt_vGAPDH * elmt_product21));
        der(elmt_Pyr_amount) = ((- (elmt_vPDC * elmt_reactant31)) + (elmt_vPK * elmt_product29));

    algorithm
        elmt_GAP_conc := elmt_GAP_amount / elmt_cytosol;
        elmt_FBP_conc := elmt_FBP_amount / elmt_cytosol;
        elmt_NAD_conc := elmt_NAD_amount / elmt_cytosol;
        elmt_ACA_conc := elmt_ACA_amount / elmt_cytosol;
        elmt_F6P_conc := elmt_F6P_amount / elmt_cytosol;
        elmt_ATP_conc := elmt_ATP_amount / elmt_cytosol;
        elmt_EtOH_conc := elmt_EtOH_amount / elmt_cytosol;
        elmt_Glc_conc := elmt_Glc_amount / elmt_cytosol;
        elmt_PEP_conc := elmt_PEP_amount / elmt_cytosol;
        elmt_BPG_conc := elmt_BPG_amount / elmt_cytosol;
        elmt_Glyc_conc := elmt_Glyc_amount / elmt_cytosol;
        elmt_AMP_conc := elmt_AMP_amount / elmt_cytosol;
        elmt_G6P_conc := elmt_G6P_amount / elmt_cytosol;
        elmt_DHAP_conc := elmt_DHAP_amount / elmt_cytosol;
        elmt_ADP_conc := elmt_ADP_amount / elmt_cytosol;
        elmt_NADH_conc := elmt_NADH_amount / elmt_cytosol;
        elmt_Pyr_conc := elmt_Pyr_amount / elmt_cytosol;
end Class_elmt_cytosol;
