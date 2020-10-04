within BIOMD167;
model Mayya2005_STATmodule "Mayya2005_STATmodule" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_nm elmt_nm;
    Class_elmt_sol elmt_sol;
    Class_elmt_nuc elmt_nuc;

    equation
        Reacs.elmt_PstatDimer_sol = elmt_sol.elmt_PstatDimer_sol;
        Reacs.elmt_statKinase_sol = elmt_sol.elmt_statKinase_sol;
        Reacs.elmt_nm = elmt_nm.elmt_nm;
        Reacs.elmt_sol = elmt_sol.elmt_sol;
        Reacs.elmt_stat_sol = elmt_sol.elmt_stat_sol;
        Reacs.elmt_Pstat_sol = elmt_sol.elmt_Pstat_sol;
        Reacs.elmt_nuc = elmt_nuc.elmt_nuc;
        Reacs.elmt_PstatDimer_nuc = elmt_nuc.elmt_PstatDimer_nuc;
        Reacs.elmt_stat_nuc = elmt_nuc.elmt_stat_nuc;
        Reacs.elmt_Pstat_nuc = elmt_nuc.elmt_Pstat_nuc;
        Reacs.elmt_statPhosphatase_nuc = elmt_nuc.elmt_statPhosphatase_nuc;
        elmt_nuc.elmt_PstatDimerisationNuc = Reacs.elmt_PstatDimerisationNuc;
        elmt_nuc.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_nuc.elmt_product8 = Reacs.elmt_product8;
        elmt_nuc.elmt_stat_export = Reacs.elmt_stat_export;
        elmt_nuc.elmt_product12 = Reacs.elmt_product12;
        elmt_nuc.elmt_product10 = Reacs.elmt_product10;
        elmt_nuc.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_nuc.elmt_product14 = Reacs.elmt_product14;
        elmt_nuc.elmt_PstatDimer__import = Reacs.elmt_PstatDimer__import;
        elmt_nuc.elmt_statDephosphorylation = Reacs.elmt_statDephosphorylation;
        elmt_nuc.elmt_stat_import = Reacs.elmt_stat_import;
        elmt_nuc.elmt_product3 = Reacs.elmt_product3;
        elmt_sol.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_sol.elmt_product6 = Reacs.elmt_product6;
        elmt_sol.elmt_stat_export = Reacs.elmt_stat_export;
        elmt_sol.elmt_product1 = Reacs.elmt_product1;
        elmt_sol.elmt_PstatDimer__import = Reacs.elmt_PstatDimer__import;
        elmt_sol.elmt_product5 = Reacs.elmt_product5;
        elmt_sol.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_sol.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_sol.elmt_reactant13 = Reacs.elmt_reactant13;
        elmt_sol.elmt_PstatDimerisation = Reacs.elmt_PstatDimerisation;
        elmt_sol.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_sol.elmt_statPhosphorylation = Reacs.elmt_statPhosphorylation;
        elmt_sol.elmt_stat_import = Reacs.elmt_stat_import;

end Mayya2005_STATmodule;
