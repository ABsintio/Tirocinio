within BIOMD197;
class Class_elmt_cell

    input Real elmt_reactant2;
    input Real elmt_endo_in_bl;
    input Real elmt_cellular_BSP_binding;
    input Real elmt_reactant6;
    input Real elmt_reactant8;
    input Real elmt_OATP1B3;
    input Real elmt_reactant14;
    input Real elmt_product1;
    input Real elmt_reactant16;
    input Real elmt_endo_ex_bl;
    input Real elmt_product5;
    input Real elmt_endo_ex_ap;
    input Real elmt_cellular_BSP_dissoc;
    input Real elmt_product15;
    input Real elmt_ABCC2;
    input Real elmt_product17;

    Real elmt_cell(unit = "") "intracellular";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_x3_amount(unit = "");
    Real elmt_x3_conc(unit = "");
    Real elmt_x3(unit = "") "free intracellular BSP";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_x4_amount(unit = "");
    Real elmt_x4_conc(unit = "");
    Real elmt_x4(unit = "") "bound intracellular BSP";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_BSP_cell_amount(unit = "");
    Real elmt_BSP_cell_conc(unit = "");
    Real elmt_BSP_cell(unit = "") "intracellular BSP";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    initial equation
        elmt_cell = 1.0;
        elmt_x3_amount = 0.0;
        elmt_x4_amount = 0.0;


    equation
        assert(elmt_cell >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cell) = 0;
        elmt_x3 = elmt_x3_amount;
        elmt_x4 = elmt_x4_amount;
        elmt_BSP_cell = elmt_BSP_cell_amount;
        elmt_BSP_cell_amount = (elmt_x3 + elmt_x4);
        der(elmt_x3_amount) = ((elmt_endo_in_bl * elmt_product5) + (- (elmt_cellular_BSP_binding * elmt_reactant14)) + (- (elmt_endo_ex_ap * elmt_reactant8)) + (elmt_OATP1B3 * elmt_product1) + (elmt_cellular_BSP_dissoc * elmt_product17) + (- (elmt_ABCC2 * elmt_reactant2)) + (- (elmt_endo_ex_bl * elmt_reactant6)));
        der(elmt_x4_amount) = ((elmt_cellular_BSP_binding * elmt_product15) + (- (elmt_cellular_BSP_dissoc * elmt_reactant16)));

    algorithm
        elmt_x3_conc := elmt_x3_amount / elmt_cell;
        elmt_x4_conc := elmt_x4_amount / elmt_cell;
        elmt_BSP_cell_conc := elmt_BSP_cell_amount / elmt_cell;
end Class_elmt_cell;
