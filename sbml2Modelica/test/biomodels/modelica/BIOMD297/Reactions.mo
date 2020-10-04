within BIOMD297;
class Reactions

    input Real elmt_kdcln;
    input Real elmt_ksclb;
    input Real elmt_IEin;
    input Real elmt_Trim;
    input Real elmt_kscln;
    input Real elmt_kdswe_prime;
    input Real elmt_kisbf_doubleprime;
    input Real elmt_jimih;
    input Real elmt_SBFin;
    input Real elmt_PTrim;
    input Real elmt_kasbf_doubleprime;
    input Real elmt_kdclb_tripleprime;
    input Real elmt_jscdc20;
    input Real elmt_kasbf_prime;
    input Real elmt_kdcdc20;
    input Real elmt_Kacdh_prime;
    input Real elmt_Mih1a;
    input Real elmt_Swe1M;
    input Real elmt_kdsic_prime;
    input Real elmt_Vamih;
    input Real elmt_SBF;
    input Real elmt_kswe;
    input Real elmt_kass;
    input Real elmt_jamcm;
    input Real elmt_kicdh;
    input Real elmt_kdiss;
    input Real elmt_Viwee;
    input Real elmt_BUD;
    input Real elmt_Cdc20a;
    input Real elmt_jimcm;
    input Real elmt_kamcm;
    input Real elmt_Vawee;
    input Real elmt_mu;
    input Real elmt_jacdh;
    input Real elmt_kimcm;
    input Real elmt_kssic;
    input Real elmt_khsl1;
    input Real elmt_Kacdh_doubleprime;
    input Real elmt_kdclb_doubleprime;
    input Real elmt_kscdc20_doubleprime;
    input Real elmt_jicdh;
    input Real elmt_IE;
    input Real elmt_Vimih;
    input Real elmt_kdbud;
    input Real elmt_jacdc20;
    input Real elmt_Mcm;
    input Real elmt_PSwe1M;
    input Real elmt_jaie;
    input Real elmt_Mih1;
    input Real elmt_BE;
    input Real elmt_jasbf;
    input Real elmt_Jawee;
    input Real elmt_jiie;
    input Real elmt_Cdh1;
    input Real elmt_Cdc20;
    input Real elmt_jisbf;
    input Real elmt_Jiwee;
    input Real elmt_Jamih;
    input Real elmt_Clb;
    input Real elmt_Cln;
    input Real elmt_kacdc20;
    input Real elmt_kdsic_doubleprime;
    input Real elmt_Cdh1in;
    input Real elmt_kdsic;
    input Real elmt_ksbud;
    input Real elmt_Swe1;
    input Real elmt_kdclb_prime;
    input Real elmt_jicdc20;
    input Real elmt_kisbf_prime;
    input Real elmt_kscdc20_prime;
    input Real elmt_mass;
    input Real elmt_PClb;
    input Real elmt_Jm;
    input Real elmt_kicdc20;
    input Real elmt_kicdh_prime;
    input Real elmt_kaie;
    input Real elmt_kssweC;
    input Real elmt_ksswe;
    input Real elmt_kdswe_doubleprime;
    input Real elmt_kiie;
    input Real elmt_eps;
    input Real elmt_kmih;
    input Real elmt_Mcmin;
    input Real elmt_PSwe1;
    input Real elmt_Sic;
    input Real elmt_khsl1r;

    Real elmt_R38(unit = "") "Mih1a synthesis";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product62 "";
    Real elmt_R39(unit = "") "Mcm inhibition";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant63 "";
    Real elmt_R36(unit = "") "PTrim complex formation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product60 "";
    Real elmt_reactant58 "";
    Real elmt_reactant59 "";
    Real elmt_R37(unit = "") "Mih1a inhibition";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant61 "";
    Real elmt_R34(unit = "") "Sic1 dissociation from PTrim complex";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product55 "";
    Real elmt_reactant54 "";
    Real elmt_R35(unit = "") "PClb dissociation from PTrim complex";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product57 "";
    Real elmt_reactant56 "";
    Real elmt_R32(unit = "") "PSwe1 degradation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant50 "";
    Real elmt_R33(unit = "") "PTrim complex dissociation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product52 "";
    Real elmt_reactant51 "";
    Real elmt_product53 "";
    Real elmt_R41(unit = "") "BE degradation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant65 "";
    Real elmt_R42(unit = "") "BE formation";
    Real elmt_product66 "";
    Real elmt_R40(unit = "") "Mcm synthesis";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product64 "";
    Real elmt_R7(unit = "") "Clb2 degradation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant14 "";
    Real elmt_R49(unit = "") "Clb2 dependent Cdc20 synthesis";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product73 "";
    Real elmt_R8(unit = "") "Clb2 phosphorylation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product16 "";
    Real elmt_reactant15 "";
    Real elmt_R5(unit = "") "Complex formation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product11 "";
    Real elmt_reactant9 "";
    Real elmt_reactant10 "";
    Real elmt_R47(unit = "") "Swe1M degradation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant71 "";
    Real elmt_R6(unit = "") "Dephosphorylation of complex";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product13 "";
    Real elmt_reactant12 "";
    Real elmt_R48(unit = "") "Cdc20 degradation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant72 "";
    Real elmt_R3(unit = "") "Sic1 removal from complex";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product6 "";
    Real elmt_reactant5 "";
    Real elmt_R45(unit = "") "Cln degradation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant69 "";
    Real elmt_R4(unit = "") "Phosphorylation of Cdc28-Clb2-Sic1 complex";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product8 "";
    Real elmt_reactant7 "";
    Real elmt_R46(unit = "") "SBF dependent Cln synthesis";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product70 "";
    Real elmt_R1(unit = "") "Clb-Sic dissociation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_product2 "";
    Real elmt_R43(unit = "") "Sic1 degradation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant67 "";
    Real elmt_R2(unit = "") "Clb2 removal from complex";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant3 "";
    Real elmt_product4 "";
    Real elmt_R44(unit = "") "Sic1 synthesis";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product68 "";
    Real elmt_R9(unit = "") "Clb2 synthesis";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product17 "";
    Real elmt_R52(unit = "") "cell mass";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product76 "";
    Real elmt_R50(unit = "") "PSwe1M degradation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant74 "";
    Real elmt_R51(unit = "") "PClb degradation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant75 "";
    Real elmt_R16(unit = "") "activated Cdc20 degradation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant26 "";
    Real elmt_R14(unit = "") "IE synthesis";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product23 "";
    Real elmt_R15(unit = "") "Cdc20 deactivation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product25 "";
    Real elmt_reactant24 "";
    Real elmt_R12(unit = "") "SBF synthesis";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product21 "";
    Real elmt_R13(unit = "") "IE inhibition";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant22 "";
    Real elmt_R10(unit = "") "Clb2 dephosphorylation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant18 "";
    Real elmt_product19 "";
    Real elmt_R11(unit = "") "SBF inhibition";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant20 "";
    Real elmt_R18(unit = "") "Cdc20 activation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant27 "";
    Real elmt_product28 "";
    Real elmt_R19(unit = "") "Cdh1inhibition";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant29 "";
    Real elmt_R20(unit = "") "Cdh1 synthesis";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product30 "";
    Real elmt_R27(unit = "") "PSwe1 production from its modified form";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant42 "";
    Real elmt_product43 "";
    Real elmt_R28(unit = "") "PSwe1 dephosphorylation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product45 "";
    Real elmt_reactant44 "";
    Real elmt_R25(unit = "") "Swe1 degradation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant39 "";
    Real elmt_R26(unit = "") "Swe1 production from its modified form";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product41 "";
    Real elmt_reactant40 "";
    Real elmt_R23(unit = "") "Swe1 phosphorylation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product36 "";
    Real elmt_reactant35 "";
    Real elmt_R24(unit = "") "Swe1M phosphorylation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product38 "";
    Real elmt_reactant37 "";
    Real elmt_R21(unit = "") "Swe1 modification";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant31 "";
    Real elmt_product32 "";
    Real elmt_R22(unit = "") "Phosphorylated Swe1 modification";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product34 "";
    Real elmt_reactant33 "";
    Real elmt_R29(unit = "") "PSwe1M dephosphorylation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product47 "";
    Real elmt_reactant46 "";
    Real elmt_R30(unit = "") "SBF dependent Swe1 synthesis";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product48 "";
    Real elmt_R31(unit = "") "Swe1 synthesis";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product49 "";


    initial equation
        elmt_product30 = 1.0;
        elmt_product73 = 1.0;
        elmt_reactant40 = 1.0;
        elmt_reactant42 = 1.0;
        elmt_product34 = 1.0;
        elmt_product76 = 1.0;
        elmt_product32 = 1.0;
        elmt_product70 = 1.0;
        elmt_reactant44 = 1.0;
        elmt_reactant46 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product25 = 1.0;
        elmt_product68 = 1.0;
        elmt_product28 = 1.0;
        elmt_reactant50 = 1.0;
        elmt_product41 = 1.0;
        elmt_reactant51 = 1.0;
        elmt_product45 = 1.0;
        elmt_product43 = 1.0;
        elmt_reactant58 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_reactant59 = 1.0;
        elmt_reactant15 = 1.0;
        elmt_reactant54 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_reactant56 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_product38 = 1.0;
        elmt_product36 = 1.0;
        elmt_reactant61 = 1.0;
        elmt_product52 = 1.0;
        elmt_reactant63 = 1.0;
        elmt_reactant20 = 1.0;
        elmt_product55 = 1.0;
        elmt_product11 = 1.0;
        elmt_product53 = 1.0;
        elmt_reactant69 = 1.0;
        elmt_reactant26 = 1.0;
        elmt_reactant27 = 1.0;
        elmt_reactant65 = 1.0;
        elmt_reactant22 = 1.0;
        elmt_reactant67 = 1.0;
        elmt_reactant24 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_product49 = 1.0;
        elmt_product48 = 1.0;
        elmt_product47 = 1.0;
        elmt_reactant72 = 1.0;
        elmt_product62 = 1.0;
        elmt_product8 = 1.0;
        elmt_reactant74 = 1.0;
        elmt_product60 = 1.0;
        elmt_product6 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_reactant75 = 1.0;
        elmt_reactant31 = 1.0;
        elmt_product23 = 1.0;
        elmt_product66 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_product21 = 1.0;
        elmt_product64 = 1.0;
        elmt_reactant71 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant37 = 1.0;
        elmt_reactant39 = 1.0;
        elmt_product4 = 1.0;
        elmt_reactant33 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product2 = 1.0;
        elmt_reactant35 = 1.0;
        elmt_reactant29 = 1.0;
        elmt_product16 = 1.0;
        elmt_product57 = 1.0;
        elmt_product13 = 1.0;
        elmt_product19 = 1.0;
        elmt_product17 = 1.0;


    equation
        elmt_R38 = ((elmt_Vamih * elmt_Mih1 * elmt_Clb) / (elmt_Jamih + elmt_Mih1));
        elmt_R39 = ((elmt_Mcm * elmt_kimcm) / (elmt_jimcm + elmt_Mcm));
        elmt_R36 = (elmt_kass * elmt_PClb * elmt_Sic);
        elmt_R37 = ((elmt_Mih1a * elmt_Vimih) / (elmt_jimih + elmt_Mih1a));
        elmt_R34 = (elmt_PTrim * ((elmt_kdclb_doubleprime * elmt_Cdh1) + (elmt_kdclb_tripleprime * elmt_Cdc20a) + elmt_kdclb_prime));
        elmt_R35 = (elmt_PTrim * ((elmt_kdsic_prime * elmt_Cln) + (elmt_kdsic_doubleprime * elmt_Clb) + elmt_kdsic));
        elmt_R32 = (elmt_kdswe_prime * elmt_PSwe1);
        elmt_R33 = (elmt_kdiss * elmt_PTrim);
        elmt_R41 = (elmt_kdbud * elmt_BE);
        elmt_R42 = (elmt_ksbud * elmt_Cln);
        elmt_R40 = ((elmt_Mcmin * elmt_Clb * elmt_kamcm) / (elmt_jamcm + elmt_Mcmin));
        elmt_R7 = (elmt_Clb * ((elmt_kdclb_doubleprime * elmt_Cdh1) + (elmt_kdclb_tripleprime * elmt_Cdc20a) + elmt_kdclb_prime));
        elmt_R49 = (elmt_kscdc20_prime + ((elmt_kscdc20_doubleprime * Functions.pow(elmt_Clb, 4.0)) / (Functions.pow(elmt_jscdc20, 4.0) + Functions.pow(elmt_Clb, 4.0))));
        elmt_R8 = (elmt_kswe * elmt_Clb);
        elmt_R5 = (elmt_kass * elmt_Sic * elmt_Clb);
        elmt_R47 = (elmt_kdswe_prime * elmt_Swe1M);
        elmt_R6 = (elmt_PTrim * elmt_kmih);
        elmt_R48 = (elmt_kdcdc20 * elmt_Cdc20);
        elmt_R3 = (elmt_Trim * ((elmt_kdclb_doubleprime * elmt_Cdh1) + (elmt_kdclb_tripleprime * elmt_Cdc20a) + elmt_kdclb_prime));
        elmt_R45 = (elmt_kdcln * elmt_Cln);
        elmt_R4 = (elmt_Trim * elmt_kswe);
        elmt_R46 = (elmt_kscln * elmt_SBF);
        elmt_R1 = (elmt_kdiss * elmt_Trim);
        elmt_R43 = (elmt_Sic * ((elmt_kdsic_prime * elmt_Cln) + (elmt_kdsic_doubleprime * elmt_Clb) + elmt_kdsic));
        elmt_R2 = (elmt_Trim * ((elmt_kdsic_prime * elmt_Cln) + (elmt_kdsic_doubleprime * elmt_Clb) + elmt_kdsic));
        elmt_R44 = elmt_kssic;
        elmt_R9 = ((elmt_ksclb * elmt_mass * elmt_Jm * (elmt_eps + elmt_Mcm)) / (elmt_mass + elmt_Jm));
        elmt_R52 = (elmt_mu * elmt_mass);
        elmt_R50 = (elmt_kdswe_doubleprime * elmt_PSwe1M);
        elmt_R51 = (elmt_PClb * ((elmt_kdclb_doubleprime * elmt_Cdh1) + (elmt_kdclb_tripleprime * elmt_Cdc20a) + elmt_kdclb_prime));
        elmt_R16 = (elmt_kdcdc20 * elmt_Cdc20a);
        elmt_R14 = ((elmt_kaie * elmt_IEin * elmt_Clb) / (elmt_jaie + elmt_IEin));
        elmt_R15 = ((elmt_Cdc20a * elmt_kicdc20) / (elmt_jicdc20 + elmt_Cdc20a));
        elmt_R12 = ((elmt_SBFin * ((elmt_kasbf_prime * elmt_mass) + (elmt_kasbf_doubleprime * elmt_Cln))) / (elmt_jasbf + elmt_SBFin));
        elmt_R13 = ((elmt_IE * elmt_kiie) / (elmt_jiie + elmt_IE));
        elmt_R10 = (elmt_kmih * elmt_PClb);
        elmt_R11 = ((elmt_SBF * (elmt_kisbf_prime + (elmt_kisbf_doubleprime * elmt_Clb))) / (elmt_jisbf + elmt_SBF));
        elmt_R18 = ((elmt_kacdc20 * elmt_Cdc20 * elmt_IE) / (elmt_jacdc20 + elmt_Cdc20));
        elmt_R19 = ((elmt_Cdh1 * ((elmt_kicdh * elmt_Clb) + (elmt_kicdh_prime * elmt_Cln))) / (elmt_jicdh + elmt_Cdh1));
        elmt_R20 = ((elmt_Cdh1in * (elmt_Kacdh_prime + (elmt_Kacdh_doubleprime * elmt_Cdc20a))) / (elmt_jacdh + elmt_Cdh1in));
        elmt_R27 = (elmt_khsl1r * elmt_PSwe1M);
        elmt_R28 = ((elmt_PSwe1 * elmt_Vawee) / (elmt_Jawee + elmt_PSwe1));
        elmt_R25 = (elmt_kdswe_prime * elmt_Swe1);
        elmt_R26 = (elmt_khsl1r * elmt_Swe1M);
        elmt_R23 = ((elmt_Viwee * elmt_Swe1 * elmt_Clb) / (elmt_Jiwee + elmt_Swe1));
        elmt_R24 = ((elmt_Viwee * elmt_Swe1M * elmt_Clb) / (elmt_Jiwee + elmt_Swe1M));
        elmt_R21 = (elmt_khsl1 * elmt_BUD * elmt_Swe1);
        elmt_R22 = (elmt_khsl1 * elmt_BUD * elmt_PSwe1);
        elmt_R29 = ((elmt_PSwe1M * elmt_Vawee) / (elmt_Jawee + elmt_PSwe1M));
        elmt_R30 = (elmt_ksswe * elmt_SBF);
        elmt_R31 = elmt_kssweC;
        der(elmt_product30) = 0;
        der(elmt_product73) = 0;
        der(elmt_reactant40) = 0;
        der(elmt_reactant42) = 0;
        der(elmt_product34) = 0;
        der(elmt_product76) = 0;
        der(elmt_product32) = 0;
        der(elmt_product70) = 0;
        der(elmt_reactant44) = 0;
        der(elmt_reactant46) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product25) = 0;
        der(elmt_product68) = 0;
        der(elmt_product28) = 0;
        der(elmt_reactant50) = 0;
        der(elmt_product41) = 0;
        der(elmt_reactant51) = 0;
        der(elmt_product45) = 0;
        der(elmt_product43) = 0;
        der(elmt_reactant58) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_reactant59) = 0;
        der(elmt_reactant15) = 0;
        der(elmt_reactant54) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_reactant56) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_product38) = 0;
        der(elmt_product36) = 0;
        der(elmt_reactant61) = 0;
        der(elmt_product52) = 0;
        der(elmt_reactant63) = 0;
        der(elmt_reactant20) = 0;
        der(elmt_product55) = 0;
        der(elmt_product11) = 0;
        der(elmt_product53) = 0;
        der(elmt_reactant69) = 0;
        der(elmt_reactant26) = 0;
        der(elmt_reactant27) = 0;
        der(elmt_reactant65) = 0;
        der(elmt_reactant22) = 0;
        der(elmt_reactant67) = 0;
        der(elmt_reactant24) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_product49) = 0;
        der(elmt_product48) = 0;
        der(elmt_product47) = 0;
        der(elmt_reactant72) = 0;
        der(elmt_product62) = 0;
        der(elmt_product8) = 0;
        der(elmt_reactant74) = 0;
        der(elmt_product60) = 0;
        der(elmt_product6) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_reactant75) = 0;
        der(elmt_reactant31) = 0;
        der(elmt_product23) = 0;
        der(elmt_product66) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_product21) = 0;
        der(elmt_product64) = 0;
        der(elmt_reactant71) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant37) = 0;
        der(elmt_reactant39) = 0;
        der(elmt_product4) = 0;
        der(elmt_reactant33) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product2) = 0;
        der(elmt_reactant35) = 0;
        der(elmt_reactant29) = 0;
        der(elmt_product16) = 0;
        der(elmt_product57) = 0;
        der(elmt_product13) = 0;
        der(elmt_product19) = 0;
        der(elmt_product17) = 0;

end Reactions;
