within BIOMD409;
class Parameters

    input Real elmt_Clb2;

    Real elmt_kadpolo(unit = "") "kadpolo";
    Real elmt_kadcdh(unit = "") "kadcdh";
    Real elmt_kssecurin(unit = "") "kssecurin";
    Real elmt_kicdc15(unit = "") "kicdc15";
    Real elmt_kdcdh(unit = "") "kdcdh";
    Real elmt_kspolo(unit = "") "kspolo";
    Real elmt_kadclb2(unit = "") "kadclb2";
    Real elmt_Inh(unit = "") "Inh";
    Real elmt_kipolo(unit = "") "kipolo";
    Real elmt_lamen(unit = "") "lamen";
    Real elmt_ksclb2(unit = "") "ksclb2";
    Real elmt_kad(unit = "") "kad";
    Real elmt_kapolo(unit = "") "kapolo";
    Real elmt_kdcdc20(unit = "") "kdcdc20";
    Real elmt_Jtem1(unit = "") "Jtem1";
    Real elmt_Cdh1T(unit = "") "Cdh1T";
    Real elmt_lasecurin(unit = "") "lasecurin";
    Real elmt_kdsecurin(unit = "") "kdsecurin";
    Real elmt_ldmen(unit = "") "ldmen";
    Real elmt_katem(unit = "") "katem";
    Real elmt_kapcdh(unit = "") "kapcdh";
    Real elmt_Net1T(unit = "") "Net1T";
    Real elmt_kap(unit = "") "kap";
    Real elmt_kaatem(unit = "") "kaatem";
    Real elmt_kitem(unit = "") "kitem";
    Real elmt_kadcdc20(unit = "") "kadcdc20";
    Real elmt_kacdc15(unit = "") "kacdc15";
    Real elmt_Jcdc15(unit = "") "Jcdc15";
    Real elmt_Tem1T(unit = "") "Tem1T";
    Real elmt_kaicdc15(unit = "") "kaicdc15";
    Real elmt_PP2AT(unit = "") "PP2AT";
    Real elmt_kscdc20(unit = "") "kscdc20";
    Real elmt_kaitem(unit = "") "kaitem";
    Real elmt_lanet(unit = "") "lanet";
    Real elmt_kadsecurin(unit = "") "kadsecurin";
    Real elmt_ksseparase(unit = "") "ksseparase";
    Real elmt_kaacdc15(unit = "") "kaacdc15";
    Real elmt_Cdk(unit = "") "Cdk activity";
    Real elmt_kp(unit = "") "kp";
    Real elmt_kaapolo(unit = "") "kaapolo";
    Real elmt_Cdc15T(unit = "") "Cdc15T";
    Real elmt_kdseparase(unit = "") "kdseparase";
    Real elmt_Jnet(unit = "") "Jnet";
    Real elmt_kdpolo(unit = "") "kdpolo";
    Real elmt_Jpolo(unit = "") "Jpolo";
    Real elmt_Cdc14T(unit = "") "Cdc14T";
    Real elmt_ki(unit = "") "ki";
    Real elmt_kdclb2(unit = "") "kdclb2";
    Real elmt_Jcdh(unit = "") "Jcdh";
    Real elmt_ldsecurin(unit = "") "ldsecurin";
    Real elmt_kaadclb2(unit = "") "kaadclb2";
    Real elmt_kd(unit = "") "kd";
    Real elmt_ldnet(unit = "") "ldnet";
    Real elmt_kpp(unit = "") "kpp";


    initial equation
        elmt_kadpolo = 0.25;
        elmt_kadcdh = 1.0;
        elmt_kssecurin = 0.03;
        elmt_kicdc15 = 0.0;
        elmt_kdcdh = 0.01;
        elmt_kspolo = 0.01;
        elmt_kadclb2 = 0.2;
        elmt_Inh = 0.0;
        elmt_kipolo = 0.1;
        elmt_lamen = 10.0;
        elmt_ksclb2 = 0.03;
        elmt_kad = 0.1;
        elmt_kapolo = 0.0;
        elmt_kdcdc20 = 0.05;
        elmt_Jtem1 = 0.005;
        elmt_Cdh1T = 1.0;
        elmt_lasecurin = 500.0;
        elmt_kdsecurin = 0.05;
        elmt_ldmen = 0.1;
        elmt_katem = 0.0;
        elmt_kapcdh = 1.0;
        elmt_Net1T = 1.0;
        elmt_kap = 2.0;
        elmt_kaatem = 0.5;
        elmt_kitem = 0.1;
        elmt_kadcdc20 = 2.0;
        elmt_kacdc15 = 0.02;
        elmt_Jcdc15 = 0.2;
        elmt_Tem1T = 1.0;
        elmt_kaicdc15 = 0.2;
        elmt_PP2AT = 1.0;
        elmt_kscdc20 = 0.015;
        elmt_kaitem = 1.0;
        elmt_lanet = 500.0;
        elmt_kadsecurin = 2.0;
        elmt_ksseparase = 0.001;
        elmt_kaacdc15 = 0.5;
        elmt_kp = 0.4;
        elmt_kaapolo = 0.5;
        elmt_Cdc15T = 1.0;
        elmt_kdseparase = 0.004;
        elmt_Jnet = 0.2;
        elmt_kdpolo = 0.01;
        elmt_Jpolo = 0.25;
        elmt_Cdc14T = 0.5;
        elmt_ki = 20.0;
        elmt_kdclb2 = 0.03;
        elmt_Jcdh = 0.0015;
        elmt_ldsecurin = 1.0;
        elmt_kaadclb2 = 2.0;
        elmt_kd = 0.45;
        elmt_ldnet = 1.0;
        elmt_kpp = 0.1;


    equation
        der(elmt_kadpolo) = 0;
        der(elmt_kadcdh) = 0;
        der(elmt_kssecurin) = 0;
        der(elmt_kicdc15) = 0;
        der(elmt_kdcdh) = 0;
        der(elmt_kspolo) = 0;
        der(elmt_kadclb2) = 0;
        der(elmt_Inh) = 0;
        der(elmt_kipolo) = 0;
        der(elmt_lamen) = 0;
        der(elmt_ksclb2) = 0;
        der(elmt_kad) = 0;
        der(elmt_kapolo) = 0;
        der(elmt_kdcdc20) = 0;
        der(elmt_Jtem1) = 0;
        der(elmt_Cdh1T) = 0;
        der(elmt_lasecurin) = 0;
        der(elmt_kdsecurin) = 0;
        der(elmt_ldmen) = 0;
        der(elmt_katem) = 0;
        der(elmt_kapcdh) = 0;
        der(elmt_Net1T) = 0;
        der(elmt_kap) = 0;
        der(elmt_kaatem) = 0;
        der(elmt_kitem) = 0;
        der(elmt_kadcdc20) = 0;
        der(elmt_kacdc15) = 0;
        der(elmt_Jcdc15) = 0;
        der(elmt_Tem1T) = 0;
        der(elmt_kaicdc15) = 0;
        der(elmt_PP2AT) = 0;
        der(elmt_kscdc20) = 0;
        der(elmt_kaitem) = 0;
        der(elmt_lanet) = 0;
        der(elmt_kadsecurin) = 0;
        der(elmt_ksseparase) = 0;
        der(elmt_kaacdc15) = 0;
        elmt_Cdk = (elmt_Clb2 / (1.0 + elmt_Inh));
        der(elmt_kp) = 0;
        der(elmt_kaapolo) = 0;
        der(elmt_Cdc15T) = 0;
        der(elmt_kdseparase) = 0;
        der(elmt_Jnet) = 0;
        der(elmt_kdpolo) = 0;
        der(elmt_Jpolo) = 0;
        der(elmt_Cdc14T) = 0;
        der(elmt_ki) = 0;
        der(elmt_kdclb2) = 0;
        der(elmt_Jcdh) = 0;
        der(elmt_ldsecurin) = 0;
        der(elmt_kaadclb2) = 0;
        der(elmt_kd) = 0;
        der(elmt_ldnet) = 0;
        der(elmt_kpp) = 0;

end Parameters;
