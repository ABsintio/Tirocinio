within BIOMD537;
class Class_elmt_mw8fbcbf3b_47d8_4adc_8ad4_f9fc547d3e87

    input Real elmt_product99;
    input Real elmt_mwdf4ba845_7271_4ada_b43f_fdac83df3b5c;

    Real elmt_mw8fbcbf3b_47d8_4adc_8ad4_f9fc547d3e87(unit = "") "peripheral";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_mwbc2f5464_81e5_43fd_8b39_f5a2756af72f_conc(unit = "");
    Real elmt_mwbc2f5464_81e5_43fd_8b39_f5a2756af72f_amount(unit = "");
    Real elmt_mwbc2f5464_81e5_43fd_8b39_f5a2756af72f(unit = "") "Ab";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_mw8fbcbf3b_47d8_4adc_8ad4_f9fc547d3e87 = 1.0;
        elmt_mwbc2f5464_81e5_43fd_8b39_f5a2756af72f_conc = 1.67920947537896E-29;


    equation
        assert(elmt_mw8fbcbf3b_47d8_4adc_8ad4_f9fc547d3e87 >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_mw8fbcbf3b_47d8_4adc_8ad4_f9fc547d3e87) = 0;
        elmt_mwbc2f5464_81e5_43fd_8b39_f5a2756af72f = elmt_mwbc2f5464_81e5_43fd_8b39_f5a2756af72f_conc;
        der(elmt_mwbc2f5464_81e5_43fd_8b39_f5a2756af72f_amount) = (elmt_mwdf4ba845_7271_4ada_b43f_fdac83df3b5c * elmt_product99);

    algorithm
        elmt_mwbc2f5464_81e5_43fd_8b39_f5a2756af72f_conc := elmt_mwbc2f5464_81e5_43fd_8b39_f5a2756af72f_amount / elmt_mw8fbcbf3b_47d8_4adc_8ad4_f9fc547d3e87;
end Class_elmt_mw8fbcbf3b_47d8_4adc_8ad4_f9fc547d3e87;
