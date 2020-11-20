model BIOMD001 "Edelstein1996 - EPSP ACh event"

    parameter Real kr_0 = 8000.000;
    parameter Real kr_1 = 16000.000;
    parameter Real kf_2 = 30000.000;
    parameter Real kr_2 = 700.000;
    parameter Real kr_3 = 8.640;
    parameter Real kr_4 = 17.280;
    parameter Real kf_5 = 0.540;
    parameter Real kr_5 = 10800.000;
    parameter Real kf_6 = 130.000;
    parameter Real kr_6 = 2740.000;
    parameter Real kr_7 = 4.000;
    parameter Real kr_8 = 8.000;
    parameter Real kf_9 = 19.700;
    parameter Real kr_9 = 3.740;
    parameter Real kf_10 = 19.850;
    parameter Real kr_10 = 1.740;
    parameter Real kf_11 = 20.000;
    parameter Real kr_11 = 0.810;
    parameter Real kr_12 = 4.000;
    parameter Real kr_13 = 8.000;
    parameter Real kf_14 = 0.050;
    parameter Real kr_14 = 0.001;
    parameter Real kf_15 = 0.050;
    parameter Real kr_15 = 0.001;
    parameter Real kf_16 = 0.050;
    parameter Real kr_16 = 0.001;
    parameter Real t2 = 20.000;

    Real kf_0(start=3000.000);
    Real kf_1(start=1500.000);
    Real kf_3(start=3000.000);
    Real kf_4(start=1500.000);
    Real kf_7(start=3000.000);
    Real kf_8(start=1500.000);
    Real kf_12(start=3000.000);
    Real kf_13(start=1500.000);

    Real BLL; "BasalACh2"
    Real BL; "BasalACh"
    Real B; "Basal"
    Real ILL; "IntermediateACh2"
    Real IL; "IntermediateACh"
    Real I; "Intermediate"
    Real ALL; "ActieACh2"
    Real AL; "ActiveACh"
    Real A; "Active"
    Real DLL; "DensitisedACh2"
    Real DL; "DensitisedACh"
    Real D; "Densitised"

initial equation
    BLL = 0.0;
    BL = 0.0;
    B = 1.66057788110262e-21;
    ILL = 0.0;
    IL = 0.0;
    I = 0.0;
    ALL = 0.0;
    AL = 0.0;
    A = 0.0;
    DLL = 0.0;
    DL = 0.0;
    D = 0.0;

equation
    when time > t2 then
        reinit(kf_0, 0.000);
        reinit(kf_3, 0.000);
        reinit(kf_7, 0.000);
        reinit(kf_12, 0.000);
        reinit(kf_1, 0.000);
        reinit(kf_4, 0.000);
        reinit(kf_8, 0.000);
        reinit(kf_13, 0.000);
    end when;

    der(BLL) = (kf_1*BL - kr_1*BLL) - (kf_2*BLL - kr_2*ALL); // R1 - R2
    der(BL) = (kf_0*B - kr_0*BL) - (kf_1*BL - kr_1*BLL) - (kf_6*BL - kr_6*AL); // R0 - R1 - R6 
    der(B) =  (-(kf_0*B - kr_0*BL)) - (kf_5*B - kr_5*A); // -R0 - R5
    der(ILL) = (kf_8*IL - kr_8*ILL) + (kf_11*ALL - kr_11*ILL) - (kf_16*ILL - kr_16*DLL); // R8 + R11 - R16 
    der(IL) = (kf_7*I - kr_7*IL) + (kf_10*AL - kr_10*IL) - (kf_8*IL - kr_8*ILL) - (kf_15*IL - kr_15*DL); // R7 + R10 - R8 - R15
    der(I) =  (kf_9*A - kr_9*I) - (kf_7*I - kr_7*IL) - (kf_14*I - kr_14*D); // R9 - R7 - R14
    der(ALL) = (kf_2*BLL - kr_2*ALL) + (kf_5*B - kr_5*A) - (kf_11*ALL - kr_11*ILL); // R2 + R5 - R11
    der(AL) = (kf_3*A - kr_3*AL) + (kf_6*BL - kr_6*AL) - (kf_4*AL - kr_4*ALL) - (kf_10*AL - kr_10*IL); // R3 + R6 - R4 - R10
    der(A) = (kf_5*B - kr_5*A) - (kf_3*A - kr_3*AL) - (kf_9*A - kr_9*I); // R5 - R3 - R9
    der(DLL) = (kf_13*DL - kr_13*DLL) + (kf_16*ILL - kr_16*DLL); // R13 + R16
    der(DL) = (kf_12*D - kr_12*DL) + (kf_15*IL - kr_15*DL) - (kf_13*DL - kr_13*DLL); // R12 + R15 - R13
    der(D) = (kf_14*I - kr_14*D) -  (kf_12*D - kr_12*DL); // R14 - R12
end BIOMD001;