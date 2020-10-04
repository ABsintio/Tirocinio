within BIOMD541;
class Parameters

    input Boolean elmt_ev2min;    input Boolean elmt_ev20min;    input Boolean elmt_ev10min;    input Boolean elmt_ev30min;    input Boolean elmt_ev15min;    input Boolean elmt_ev5min;    input Boolean elmt_ev45min;
    input Real assign_elmt_k_akg;
    input Real assign_elmt_k_f6p;
    input Real assign_elmt_k_f26bp;
    input Real assign_elmt_k_mal;
    input Real assign_elmt_k_pep;
    input Real assign_elmt_k_cit;
    input Real assign_elmt_k_icit;


    Real elmt_k_akg(unit = "") "k_akg";
    Real elmt_K_PFKL_akg(unit = "") "K_PFKL_akg";
    Real elmt_K_FBPase_cit(unit = "") "K_FBPase_cit";
    Real elmt_K_PFKL_pep(unit = "") "K_PFKL_pep";
    Real elmt_k_f6p(unit = "") "k_f6p";
    Real elmt_K_PFKL_f6p(unit = "") "K_PFKL_f6p";
    Real elmt_k_f26bp(unit = "") "k_f26bp";
    Real elmt_k_mal(unit = "") "k_mal";
    Real elmt_K_PFKL_mal(unit = "") "K_PFKL_mal";
    Real elmt_k_pep(unit = "") "k_pep";
    Real elmt_insulin(unit = "") "insulin";
    Real elmt_K_FBPase_f16bp(unit = "") "K_FBPase_f16bp";
    Real elmt_K_PFKL_PHOS_S775(unit = "") "K_PFKL_PHOS_S775";
    Real elmt_K_PFKL_cit(unit = "") "K_PFKL_cit";
    Real elmt_Vf_FBPase(unit = "") "Vf_FBPase";
    Real elmt_k_cit(unit = "") "k_cit";
    Real elmt_K_FBPase_f26bp(unit = "") "K_FBPase_f26bp";
    Real elmt_K_PFKL_icit(unit = "") "K_PFKL_icit";
    Real elmt_K_PFKL_f26bp(unit = "") "K_PFKL_f26bp";
    Real elmt_Vf_PFKL(unit = "") "Vf_PFKL";
    Real elmt_k_ALDO(unit = "") "k_ALDO";
    Real elmt_k_icit(unit = "") "k_icit";


    initial equation
        elmt_k_akg = (-3.544494721);
        elmt_K_PFKL_akg = 24661.01154;
        elmt_K_FBPase_cit = 0.0211646;
        elmt_K_PFKL_pep = 0.633518366;
        elmt_k_f6p = (-0.930115636);
        elmt_K_PFKL_f6p = 0.014114844;
        elmt_k_f26bp = (-0.083430336);
        elmt_k_mal = 1.005530417;
        elmt_K_PFKL_mal = 9.544729149;
        elmt_k_pep = 43.99195576;
        elmt_insulin = 1.0;
        elmt_K_FBPase_f16bp = 0.104089638;
        elmt_K_PFKL_PHOS_S775 = 6.283705757;
        elmt_K_PFKL_cit = 41.30426029;
        elmt_Vf_FBPase = 9.932861302;
        elmt_k_cit = (-0.351935646);
        elmt_K_FBPase_f26bp = 17.51744342;
        elmt_K_PFKL_icit = 1784.508205;
        elmt_K_PFKL_f26bp = 1.282443082;
        elmt_Vf_PFKL = 695063.7194;
        elmt_k_ALDO = 0.008187906;
        elmt_k_icit = (-0.038210156);


    equation
        der(elmt_k_akg) = 0.0;
        der(elmt_K_PFKL_akg) = 0;
        der(elmt_K_FBPase_cit) = 0;
        der(elmt_K_PFKL_pep) = 0;
        der(elmt_k_f6p) = 0.0;
        der(elmt_K_PFKL_f6p) = 0;
        der(elmt_k_f26bp) = 0.0;
        der(elmt_k_mal) = 0.0;
        der(elmt_K_PFKL_mal) = 0;
        der(elmt_k_pep) = 0.0;
        der(elmt_insulin) = 0;
        der(elmt_K_FBPase_f16bp) = 0;
        der(elmt_K_PFKL_PHOS_S775) = 0;
        der(elmt_K_PFKL_cit) = 0;
        der(elmt_Vf_FBPase) = 0;
        der(elmt_k_cit) = 0.0;
        der(elmt_K_FBPase_f26bp) = 0;
        der(elmt_K_PFKL_icit) = 0;
        der(elmt_K_PFKL_f26bp) = 0;
        der(elmt_Vf_PFKL) = 0;
        der(elmt_k_ALDO) = 0;
        der(elmt_k_icit) = 0.0;

        when elmt_ev2min then
            reinit(elmt_k_akg, assign_elmt_k_akg);
            reinit(elmt_k_f6p, assign_elmt_k_f6p);
            reinit(elmt_k_f26bp, assign_elmt_k_f26bp);
            reinit(elmt_k_mal, assign_elmt_k_mal);
            reinit(elmt_k_pep, assign_elmt_k_pep);
            reinit(elmt_k_cit, assign_elmt_k_cit);
            reinit(elmt_k_icit, assign_elmt_k_icit);
        end when;
        when elmt_ev20min then
            reinit(elmt_k_akg, assign_elmt_k_akg);
            reinit(elmt_k_f6p, assign_elmt_k_f6p);
            reinit(elmt_k_f26bp, assign_elmt_k_f26bp);
            reinit(elmt_k_mal, assign_elmt_k_mal);
            reinit(elmt_k_pep, assign_elmt_k_pep);
            reinit(elmt_k_cit, assign_elmt_k_cit);
            reinit(elmt_k_icit, assign_elmt_k_icit);
        end when;
        when elmt_ev10min then
            reinit(elmt_k_akg, assign_elmt_k_akg);
            reinit(elmt_k_f6p, assign_elmt_k_f6p);
            reinit(elmt_k_f26bp, assign_elmt_k_f26bp);
            reinit(elmt_k_mal, assign_elmt_k_mal);
            reinit(elmt_k_pep, assign_elmt_k_pep);
            reinit(elmt_k_cit, assign_elmt_k_cit);
            reinit(elmt_k_icit, assign_elmt_k_icit);
        end when;
        when elmt_ev30min then
            reinit(elmt_k_akg, assign_elmt_k_akg);
            reinit(elmt_k_f6p, assign_elmt_k_f6p);
            reinit(elmt_k_f26bp, assign_elmt_k_f26bp);
            reinit(elmt_k_mal, assign_elmt_k_mal);
            reinit(elmt_k_pep, assign_elmt_k_pep);
            reinit(elmt_k_cit, assign_elmt_k_cit);
            reinit(elmt_k_icit, assign_elmt_k_icit);
        end when;
        when elmt_ev15min then
            reinit(elmt_k_akg, assign_elmt_k_akg);
            reinit(elmt_k_f6p, assign_elmt_k_f6p);
            reinit(elmt_k_f26bp, assign_elmt_k_f26bp);
            reinit(elmt_k_mal, assign_elmt_k_mal);
            reinit(elmt_k_pep, assign_elmt_k_pep);
            reinit(elmt_k_cit, assign_elmt_k_cit);
            reinit(elmt_k_icit, assign_elmt_k_icit);
        end when;
        when elmt_ev5min then
            reinit(elmt_k_akg, assign_elmt_k_akg);
            reinit(elmt_k_f6p, assign_elmt_k_f6p);
            reinit(elmt_k_f26bp, assign_elmt_k_f26bp);
            reinit(elmt_k_mal, assign_elmt_k_mal);
            reinit(elmt_k_pep, assign_elmt_k_pep);
            reinit(elmt_k_cit, assign_elmt_k_cit);
            reinit(elmt_k_icit, assign_elmt_k_icit);
        end when;
        when elmt_ev45min then
            reinit(elmt_k_akg, assign_elmt_k_akg);
            reinit(elmt_k_f6p, assign_elmt_k_f6p);
            reinit(elmt_k_f26bp, assign_elmt_k_f26bp);
            reinit(elmt_k_mal, assign_elmt_k_mal);
            reinit(elmt_k_pep, assign_elmt_k_pep);
            reinit(elmt_k_cit, assign_elmt_k_cit);
            reinit(elmt_k_icit, assign_elmt_k_icit);
        end when;
end Parameters;
