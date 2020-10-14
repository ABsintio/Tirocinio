within BIOMD061;
class Reactions

    input Real elmt_GAP;
    input Real elmt_NAD;
    input Real elmt_CNX0;
    input Real elmt_ATP;
    input Real elmt_Glc;
    input Real elmt_cytosol;
    input Real elmt_PEP;
    input Real elmt_BPG;
    input Real elmt_EtOHX;
    input Real elmt_DHAP;
    input Real elmt_ADP;
    input Real elmt_CNX;
    input Real elmt_NADH;
    input Real elmt_FBP;
    input Real elmt_GlcX0;
    input Real elmt_ACA;
    input Real elmt_F6P;
    input Real elmt_EtOH;
    input Real elmt_extracellular;
    input Real elmt_Glyc;
    input Real elmt_AMP;
    input Real elmt_G6P;
    input Real elmt_GlycX;
    input Real elmt_ACAX;
    input Real elmt_Pyr;
    input Real elmt_GlcX;

    Real elmt_vlpPEP(unit = "") "Phosphoenolpyruvate synthesis";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vlpPEP_elmt_k9f(unit "m3.0.mol-1.0.s-1.0") = 443866.0 "";
    parameter Real elmt_vlpPEP_elmt_k9r(unit "m3.0.mol-1.0.s-1.0") = 1528.62 "";
    Real elmt_product26 "";
    Real elmt_product25 "";
    Real elmt_reactant23 "";
    Real elmt_reactant24 "";
    Real elmt_voutGlyc(unit = "") "Glycerol flow";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_voutGlyc_elmt_k0(unit "s-1.0") = 0.048 "";
    Real elmt_reactant47 "";
    Real elmt_product48 "";
    Real elmt_vPDC(unit = "") "Pyruvate decarboxylase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vPDC_elmt_V11m(unit "m-3.0..s-1.0") = 53.1328 "";
    parameter Real elmt_vPDC_elmt_K11(unit "m-3.0.") = 0.3 "";
    Real elmt_reactant31 "";
    Real elmt_product32 "";
    Real elmt_vPK(unit = "") "Pyruvate kinase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vPK_elmt_K10ADP(unit "m-3.0.") = 0.17 "";
    parameter Real elmt_vPK_elmt_V10m(unit "m-3.0..s-1.0") = 343.096 "";
    parameter Real elmt_vPK_elmt_K10PEP(unit "m-3.0.") = 0.2 "";
    Real elmt_product30 "";
    Real elmt_reactant27 "";
    Real elmt_reactant28 "";
    Real elmt_product29 "";
    Real elmt_vlpGlyc(unit = "") "Glycerol synthesis";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vlpGlyc_elmt_K15INAD(unit "m-3.0.") = 0.13 "";
    parameter Real elmt_vlpGlyc_elmt_K15INADH(unit "m-3.0.") = 0.034 "";
    parameter Real elmt_vlpGlyc_elmt_K15DHAP(unit "m-3.0.") = 25.0 "";
    parameter Real elmt_vlpGlyc_elmt_K15NADH(unit "m-3.0.") = 0.13 "";
    parameter Real elmt_vlpGlyc_elmt_V15m(unit "m-3.0..s-1.0") = 81.4797 "";
    Real elmt_reactant41 "";
    Real elmt_reactant42 "";
    Real elmt_product44 "";
    Real elmt_product43 "";
    Real elmt_vADH(unit = "") "Alcohol dehydrogenase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vADH_elmt_K12ACA(unit "m-3.0.") = 0.71 "";
    parameter Real elmt_vADH_elmt_K12NADH(unit "m-3.0.") = 0.1 "";
    parameter Real elmt_vADH_elmt_V12m(unit "m-3.0..s-1.0") = 89.8023 "";
    Real elmt_product36 "";
    Real elmt_product35 "";
    Real elmt_reactant33 "";
    Real elmt_reactant34 "";
    Real elmt_vconsum(unit = "") "ATP consumption";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vconsum_elmt_k23(unit "s-1.0") = 3.2076 "";
    Real elmt_reactant61 "";
    Real elmt_product62 "";
    Real elmt_vinCN(unit = "") "Cyanide flow";
    parameter Real elmt_vinCN_elmt_k0(unit "s-1.0") = 0.048 "";
    Real elmt_product57 "";
    Real elmt_reactant56 "";
    Real elmt_voutACA(unit = "") "Acetaldehyde flow";
    parameter Real elmt_voutACA_elmt_k0(unit "s-1.0") = 0.048 "";
    Real elmt_product52 "";
    Real elmt_reactant51 "";
    Real elmt_vHK(unit = "") "Hexokinase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vHK_elmt_K3ATP(unit "m-3.0.") = 0.1 "";
    parameter Real elmt_vHK_elmt_K3Glc(unit "m-3.0.") = 0.0 "";
    parameter Real elmt_vHK_elmt_V3m(unit "m-3.0..s-1.0") = 51.7547 "";
    parameter Real elmt_vHK_elmt_K3DGlc(unit "m-3.0.") = 0.37 "";
    Real elmt_reactant4 "";
    Real elmt_product7 "";
    Real elmt_product6 "";
    Real elmt_reactant5 "";
    Real elmt_vdifEtOH(unit = "") "Ethanol out";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vdifEtOH_elmt_Yvol(unit "") = 59.0 "";
    parameter Real elmt_vdifEtOH_elmt_k13(unit "s-1.0") = 16.72 "";
    Real elmt_product38 "";
    Real elmt_reactant37 "";
    Real elmt_vPFK(unit = "") "Phosphofructokinase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vPFK_elmt_kappa5(unit "") = 0.15 "";
    parameter Real elmt_vPFK_elmt_V5m(unit "m-3.0..s-1.0") = 45.4327 "";
    parameter Real elmt_vPFK_elmt_K5(unit "m-6.0.mol2.0") = 0.021 "";
    Real elmt_product12 "";
    Real elmt_product13 "";
    Real elmt_reactant10 "";
    Real elmt_reactant11 "";
    Real elmt_vdifACA(unit = "") "Acetaldehyde out";
    parameter Real elmt_vdifACA_elmt_k18(unit "s-1.0") = 24.7 "";
    parameter Real elmt_vdifACA_elmt_Yvol(unit "") = 59.0 "";
    Real elmt_product50 "";
    Real elmt_reactant49 "";
    Real elmt_vGAPDH(unit = "") "Glyceraldehyde 3-phosphate dehydrogenase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vGAPDH_elmt_K8NAD(unit "m-3.0.") = 0.1 "";
    parameter Real elmt_vGAPDH_elmt_K8NADH(unit "m-3.0.") = 0.06 "";
    parameter Real elmt_vGAPDH_elmt_V8f(unit "m-3.0..s-1.0") = 833.858 "";
    parameter Real elmt_vGAPDH_elmt_K8BPG(unit "m-3.0.") = 0.01 "";
    parameter Real elmt_vGAPDH_elmt_V8r(unit "m-3.0..s-1.0") = 833.858 "";
    parameter Real elmt_vGAPDH_elmt_K8GAP(unit "m-3.0.") = 0.6 "";
    parameter Real elmt_vGAPDH_elmt_K8eq(unit "") = 0.0055 "";
    Real elmt_reactant20 "";
    Real elmt_reactant19 "";
    Real elmt_product22 "";
    Real elmt_product21 "";
    Real elmt_vPGI(unit = "") "Phosphoglucoisomerase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vPGI_elmt_V4f(unit "m-3.0..s-1.0") = 496.042 "";
    parameter Real elmt_vPGI_elmt_K4eq(unit "") = 0.13 "";
    parameter Real elmt_vPGI_elmt_V4r(unit "m-3.0..s-1.0") = 496.042 "";
    parameter Real elmt_vPGI_elmt_K4G6P(unit "m-3.0.") = 0.8 "";
    parameter Real elmt_vPGI_elmt_K4F6P(unit "m-3.0.") = 0.15 "";
    Real elmt_product9 "";
    Real elmt_reactant8 "";
    Real elmt_voutEtOH(unit = "") "Ethanol flow";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_voutEtOH_elmt_k0(unit "s-1.0") = 0.048 "";
    Real elmt_product40 "";
    Real elmt_reactant39 "";
    Real elmt_vAK(unit = "") "Adenylate kinase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vAK_elmt_k24r(unit "m3.0.mol-1.0.s-1.0") = 133.333 "";
    parameter Real elmt_vAK_elmt_k24f(unit "m3.0.mol-1.0.s-1.0") = 432.9 "";
    Real elmt_reactant63 "";
    Real elmt_reactant64 "";
    Real elmt_product65 "";
    Real elmt_vlacto(unit = "") "Cyanide-Acetaldehyde flow";
    parameter Real elmt_vlacto_elmt_k20(unit "m3.0.mol-1.0.s-1.0") = 0.00283828 "";
    Real elmt_reactant53 "";
    Real elmt_product55 "";
    Real elmt_reactant54 "";
    Real elmt_vTIM(unit = "") "Triosephosphate isomerase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vTIM_elmt_V7f(unit "m-3.0..s-1.0") = 116.365 "";
    parameter Real elmt_vTIM_elmt_K7DHAP(unit "m-3.0.") = 1.23 "";
    parameter Real elmt_vTIM_elmt_V7r(unit "m-3.0..s-1.0") = 116.365 "";
    parameter Real elmt_vTIM_elmt_K7GAP(unit "m-3.0.") = 1.27 "";
    parameter Real elmt_vTIM_elmt_K7eq(unit "") = 0.055 "";
    Real elmt_reactant17 "";
    Real elmt_product18 "";
    Real elmt_vinGlc(unit = "") "Glucose Mixed flow to extracellular medium";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vinGlc_elmt_k0(unit "s-1.0") = 0.048 "";
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_vstorage(unit = "") "Storage";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vstorage_elmt_k22(unit "m3.0.mol-1.0.s-1.0") = 2.25932 "";
    Real elmt_product60 "";
    Real elmt_reactant58 "";
    Real elmt_reactant59 "";
    Real elmt_vALD(unit = "") "Aldolase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vALD_elmt_K6IGAP(unit "m-3.0.") = 10.0 "";
    parameter Real elmt_vALD_elmt_V6f(unit "m-3.0..s-1.0") = 2207.82 "";
    parameter Real elmt_vALD_elmt_K6GAP(unit "m-3.0.") = 4.0 "";
    parameter Real elmt_vALD_elmt_K6DHAP(unit "m-3.0.") = 2.0 "";
    parameter Real elmt_vALD_elmt_K6FBP(unit "m-3.0.") = 0.3 "";
    parameter Real elmt_vALD_elmt_ratio6(unit "") = 5.0 "";
    parameter Real elmt_vALD_elmt_K6eq(unit "m-3.0.") = 0.081 "";
    Real elmt_reactant14 "";
    Real elmt_product16 "";
    Real elmt_product15 "";
    Real elmt_vGlcTrans(unit = "") "Glucose uptake";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vGlcTrans_elmt_K2IG6P(unit "m-3.0.") = 1.2 "";
    parameter Real elmt_vGlcTrans_elmt_V2r(unit "m-3.0..s-1.0") = 1014.96 "";
    parameter Real elmt_vGlcTrans_elmt_P2(unit "") = 1.0 "";
    parameter Real elmt_vGlcTrans_elmt_Yvol(unit "") = 59.0 "";
    parameter Real elmt_vGlcTrans_elmt_K2Glc(unit "m-3.0.") = 1.7 "";
    parameter Real elmt_vGlcTrans_elmt_K2IIG6P(unit "m-3.0.") = 7.2 "";
    parameter Real elmt_vGlcTrans_elmt_V2f(unit "m-3.0..s-1.0") = 1014.96 "";
    Real elmt_reactant2 "";
    Real elmt_product3 "";
    Real elmt_vdifGlyc(unit = "") "Glycerol out";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vdifGlyc_elmt_Yvol(unit "") = 59.0 "";
    parameter Real elmt_vdifGlyc_elmt_k16(unit "s-1.0") = 1.9 "";
    Real elmt_product46 "";
    Real elmt_reactant45 "";


    initial equation
        elmt_product30 = 1.0;
        elmt_reactant41 = 1.0;
        elmt_reactant42 = 1.0;
        elmt_product32 = 1.0;
        elmt_reactant47 = 1.0;
        elmt_reactant49 = 59.0;
        elmt_reactant45 = 59.0;
        elmt_product26 = 1.0;
        elmt_product25 = 1.0;
        elmt_product29 = 1.0;
        elmt_reactant51 = 1.0;
        elmt_product40 = 1.0;
        elmt_reactant53 = 1.0;
        elmt_product44 = 1.0;
        elmt_product43 = 1.0;
        elmt_reactant58 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_reactant59 = 1.0;
        elmt_reactant17 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_reactant54 = 1.0;
        elmt_reactant11 = 1.0;
        elmt_reactant56 = 1.0;
        elmt_product38 = 1.0;
        elmt_product36 = 1.0;
        elmt_product35 = 1.0;
        elmt_reactant61 = 1.0;
        elmt_product52 = 1.0;
        elmt_product50 = 1.0;
        elmt_reactant63 = 1.0;
        elmt_reactant20 = 1.0;
        elmt_reactant64 = 1.0;
        elmt_product12 = 1.0;
        elmt_product55 = 1.0;
        elmt_reactant27 = 1.0;
        elmt_reactant28 = 1.0;
        elmt_reactant23 = 1.0;
        elmt_reactant24 = 1.0;
        elmt_reactant19 = 1.0;
        elmt_product48 = 1.0;
        elmt_product46 = 1.0;
        elmt_product9 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_product62 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant31 = 1.0;
        elmt_product6 = 1.0;
        elmt_product60 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_product22 = 1.0;
        elmt_product21 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product65 = 2.0;
        elmt_product1 = 1.0;
        elmt_reactant37 = 59.0;
        elmt_reactant39 = 1.0;
        elmt_reactant33 = 1.0;
        elmt_reactant34 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product3 = 59.0;
        elmt_product16 = 1.0;
        elmt_product15 = 1.0;
        elmt_product57 = 1.0;
        elmt_product13 = 1.0;
        elmt_product18 = 1.0;


    equation
        elmt_vlpPEP = (elmt_cytosol * ((elmt_vlpPEP_elmt_k9f * elmt_BPG * elmt_ADP) - (elmt_vlpPEP_elmt_k9r * elmt_PEP * elmt_ATP)));
        elmt_voutGlyc = (elmt_extracellular * elmt_voutGlyc_elmt_k0 * elmt_GlycX);
        elmt_vPDC = (elmt_cytosol * ((elmt_vPDC_elmt_V11m * elmt_Pyr) / (elmt_vPDC_elmt_K11 + elmt_Pyr)));
        elmt_vPK = (elmt_cytosol * ((elmt_vPK_elmt_V10m * elmt_ADP * elmt_PEP) / ((elmt_vPK_elmt_K10PEP + elmt_PEP) * (elmt_vPK_elmt_K10ADP + elmt_ADP))));
        elmt_vlpGlyc = (elmt_cytosol * ((elmt_vlpGlyc_elmt_V15m * elmt_DHAP) / ((elmt_vlpGlyc_elmt_K15DHAP * (1.0 + ((elmt_vlpGlyc_elmt_K15INADH / elmt_NADH) * (1.0 + (elmt_NAD / elmt_vlpGlyc_elmt_K15INAD))))) + (elmt_DHAP * (1.0 + ((elmt_vlpGlyc_elmt_K15NADH / elmt_NADH) * (1.0 + (elmt_NAD / elmt_vlpGlyc_elmt_K15INAD))))))));
        elmt_vADH = (elmt_cytosol * ((elmt_vADH_elmt_V12m * elmt_ACA * elmt_NADH) / ((elmt_vADH_elmt_K12NADH + elmt_NADH) * (elmt_vADH_elmt_K12ACA + elmt_ACA))));
        elmt_vconsum = (elmt_cytosol * elmt_vconsum_elmt_k23 * elmt_ATP);
        elmt_vinCN = (elmt_extracellular * elmt_vinCN_elmt_k0 * (elmt_CNX0 - elmt_CNX));
        elmt_voutACA = (elmt_extracellular * elmt_voutACA_elmt_k0 * elmt_ACAX);
        elmt_vHK = ((elmt_cytosol * elmt_vHK_elmt_V3m * elmt_ATP * elmt_Glc) / ((elmt_vHK_elmt_K3DGlc * elmt_vHK_elmt_K3ATP) + (elmt_vHK_elmt_K3Glc * elmt_ATP) + (elmt_vHK_elmt_K3ATP * elmt_Glc) + (elmt_Glc * elmt_ATP)));
        elmt_vdifEtOH = ((elmt_vdifEtOH_elmt_k13 / elmt_vdifEtOH_elmt_Yvol) * ((elmt_cytosol * elmt_EtOH) - (elmt_extracellular * elmt_EtOHX)));
        elmt_vPFK = (elmt_cytosol * ((elmt_vPFK_elmt_V5m * Functions.pow(elmt_F6P, 2.0)) / ((elmt_vPFK_elmt_K5 * (1.0 + (elmt_vPFK_elmt_kappa5 * (elmt_ATP / elmt_AMP) * (elmt_ATP / elmt_AMP)))) + Functions.pow(elmt_F6P, 2.0))));
        elmt_vdifACA = ((elmt_vdifACA_elmt_k18 / elmt_vdifACA_elmt_Yvol) * ((elmt_cytosol * elmt_ACA) - (elmt_extracellular * elmt_ACAX)));
        elmt_vGAPDH = (elmt_cytosol * (((((elmt_vGAPDH_elmt_V8f * elmt_GAP * elmt_NAD) / elmt_vGAPDH_elmt_K8GAP) / elmt_vGAPDH_elmt_K8NAD) / ((1.0 + (elmt_GAP / elmt_vGAPDH_elmt_K8GAP) + (elmt_BPG / elmt_vGAPDH_elmt_K8BPG)) * (1.0 + (elmt_NAD / elmt_vGAPDH_elmt_K8NAD) + (elmt_NADH / elmt_vGAPDH_elmt_K8NADH)))) - (((((elmt_vGAPDH_elmt_V8r * elmt_BPG * elmt_NADH) / elmt_vGAPDH_elmt_K8eq) / elmt_vGAPDH_elmt_K8GAP) / elmt_vGAPDH_elmt_K8NAD) / ((1.0 + (elmt_GAP / elmt_vGAPDH_elmt_K8GAP) + (elmt_BPG / elmt_vGAPDH_elmt_K8BPG)) * (1.0 + (elmt_NAD / elmt_vGAPDH_elmt_K8NAD) + (elmt_NADH / elmt_vGAPDH_elmt_K8NADH))))));
        elmt_vPGI = (elmt_cytosol * (((elmt_vPGI_elmt_V4f * elmt_G6P) / (elmt_vPGI_elmt_K4G6P + elmt_G6P + ((elmt_vPGI_elmt_K4G6P / elmt_vPGI_elmt_K4F6P) * elmt_F6P))) - ((elmt_vPGI_elmt_V4r * (elmt_F6P / elmt_vPGI_elmt_K4eq)) / (elmt_vPGI_elmt_K4G6P + elmt_G6P + ((elmt_vPGI_elmt_K4G6P / elmt_vPGI_elmt_K4F6P) * elmt_F6P)))));
        elmt_voutEtOH = (elmt_extracellular * elmt_voutEtOH_elmt_k0 * elmt_EtOHX);
        elmt_vAK = (elmt_cytosol * ((elmt_vAK_elmt_k24f * elmt_AMP * elmt_ATP) - (elmt_vAK_elmt_k24r * Functions.pow(elmt_ADP, 2.0))));
        elmt_vlacto = (elmt_extracellular * elmt_vlacto_elmt_k20 * elmt_ACAX * elmt_CNX);
        elmt_vTIM = (elmt_cytosol * (((elmt_vTIM_elmt_V7f * elmt_DHAP) / (elmt_vTIM_elmt_K7DHAP + elmt_DHAP + ((elmt_vTIM_elmt_K7DHAP / elmt_vTIM_elmt_K7GAP) * elmt_GAP))) - ((elmt_vTIM_elmt_V7r * (elmt_GAP / elmt_vTIM_elmt_K7eq)) / (elmt_vTIM_elmt_K7DHAP + elmt_DHAP + ((elmt_vTIM_elmt_K7DHAP / elmt_vTIM_elmt_K7GAP) * elmt_GAP)))));
        elmt_vinGlc = (elmt_extracellular * elmt_vinGlc_elmt_k0 * (elmt_GlcX0 - elmt_GlcX));
        elmt_vstorage = (elmt_cytosol * elmt_vstorage_elmt_k22 * elmt_ATP * elmt_G6P);
        elmt_vALD = (elmt_cytosol * (((elmt_vALD_elmt_V6f * elmt_FBP) / (elmt_vALD_elmt_K6FBP + elmt_FBP + ((elmt_GAP * elmt_vALD_elmt_K6DHAP * elmt_vALD_elmt_V6f) / (elmt_vALD_elmt_K6eq * elmt_vALD_elmt_V6f * elmt_vALD_elmt_ratio6)) + ((elmt_DHAP * elmt_vALD_elmt_K6GAP * elmt_vALD_elmt_V6f) / (elmt_vALD_elmt_K6eq * elmt_vALD_elmt_V6f * elmt_vALD_elmt_ratio6)) + ((elmt_FBP * elmt_GAP) / elmt_vALD_elmt_K6IGAP) + ((elmt_GAP * elmt_DHAP * elmt_vALD_elmt_V6f) / (elmt_vALD_elmt_K6eq * elmt_vALD_elmt_V6f * elmt_vALD_elmt_ratio6)))) - (((elmt_vALD_elmt_V6f * elmt_GAP * elmt_DHAP) / elmt_vALD_elmt_K6eq) / (elmt_vALD_elmt_K6FBP + elmt_FBP + ((elmt_GAP * elmt_vALD_elmt_K6DHAP * elmt_vALD_elmt_V6f) / (elmt_vALD_elmt_K6eq * elmt_vALD_elmt_V6f * elmt_vALD_elmt_ratio6)) + ((elmt_DHAP * elmt_vALD_elmt_K6GAP * elmt_vALD_elmt_V6f) / (elmt_vALD_elmt_K6eq * elmt_vALD_elmt_V6f * elmt_vALD_elmt_ratio6)) + ((elmt_FBP * elmt_GAP) / elmt_vALD_elmt_K6IGAP) + ((elmt_GAP * elmt_DHAP * elmt_vALD_elmt_V6f) / (elmt_vALD_elmt_K6eq * elmt_vALD_elmt_V6f * elmt_vALD_elmt_ratio6))))));
        elmt_vGlcTrans = ((((elmt_extracellular * elmt_vGlcTrans_elmt_V2f) / elmt_vGlcTrans_elmt_Yvol) * ((elmt_GlcX / elmt_vGlcTrans_elmt_K2Glc) / (1.0 + (elmt_GlcX / elmt_vGlcTrans_elmt_K2Glc) + ((((elmt_vGlcTrans_elmt_P2 * (elmt_GlcX / elmt_vGlcTrans_elmt_K2Glc)) + 1.0) / ((elmt_vGlcTrans_elmt_P2 * (elmt_Glc / elmt_vGlcTrans_elmt_K2Glc)) + 1.0)) * (1.0 + (elmt_Glc / elmt_vGlcTrans_elmt_K2Glc) + (elmt_G6P / elmt_vGlcTrans_elmt_K2IG6P) + ((elmt_Glc * elmt_G6P) / (elmt_vGlcTrans_elmt_K2Glc * elmt_vGlcTrans_elmt_K2IIG6P))))))) - (((elmt_cytosol * elmt_vGlcTrans_elmt_V2r) / elmt_vGlcTrans_elmt_Yvol) * ((elmt_Glc / elmt_vGlcTrans_elmt_K2Glc) / (1.0 + (elmt_Glc / elmt_vGlcTrans_elmt_K2Glc) + ((((elmt_vGlcTrans_elmt_P2 * (elmt_Glc / elmt_vGlcTrans_elmt_K2Glc)) + 1.0) / ((elmt_vGlcTrans_elmt_P2 * (elmt_GlcX / elmt_vGlcTrans_elmt_K2Glc)) + 1.0)) * (1.0 + (elmt_GlcX / elmt_vGlcTrans_elmt_K2Glc))) + (elmt_G6P / elmt_vGlcTrans_elmt_K2IG6P) + ((elmt_Glc * elmt_G6P) / (elmt_vGlcTrans_elmt_K2Glc * elmt_vGlcTrans_elmt_K2IIG6P))))));
        elmt_vdifGlyc = ((elmt_vdifGlyc_elmt_k16 / elmt_vdifGlyc_elmt_Yvol) * ((elmt_cytosol * elmt_Glyc) - (elmt_extracellular * elmt_GlycX)));
        der(elmt_product30) = 0;
        der(elmt_reactant41) = 0;
        der(elmt_reactant42) = 0;
        der(elmt_product32) = 0;
        der(elmt_reactant47) = 0;
        der(elmt_reactant49) = 0;
        der(elmt_reactant45) = 0;
        der(elmt_product26) = 0;
        der(elmt_product25) = 0;
        der(elmt_product29) = 0;
        der(elmt_reactant51) = 0;
        der(elmt_product40) = 0;
        der(elmt_reactant53) = 0;
        der(elmt_product44) = 0;
        der(elmt_product43) = 0;
        der(elmt_reactant58) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_reactant59) = 0;
        der(elmt_reactant17) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_reactant54) = 0;
        der(elmt_reactant11) = 0;
        der(elmt_reactant56) = 0;
        der(elmt_product38) = 0;
        der(elmt_product36) = 0;
        der(elmt_product35) = 0;
        der(elmt_reactant61) = 0;
        der(elmt_product52) = 0;
        der(elmt_product50) = 0;
        der(elmt_reactant63) = 0;
        der(elmt_reactant20) = 0;
        der(elmt_reactant64) = 0;
        der(elmt_product12) = 0;
        der(elmt_product55) = 0;
        der(elmt_reactant27) = 0;
        der(elmt_reactant28) = 0;
        der(elmt_reactant23) = 0;
        der(elmt_reactant24) = 0;
        der(elmt_reactant19) = 0;
        der(elmt_product48) = 0;
        der(elmt_product46) = 0;
        der(elmt_product9) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_product62) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant31) = 0;
        der(elmt_product6) = 0;
        der(elmt_product60) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_product22) = 0;
        der(elmt_product21) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product65) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant37) = 0;
        der(elmt_reactant39) = 0;
        der(elmt_reactant33) = 0;
        der(elmt_reactant34) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product3) = 0;
        der(elmt_product16) = 0;
        der(elmt_product15) = 0;
        der(elmt_product57) = 0;
        der(elmt_product13) = 0;
        der(elmt_product18) = 0;

end Reactions;
