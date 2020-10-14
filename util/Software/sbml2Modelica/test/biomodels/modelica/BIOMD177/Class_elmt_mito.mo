within BIOMD177;
class Class_elmt_mito

    input Real elmt_product62;
    input Real elmt_reactant63;
    input Real elmt_PDH;
    input Real elmt_PYR_shut;

    Real elmt_mito(unit = "") "mitochondrion";
 annotation(Documentation(info="<annotation>
      <jd:display>
        <jd:boundingBox h=\"190\" w=\"340\" x=\"217\" y=\"866\"/>
      </jd:display>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_CO2mito_conc(unit = "");
    Real elmt_CO2mito_amount(unit = "");
    Real elmt_CO2mito(unit = "") "";
 annotation(Documentation(info="<annotation>
      <jd:display borderType=\"ntRound\" edgeColor=\"0\" edgeThickness=\"1\" fillColor=\"16744576\" selectedEdgeColor=\"255\" x=\"291\" y=\"982\">
        <jd:font fontColor=\"0\" fontName=\"Arial\" fontSize=\"8\"/>
      </jd:display>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_AcCoA_conc(unit = "");
    Real elmt_AcCoA_amount(unit = "");
    Real elmt_AcCoA(unit = "") "";
 annotation(Documentation(info="<annotation>
      <jd:display borderType=\"ntRound\" edgeColor=\"0\" edgeThickness=\"1\" fillColor=\"16744576\" selectedEdgeColor=\"255\" x=\"273\" y=\"908\">
        <jd:font fontColor=\"0\" fontName=\"Arial\" fontSize=\"8\"/>
      </jd:display>
    </annotation>"));
    Real elmt_PYRmito_conc(unit = "");
    Real elmt_PYRmito_amount(unit = "");
    Real elmt_PYRmito(unit = "") "";
 annotation(Documentation(info="<annotation>
      <jd:display borderType=\"ntRound\" edgeColor=\"0\" edgeThickness=\"1\" fillColor=\"15728639\" selectedEdgeColor=\"255\" x=\"384\" y=\"934\">
        <jd:font fontColor=\"0\" fontName=\"Arial\" fontSize=\"8\"/>
      </jd:display>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    initial equation
        elmt_mito = 1.0;
        elmt_CO2mito_conc = 1.0;
        elmt_AcCoA_conc = 1.0;
        elmt_PYRmito_conc = 0.0;


    equation
        assert(elmt_mito >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_mito) = 0;
        elmt_CO2mito = elmt_CO2mito_conc;
        elmt_AcCoA = elmt_AcCoA_conc;
        elmt_PYRmito = elmt_PYRmito_conc;
        der(elmt_CO2mito_amount) = 0;
        der(elmt_AcCoA_amount) = 0;
        der(elmt_PYRmito_amount) = ((- (elmt_PDH * elmt_reactant63)) + (elmt_PYR_shut * elmt_product62));

    algorithm
        elmt_CO2mito_conc := elmt_CO2mito_amount / elmt_mito;
        elmt_AcCoA_conc := elmt_AcCoA_amount / elmt_mito;
        elmt_PYRmito_conc := elmt_PYRmito_amount / elmt_mito;
end Class_elmt_mito;
