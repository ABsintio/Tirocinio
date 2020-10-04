within BIOMD013;
class Class_elmt_cytosol

    Real elmt_cytosol(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_x_DHAP_cyt_conc(unit = "");
    Real elmt_x_DHAP_cyt_amount(unit = "");
    Real elmt_x_DHAP_cyt(unit = "") "";
 annotation(Documentation(info="<annotation>
        <jd:display borderType=\"ntRound\" edgeColor=\"0\" edgeThickness=\"1\" fillColor=\"16777215\" iconIndex=\"-1\" selectedEdgeColor=\"255\" x=\"241\" y=\"691\">
          <jd:font fontColor=\"0\" fontName=\"Arial\" fontSize=\"8\"/>
        </jd:display>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_x_Pi_cyt_conc(unit = "");
    Real elmt_x_Pi_cyt_amount(unit = "");
    Real elmt_x_Pi_cyt(unit = "") "";
 annotation(Documentation(info="<annotation>
        <jd:display borderType=\"ntRound\" edgeColor=\"0\" edgeThickness=\"1\" fillColor=\"16777215\" iconIndex=\"-1\" selectedEdgeColor=\"255\" x=\"844\" y=\"589\">
          <jd:font fontColor=\"0\" fontName=\"Arial\" fontSize=\"8\"/>
        </jd:display>
        <jd:listOfShadows>
          <jd:shadow name=\"___x_Pi_cyt_0\" x=\"172\" y=\"569\"/>
        </jd:listOfShadows>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_x_GAP_cyt_conc(unit = "");
    Real elmt_x_GAP_cyt_amount(unit = "");
    Real elmt_x_GAP_cyt(unit = "") "";
 annotation(Documentation(info="<annotation>
        <jd:display borderType=\"ntRound\" edgeColor=\"0\" edgeThickness=\"1\" fillColor=\"16777215\" iconIndex=\"-1\" selectedEdgeColor=\"255\" x=\"458\" y=\"754\">
          <jd:font fontColor=\"0\" fontName=\"Arial\" fontSize=\"8\"/>
        </jd:display>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_x_PGA_cyt_conc(unit = "");
    Real elmt_x_PGA_cyt_amount(unit = "");
    Real elmt_x_PGA_cyt(unit = "") "";
 annotation(Documentation(info="<annotation>
        <jd:display borderType=\"ntRound\" edgeColor=\"0\" edgeThickness=\"1\" fillColor=\"16777215\" iconIndex=\"-1\" selectedEdgeColor=\"255\" x=\"919\" y=\"754\">
          <jd:font fontColor=\"0\" fontName=\"Arial\" fontSize=\"8\"/>
        </jd:display>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_cytosol = 1.0;
        elmt_x_DHAP_cyt_conc = 1.0;
        elmt_x_Pi_cyt_conc = 0.5;
        elmt_x_GAP_cyt_conc = 1.0;
        elmt_x_PGA_cyt_conc = 1.0;


    equation
        assert(elmt_cytosol >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cytosol) = 0;
        elmt_x_DHAP_cyt = elmt_x_DHAP_cyt_conc;
        elmt_x_Pi_cyt = elmt_x_Pi_cyt_conc;
        elmt_x_GAP_cyt = elmt_x_GAP_cyt_conc;
        elmt_x_PGA_cyt = elmt_x_PGA_cyt_conc;
        der(elmt_x_DHAP_cyt_amount) = 0;
        der(elmt_x_Pi_cyt_amount) = 0;
        der(elmt_x_GAP_cyt_amount) = 0;
        der(elmt_x_PGA_cyt_amount) = 0;

    algorithm
        elmt_x_DHAP_cyt_conc := elmt_x_DHAP_cyt_amount / elmt_cytosol;
        elmt_x_Pi_cyt_conc := elmt_x_Pi_cyt_amount / elmt_cytosol;
        elmt_x_GAP_cyt_conc := elmt_x_GAP_cyt_amount / elmt_cytosol;
        elmt_x_PGA_cyt_conc := elmt_x_PGA_cyt_amount / elmt_cytosol;
end Class_elmt_cytosol;
