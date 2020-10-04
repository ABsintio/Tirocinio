within BIOMD295;
model Akman2008_Circadian_Clock_Model1 "Akman2008_Circadian_Clock_Model1" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_nucleus elmt_nucleus;
    Class_elmt_cytoplasm elmt_cytoplasm;

    equation
        Params.elmt_FNp = elmt_nucleus.elmt_FNp;
        Params.elmt_FCp = elmt_cytoplasm.elmt_FCp;
        Params.elmt_FC = elmt_cytoplasm.elmt_FC;
        Params.elmt_FN = elmt_nucleus.elmt_FN;
        Reacs.elmt_n = Params.elmt_n;
        Reacs.elmt_dawn = Params.elmt_dawn;
        Reacs.elmt_FCp = elmt_cytoplasm.elmt_FCp;
        Reacs.elmt_km = Params.elmt_km;
        Reacs.elmt_vd = Params.elmt_vd;
        Reacs.elmt_FN = elmt_nucleus.elmt_FN;
        Reacs.elmt_ks = Params.elmt_ks;
        Reacs.elmt_k1n = Params.elmt_k1n;
        Reacs.elmt_ksp = Params.elmt_ksp;
        Reacs.elmt_FNp = elmt_nucleus.elmt_FNp;
        Reacs.elmt_k2n = Params.elmt_k2n;
        Reacs.elmt_amp = Params.elmt_amp;
        Reacs.elmt_vdp = Params.elmt_vdp;
        Reacs.elmt_vs = Params.elmt_vs;
        Reacs.elmt_dusk = Params.elmt_dusk;
        Reacs.elmt_FC = elmt_cytoplasm.elmt_FC;
        Reacs.elmt_ki = Params.elmt_ki;
        Reacs.elmt_MF = elmt_nucleus.elmt_MF;
        Reacs.elmt_k1np = Params.elmt_k1np;
        Reacs.elmt_vm = Params.elmt_vm;
        Reacs.elmt_k2np = Params.elmt_k2np;
        elmt_nucleus.elmt_product9 = Reacs.elmt_product9;
        elmt_nucleus.elmt_MFtrn = Reacs.elmt_MFtrn;
        elmt_nucleus.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_nucleus.elmt_FCtrs = Reacs.elmt_FCtrs;
        elmt_nucleus.elmt_product0 = Reacs.elmt_product0;
        elmt_nucleus.elmt_FCptrs = Reacs.elmt_FCptrs;
        elmt_nucleus.elmt_MFdeg = Reacs.elmt_MFdeg;
        elmt_nucleus.elmt_product5 = Reacs.elmt_product5;
        elmt_cytoplasm.elmt_FCtrl = Reacs.elmt_FCtrl;
        elmt_cytoplasm.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_cytoplasm.elmt_product6 = Reacs.elmt_product6;
        elmt_cytoplasm.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_cytoplasm.elmt_FCptrl = Reacs.elmt_FCptrl;
        elmt_cytoplasm.elmt_FCtrs = Reacs.elmt_FCtrs;
        elmt_cytoplasm.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_cytoplasm.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_cytoplasm.elmt_FCptrs = Reacs.elmt_FCptrs;
        elmt_cytoplasm.elmt_FCdeg = Reacs.elmt_FCdeg;
        elmt_cytoplasm.elmt_FCpdeg = Reacs.elmt_FCpdeg;
        elmt_cytoplasm.elmt_product2 = Reacs.elmt_product2;

end Akman2008_Circadian_Clock_Model1;
