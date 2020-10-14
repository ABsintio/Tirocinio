within BIOMD619;
class Parameters

    Real elmt_Kkidney2plasma(unit = "") "Kkidney2plasma";
    Real elmt_QKidney_fraction_QCardiac(unit = "") "QKidney_fraction_QCardiac";
    Real elmt_Fraction_unbound_plasma(unit = "") "Fraction_unbound_plasma";
    Real elmt_Qgfr(unit = "m3.0.s-1.0") "Qgfr";
 annotation(Documentation(info="<annotation>
	</annotation>"));
    Real elmt_QGut_fraction_QCardiac(unit = "") "QGut_fraction_QCardiac";
    Real elmt_Kliver2plasma(unit = "") "Kliver2plasma";
    Real elmt_APAP_Dose_grams(unit = "") "APAP_Dose_grams";
    Real elmt_QRest(unit = "m3.0.s-1.0") "QRest";
    Real elmt_BW_ref(unit = "") "BW_ref";
    Real elmt_APAP_Dose(unit = "") "APAP_Dose";
    Real elmt_VVen_fraction_VTotal(unit = "") "VVen_fraction_VTotal";
    Real elmt_QCardiac(unit = "m3.0.s-1.0") "QCardiac";
 annotation(Documentation(info="<annotation>
	</annotation>"));
    Real elmt_VGut_fraction_VTotal(unit = "") "VGut_fraction_VTotal";
    Real elmt_QGut(unit = "m3.0.s-1.0") "QGut";
    Real elmt_APAP_MW(unit = ".mol-1.0") "APAP_MW";
    Real elmt_VLung_fraction_VTotal(unit = "") "VLung_fraction_VTotal";
    Real elmt_QLiver_fraction_QCardiac(unit = "") "QLiver_fraction_QCardiac";
    Real elmt_Cardiac_flow_ref(unit = "m3.0.s-1.0") "Cardiac_flow_ref";
    Real elmt_QGFR_ref(unit = "m3.0.s-1.0") "QGFR_ref";
    Real elmt_VLiver_fraction_VTotal(unit = "") "VLiver_fraction_VTotal";
    Real elmt_QLiver(unit = "m3.0.s-1.0") "QLiver";
    Real elmt_Ratioblood2plasma(unit = "") "Ratioblood2plasma";
    Real elmt_VKidney_fraction_VTotal(unit = "") "VKidney_fraction_VTotal";
    Real elmt_QKidney(unit = "m3.0.s-1.0") "QKidney";
    Real elmt_BW(unit = "") "BW";
 annotation(Documentation(info="<annotation>
	</annotation>"));
    Real elmt_VTotal_ref(unit = "m3.0") "VTotal_ref";
    Real elmt_CLmetabolism(unit = "s-1.0") "CLmetabolism";
 annotation(Documentation(info="<annotation>
	</annotation>"));
    Real elmt_kGutabs(unit = "s-1.0") "kGutabs";
    Real elmt_VArt_fraction_VTotal(unit = "") "VArt_fraction_VTotal";
    Real elmt_VTotal(unit = "m3.0") "VTotal";
    Real elmt_KRest2plasma(unit = "") "KRest2plasma";


    initial equation
        elmt_Kkidney2plasma = 1.0;
        elmt_QKidney_fraction_QCardiac = 0.2214;
        elmt_Fraction_unbound_plasma = 0.8;
        elmt_Qgfr = (elmt_QGFR_ref * Functions.pow((elmt_BW / elmt_BW_ref), 0.75));
        elmt_QGut_fraction_QCardiac = 0.205;
        elmt_Kliver2plasma = 1.0;
        elmt_APAP_Dose_grams = 1.4;
        elmt_QRest = (((elmt_QCardiac - elmt_QGut) - elmt_QKidney) - elmt_QLiver);
        elmt_BW_ref = 1.0;
        elmt_APAP_Dose = (elmt_APAP_Dose_grams / elmt_APAP_MW);
        elmt_VVen_fraction_VTotal = 0.0812;
        elmt_QCardiac = (elmt_Cardiac_flow_ref * Functions.pow((elmt_BW / elmt_BW_ref), 0.75));
        elmt_VGut_fraction_VTotal = 0.0263;
        elmt_QGut = (elmt_QCardiac * elmt_QGut_fraction_QCardiac);
        elmt_APAP_MW = 151.2;
        elmt_VLung_fraction_VTotal = 0.0121;
        elmt_QLiver_fraction_QCardiac = 0.0535;
        elmt_Cardiac_flow_ref = 15.0;
        elmt_QGFR_ref = 0.039;
        elmt_VLiver_fraction_VTotal = 0.0408;
        elmt_QLiver = (elmt_QCardiac * elmt_QLiver_fraction_QCardiac);
        elmt_Ratioblood2plasma = 1.09;
        elmt_VKidney_fraction_VTotal = 0.007;
        elmt_QKidney = (elmt_QCardiac * elmt_QKidney_fraction_QCardiac);
        elmt_BW = 70.0;
        elmt_VTotal_ref = 0.6;
        elmt_CLmetabolism = 9.5;
        elmt_kGutabs = 1.5;
        elmt_VArt_fraction_VTotal = 0.0357;
        elmt_VTotal = (elmt_VTotal_ref * (elmt_BW / elmt_BW_ref));
        elmt_KRest2plasma = 1.6;


    equation
        der(elmt_Kkidney2plasma) = 0;
        der(elmt_QKidney_fraction_QCardiac) = 0;
        der(elmt_Fraction_unbound_plasma) = 0;
        der(elmt_Qgfr) = 0;
        der(elmt_QGut_fraction_QCardiac) = 0;
        der(elmt_Kliver2plasma) = 0;
        der(elmt_APAP_Dose_grams) = 0;
        der(elmt_QRest) = 0;
        der(elmt_BW_ref) = 0;
        der(elmt_APAP_Dose) = 0;
        der(elmt_VVen_fraction_VTotal) = 0;
        der(elmt_QCardiac) = 0;
        der(elmt_VGut_fraction_VTotal) = 0;
        der(elmt_QGut) = 0;
        der(elmt_APAP_MW) = 0;
        der(elmt_VLung_fraction_VTotal) = 0;
        der(elmt_QLiver_fraction_QCardiac) = 0;
        der(elmt_Cardiac_flow_ref) = 0;
        der(elmt_QGFR_ref) = 0;
        der(elmt_VLiver_fraction_VTotal) = 0;
        der(elmt_QLiver) = 0;
        der(elmt_Ratioblood2plasma) = 0;
        der(elmt_VKidney_fraction_VTotal) = 0;
        der(elmt_QKidney) = 0;
        der(elmt_BW) = 0;
        der(elmt_VTotal_ref) = 0;
        der(elmt_CLmetabolism) = 0;
        der(elmt_kGutabs) = 0;
        der(elmt_VArt_fraction_VTotal) = 0;
        der(elmt_VTotal) = 0;
        der(elmt_KRest2plasma) = 0;

end Parameters;
