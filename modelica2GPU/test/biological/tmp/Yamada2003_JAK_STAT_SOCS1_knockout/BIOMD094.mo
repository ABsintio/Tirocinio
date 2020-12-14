
model BIOMD094 "Yamada2003_JAK_STAT_SOCS1_knockout"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real kf_v1 = 0.1;
    parameter Real kb_v1 = 0.05;
    parameter Real kf_v2 = 0.02;
    parameter Real kb_v2 = 0.02;
    parameter Real kf_v3 = 0.04;
    parameter Real kb_v3 = 0.2;
    parameter Real kf_v4 = 0.005;
    parameter Real kf_v5 = 0.008;
    parameter Real kb_v5 = 0.8;
    parameter Real kf_v6 = 0.4;
    parameter Real kf_v7 = 0.005;
    parameter Real kb_v7 = 0.5;
    parameter Real kf_v8 = 0.02;
    parameter Real kb_v8 = 0.1;
    parameter Real kf_v9 = 0.001;
    parameter Real kb_v9 = 0.2;
    parameter Real kf_v10 = 0.003;
    parameter Real kf_v11 = 0.001;
    parameter Real kb_v11 = 0.2;
    parameter Real kf_v12 = 0.003;
    parameter Real kf_v13 = 0.001;
    parameter Real kb_v13 = 0.2;
    parameter Real kf_v14 = 0.003;
    parameter Real kf_v15 = 2e-07;
    parameter Real kb_v15 = 0.2;
    parameter Real kf_v16 = 0.005;
    parameter Real kf_v17 = 0.02;
    parameter Real kb_v17 = 0.1;
    parameter Real kf_v18 = 0.001;
    parameter Real kb_v18 = 0.2;
    parameter Real kf_v19 = 0.005;
    parameter Real kf_v20 = 0.001;
    parameter Real kb_v20 = 0.2;
    parameter Real kf_v21 = 0.005;
    parameter Real kf_v22 = 2e-07;
    parameter Real kb_v22 = 0.2;
    parameter Real kf_v23 = 0.05;
    parameter Real kf_v25 = 0.001;
    parameter Real kf_v26 = 0.01;
    parameter Real kf_v27 = 0.0005;
    parameter Real kf_v28 = 0.0005;
    parameter Real kf_v29 = 0.02;
    parameter Real kb_v29 = 0.1;
    parameter Real kf_v30 = 0.008;
    parameter Real kb_v30 = 0.8;
    parameter Real kf_v31 = 0.001;
    parameter Real kb_v31 = 0.2;
    parameter Real kf_v32 = 0.003;
    parameter Real kf_v33 = 0.0005;
    parameter Real kf_v34 = 0.001;
    parameter Real kb_v34 = 0.2;
    parameter Real kf_v35 = 0.008;
    parameter Real kb_v35 = 0.8;
    parameter Real kf_v36 = 0.001;
    parameter Real kb_v36 = 0.2;
    parameter Real kf_v37 = 0.003;
    parameter Real kf_v38 = 0.0005;
    parameter Real kf_v39 = 0.0005;
    parameter Real kf_v40 = 0.003;
    parameter Real kf_v41 = 0.0005;
    parameter Real kf_v42 = 0.02;
    parameter Real kb_v42 = 0.1;
    parameter Real kf_v43 = 0.02;
    parameter Real kb_v43 = 0.1;
    parameter Real kf_v44 = 0.02;
    parameter Real kb_v44 = 0.1;
    parameter Real kf_v45 = 0.02;
    parameter Real kb_v45 = 0.02;
    parameter Real kf_v46 = 0.1;
    parameter Real kb_v46 = 0.05;



    Real R;
    Real JAK;
    Real RJ;
    Real IFNRJ;
    Real IFNRJ2;
    Real IFNRJ2_star;
    Real STAT1c;
    Real IFNRJ2_star_STAT1c;
    Real STAT1c_star;
    Real IFNRJ2_star_STAT1c_star;
    Real STAT1c_star_STAT1c_star;
    Real SHP2;
    Real IFNRJ2_star_SHP2;
    Real PPX;
    Real STAT1c_star_PPX;
    Real STAT1c_STAT1c_star;
    Real STAT1n_star_STAT1n_star;
    Real STAT1n_star;
    Real PPN;
    Real STAT1n_star_PPN;
    Real STAT1n;
    Real STAT1n_STAT1n_star;
    Real mRNAn;
    Real mRNAc;
    Real SOCS1;
    Real IFNRJ2_star_SOCS1;
    Real IFNRJ2_star_SHP2_SOCS1_STAT1c;
    Real STAT1c_star_STAT1c_star_PPX;
    Real STAT1n_star_STAT1n_star_PPN;
    Real IFNRJ2_star_SOCS1_STAT1c;
    Real IFN;
    Real IFNRJ2_star_SHP2_STAT1c;
    Real IFNRJ2_star_SHP2_SOCS1;
    Real IFNR;

initial equation
    R = 10.0;
    JAK = 10.0;
    RJ = 0.0;
    IFNRJ = 0.0;
    IFNRJ2 = 0.0;
    IFNRJ2_star = 0.0;
    STAT1c = 1000.0;
    IFNRJ2_star_STAT1c = 0.0;
    STAT1c_star = 0.0;
    IFNRJ2_star_STAT1c_star = 0.0;
    STAT1c_star_STAT1c_star = 0.0;
    SHP2 = 100.0;
    IFNRJ2_star_SHP2 = 0.0;
    PPX = 50.0;
    STAT1c_star_PPX = 0.0;
    STAT1c_STAT1c_star = 0.0;
    STAT1n_star_STAT1n_star = 0.0;
    STAT1n_star = 0.0;
    PPN = 60.0;
    STAT1n_star_PPN = 0.0;
    STAT1n = 0.0;
    STAT1n_STAT1n_star = 0.0;
    mRNAn = 0.0;
    mRNAc = 0.0;
    SOCS1 = 0.0;
    IFNRJ2_star_SOCS1 = 0.0;
    IFNRJ2_star_SHP2_SOCS1_STAT1c = 0.0;
    STAT1c_star_STAT1c_star_PPX = 0.0;
    STAT1n_star_STAT1n_star_PPN = 0.0;
    IFNRJ2_star_SOCS1_STAT1c = 0.0;
    IFN = 10.0;
    IFNRJ2_star_SHP2_STAT1c = 0.0;
    IFNRJ2_star_SHP2_SOCS1 = 0.0;
    IFNR = 0.0;

equation

    der(R) =  - (1.0 * (kf_v1 * R * JAK - kb_v1 * RJ)) - (1.0 * (kf_v45 * IFN * R - kb_v45 * IFNR));
    der(JAK) =  - (1.0 * (kf_v1 * R * JAK - kb_v1 * RJ)) - (1.0 * (kf_v46 * IFNR * JAK - kb_v46 * IFNRJ));
    der(RJ) = (1.0 * (kf_v1 * R * JAK - kb_v1 * RJ)) - (1.0 * (kf_v2 * IFN * RJ - kb_v2 * IFNRJ));
    der(IFNRJ) = (1.0 * (kf_v2 * IFN * RJ - kb_v2 * IFNRJ)) + (1.0 * (kf_v46 * IFNR * JAK - kb_v46 * IFNRJ)) - (2.0 * 1.0 * (kf_v3 * IFNRJ * IFNRJ - kb_v3 * IFNRJ2));
    der(IFNRJ2) = (1.0 * (kf_v3 * IFNRJ * IFNRJ - kb_v3 * IFNRJ2)) + (1.0 * kf_v10 * IFNRJ2_star_SHP2) + (1.0 * kf_v32 * IFNRJ2_star_SHP2_SOCS1_STAT1c) + (1.0 * kf_v37 * IFNRJ2_star_SHP2_STAT1c) + (1.0 * kf_v40 * IFNRJ2_star_SHP2_SOCS1) - (1.0 * kf_v4 * IFNRJ2);
    der(IFNRJ2_star) = (1.0 * kf_v4 * IFNRJ2) + (1.0 * kf_v6 * IFNRJ2_star_STAT1c) + (1.0 * kf_v41 * IFNRJ2_star_SOCS1) - (1.0 * (kf_v5 * STAT1c * IFNRJ2_star - kb_v5 * IFNRJ2_star_STAT1c)) - (1.0 * (kf_v7 * IFNRJ2_star * STAT1c_star - kb_v7 * IFNRJ2_star_STAT1c_star)) - (1.0 * (kf_v9 * IFNRJ2_star * SHP2 - kb_v9 * IFNRJ2_star_SHP2)) - (1.0 * (kf_v29 * SOCS1 * IFNRJ2_star - kb_v29 * IFNRJ2_star_SOCS1));
    der(STAT1c) = (1.0 * kf_v12 * STAT1c_star_PPX) + (1.0 * kf_v23 * STAT1n) + (1.0 * kf_v32 * IFNRJ2_star_SHP2_SOCS1_STAT1c) + (1.0 * kf_v37 * IFNRJ2_star_SHP2_STAT1c) - (1.0 * (kf_v5 * STAT1c * IFNRJ2_star - kb_v5 * IFNRJ2_star_STAT1c)) - (1.0 * (kf_v15 * STAT1c * STAT1c_star - kb_v15 * STAT1c_STAT1c_star)) - (1.0 * (kf_v30 * STAT1c * IFNRJ2_star_SOCS1 - kb_v30 * IFNRJ2_star_SOCS1_STAT1c)) - (1.0 * (kf_v35 * STAT1c * IFNRJ2_star_SHP2_SOCS1 - kb_v35 * IFNRJ2_star_SHP2_SOCS1_STAT1c));
    der(IFNRJ2_star_STAT1c) = (1.0 * (kf_v5 * STAT1c * IFNRJ2_star - kb_v5 * IFNRJ2_star_STAT1c)) + (1.0 * kf_v38 * IFNRJ2_star_SOCS1_STAT1c) - (1.0 * kf_v6 * IFNRJ2_star_STAT1c) - (1.0 * (kf_v36 * SHP2 * IFNRJ2_star_STAT1c - kb_v36 * IFNRJ2_star_SHP2_STAT1c)) - (1.0 * (kf_v42 * SOCS1 * IFNRJ2_star_STAT1c - kb_v42 * IFNRJ2_star_SOCS1_STAT1c));
    der(STAT1c_star) = (1.0 * kf_v6 * IFNRJ2_star_STAT1c) - (1.0 * (kf_v7 * IFNRJ2_star * STAT1c_star - kb_v7 * IFNRJ2_star_STAT1c_star)) - (2.0 * 1.0 * (kf_v8 * STAT1c_star * STAT1c_star - kb_v8 * STAT1c_star_STAT1c_star)) - (1.0 * (kf_v11 * PPX * STAT1c_star - kb_v11 * STAT1c_star_PPX)) - (1.0 * (kf_v15 * STAT1c * STAT1c_star - kb_v15 * STAT1c_STAT1c_star));
    der(IFNRJ2_star_STAT1c_star) = (1.0 * (kf_v7 * IFNRJ2_star * STAT1c_star - kb_v7 * IFNRJ2_star_STAT1c_star)) ;
    der(STAT1c_star_STAT1c_star) = (1.0 * (kf_v8 * STAT1c_star * STAT1c_star - kb_v8 * STAT1c_star_STAT1c_star)) - (1.0 * (kf_v13 * PPX * STAT1c_star_STAT1c_star - kb_v13 * STAT1c_star_STAT1c_star_PPX)) - (1.0 * kf_v16 * STAT1c_star_STAT1c_star);
    der(SHP2) = (1.0 * kf_v10 * IFNRJ2_star_SHP2) + (1.0 * kf_v32 * IFNRJ2_star_SHP2_SOCS1_STAT1c) + (1.0 * kf_v37 * IFNRJ2_star_SHP2_STAT1c) + (1.0 * kf_v40 * IFNRJ2_star_SHP2_SOCS1) - (1.0 * (kf_v9 * IFNRJ2_star * SHP2 - kb_v9 * IFNRJ2_star_SHP2)) - (1.0 * (kf_v31 * SHP2 * IFNRJ2_star_SOCS1_STAT1c - kb_v31 * IFNRJ2_star_SHP2_SOCS1_STAT1c)) - (1.0 * (kf_v34 * SHP2 * IFNRJ2_star_SOCS1 - kb_v34 * IFNRJ2_star_SHP2_SOCS1)) - (1.0 * (kf_v36 * SHP2 * IFNRJ2_star_STAT1c - kb_v36 * IFNRJ2_star_SHP2_STAT1c));
    der(IFNRJ2_star_SHP2) = (1.0 * (kf_v9 * IFNRJ2_star * SHP2 - kb_v9 * IFNRJ2_star_SHP2)) + (1.0 * kf_v39 * IFNRJ2_star_SHP2_SOCS1) - (1.0 * kf_v10 * IFNRJ2_star_SHP2) - (1.0 * (kf_v43 * SOCS1 * IFNRJ2_star_SHP2 - kb_v43 * IFNRJ2_star_SHP2_SOCS1));
    der(PPX) = (1.0 * kf_v12 * STAT1c_star_PPX) + (1.0 * kf_v14 * STAT1c_star_STAT1c_star_PPX) - (1.0 * (kf_v11 * PPX * STAT1c_star - kb_v11 * STAT1c_star_PPX)) - (1.0 * (kf_v13 * PPX * STAT1c_star_STAT1c_star - kb_v13 * STAT1c_star_STAT1c_star_PPX));
    der(STAT1c_star_PPX) = (1.0 * (kf_v11 * PPX * STAT1c_star - kb_v11 * STAT1c_star_PPX)) - (1.0 * kf_v12 * STAT1c_star_PPX);
    der(STAT1c_STAT1c_star) = (1.0 * kf_v14 * STAT1c_star_STAT1c_star_PPX) + (1.0 * (kf_v15 * STAT1c * STAT1c_star - kb_v15 * STAT1c_STAT1c_star)) ;
    der(STAT1n_star_STAT1n_star) = (1.0 * kf_v16 * STAT1c_star_STAT1c_star) + (1.0 * (kf_v17 * STAT1n_star * STAT1n_star - kb_v17 * STAT1n_star_STAT1n_star)) - (1.0 * (kf_v20 * PPN * STAT1n_star_STAT1n_star - kb_v20 * STAT1n_star_STAT1n_star_PPN));
    der(STAT1n_star) =  - (2.0 * 1.0 * (kf_v17 * STAT1n_star * STAT1n_star - kb_v17 * STAT1n_star_STAT1n_star)) - (1.0 * (kf_v18 * PPN * STAT1n_star - kb_v18 * STAT1n_star_PPN)) - (1.0 * (kf_v22 * STAT1n * STAT1n_star - kb_v22 * STAT1n_STAT1n_star));
    der(PPN) = (1.0 * kf_v19 * STAT1n_star_PPN) + (1.0 * kf_v21 * STAT1n_star_STAT1n_star_PPN) - (1.0 * (kf_v18 * PPN * STAT1n_star - kb_v18 * STAT1n_star_PPN)) - (1.0 * (kf_v20 * PPN * STAT1n_star_STAT1n_star - kb_v20 * STAT1n_star_STAT1n_star_PPN));
    der(STAT1n_star_PPN) = (1.0 * (kf_v18 * PPN * STAT1n_star - kb_v18 * STAT1n_star_PPN)) - (1.0 * kf_v19 * STAT1n_star_PPN);
    der(STAT1n) = (1.0 * kf_v19 * STAT1n_star_PPN) - (1.0 * (kf_v22 * STAT1n * STAT1n_star - kb_v22 * STAT1n_STAT1n_star)) - (1.0 * kf_v23 * STAT1n);
    der(STAT1n_STAT1n_star) = (1.0 * kf_v21 * STAT1n_star_STAT1n_star_PPN) + (1.0 * (kf_v22 * STAT1n * STAT1n_star - kb_v22 * STAT1n_STAT1n_star)) ;
    der(mRNAn) =  - (1.0 * kf_v25 * mRNAn);
    der(mRNAc) = (1.0 * kf_v25 * mRNAn) - (1.0 * kf_v27 * mRNAc);
    der(SOCS1) = (1.0 * kf_v26 * mRNAc) + (1.0 * kf_v32 * IFNRJ2_star_SHP2_SOCS1_STAT1c) + (1.0 * kf_v40 * IFNRJ2_star_SHP2_SOCS1) - (1.0 * kf_v28 * SOCS1) - (1.0 * (kf_v29 * SOCS1 * IFNRJ2_star - kb_v29 * IFNRJ2_star_SOCS1)) - (1.0 * (kf_v42 * SOCS1 * IFNRJ2_star_STAT1c - kb_v42 * IFNRJ2_star_SOCS1_STAT1c)) - (1.0 * (kf_v43 * SOCS1 * IFNRJ2_star_SHP2 - kb_v43 * IFNRJ2_star_SHP2_SOCS1)) - (1.0 * (kf_v44 * SOCS1 * IFNRJ2_star_SHP2_STAT1c - kb_v44 * IFNRJ2_star_SHP2_SOCS1_STAT1c));
    der(IFNRJ2_star_SOCS1) = (1.0 * (kf_v29 * SOCS1 * IFNRJ2_star - kb_v29 * IFNRJ2_star_SOCS1)) - (1.0 * (kf_v30 * STAT1c * IFNRJ2_star_SOCS1 - kb_v30 * IFNRJ2_star_SOCS1_STAT1c)) - (1.0 * (kf_v34 * SHP2 * IFNRJ2_star_SOCS1 - kb_v34 * IFNRJ2_star_SHP2_SOCS1)) - (1.0 * kf_v41 * IFNRJ2_star_SOCS1);
    der(IFNRJ2_star_SHP2_SOCS1_STAT1c) = (1.0 * (kf_v31 * SHP2 * IFNRJ2_star_SOCS1_STAT1c - kb_v31 * IFNRJ2_star_SHP2_SOCS1_STAT1c)) + (1.0 * (kf_v35 * STAT1c * IFNRJ2_star_SHP2_SOCS1 - kb_v35 * IFNRJ2_star_SHP2_SOCS1_STAT1c)) + (1.0 * (kf_v44 * SOCS1 * IFNRJ2_star_SHP2_STAT1c - kb_v44 * IFNRJ2_star_SHP2_SOCS1_STAT1c)) - (1.0 * kf_v32 * IFNRJ2_star_SHP2_SOCS1_STAT1c) - (1.0 * kf_v33 * IFNRJ2_star_SHP2_SOCS1_STAT1c);
    der(STAT1c_star_STAT1c_star_PPX) = (1.0 * (kf_v13 * PPX * STAT1c_star_STAT1c_star - kb_v13 * STAT1c_star_STAT1c_star_PPX)) - (1.0 * kf_v14 * STAT1c_star_STAT1c_star_PPX);
    der(STAT1n_star_STAT1n_star_PPN) = (1.0 * (kf_v20 * PPN * STAT1n_star_STAT1n_star - kb_v20 * STAT1n_star_STAT1n_star_PPN)) - (1.0 * kf_v21 * STAT1n_star_STAT1n_star_PPN);
    der(IFNRJ2_star_SOCS1_STAT1c) = (1.0 * (kf_v30 * STAT1c * IFNRJ2_star_SOCS1 - kb_v30 * IFNRJ2_star_SOCS1_STAT1c)) + (1.0 * (kf_v42 * SOCS1 * IFNRJ2_star_STAT1c - kb_v42 * IFNRJ2_star_SOCS1_STAT1c)) - (1.0 * (kf_v31 * SHP2 * IFNRJ2_star_SOCS1_STAT1c - kb_v31 * IFNRJ2_star_SHP2_SOCS1_STAT1c)) - (1.0 * kf_v38 * IFNRJ2_star_SOCS1_STAT1c);
    der(IFN) = 0.0;
    der(IFNRJ2_star_SHP2_STAT1c) = (1.0 * kf_v33 * IFNRJ2_star_SHP2_SOCS1_STAT1c) + (1.0 * (kf_v36 * SHP2 * IFNRJ2_star_STAT1c - kb_v36 * IFNRJ2_star_SHP2_STAT1c)) - (1.0 * kf_v37 * IFNRJ2_star_SHP2_STAT1c) - (1.0 * (kf_v44 * SOCS1 * IFNRJ2_star_SHP2_STAT1c - kb_v44 * IFNRJ2_star_SHP2_SOCS1_STAT1c));
    der(IFNRJ2_star_SHP2_SOCS1) = (1.0 * (kf_v34 * SHP2 * IFNRJ2_star_SOCS1 - kb_v34 * IFNRJ2_star_SHP2_SOCS1)) + (1.0 * (kf_v43 * SOCS1 * IFNRJ2_star_SHP2 - kb_v43 * IFNRJ2_star_SHP2_SOCS1)) - (1.0 * (kf_v35 * STAT1c * IFNRJ2_star_SHP2_SOCS1 - kb_v35 * IFNRJ2_star_SHP2_SOCS1_STAT1c)) - (1.0 * kf_v39 * IFNRJ2_star_SHP2_SOCS1) - (1.0 * kf_v40 * IFNRJ2_star_SHP2_SOCS1);
    der(IFNR) = (1.0 * (kf_v45 * IFN * R - kb_v45 * IFNR)) - (1.0 * (kf_v46 * IFNR * JAK - kb_v46 * IFNRJ));




end BIOMD094;
