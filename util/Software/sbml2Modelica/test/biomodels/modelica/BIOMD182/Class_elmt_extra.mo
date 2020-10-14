within BIOMD182;
class Class_elmt_extra

    input Real elmt_iso_binds_BAR_g;
    input Real elmt_reactant58;
    input Real elmt_reactant9;
    input Real elmt_iso_binds_BAR;

    Real elmt_extra(unit = "") "extra";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_iso_extra_conc(unit = "");
    Real elmt_iso_extra_amount(unit = "");
    Real elmt_iso_extra(unit = "") "";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://sourceforge.net/projects/vcell\">
            <Compound Name=\"iso\"/>
          </VCellInfo>
                                </annotation>"));

    initial equation
        elmt_extra = 0.111111111111111;
        elmt_iso_extra_conc = 6020.0;


    equation
        assert(elmt_extra >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_extra) = 0;
        elmt_iso_extra = elmt_iso_extra_conc;
        der(elmt_iso_extra_amount) = ((- (elmt_iso_binds_BAR_g * elmt_reactant58)) + (- (elmt_iso_binds_BAR * elmt_reactant9)));

    algorithm
        elmt_iso_extra_conc := elmt_iso_extra_amount / elmt_extra;
end Class_elmt_extra;
