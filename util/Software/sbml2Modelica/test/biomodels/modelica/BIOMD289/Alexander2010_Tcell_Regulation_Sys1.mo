within BIOMD289;
model Alexander2010_Tcell_Regulation_Sys1 "Alexander2010_Tcell_Regulation_Sys1" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_body elmt_body;

    equation
        Reacs.elmt_pi1 = Params.elmt_pi1;
        Reacs.elmt_beta = Params.elmt_beta;
        Reacs.elmt_G = elmt_body.elmt_G;
        Reacs.elmt_muG = Params.elmt_muG;
        Reacs.elmt_E = elmt_body.elmt_E;
        Reacs.elmt_muE = Params.elmt_muE;
        Reacs.elmt_f = Params.elmt_f;
        Reacs.elmt_A = elmt_body.elmt_A;
        Reacs.elmt_muA = Params.elmt_muA;
        Reacs.elmt_lambdaE = Params.elmt_lambdaE;
        Reacs.elmt_b1 = Params.elmt_b1;
        Reacs.elmt_gamma = Params.elmt_gamma;
        Reacs.elmt_sigma1 = Params.elmt_sigma1;
        Reacs.elmt_v = Params.elmt_v;
        Reacs.elmt_muR = Params.elmt_muR;
        Reacs.elmt_R = elmt_body.elmt_R;
        elmt_body.elmt_r7 = Reacs.elmt_r7;
        elmt_body.elmt_r8 = Reacs.elmt_r8;
        elmt_body.elmt_r5 = Reacs.elmt_r5;
        elmt_body.elmt_product6 = Reacs.elmt_product6;
        elmt_body.elmt_r6 = Reacs.elmt_r6;
        elmt_body.elmt_r3 = Reacs.elmt_r3;
        elmt_body.elmt_r4 = Reacs.elmt_r4;
        elmt_body.elmt_r11 = Reacs.elmt_r11;
        elmt_body.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_body.elmt_r2 = Reacs.elmt_r2;
        elmt_body.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_body.elmt_r10 = Reacs.elmt_r10;
        elmt_body.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_body.elmt_product5 = Reacs.elmt_product5;
        elmt_body.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_body.elmt_product4 = Reacs.elmt_product4;
        elmt_body.elmt_product3 = Reacs.elmt_product3;
        elmt_body.elmt_r9 = Reacs.elmt_r9;
        elmt_body.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_body.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_body.elmt_product2 = Reacs.elmt_product2;
        elmt_body.elmt_r1b = Reacs.elmt_r1b;
        elmt_body.elmt_r1a = Reacs.elmt_r1a;
        elmt_body.elmt_reactant9 = Reacs.elmt_reactant9;

end Alexander2010_Tcell_Regulation_Sys1;
