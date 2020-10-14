within BIOMD601;
class Class_elmt_mw0dac359a_a4cd_40bf_97a0_45006cef2a7c

    input Real elmt_reactant4;
    input Real elmt_mw18c30692_65ff_4c7a_b820_079f8ddd9b33;
    input Real elmt_mw97ca2b6b_8c30_48ef_80cb_5ce4ebaa420f;
    input Real elmt_parameter_26;
    input Real elmt_parameter_14;
    input Real elmt_product2;

    Real elmt_mw0dac359a_a4cd_40bf_97a0_45006cef2a7c(unit = "") "SR";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_mwd805cc43_4a96_472f_a894_c119a6aa895f_conc(unit = "");
    Real elmt_mwd805cc43_4a96_472f_a894_c119a6aa895f_amount(unit = "");
    Real elmt_mwd805cc43_4a96_472f_a894_c119a6aa895f(unit = "") "Ca_SR_Total";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_mw447078ee_8bc8_4358_abcd_ade10dba93b0_conc(unit = "");
    Real elmt_mw447078ee_8bc8_4358_abcd_ade10dba93b0_amount(unit = "");
    Real elmt_mw447078ee_8bc8_4358_abcd_ade10dba93b0(unit = "") "Ca_SR";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_mw0dac359a_a4cd_40bf_97a0_45006cef2a7c = 0.052;
        elmt_mwd805cc43_4a96_472f_a894_c119a6aa895f_conc = (0.00165 / elmt_mw0dac359a_a4cd_40bf_97a0_45006cef2a7c);


    equation
        assert(elmt_mw0dac359a_a4cd_40bf_97a0_45006cef2a7c >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_mw0dac359a_a4cd_40bf_97a0_45006cef2a7c) = 0;
        elmt_mwd805cc43_4a96_472f_a894_c119a6aa895f = elmt_mwd805cc43_4a96_472f_a894_c119a6aa895f_conc;
        elmt_mw447078ee_8bc8_4358_abcd_ade10dba93b0 = elmt_mw447078ee_8bc8_4358_abcd_ade10dba93b0_conc;
        elmt_mw447078ee_8bc8_4358_abcd_ade10dba93b0_amount = ((elmt_parameter_26 - Functions.pow((Functions.pow(elmt_parameter_26, 2.0) - (4.0 * elmt_mwd805cc43_4a96_472f_a894_c119a6aa895f * elmt_parameter_14)), (1.0 / 2.0))) / 2.0) * elmt_mw0dac359a_a4cd_40bf_97a0_45006cef2a7c;
        der(elmt_mwd805cc43_4a96_472f_a894_c119a6aa895f_amount) = ((- (elmt_mw18c30692_65ff_4c7a_b820_079f8ddd9b33 * elmt_reactant4)) + (elmt_mw97ca2b6b_8c30_48ef_80cb_5ce4ebaa420f * elmt_product2));

    algorithm
        elmt_mwd805cc43_4a96_472f_a894_c119a6aa895f_conc := elmt_mwd805cc43_4a96_472f_a894_c119a6aa895f_amount / elmt_mw0dac359a_a4cd_40bf_97a0_45006cef2a7c;
        elmt_mw447078ee_8bc8_4358_abcd_ade10dba93b0_conc := elmt_mw447078ee_8bc8_4358_abcd_ade10dba93b0_amount / elmt_mw0dac359a_a4cd_40bf_97a0_45006cef2a7c;
end Class_elmt_mw0dac359a_a4cd_40bf_97a0_45006cef2a7c;
