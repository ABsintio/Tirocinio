within BIOMD197;
model MDCKII_Transport "Bartholome2007_MDCKII" annotation(Documentation(info="<annotation>
  <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
  </rdf:RDF>
</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell elmt_cell;
    Class_elmt_apical elmt_apical;
    Class_elmt_basolat elmt_basolat;

    equation
        Reacs.elmt_p5 = Params.elmt_p5;
        Reacs.elmt_p6 = Params.elmt_p6;
        Reacs.elmt_p3 = Params.elmt_p3;
        Reacs.elmt_p4 = Params.elmt_p4;
        Reacs.elmt_p1 = Params.elmt_p1;
        Reacs.elmt_p2 = Params.elmt_p2;
        Reacs.elmt_p12 = Params.elmt_p12;
        Reacs.elmt_basolat = elmt_basolat.elmt_basolat;
        Reacs.elmt_p9 = Params.elmt_p9;
        Reacs.elmt_p7 = Params.elmt_p7;
        Reacs.elmt_p8 = Params.elmt_p8;
        Reacs.elmt_apical = elmt_apical.elmt_apical;
        Reacs.elmt_p11 = Params.elmt_p11;
        Reacs.elmt_x5 = elmt_apical.elmt_x5;
        Reacs.elmt_p10 = Params.elmt_p10;
        Reacs.elmt_x3 = elmt_cell.elmt_x3;
        Reacs.elmt_x4 = elmt_cell.elmt_x4;
        Reacs.elmt_x1 = elmt_basolat.elmt_x1;
        Reacs.elmt_x2 = elmt_basolat.elmt_x2;
        elmt_apical.elmt_product9 = Reacs.elmt_product9;
        elmt_apical.elmt_paracell_transp = Reacs.elmt_paracell_transp;
        elmt_apical.elmt_endo_ex_ap = Reacs.elmt_endo_ex_ap;
        elmt_apical.elmt_x3 = elmt_cell.elmt_x3;
        elmt_apical.elmt_ABCC2 = Reacs.elmt_ABCC2;
        elmt_apical.elmt_x4 = elmt_cell.elmt_x4;
        elmt_apical.elmt_x1 = elmt_basolat.elmt_x1;
        elmt_apical.elmt_x2 = elmt_basolat.elmt_x2;
        elmt_apical.elmt_product19 = Reacs.elmt_product19;
        elmt_apical.elmt_product3 = Reacs.elmt_product3;
        elmt_basolat.elmt_endo_in_bl = Reacs.elmt_endo_in_bl;
        elmt_basolat.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_basolat.elmt_product7 = Reacs.elmt_product7;
        elmt_basolat.elmt_product11 = Reacs.elmt_product11;
        elmt_basolat.elmt_OATP1B3 = Reacs.elmt_OATP1B3;
        elmt_basolat.elmt_bl_BSP_dissoc = Reacs.elmt_bl_BSP_dissoc;
        elmt_basolat.elmt_endo_ex_bl = Reacs.elmt_endo_ex_bl;
        elmt_basolat.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_basolat.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_basolat.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_basolat.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_basolat.elmt_paracell_transp = Reacs.elmt_paracell_transp;
        elmt_basolat.elmt_bl_BSP_binding = Reacs.elmt_bl_BSP_binding;
        elmt_basolat.elmt_product13 = Reacs.elmt_product13;
        elmt_cell.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_cell.elmt_endo_in_bl = Reacs.elmt_endo_in_bl;
        elmt_cell.elmt_cellular_BSP_binding = Reacs.elmt_cellular_BSP_binding;
        elmt_cell.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_cell.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_cell.elmt_OATP1B3 = Reacs.elmt_OATP1B3;
        elmt_cell.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_cell.elmt_product1 = Reacs.elmt_product1;
        elmt_cell.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_cell.elmt_endo_ex_bl = Reacs.elmt_endo_ex_bl;
        elmt_cell.elmt_product5 = Reacs.elmt_product5;
        elmt_cell.elmt_endo_ex_ap = Reacs.elmt_endo_ex_ap;
        elmt_cell.elmt_cellular_BSP_dissoc = Reacs.elmt_cellular_BSP_dissoc;
        elmt_cell.elmt_product15 = Reacs.elmt_product15;
        elmt_cell.elmt_ABCC2 = Reacs.elmt_ABCC2;
        elmt_cell.elmt_product17 = Reacs.elmt_product17;

end MDCKII_Transport;
