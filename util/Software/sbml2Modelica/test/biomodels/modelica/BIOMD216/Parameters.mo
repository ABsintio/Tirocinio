within BIOMD216;
class Parameters

    Real elmt_Dex(unit = "") "Dex";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Jp(unit = "") "Jp";
    Real elmt_ICtot(unit = "") "TFtot";
    Real elmt_n(unit = "") "n";
    Real elmt_kcp2d(unit = "") "kcp2d";
    Real elmt_kms(unit = "") "kms";
    Real elmt_J(unit = "") "J";
    Real elmt_kcps(unit = "") "kcps";
    Real elmt_kica(unit = "") "kica";
    Real elmt_chk2c(unit = "") "chk2c";
    Real elmt_ka(unit = "") "ka";
    Real elmt_kicd(unit = "") "kicd";
    Real elmt_kmd(unit = "") "kmd";
    Real elmt_kcpd(unit = "") "kcpd";
    Real elmt_kp2(unit = "") "kp2";
    Real elmt_kd(unit = "") "kd";
    Real elmt_kp1(unit = "") "kp1";
    Real elmt_chk2(unit = "") "chk2";


    initial equation
        elmt_Dex = 0.0;
        elmt_Jp = 0.05;
        elmt_ICtot = 1.0;
        elmt_n = 2.0;
        elmt_kcp2d = 0.0525;
        elmt_kms = 1.0;
        elmt_J = 0.3;
        elmt_kcps = 0.5;
        elmt_kica = 20.0;
        elmt_chk2c = 0.0;
        elmt_ka = 100.0;
        elmt_kicd = 0.01;
        elmt_kmd = 0.1;
        elmt_kcpd = 0.525;
        elmt_kp2 = 0.1;
        elmt_kd = 0.01;
        elmt_kp1 = 10.0;
        elmt_chk2 = 0.0;


    equation
        der(elmt_Dex) = 0;
        der(elmt_Jp) = 0;
        der(elmt_ICtot) = 0;
        der(elmt_n) = 0;
        der(elmt_kcp2d) = 0;
        der(elmt_kms) = 0;
        der(elmt_J) = 0;
        der(elmt_kcps) = 0;
        der(elmt_kica) = 0;
        der(elmt_chk2c) = 0;
        der(elmt_ka) = 0;
        der(elmt_kicd) = 0;
        der(elmt_kmd) = 0;
        der(elmt_kcpd) = 0;
        der(elmt_kp2) = 0;
        der(elmt_kd) = 0;
        der(elmt_kp1) = 0;
        der(elmt_chk2) = 0;

end Parameters;
