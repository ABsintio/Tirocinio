within BIOMD202;
class Class_elmt_PM

    input Real elmt_closed_CRAC_channel_deg;
    input Real elmt_product12;
    input Real elmt_reactant14;
    input Real elmt_reactant16;
    input Real elmt_open_CRAC_channel_deg;
    input Real elmt_open_to_closed;
    input Real elmt_Orai1_t;
    input Real elmt_reactant13;
    input Real elmt_open_CRAC_channel_prod;
    input Real elmt_reactant18;
    input Real elmt_close_CRAC_prod;
    input Real elmt_product15;
    input Real elmt_r_hill;
    input Real elmt_product17;

    Real elmt_PM(unit = "") "";
    Real elmt_Oc_conc(unit = "");
    Real elmt_Oc_amount(unit = "");
    Real elmt_Oc(unit = "") "";
    Real elmt_Orai1_conc(unit = "");
    Real elmt_Orai1_amount(unit = "");
    Real elmt_Orai1(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_O_o_conc(unit = "");
    Real elmt_O_o_amount(unit = "");
    Real elmt_O_o(unit = "") "";

    initial equation
        elmt_PM = 1.0;
        elmt_Oc_conc = 0.0;
        elmt_O_o_conc = 0.0;


    equation
        assert(elmt_PM >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_PM) = 0;
        elmt_Oc = elmt_Oc_conc;
        elmt_Orai1 = elmt_Orai1_conc;
        elmt_O_o = elmt_O_o_conc;
        elmt_Orai1_amount = (elmt_Orai1_t - ((elmt_r_hill * elmt_Oc) + (elmt_r_hill * elmt_O_o))) * elmt_PM;
        der(elmt_Oc_amount) = ((- (elmt_closed_CRAC_channel_deg * elmt_reactant13)) + (elmt_open_to_closed * elmt_product17) + (- (elmt_open_CRAC_channel_prod * elmt_reactant14)) + (elmt_close_CRAC_prod * elmt_product12));
        der(elmt_O_o_amount) = ((- (elmt_open_CRAC_channel_deg * elmt_reactant18)) + (- (elmt_open_to_closed * elmt_reactant16)) + (elmt_open_CRAC_channel_prod * elmt_product15));

    algorithm
        elmt_Oc_conc := elmt_Oc_amount / elmt_PM;
        elmt_Orai1_conc := elmt_Orai1_amount / elmt_PM;
        elmt_O_o_conc := elmt_O_o_amount / elmt_PM;
end Class_elmt_PM;
