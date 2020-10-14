within BIOMD372;
class Class_elmt_COMpartment

    input Real elmt_ti;
    input Real elmt_Vi;
    input Real elmt_f5_x3;
    input Real elmt_f2_G;
    input Real elmt_f1_G;
    input Real elmt_f3_G;
    input Real elmt_td;
    input Real elmt_E;
    input Real elmt_tp;
    input Real elmt_Vp;
    input Real elmt_Gin;
    input Real elmt_f4_Ii;

    Real elmt_COMpartment(unit = "") "COMpartment";
    Real elmt_Ii_conc(unit = "");
    Real elmt_Ii_amount(unit = "");
    Real elmt_Ii(unit = "") "Ii";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_G_conc(unit = "");
    Real elmt_G_amount(unit = "");
    Real elmt_G(unit = "") "G";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_x3_conc(unit = "");
    Real elmt_x3_amount(unit = "");
    Real elmt_x3(unit = "") "x3";
    Real elmt_x1_conc(unit = "");
    Real elmt_x1_amount(unit = "");
    Real elmt_x1(unit = "") "x1";
    Real elmt_x2_conc(unit = "");
    Real elmt_x2_amount(unit = "");
    Real elmt_x2(unit = "") "x2";
    Real elmt_Ip_conc(unit = "");
    Real elmt_Ip_amount(unit = "");
    Real elmt_Ip(unit = "") "Ip";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_COMpartment = 1.0;
        elmt_Ii_conc = (243.2865183 / elmt_COMpartment);
        elmt_G_conc = (12342.61665 / elmt_COMpartment);
        elmt_x3_conc = (104.5878705 / elmt_COMpartment);
        elmt_x1_conc = (110.420253 / elmt_COMpartment);
        elmt_x2_conc = (112.7601171 / elmt_COMpartment);
        elmt_Ip_conc = (93.36441699 / elmt_COMpartment);


    equation
        assert(elmt_COMpartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_COMpartment) = 0;
        elmt_Ii = elmt_Ii_conc;
        elmt_G = elmt_G_conc;
        elmt_x3 = elmt_x3_conc;
        elmt_x1 = elmt_x1_conc;
        elmt_x2 = elmt_x2_conc;
        elmt_Ip = elmt_Ip_conc;
        der(elmt_Ii_amount / elmt_COMpartment) = ((elmt_E * ((elmt_Ip / elmt_Vp) - (elmt_Ii / elmt_Vi))) - (elmt_Ii / elmt_ti));
        der(elmt_G_amount / elmt_COMpartment) = (elmt_Gin + elmt_f5_x3 + (- (elmt_f2_G + (elmt_f3_G * elmt_f4_Ii))));
        der(elmt_x3_amount / elmt_COMpartment) = ((3.0 / elmt_td) * (elmt_x2 - elmt_x3));
        der(elmt_x1_amount / elmt_COMpartment) = ((3.0 / elmt_td) * ((elmt_Ip / 1.0) - elmt_x1));
        der(elmt_x2_amount / elmt_COMpartment) = ((3.0 / elmt_td) * (elmt_x1 - elmt_x2));
        der(elmt_Ip_amount / elmt_COMpartment) = (elmt_f1_G - ((elmt_E * ((elmt_Ip / elmt_Vp) - (elmt_Ii / elmt_Vi))) + (elmt_Ip / elmt_tp)));

    algorithm
        elmt_Ii_conc := elmt_Ii_amount / elmt_COMpartment;
        elmt_G_conc := elmt_G_amount / elmt_COMpartment;
        elmt_x3_conc := elmt_x3_amount / elmt_COMpartment;
        elmt_x1_conc := elmt_x1_amount / elmt_COMpartment;
        elmt_x2_conc := elmt_x2_amount / elmt_COMpartment;
        elmt_Ip_conc := elmt_Ip_amount / elmt_COMpartment;
end Class_elmt_COMpartment;
