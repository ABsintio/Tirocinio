within BIOMD559;
class Parameters

    input Real elmt_s27;
    input Real elmt_s26;
    input Real elmt_s25;
    input Real elmt_s6;
    input Real elmt_s24;
    input Real elmt_s7;
    input Real elmt_s23;
    input Real elmt_s5;
    input Real elmt_s2;
    input Real elmt_s21;
    input Real elmt_s32;
    input Real elmt_s20;
    input Real elmt_s31;
    input Real elmt_c1;
    input Real elmt_s29;
    input Real elmt_s18;
    input Real elmt_s17;
    input Real elmt_s30;
    input Real elmt_s1;

    Real elmt_k_OligomerForm(unit = "") "k_OligomerForm";
    Real elmt_Total_Cytosolic_WTASYN_Oligomers(unit = "") "Total_Cytosolic_WTASYN_Oligomers";
    Real elmt_k_WTasyn1_2merBindOnLamp(unit = "") "k_WTasyn1_2merBindOnLamp";
    Real elmt_k_ProtOligDegr(unit = "") "k_ProtOligDegr";
    Real elmt_Total_Cytosolic_WTASYN_Dimer(unit = "") "Total_Cytosolic_WTASYN_Dimer";
    Real elmt_k_OligAutophagUptake(unit = "") "k_OligAutophagUptake";
    Real elmt_k_ProteasomeBind(unit = "") "k_ProteasomeBind";
    Real elmt_k_DisRate(unit = "") "k_DisRate";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI91\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-11-20T19:36:26Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                        </annotation>"));
    Real elmt_k_2merForm(unit = "") "k_2merForm";
    Real elmt_k_LampFreeWTasyn(unit = "") "k_LampFreeWTasyn";
    Real elmt_Total_Cytosolic_WTASYN_Monomer(unit = "") "Total_Cytosolic_WTASYN_Monomer";
    Real elmt_k_WTOligBindOnLamp(unit = "") "k_WTOligBindOnLamp";
    Real elmt_k_M_autophagyDegr(unit = "") "k_M_autophagyDegr";
    Real elmt_k_DopModWTasynLampBind(unit = "") "k_DopModWTasynLampBind";


    initial equation
        elmt_k_OligomerForm = 3.350497192E-8;
        elmt_k_WTasyn1_2merBindOnLamp = 6.865455081E-7;
        elmt_k_ProtOligDegr = 3.70096E-4;
        elmt_k_OligAutophagUptake = 2.39034347E-8;
        elmt_k_ProteasomeBind = 3.424693672E-9;
        elmt_k_DisRate = 4.999533748E-7;
        elmt_k_2merForm = 1.462941015E-9;
        elmt_k_LampFreeWTasyn = 3.044571674E-4;
        elmt_k_WTOligBindOnLamp = 4.0E-6;
        elmt_k_M_autophagyDegr = 0.1;
        elmt_k_DopModWTasynLampBind = 7.6715997E-9;


    equation
        der(elmt_k_OligomerForm) = 0;
        elmt_Total_Cytosolic_WTASYN_Oligomers = ((elmt_s5 * elmt_c1) + (elmt_s2 * elmt_c1) + (elmt_s1 * elmt_c1) + (elmt_s21 * elmt_c1) + (elmt_s25 * elmt_c1) + (elmt_s26 * elmt_c1) + (elmt_s27 * elmt_c1) + (elmt_s20 * elmt_c1) + (elmt_s24 * elmt_c1) + (elmt_s23 * elmt_c1) + (elmt_s32 * elmt_c1) + (elmt_s31 * elmt_c1) + (elmt_s30 * elmt_c1) + (elmt_s29 * elmt_c1));
        der(elmt_k_WTasyn1_2merBindOnLamp) = 0;
        der(elmt_k_ProtOligDegr) = 0;
        elmt_Total_Cytosolic_WTASYN_Dimer = ((elmt_s6 * elmt_c1) + (elmt_s18 * elmt_c1));
        der(elmt_k_OligAutophagUptake) = 0;
        der(elmt_k_ProteasomeBind) = 0;
        der(elmt_k_DisRate) = 0;
        der(elmt_k_2merForm) = 0;
        der(elmt_k_LampFreeWTasyn) = 0;
        elmt_Total_Cytosolic_WTASYN_Monomer = ((elmt_s17 * elmt_c1) + (elmt_s7 * elmt_c1));
        der(elmt_k_WTOligBindOnLamp) = 0;
        der(elmt_k_M_autophagyDegr) = 0;
        der(elmt_k_DopModWTasynLampBind) = 0;

end Parameters;
