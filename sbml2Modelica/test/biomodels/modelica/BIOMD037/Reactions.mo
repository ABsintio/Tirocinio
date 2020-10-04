within BIOMD037;
class Reactions

    input Real elmt_Gluc;
    input Real elmt_compartment;
    input Real elmt_Xi;
    input Real elmt_Pr;
    input Real elmt_preS;
    input Real elmt_V;
    input Real elmt_Xa;
    input Real elmt_S;
    input Real elmt_prepreS;
    input Real elmt_Pfr;
    input Real elmt_Ya;

    Real elmt_Photoreceptor_decay(unit = "") "";
    parameter Real elmt_Photoreceptor_decay_elmt_kd(unit "") = 0.1 "";
    Real elmt_reactant19 "";
    Real elmt_product20 "";
    Real elmt_Transducer_activation(unit = "") "";
    parameter Real elmt_Transducer_activation_elmt_kia(unit "") = 0.1 "";
    Real elmt_reactant4 "";
    Real elmt_product5 "";
    Real elmt_preS_formation(unit = "") "";
    parameter Real elmt_preS_formation_elmt_kx(unit "") = 0.2 "";
    Real elmt_product9 "";
    Real elmt_reactant8 "";
    Real elmt_V_degradation(unit = "") "";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_V_degradation_elmt_kd_v(unit "") = 1.0 "";
    Real elmt_reactant18 "";
    Real elmt_S_degradation(unit = "") "";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_S_degradation_elmt_kd_s(unit "") = 1.0 "";
    Real elmt_reactant17 "";
    Real elmt_S_formation(unit = "") "";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_S_formation_elmt_alpha1(unit "") = 30.0 "";
    Real elmt_product15 "";
    Real elmt_Photoreceptor_activation(unit = "") "";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_Photoreceptor_activation_elmt_IfrSfrPfr(unit "") = 0.1 "";
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_Photoreceptor_inactivation(unit = "") "";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_Photoreceptor_inactivation_elmt_IrSrPr(unit "") = 0.0 "";
    Real elmt_reactant2 "";
    Real elmt_product3 "";
    Real elmt_V_formation(unit = "") "";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_V_formation_elmt_alpha2(unit "") = 50.0 "";
    Real elmt_product16 "";
    Real elmt_Glucose_sensor_inactivation(unit = "") "";
    parameter Real elmt_Glucose_sensor_inactivation_elmt_kG(unit "") = 0.1 "";
    Real elmt_product14 "";
    Real elmt_reactant12 "";
    Real elmt_reactant13 "";
    Real elmt_Transducer_inactivation(unit = "") "";
    parameter Real elmt_Transducer_inactivation_elmt_kai(unit "") = 0.8 "";
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_S_generation(unit = "") "";
    parameter Real elmt_S_generation_elmt_ky(unit "") = 1.0 "";
    Real elmt_product11 "";
    Real elmt_reactant10 "";


    initial equation
        elmt_product9 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product11 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product20 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant17 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product3 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_reactant13 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_reactant19 = 1.0;
        elmt_product16 = 1.0;
        elmt_product15 = 1.0;
        elmt_product14 = 1.0;


    equation
        elmt_Photoreceptor_decay = (elmt_compartment * elmt_Photoreceptor_decay_elmt_kd * elmt_Pr);
        elmt_Transducer_activation = (elmt_Xi * elmt_Transducer_activation_elmt_kia * elmt_Pr * elmt_compartment);
        elmt_preS_formation = (elmt_prepreS * elmt_preS_formation_elmt_kx * elmt_Xa * elmt_compartment);
        elmt_V_degradation = (elmt_compartment * elmt_V * elmt_V_degradation_elmt_kd_v);
        elmt_S_degradation = (elmt_S_degradation_elmt_kd_s * elmt_S * elmt_compartment);
        elmt_S_formation = (elmt_compartment * (elmt_S_formation_elmt_alpha1 / (1.0 + Functions.pow(elmt_V, 3.0))));
        elmt_Photoreceptor_activation = (elmt_compartment * elmt_Pfr * elmt_Photoreceptor_activation_elmt_IfrSfrPfr);
        elmt_Photoreceptor_inactivation = (elmt_Photoreceptor_inactivation_elmt_IrSrPr * elmt_Pr * elmt_compartment);
        elmt_V_formation = (elmt_compartment * (elmt_V_formation_elmt_alpha2 / (1.0 + Functions.pow(elmt_S, 3.0))));
        elmt_Glucose_sensor_inactivation = (elmt_Glucose_sensor_inactivation_elmt_kG * elmt_Ya * elmt_Gluc * elmt_compartment);
        elmt_Transducer_inactivation = (elmt_Transducer_inactivation_elmt_kai * elmt_Xa * elmt_compartment);
        elmt_S_generation = (elmt_preS * elmt_S_generation_elmt_ky * elmt_Ya * elmt_compartment);
        der(elmt_product9) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product11) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product20) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant17) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product3) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_reactant13) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_reactant19) = 0;
        der(elmt_product16) = 0;
        der(elmt_product15) = 0;
        der(elmt_product14) = 0;

end Reactions;
