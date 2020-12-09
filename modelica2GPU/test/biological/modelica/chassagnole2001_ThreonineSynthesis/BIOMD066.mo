model BIOMD066 "Control of the threonine-synthesis pathway in Escherichia coli: a theoretical and experimental approach"

    parameter Real vm11 = 0.150;
    parameter Real keqak = 6.4e-4;
    parameter Real k11 = 0.970;
    parameter Real k1thr = 0.167;
    parameter Real nak1 = 4.090;
    parameter Real alpha = 2.470;
    parameter Real k1aspp = 0.017;
    parameter Real k1atp = 0.980;
    parameter Real k1adp = 0.250;
    parameter Real vm13 = 0.072;
    parameter Real lys = 0.460;
    parameter Real k1lys = 0.391;
    parameter Real nak3 = 2.800;
    parameter Real k13 = 0.320;
    parameter Real k13aspp = 0.017;
    parameter Real k13atp = 0.220;
    parameter Real k13adp = 0.250;
    parameter Real vm2f = 0.181;
    parameter Real k2eq = 56.415;
    parameter Real k2aspp = 0.022;
    parameter Real k2asa = 0.110;
    parameter Real k2p = 10.000;
    parameter Real k2nadph = 0.029;
    parameter Real k2nadp = 0.144;
    parameter Real vm3f = 1.001;
    parameter Real k3eq = 3162.278;
    parameter Real k3thr = 0.097;
    parameter Real nhdh1 = 1.410;
    parameter Real alpha3 = 3.390;
    parameter Real k3asa = 0.240;
    parameter Real k3hs = 3.390;
    parameter Real k3nadph = 0.037;
    parameter Real k3nadp = 0.067;
    parameter Real vm5 = 0.043;
    parameter Real k5hsp = 0.310;
    parameter Real vm4f = 0.100;
    parameter Real lys = 0.460;
    parameter Real k4lys = 9.450;
    parameter Real k4atp = 0.072;
    parameter Real k4ihs = 4.700;
    parameter Real k4hs = 0.110;
    parameter Real k4thr = 1.090;
    parameter Real k4iatp = 4.350;
    parameter Real knadph = 5.4e-6;
    parameter Real prot = 202.000;
    parameter Real katpase = 4.1e-5;

    Real aspp "Aspartyl phosphate";
    Real asa "Aspartate beta-semialdehyde";
    Real hs "Homoserine";
    Real hsp "O-Phospho-homoserine";
    Real phos "Phos";
    Real thr "Threonine";
    Real asp "Aspartate";
    Real nadp "NADP";
    Real nadph "NADPH";
    Real adp "ADP";
    Real atp "ATP";

initial equation
    aspp = 0.0;
    asa = 0.0;
    hs = 0.0;
    hsp = 0.0;
    phos = 0.0;
    thr = 2.0;
    asp = 2.0;
    nadp = 0.0;
    nadph = 2.0;
    adp = 0.0;
    atp = 10.0;

equation
    der(aspp) = (vm11*(asp*atp-aspp*adp/keqak)/((k11*(1+(thr/k1thr)^nak1)/(1+(thr/(alpha*k1thr))^nak1)+k11*aspp/k1aspp+asp)*(k1atp*(1+adp/k1adp)+atp))+vm13*(asp*atp-aspp*adp/keqak)/((1+(lys/k1lys)^nak3)*(k13*(1+aspp/k13aspp)+asp)*(k13atp*(1+adp/k13adp)+atp))) - vm2f*(aspp*nadph-asa*nadp*phos/k2eq)/((k2aspp*(1+asa/k2asa)*(1+phos/k2p)+aspp)*(k2nadph*(1+nadp/k2nadp)+nadph));
    der(asa) = vm2f*(aspp*nadph-asa*nadp*phos/k2eq)/((k2aspp*(1+asa/k2asa)*(1+phos/k2p)+aspp)*(k2nadph*(1+nadp/k2nadp)+nadph)) - vm3f*(asa*nadph-hs*nadp/k3eq)/((1+(thr/k3thr)^nhdh1)/(1+(thr/(alpha3*k3thr))^nhdh1)*(k3asa+asa+hs*k3asa/k3hs)*(k3nadph*(1+nadp/k3nadp)+nadph));
    der(hs) = vm3f*(asa*nadph-hs*nadp/k3eq)/((1+(thr/k3thr)^nhdh1)/(1+(thr/(alpha3*k3thr))^nhdh1)*(k3asa+asa+hs*k3asa/k3hs)*(k3nadph*(1+nadp/k3nadp)+nadph)) - vm4f*hs*atp/((1+lys/k4lys)*(atp+k4atp*(1+hs/k4ihs))*(hs+k4hs*(1+thr/k4thr)*(1+atp/k4iatp)));
    der(hsp) = vm4f*hs*atp/((1+lys/k4lys)*(atp+k4atp*(1+hs/k4ihs))*(hs+k4hs*(1+thr/k4thr)*(1+atp/k4iatp))) - vm5*hsp/(hsp+k5hsp);
    der(phos) = vm2f*(aspp*nadph-asa*nadp*phos/k2eq)/((k2aspp*(1+asa/k2asa)*(1+phos/k2p)+aspp)*(k2nadph*(1+nadp/k2nadp)+nadph)) + vm5*hsp/(hsp+k5hsp) + prot*katpase;
    der(thr) = vm5*hsp/(hsp+k5hsp);
    der(asp) = -((vm11*(asp*atp-aspp*adp/keqak)/((k11*(1+(thr/k1thr)^nak1)/(1+(thr/(alpha*k1thr))^nak1)+k11*aspp/k1aspp+asp)*(k1atp*(1+adp/k1adp)+atp))+vm13*(asp*atp-aspp*adp/keqak)/((1+(lys/k1lys)^nak3)*(k13*(1+aspp/k13aspp)+asp)*(k13atp*(1+adp/k13adp)+atp))));
    der(nadp) = vm2f*(aspp*nadph-asa*nadp*phos/k2eq)/((k2aspp*(1+asa/k2asa)*(1+phos/k2p)+aspp)*(k2nadph*(1+nadp/k2nadp)+nadph)) + vm3f*(asa*nadph-hs*nadp/k3eq)/((1+(thr/k3thr)^nhdh1)/(1+(thr/(alpha3*k3thr))^nhdh1)*(k3asa+asa+hs*k3asa/k3hs)*(k3nadph*(1+nadp/k3nadp)+nadph)) + prot*knadph*nadph;
    der(nadph) = -(vm2f*(aspp*nadph-asa*nadp*phos/k2eq)/((k2aspp*(1+asa/k2asa)*(1+phos/k2p)+aspp)*(k2nadph*(1+nadp/k2nadp)+nadph)) + vm3f*(asa*nadph-hs*nadp/k3eq)/((1+(thr/k3thr)^nhdh1)/(1+(thr/(alpha3*k3thr))^nhdh1)*(k3asa+asa+hs*k3asa/k3hs)*(k3nadph*(1+nadp/k3nadp)+nadph)) + prot*knadph*nadph);
    der(adp) = (vm11*(asp*atp-aspp*adp/keqak)/((k11*(1+(thr/k1thr)^nak1)/(1+(thr/(alpha*k1thr))^nak1)+k11*aspp/k1aspp+asp)*(k1atp*(1+adp/k1adp)+atp))+vm13*(asp*atp-aspp*adp/keqak)/((1+(lys/k1lys)^nak3)*(k13*(1+aspp/k13aspp)+asp)*(k13atp*(1+adp/k13adp)+atp))) + vm4f*hs*atp/((1+lys/k4lys)*(atp+k4atp*(1+hs/k4ihs))*(hs+k4hs*(1+thr/k4thr)*(1+atp/k4iatp))) + prot*katpase;
    der(atp) = -((vm11*(asp*atp-aspp*adp/keqak)/((k11*(1+(thr/k1thr)^nak1)/(1+(thr/(alpha*k1thr))^nak1)+k11*aspp/k1aspp+asp)*(k1atp*(1+adp/k1adp)+atp))+vm13*(asp*atp-aspp*adp/keqak)/((1+(lys/k1lys)^nak3)*(k13*(1+aspp/k13aspp)+asp)*(k13atp*(1+adp/k13adp)+atp))) + vm4f*hs*atp/((1+lys/k4lys)*(atp+k4atp*(1+hs/k4ihs))*(hs+k4hs*(1+thr/k4thr)*(1+atp/k4iatp))) + prot*katpase);
    
end BIOMD066;