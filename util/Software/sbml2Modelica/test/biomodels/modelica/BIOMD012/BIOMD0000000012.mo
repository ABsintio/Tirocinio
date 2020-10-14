within BIOMD012;
model BIOMD0000000012 "Elowitz2000 - Repressilator" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell elmt_cell;

    equation
        Reacs.elmt_n = Params.elmt_n;
        Reacs.elmt_KM = Params.elmt_KM;
        Reacs.elmt_a0_tr = Params.elmt_a0_tr;
        Reacs.elmt_kd_prot = Params.elmt_kd_prot;
        Reacs.elmt_PY = elmt_cell.elmt_PY;
        Reacs.elmt_a_tr = Params.elmt_a_tr;
        Reacs.elmt_PZ = elmt_cell.elmt_PZ;
        Reacs.elmt_PX = elmt_cell.elmt_PX;
        Reacs.elmt_Y = elmt_cell.elmt_Y;
        Reacs.elmt_Z = elmt_cell.elmt_Z;
        Reacs.elmt_kd_mRNA = Params.elmt_kd_mRNA;
        Reacs.elmt_k_tl = Params.elmt_k_tl;
        Reacs.elmt_X = elmt_cell.elmt_X;
        elmt_cell.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_cell.elmt_product9 = Reacs.elmt_product9;
        elmt_cell.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_cell.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_cell.elmt_product11 = Reacs.elmt_product11;
        elmt_cell.elmt_product10 = Reacs.elmt_product10;
        elmt_cell.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_cell.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_cell.elmt_Reaction12 = Reacs.elmt_Reaction12;
        elmt_cell.elmt_product5 = Reacs.elmt_product5;
        elmt_cell.elmt_Reaction11 = Reacs.elmt_Reaction11;
        elmt_cell.elmt_product4 = Reacs.elmt_product4;
        elmt_cell.elmt_Reaction10 = Reacs.elmt_Reaction10;
        elmt_cell.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_cell.elmt_product3 = Reacs.elmt_product3;
        elmt_cell.elmt_Reaction9 = Reacs.elmt_Reaction9;
        elmt_cell.elmt_Reaction8 = Reacs.elmt_Reaction8;
        elmt_cell.elmt_Reaction7 = Reacs.elmt_Reaction7;
        elmt_cell.elmt_Reaction6 = Reacs.elmt_Reaction6;
        elmt_cell.elmt_Reaction5 = Reacs.elmt_Reaction5;
        elmt_cell.elmt_Reaction4 = Reacs.elmt_Reaction4;
        elmt_cell.elmt_Reaction3 = Reacs.elmt_Reaction3;
        elmt_cell.elmt_Reaction2 = Reacs.elmt_Reaction2;
        elmt_cell.elmt_Reaction1 = Reacs.elmt_Reaction1;

end BIOMD0000000012;
