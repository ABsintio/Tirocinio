within BIOMD058;
class Reactions

    input Real elmt_compartment;
    input Real elmt_Phi3_c2;
    input Real elmt_Phi2_c1;
    input Real elmt_c1;
    input Real elmt_Phi3_c1;
    input Real elmt_h1;
    input Real elmt_h2;
    input Real elmt_Phi1_c1;
    input Real elmt_Phi1_c2;
    input Real elmt_Phi2_c2;
    input Real elmt_Phi_minus1_c1;
    input Real elmt_c2;
    input Real elmt_Phi_minus1_c2;

    Real elmt_Jpump_Cell1(unit = "") "ATPase pump mediated Ca efflux Cell1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_Jpump_Cell1_elmt_Kp(unit "") = 0.18 "";
    parameter Real elmt_Jpump_Cell1_elmt_Vp(unit "") = 1.2 "";
    Real elmt_reactant1 "";
    Real elmt_Jpump_Cell2(unit = "") "ATPase pump mediated Ca efflux Cell2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_Jpump_Cell2_elmt_Kp(unit "") = 0.18 "";
    parameter Real elmt_Jpump_Cell2_elmt_Vp(unit "") = 1.2 "";
    Real elmt_reactant6 "";
    Real elmt_diffusion(unit = "") "Diffusion of Ca between cells";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_diffusion_elmt_D(unit "") = 0.01 "";
    Real elmt_product11 "";
    Real elmt_reactant10 "";
    Real elmt_Jleak_Cell2(unit = "") "IP3R independent Ca release Cell2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_Jleak_Cell2_elmt_Jleak(unit "") = 0.2 "";
    Real elmt_product7 "";
    Real elmt_Jleak_Cell1(unit = "") "IP3R independent Ca release Cell1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_Jleak_Cell1_elmt_Jleak(unit "") = 0.2 "";
    Real elmt_product2 "";
    Real elmt_Inactivated_to_S_Cell1(unit = "") "Inactivated to Shut state transition Cell1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product3 "";
    Real elmt_Jreceptor_Cell2(unit = "") "IP3R mediated Ca release Cell2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_Jreceptor_Cell2_elmt_p(unit "") = 0.2778 "";
    parameter Real elmt_Jreceptor_Cell2_elmt_kf(unit "") = 28.0 "";
    Real elmt_product5 "";
    Real elmt_Inactivated_to_S_Cell2(unit = "") "Inactivated to Shut state transition Cell2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product8 "";
    Real elmt_Open_to_Inactivated_Cell2(unit = "") "Open to Inactivated state transition Cell2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_Open_to_Inactivated_Cell2_elmt_p(unit "") = 0.2778 "";
    Real elmt_reactant9 "";
    Real elmt_Jreceptor_Cell1(unit = "") "IP3R mediated Ca release Cell1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_Jreceptor_Cell1_elmt_p(unit "") = 0.2778 "";
    parameter Real elmt_Jreceptor_Cell1_elmt_kf(unit "") = 28.0 "";
    Real elmt_product0 "";
    Real elmt_Open_to_Inactivated_Cell1(unit = "") "Open to Inactivated state transition Cell1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_Open_to_Inactivated_Cell1_elmt_p(unit "") = 0.2778 "";
    Real elmt_reactant4 "";


    initial equation
        elmt_reactant1 = 1.0;
        elmt_product8 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product11 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product0 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_product5 = 1.0;
        elmt_product3 = 1.0;
        elmt_product2 = 1.0;


    equation
        elmt_Jpump_Cell1 = (elmt_compartment * ((elmt_Jpump_Cell1_elmt_Vp * Functions.pow(elmt_c1, 2.0)) / (Functions.pow(elmt_Jpump_Cell1_elmt_Kp, 2.0) + Functions.pow(elmt_c1, 2.0))));
        elmt_Jpump_Cell2 = ((elmt_compartment * elmt_Jpump_Cell2_elmt_Vp * Functions.pow(elmt_c2, 2.0)) / (Functions.pow(elmt_Jpump_Cell2_elmt_Kp, 2.0) + Functions.pow(elmt_c2, 2.0)));
        elmt_diffusion = (elmt_compartment * elmt_diffusion_elmt_D * (elmt_c2 - elmt_c1));
        elmt_Jleak_Cell2 = (elmt_compartment * elmt_Jleak_Cell2_elmt_Jleak);
        elmt_Jleak_Cell1 = (elmt_compartment * elmt_Jleak_Cell1_elmt_Jleak);
        elmt_Inactivated_to_S_Cell1 = (elmt_compartment * elmt_Phi3_c1 * (1.0 - elmt_h1));
        elmt_Jreceptor_Cell2 = (elmt_compartment * elmt_Jreceptor_Cell2_elmt_kf * Functions.pow(((elmt_Jreceptor_Cell2_elmt_p * elmt_h2 * elmt_Phi1_c2) / ((elmt_Phi1_c2 * elmt_Jreceptor_Cell2_elmt_p) + elmt_Phi_minus1_c2)), 4.0));
        elmt_Inactivated_to_S_Cell2 = (elmt_compartment * elmt_Phi3_c2 * (1.0 - elmt_h2));
        elmt_Open_to_Inactivated_Cell2 = ((elmt_compartment * elmt_Phi1_c2 * elmt_Phi2_c2 * elmt_h2 * elmt_Open_to_Inactivated_Cell2_elmt_p) / ((elmt_Phi1_c2 * elmt_Open_to_Inactivated_Cell2_elmt_p) + elmt_Phi_minus1_c2));
        elmt_Jreceptor_Cell1 = (elmt_compartment * elmt_Jreceptor_Cell1_elmt_kf * Functions.pow(((elmt_Jreceptor_Cell1_elmt_p * elmt_h1 * elmt_Phi1_c1) / ((elmt_Phi1_c1 * elmt_Jreceptor_Cell1_elmt_p) + elmt_Phi_minus1_c1)), 4.0));
        elmt_Open_to_Inactivated_Cell1 = ((elmt_compartment * elmt_Phi1_c1 * elmt_Phi2_c1 * elmt_h1 * elmt_Open_to_Inactivated_Cell1_elmt_p) / ((elmt_Phi1_c1 * elmt_Open_to_Inactivated_Cell1_elmt_p) + elmt_Phi_minus1_c1));
        der(elmt_reactant1) = 0;
        der(elmt_product8) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product11) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product0) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_product5) = 0;
        der(elmt_product3) = 0;
        der(elmt_product2) = 0;

end Reactions;
