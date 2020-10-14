within BIOMD197;
class Class_elmt_apical

    input Real elmt_product9;
    input Real elmt_paracell_transp;
    input Real elmt_endo_ex_ap;
    input Real elmt_x3;
    input Real elmt_ABCC2;
    input Real elmt_x4;
    input Real elmt_x1;
    input Real elmt_x2;
    input Real elmt_product19;
    input Real elmt_product3;

    Real elmt_apical(unit = "") "apical extracellular space";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_BSP_tot_amount(unit = "");
    Real elmt_BSP_tot_conc(unit = "");
    Real elmt_BSP_tot(unit = "") "total BSP";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_x5_amount(unit = "");
    Real elmt_x5_conc(unit = "");
    Real elmt_x5(unit = "") "apical BSP";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    initial equation
        elmt_apical = 1.5;
        elmt_x5_amount = 0.0;


    equation
        assert(elmt_apical >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_apical) = 0;
        elmt_BSP_tot = elmt_BSP_tot_amount;
        elmt_x5 = elmt_x5_amount;
        elmt_BSP_tot_amount = (elmt_x1 + elmt_x2 + elmt_x3 + elmt_x4 + elmt_x5);
        der(elmt_x5_amount) = ((elmt_paracell_transp * elmt_product19) + (elmt_endo_ex_ap * elmt_product9) + (elmt_ABCC2 * elmt_product3));

    algorithm
        elmt_BSP_tot_conc := elmt_BSP_tot_amount / elmt_apical;
        elmt_x5_conc := elmt_x5_amount / elmt_apical;
end Class_elmt_apical;
