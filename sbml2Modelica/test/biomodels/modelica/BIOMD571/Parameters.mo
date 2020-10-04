within BIOMD571;
class Parameters

    input Real elmt_CRP_cAMP_CRPsite_ptsIp1;
    input Real elmt_CRP_cAMP_CRPsite_ptsGp2;
    input Real elmt_CRP_cAMP_CRPsite_ptsHp1;
    input Real elmt_CRP_cAMP_CRPsite_ptsIp0;
    input Real elmt_CRP_cAMP_CRPsite_mlcp1;
    input Real elmt_CRPsite_mlcp2;
    input Real elmt_Mlc_Mlcsite_ptsGp2;
    input Real elmt_Mlc_Mlcsite_ptsIp0;
    input Real elmt_CRPsite_mlcp1;
    input Real elmt_Mlc_Mlcsite_ptsGp1;
    input Real elmt_Mlc_Mlcsite_ptsHp0;
    input Real elmt_Mlcsite_mlcp2;
    input Real elmt_Mlcsite_mlcp1;
    input Real elmt_CRP_cAMP_CRPsite_cyaA;
    input Real elmt_Mlcsite_ptsGp2;
    input Real elmt_Mlcsite_ptsIp0;
    input Real elmt_Mlcsite_ptsGp1;
    input Real elmt_Mlcsite_ptsHp0;
    input Real elmt_Mlc_Mlcsite_mlcp2;
    input Real elmt_CRPsite_ptsIp1;
    input Real elmt_CRPsite_ptsGp2;
    input Real elmt_CRPsite_ptsHp1;
    input Real elmt_CRPsite_ptsIp0;
    input Real elmt_CRPsite_ptsGp1;
    input Real elmt_CRPsite_ptsHp0;
    input Real elmt_Mlc_Mlcsite_mlcp1;
    input Real elmt_CRP_cAMP_CRPsiteI_crp;
    input Real elmt_CRPsite_cyaA;
    input Real elmt_CRP_cAMP_CRPsite_mlcp2;
    input Real elmt_CRP_cAMP_CRPsiteII_crp;
    input Real elmt_CRPsiteI_crp;
    input Real elmt_CRP_cAMP_CRPsite_ptsGp1;
    input Real elmt_CRP_cAMP_CRPsite_ptsHp0;
    input Real elmt_CRPsiteII_crp;

    Real elmt_TCRPsite_ptsGp1(unit = "m-3.0.") "";
    Real elmt_TCRPsite_ptsHp0(unit = "m-3.0.") "";
    Real elmt_TCRPsite_mlcp1(unit = "m-3.0.") "";
    Real elmt_TMlcsite_mlcp1(unit = "m-3.0.") "";
    Real elmt_TCRPsite_mlcp2(unit = "m-3.0.") "";
    Real elmt_TMlcsite_mlcp2(unit = "m-3.0.") "";
    Real elmt_TCRPsite_ptsIp1(unit = "m-3.0.") "";
    Real elmt_TCRPsite_ptsGp2(unit = "m-3.0.") "";
    Real elmt_TCRPsite_ptsHp1(unit = "m-3.0.") "";
    Real elmt_TCRPsite_ptsIp0(unit = "m-3.0.") "";
    Real elmt_TMlcsite_ptsGp2(unit = "m-3.0.") "";
    Real elmt_TMlcsite_ptsIp0(unit = "m-3.0.") "";
    Real elmt_TMlcsite_ptsGp1(unit = "m-3.0.") "";
    Real elmt_TMlcsite_ptsHp0(unit = "m-3.0.") "";
    Real elmt_fast(unit = "s-1.0") "";
    Real elmt_TCRPsiteI_crp(unit = "m-3.0.") "";
    Real elmt_TCRPsiteII_crp(unit = "m-3.0.") "";
    Real elmt_TCRPsite_cyaA(unit = "m-3.0.") "";


    initial equation
        elmt_fast = 1.0E9;


    equation
        elmt_TCRPsite_ptsGp1 = (elmt_CRPsite_ptsGp1 + elmt_CRP_cAMP_CRPsite_ptsGp1);
        elmt_TCRPsite_ptsHp0 = (elmt_CRPsite_ptsHp0 + elmt_CRP_cAMP_CRPsite_ptsHp0);
        elmt_TCRPsite_mlcp1 = (elmt_CRPsite_mlcp1 + elmt_CRP_cAMP_CRPsite_mlcp1);
        elmt_TMlcsite_mlcp1 = (elmt_Mlcsite_mlcp1 + elmt_Mlc_Mlcsite_mlcp1);
        elmt_TCRPsite_mlcp2 = (elmt_CRPsite_mlcp2 + elmt_CRP_cAMP_CRPsite_mlcp2);
        elmt_TMlcsite_mlcp2 = (elmt_Mlcsite_mlcp2 + elmt_Mlc_Mlcsite_mlcp2);
        elmt_TCRPsite_ptsIp1 = (elmt_CRPsite_ptsIp1 + elmt_CRP_cAMP_CRPsite_ptsIp1);
        elmt_TCRPsite_ptsGp2 = (elmt_CRPsite_ptsGp2 + elmt_CRP_cAMP_CRPsite_ptsGp2);
        elmt_TCRPsite_ptsHp1 = (elmt_CRPsite_ptsHp1 + elmt_CRP_cAMP_CRPsite_ptsHp1);
        elmt_TCRPsite_ptsIp0 = (elmt_CRPsite_ptsIp0 + elmt_CRP_cAMP_CRPsite_ptsIp0);
        elmt_TMlcsite_ptsGp2 = (elmt_Mlcsite_ptsGp2 + elmt_Mlc_Mlcsite_ptsGp2);
        elmt_TMlcsite_ptsIp0 = (elmt_Mlcsite_ptsIp0 + elmt_Mlc_Mlcsite_ptsIp0);
        elmt_TMlcsite_ptsGp1 = (elmt_Mlcsite_ptsGp1 + elmt_Mlc_Mlcsite_ptsGp1);
        elmt_TMlcsite_ptsHp0 = (elmt_Mlcsite_ptsHp0 + elmt_Mlc_Mlcsite_ptsHp0);
        der(elmt_fast) = 0;
        elmt_TCRPsiteI_crp = (elmt_CRPsiteI_crp + elmt_CRP_cAMP_CRPsiteI_crp);
        elmt_TCRPsiteII_crp = (elmt_CRPsiteII_crp + elmt_CRP_cAMP_CRPsiteII_crp);
        elmt_TCRPsite_cyaA = (elmt_CRPsite_cyaA + elmt_CRP_cAMP_CRPsite_cyaA);

end Parameters;
