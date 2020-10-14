within BIOMD162;
class Class_elmt_ERM

    input Real elmt_reaction1;
    input Real elmt_reaction0;
    input Real elmt_reactant32;
    input Real elmt_reactant22;

    Real elmt_ERM(unit = "m2.0") "ERM";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_h_ERM_conc(unit = "");
    Real elmt_h_ERM_amount(unit = "");
    Real elmt_h_ERM(unit = "") "";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <Compound Name=\"h\"/>
        </VCellInfo>
                              </annotation>"));
    Real elmt_ERDensity_ERM_conc(unit = "");
    Real elmt_ERDensity_ERM_amount(unit = "");
    Real elmt_ERDensity_ERM(unit = "") "";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <Compound Name=\"ERDensity\"/>
        </VCellInfo>
                              </annotation>"));
    Real elmt_ERDensity_D_ERM_conc(unit = "");
    Real elmt_ERDensity_D_ERM_amount(unit = "");
    Real elmt_ERDensity_D_ERM(unit = "") "";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <Compound Name=\"ERDensity_D\"/>
        </VCellInfo>
                              </annotation>"));
    Real elmt_h_D_ERM_conc(unit = "");
    Real elmt_h_D_ERM_amount(unit = "");
    Real elmt_h_D_ERM(unit = "") "";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <Compound Name=\"h_D\"/>
        </VCellInfo>
                              </annotation>"));

    initial equation
        elmt_ERM = 50000.0;
        elmt_h_ERM_conc = 0.8;
        elmt_ERDensity_ERM_conc = 1.0;
        elmt_ERDensity_D_ERM_conc = 1.0;
        elmt_h_D_ERM_conc = 0.8;


    equation
        assert(elmt_ERM >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_ERM) = 0;
        elmt_h_ERM = elmt_h_ERM_conc;
        elmt_ERDensity_ERM = elmt_ERDensity_ERM_conc;
        elmt_ERDensity_D_ERM = elmt_ERDensity_D_ERM_conc;
        elmt_h_D_ERM = elmt_h_D_ERM_conc;
        der(elmt_ERDensity_ERM_amount) = 0;
        der(elmt_ERDensity_D_ERM_amount) = 0;
        der(elmt_h_ERM_amount) = (- (elmt_reaction0 * elmt_reactant32));
        der(elmt_h_D_ERM_amount) = (- (elmt_reaction1 * elmt_reactant22));

    algorithm
        elmt_h_ERM_conc := elmt_h_ERM_amount / elmt_ERM;
        elmt_ERDensity_ERM_conc := elmt_ERDensity_ERM_amount / elmt_ERM;
        elmt_ERDensity_D_ERM_conc := elmt_ERDensity_D_ERM_amount / elmt_ERM;
        elmt_h_D_ERM_conc := elmt_h_D_ERM_amount / elmt_ERM;
end Class_elmt_ERM;
