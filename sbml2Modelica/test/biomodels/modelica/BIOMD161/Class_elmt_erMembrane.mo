within BIOMD161;
class Class_elmt_erMembrane

    input Real elmt_Ca_binds_IP3R;
    input Real elmt_product84;
    input Real elmt_reaction2;
    input Real elmt_reactant82;
    input Real elmt_product79;
    input Real elmt_reactant77;

    Real elmt_erMembrane(unit = "m2.0") "erMembrane";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_ER_erMembrane_conc(unit = "");
    Real elmt_ER_erMembrane_amount(unit = "");
    Real elmt_ER_erMembrane(unit = "") "";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <Compound Name=\"ER\"/>
      </VCellInfo>
                            </annotation>"));
    Real elmt_serca_conc(unit = "");
    Real elmt_serca_amount(unit = "");
    Real elmt_serca(unit = "") "";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <Compound Name=\"SERCA\"/>
      </VCellInfo>
                            </annotation>"));
    Real elmt_Ract_conc(unit = "");
    Real elmt_Ract_amount(unit = "");
    Real elmt_Ract(unit = "") "";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <Compound Name=\"IP3ReceptorCalciumActivationSiteUnbound\"/>
      </VCellInfo>
                            </annotation>"));
    Real elmt_RinhCa_conc(unit = "");
    Real elmt_RinhCa_amount(unit = "");
    Real elmt_RinhCa(unit = "") "";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <Compound Name=\"IP3ReceptorCalciumInhibitionSiteBound\"/>
      </VCellInfo>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_RactCa_conc(unit = "");
    Real elmt_RactCa_amount(unit = "");
    Real elmt_RactCa(unit = "") "";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <Compound Name=\"IP3ReceptorCalciumActivationSiteBound\"/>
      </VCellInfo>
                            </annotation>"));
    Real elmt_Rinh_conc(unit = "");
    Real elmt_Rinh_amount(unit = "");
    Real elmt_Rinh(unit = "") "";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <Compound Name=\"IP3ReceptorCalciumInhibitionSiteUnbound\"/>
      </VCellInfo>
                            </annotation>"));

    initial equation
        elmt_erMembrane = 0.0456;
        elmt_ER_erMembrane_conc = 2.0;
        elmt_serca_conc = 45.0;
        elmt_Ract_conc = 9.056;
        elmt_RinhCa_conc = 3.5375;
        elmt_RactCa_conc = 2.264;
        elmt_Rinh_conc = 7.7825;


    equation
        assert(elmt_erMembrane >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_erMembrane) = 0;
        elmt_ER_erMembrane = elmt_ER_erMembrane_conc;
        elmt_serca = elmt_serca_conc;
        elmt_Ract = elmt_Ract_conc;
        elmt_RinhCa = elmt_RinhCa_conc;
        elmt_RactCa = elmt_RactCa_conc;
        elmt_Rinh = elmt_Rinh_conc;
        der(elmt_ER_erMembrane_amount) = 0;
        der(elmt_serca_amount) = 0;
        der(elmt_Ract_amount) = (- (elmt_Ca_binds_IP3R * elmt_reactant82));
        der(elmt_RinhCa_amount) = (elmt_reaction2 * elmt_product79);
        der(elmt_RactCa_amount) = (elmt_Ca_binds_IP3R * elmt_product84);
        der(elmt_Rinh_amount) = (- (elmt_reaction2 * elmt_reactant77));

    algorithm
        elmt_ER_erMembrane_conc := elmt_ER_erMembrane_amount / elmt_erMembrane;
        elmt_serca_conc := elmt_serca_amount / elmt_erMembrane;
        elmt_Ract_conc := elmt_Ract_amount / elmt_erMembrane;
        elmt_RinhCa_conc := elmt_RinhCa_amount / elmt_erMembrane;
        elmt_RactCa_conc := elmt_RactCa_amount / elmt_erMembrane;
        elmt_Rinh_conc := elmt_Rinh_amount / elmt_erMembrane;
end Class_elmt_erMembrane;
