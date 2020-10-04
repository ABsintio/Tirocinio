within BIOMD612;
class Class_elmt_osteoblast

    input Real elmt_product74;
    input Real elmt_Runx2_synthesis;
    input Real elmt_product71;
    input Real elmt_Bcl2_synthesis;
    input Real elmt_Bax_Bcl2_release;
    input Real elmt_CREB_Runx2_binding;
    input Real elmt_product191;
    input Real elmt_product190;
    input Real elmt_Runx2_degradation;
    input Real elmt_reactant197;
    input Real elmt_Bax_Bcl2_binding;
    input Real elmt_reactant195;
    input Real elmt_reactant194;
    input Real elmt_product196;
    input Real elmt_product199;
    input Real elmt_reactant192;
    input Real elmt_product198;
    input Real elmt_Bcl2_degradation;
    input Real elmt_Ob_m_apoptosis;
    input Real elmt_Runx2_degradation_via_PTH;
    input Real elmt_reactant178;
    input Real elmt_reactant73;
    input Real elmt_reactant70;
    input Real elmt_CREB_inactivation;
    input Real elmt_product182;
    input Real elmt_product180;
    input Real elmt_product201;
    input Real elmt_reactant186;
    input Real elmt_reactant184;
    input Real elmt_reactant183;
    input Real elmt_product185;
    input Real elmt_reactant181;
    input Real elmt_product188;
    input Real elmt_CREB_Runx2_release;
    input Real elmt_CREB_activation;
    input Real elmt_product187;
    input Real elmt_Ob_m_PTH_apoptosis;
    input Real elmt_reactant205;
    input Real elmt_reactant203;
    input Real elmt_reactant189;

    Real elmt_osteoblast(unit = "") "";
    Real elmt_CREB_Runx2_amount(unit = "");
    Real elmt_CREB_Runx2_conc(unit = "");
    Real elmt_CREB_Runx2(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_CREB_P_amount(unit = "");
    Real elmt_CREB_P_conc(unit = "");
    Real elmt_CREB_P(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Runx2_amount(unit = "");
    Real elmt_Runx2_conc(unit = "");
    Real elmt_Runx2(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Bax_Bcl2_amount(unit = "");
    Real elmt_Bax_Bcl2_conc(unit = "");
    Real elmt_Bax_Bcl2(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Bcl2_amount(unit = "");
    Real elmt_Bcl2_conc(unit = "");
    Real elmt_Bcl2(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Bax_amount(unit = "");
    Real elmt_Bax_conc(unit = "");
    Real elmt_Bax(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_CREB_amount(unit = "");
    Real elmt_CREB_conc(unit = "");
    Real elmt_CREB(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_osteoblast = 1.0;
        elmt_CREB_Runx2_amount = 0.0;
        elmt_CREB_P_amount = 0.0;
        elmt_Runx2_amount = 10.0;
        elmt_Bax_Bcl2_amount = 0.0;
        elmt_Bcl2_amount = 0.0;
        elmt_Bax_amount = 100.0;
        elmt_CREB_amount = 100.0;


    equation
        assert(elmt_osteoblast >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_osteoblast) = 0;
        elmt_CREB_Runx2 = elmt_CREB_Runx2_amount;
        elmt_CREB_P = elmt_CREB_P_amount;
        elmt_Runx2 = elmt_Runx2_amount;
        elmt_Bax_Bcl2 = elmt_Bax_Bcl2_amount;
        elmt_Bcl2 = elmt_Bcl2_amount;
        elmt_Bax = elmt_Bax_amount;
        elmt_CREB = elmt_CREB_amount;
        der(elmt_CREB_Runx2_amount) = ((elmt_CREB_Runx2_binding * elmt_product185) + (- (elmt_Bcl2_synthesis * elmt_reactant189)) + (elmt_Bcl2_synthesis * elmt_product190) + (- (elmt_CREB_Runx2_release * elmt_reactant186)));
        der(elmt_CREB_P_amount) = ((- (elmt_CREB_Runx2_binding * elmt_reactant183)) + (elmt_CREB_activation * elmt_product180) + (- (elmt_CREB_inactivation * elmt_reactant181)) + (elmt_CREB_Runx2_release * elmt_product187));
        der(elmt_Runx2_amount) = ((elmt_Runx2_synthesis * elmt_product201) + (- (elmt_CREB_Runx2_binding * elmt_reactant184)) + (- (elmt_Runx2_degradation_via_PTH * elmt_reactant203)) + (- (elmt_Runx2_degradation * elmt_reactant205)) + (elmt_CREB_Runx2_release * elmt_product188));
        der(elmt_Bax_Bcl2_amount) = ((- (elmt_Bax_Bcl2_release * elmt_reactant197)) + (elmt_Bax_Bcl2_binding * elmt_product196));
        der(elmt_Bcl2_amount) = ((elmt_Bax_Bcl2_release * elmt_product199) + (- (elmt_Bax_Bcl2_binding * elmt_reactant195)) + (elmt_Bcl2_synthesis * elmt_product191) + (- (elmt_Bcl2_degradation * elmt_reactant192)));
        der(elmt_Bax_amount) = ((elmt_Bax_Bcl2_release * elmt_product198) + (- (elmt_Bax_Bcl2_binding * elmt_reactant194)) + (elmt_Ob_m_apoptosis * elmt_product71) + (- (elmt_Ob_m_apoptosis * elmt_reactant70)) + (elmt_Ob_m_PTH_apoptosis * elmt_product74) + (- (elmt_Ob_m_PTH_apoptosis * elmt_reactant73)));
        der(elmt_CREB_amount) = ((- (elmt_CREB_activation * elmt_reactant178)) + (elmt_CREB_inactivation * elmt_product182));

    algorithm
        elmt_CREB_Runx2_conc := elmt_CREB_Runx2_amount / elmt_osteoblast;
        elmt_CREB_P_conc := elmt_CREB_P_amount / elmt_osteoblast;
        elmt_Runx2_conc := elmt_Runx2_amount / elmt_osteoblast;
        elmt_Bax_Bcl2_conc := elmt_Bax_Bcl2_amount / elmt_osteoblast;
        elmt_Bcl2_conc := elmt_Bcl2_amount / elmt_osteoblast;
        elmt_Bax_conc := elmt_Bax_amount / elmt_osteoblast;
        elmt_CREB_conc := elmt_CREB_amount / elmt_osteoblast;
end Class_elmt_osteoblast;
