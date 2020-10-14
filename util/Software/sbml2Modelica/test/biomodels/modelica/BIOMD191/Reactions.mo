within BIOMD191;
class Reactions

    input Real elmt_ARGin;
    input Real elmt_ARGex;
    input Real elmt_cytosol;
    input Real elmt_ORN;
    input Real elmt_extracellular;

    Real elmt_Ornithine_efflux(unit = "") "Ornithine efflux";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_Ornithine_efflux_elmt_Kmhat(unit "m-3.0.") = 70.0 "";
    parameter Real elmt_Ornithine_efflux_elmt_Kiornhat(unit "m-3.0.") = 360.0 "";
    parameter Real elmt_Ornithine_efflux_elmt_Vmaxeffllat(unit "m-3.0..s-1.0") = 420.0 "";
    parameter Real elmt_Ornithine_efflux_elmt_Kmlat(unit "m-3.0.") = 847.0 "";
    parameter Real elmt_Ornithine_efflux_elmt_Kmeffllat(unit "m-3.0.") = 847.0 "";
    parameter Real elmt_Ornithine_efflux_elmt_Vmaxefflhat(unit "m-3.0..s-1.0") = 160.5 "";
    Real elmt_reactant4 "";
    Real elmt_NOS(unit = "") "Nitric oxide synthase";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_NOS_elmt_Kmnos1(unit "m-3.0.") = 16.0 "";
    parameter Real elmt_NOS_elmt_Vmaxnos1(unit "m-3.0..s-1.0") = 1.33 "";
    Real elmt_reactant5 "";
    Real elmt_Arginine_transport(unit = "") "Arginine transport";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_Arginine_transport_elmt_Kmhat(unit "m-3.0.") = 70.0 "";
    parameter Real elmt_Arginine_transport_elmt_Vmaxhat(unit "m-3.0.") = 160.5 "";
    parameter Real elmt_Arginine_transport_elmt_Kiornhat(unit "m-3.0.") = 360.0 "";
    parameter Real elmt_Arginine_transport_elmt_Kmlat(unit "m-3.0.") = 847.0 "";
    parameter Real elmt_Arginine_transport_elmt_Vmaxlat(unit "m-3.0..s-1.0") = 420.0 "";
    Real elmt_reactant2 "";
    Real elmt_product3 "";
    Real elmt_Arginase(unit = "") "Arginase";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_Arginase_elmt_Vmaxarg(unit "m-3.0..s-1.0") = 110.0 "";
    parameter Real elmt_Arginase_elmt_Kmarg(unit "m-3.0.") = 1500.0 "";
    parameter Real elmt_Arginase_elmt_Kioarg(unit "m-3.0.") = 1000.0 "";
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_ODC(unit = "") "Ornithine decarboxylase";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_ODC_elmt_Kmodc(unit "m-3.0.") = 90.0 "";
    parameter Real elmt_ODC_elmt_Vmaxodc(unit "m-3.0..s-1.0") = 0.013 "";
    Real elmt_reactant6 "";


    initial equation
        elmt_reactant2 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_product1 = 1.0;
        elmt_product3 = 1.0;
        elmt_reactant0 = 1.0;


    equation
        elmt_Ornithine_efflux = (elmt_cytosol * (((elmt_Ornithine_efflux_elmt_Vmaxefflhat / (1.0 + (elmt_ARGex / elmt_Ornithine_efflux_elmt_Kmhat))) * (elmt_ORN / ((elmt_Ornithine_efflux_elmt_Kiornhat * (1.0 + (elmt_ARGin / elmt_Ornithine_efflux_elmt_Kmhat))) + elmt_ORN))) + ((elmt_Ornithine_efflux_elmt_Vmaxeffllat / (1.0 + (elmt_ARGex / elmt_Ornithine_efflux_elmt_Kmlat))) * (elmt_ORN / ((elmt_Ornithine_efflux_elmt_Kmeffllat * (1.0 + (elmt_ARGin / elmt_Ornithine_efflux_elmt_Kmlat))) + elmt_ORN)))));
        elmt_NOS = (elmt_cytosol * ((elmt_NOS_elmt_Vmaxnos1 * elmt_ARGin) / (elmt_NOS_elmt_Kmnos1 + elmt_ARGin)));
        elmt_Arginine_transport = (elmt_extracellular * (((elmt_ARGex / (elmt_Arginine_transport_elmt_Kmhat + elmt_ARGex)) * (elmt_Arginine_transport_elmt_Vmaxhat / (1.0 + (elmt_ORN / elmt_Arginine_transport_elmt_Kiornhat) + (elmt_ARGin / elmt_Arginine_transport_elmt_Kmhat)))) + ((elmt_ARGex / (elmt_Arginine_transport_elmt_Kmlat + elmt_ARGex)) * (elmt_Arginine_transport_elmt_Vmaxlat / (1.0 + (elmt_ORN / elmt_Arginine_transport_elmt_Kiornhat) + (elmt_ARGin / elmt_Arginine_transport_elmt_Kmlat))))));
        elmt_Arginase = (elmt_cytosol * ((elmt_Arginase_elmt_Vmaxarg * elmt_ARGin) / ((elmt_Arginase_elmt_Kmarg * (1.0 + (elmt_ORN / elmt_Arginase_elmt_Kioarg))) + elmt_ARGin)));
        elmt_ODC = (elmt_cytosol * ((elmt_ODC_elmt_Vmaxodc * elmt_ORN) / (elmt_ODC_elmt_Kmodc + elmt_ORN)));
        der(elmt_reactant2) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_product1) = 0;
        der(elmt_product3) = 0;
        der(elmt_reactant0) = 0;

end Reactions;
