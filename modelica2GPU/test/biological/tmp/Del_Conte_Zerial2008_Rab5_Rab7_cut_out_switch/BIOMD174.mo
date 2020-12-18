
model BIOMD174 "Del_Conte_Zerial2008_Rab5_Rab7_cut_out_switch"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;


    function hydrolysis
        	input Real kh;
	input Real R;
        output Real y;
    algorithm
        y =  kh * R;
    end hydrolysis;


    function sig_act
        	input Real ke;
	input Real r;
	input Real kg;
	input Real R;
	input Real kf;
        output Real y;
    algorithm
        y =  ke * r / (1 + exp((kg - R) * kf));
    end sig_act;


    function hill_act
        	input Real r;
	input Real ke;
	input Real R;
	input Real h;
	input Real kg;
        output Real y;
    algorithm
        y =  r * ke * R^h / (kg + R^h);
    end hill_act;


    function extraction
        	input Real kminus1;
	input Real r;
        output Real y;
    algorithm
        y =  kminus1 * r;
    end extraction;


    function sig_act_t
        	input Real r;
	input Real ke;
	input Real t;
	input Real kg;
	input Real R;
	input Real kf;
        output Real y;
    algorithm
        y =  r * (ke * t / (100 + t)) / (1 + exp((kg - R) * kf));
    end sig_act_t;


    parameter Real K1_0 = 1.0;
    parameter Real ke_1 = 0.3;
    parameter Real kg_1 = 0.1;
    parameter Real kf_1 = 2.5;
    parameter Real kminus1_2 = 1.0;
    parameter Real K1_3 = 0.483;
    parameter Real ke_4 = 0.21;
    parameter Real h_4 = 3.0;
    parameter Real kg_4 = 0.1;
    parameter Real ke_5 = 0.021;
    parameter Real kg_5 = 1.0;
    parameter Real kf_5 = 3.0;
    parameter Real ke_6 = 0.31;
    parameter Real kg_6 = 0.3;
    parameter Real kf_6 = 3.0;
    parameter Real kminus1_7 = 0.483;
    parameter Real kh_8 = 0.06;
    parameter Real kh_9 = 0.15;
    parameter Real endosome = 1.0;



    Real r5;
    Real R5;
    Real r7;
    Real R7;

initial equation
    r5 = 1.0;
    R5 = 0.001;
    r7 = 1.0;
    R7 = 0.001;

equation

    der(r5) = (endosome * K1_0) + (endosome * sig_act(ke_6, R5, kg_6, R7, kf_6)) + (endosome * hydrolysis(kh_8, R5)) - (endosome * sig_act_t(r5, ke_1, time, kg_1, R5, kf_1)) - (endosome * extraction(kminus1_2, r5));
    der(R5) = (endosome * sig_act_t(r5, ke_1, time, kg_1, R5, kf_1)) - (endosome * sig_act(ke_6, R5, kg_6, R7, kf_6)) - (endosome * hydrolysis(kh_8, R5));
    der(r7) = (endosome * K1_3) + (endosome * hydrolysis(kh_9, R7)) - (endosome * h_4ill_act(r7, ke_4, R7, h_4, kg_4)) - (endosome * sig_act(ke_5, r7, kg_5, R5, kf_5)) - (endosome * extraction(kminus1_7, r7));
    der(R7) = (endosome * h_4ill_act(r7, ke_4, R7, h_4, kg_4)) + (endosome * sig_act(ke_5, r7, kg_5, R5, kf_5)) - (endosome * hydrolysis(kh_9, R7));




end BIOMD174;
