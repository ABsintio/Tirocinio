within BIOMD257;
model Piedrafita2010_MR_System "Piedrafita2010_MR_System" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_env elmt_env;

    equation
        Reacs.elmt_STUS = elmt_env.elmt_STUS;
        Reacs.elmt_SUST = elmt_env.elmt_SUST;
        Reacs.elmt_k5r = Params.elmt_k5r;
        Reacs.elmt_k7r = Params.elmt_k7r;
        Reacs.elmt_k9r = Params.elmt_k9r;
        Reacs.elmt_U = elmt_env.elmt_U;
        Reacs.elmt_S = elmt_env.elmt_S;
        Reacs.elmt_k1r = Params.elmt_k1r;
        Reacs.elmt_T = elmt_env.elmt_T;
        Reacs.elmt_k10r = Params.elmt_k10r;
        Reacs.elmt_k11 = Params.elmt_k11;
        Reacs.elmt_k3r = Params.elmt_k3r;
        Reacs.elmt_k10 = Params.elmt_k10;
        Reacs.elmt_SUSTU = elmt_env.elmt_SUSTU;
        Reacs.elmt_k1 = Params.elmt_k1;
        Reacs.elmt_STU = elmt_env.elmt_STU;
        Reacs.elmt_STUST = elmt_env.elmt_STUST;
        Reacs.elmt_ST = elmt_env.elmt_ST;
        Reacs.elmt_SU = elmt_env.elmt_SU;
        Reacs.elmt_STUSU = elmt_env.elmt_STUSU;
        Reacs.elmt_k8 = Params.elmt_k8;
        Reacs.elmt_k9 = Params.elmt_k9;
        Reacs.elmt_k6 = Params.elmt_k6;
        Reacs.elmt_k7 = Params.elmt_k7;
        Reacs.elmt_k4 = Params.elmt_k4;
        Reacs.elmt_k5 = Params.elmt_k5;
        Reacs.elmt_k2 = Params.elmt_k2;
        Reacs.elmt_k3 = Params.elmt_k3;
        Reacs.elmt_k6r = Params.elmt_k6r;
        Reacs.elmt_env = elmt_env.elmt_env;
        Reacs.elmt_k2r = Params.elmt_k2r;
        elmt_env.elmt_product12 = Reacs.elmt_product12;
        elmt_env.elmt_reactant26 = Reacs.elmt_reactant26;
        elmt_env.elmt_reactant21 = Reacs.elmt_reactant21;
        elmt_env.elmt_reactant23 = Reacs.elmt_reactant23;
        elmt_env.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt_env.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_env.elmt_product25 = Reacs.elmt_product25;
        elmt_env.elmt_product24 = Reacs.elmt_product24;
        elmt_env.elmt_reaction10 = Reacs.elmt_reaction10;
        elmt_env.elmt_reaction11 = Reacs.elmt_reaction11;
        elmt_env.elmt_reaction7 = Reacs.elmt_reaction7;
        elmt_env.elmt_reaction6 = Reacs.elmt_reaction6;
        elmt_env.elmt_product8 = Reacs.elmt_product8;
        elmt_env.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_env.elmt_product7 = Reacs.elmt_product7;
        elmt_env.elmt_reaction9 = Reacs.elmt_reaction9;
        elmt_env.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_env.elmt_reaction8 = Reacs.elmt_reaction8;
        elmt_env.elmt_reaction3 = Reacs.elmt_reaction3;
        elmt_env.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_env.elmt_reaction2 = Reacs.elmt_reaction2;
        elmt_env.elmt_product22 = Reacs.elmt_product22;
        elmt_env.elmt_reaction5 = Reacs.elmt_reaction5;
        elmt_env.elmt_reaction4 = Reacs.elmt_reaction4;
        elmt_env.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_env.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_env.elmt_reaction1 = Reacs.elmt_reaction1;
        elmt_env.elmt_product5 = Reacs.elmt_product5;
        elmt_env.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_env.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_env.elmt_product2 = Reacs.elmt_product2;
        elmt_env.elmt_product15 = Reacs.elmt_product15;
        elmt_env.elmt_product18 = Reacs.elmt_product18;
        elmt_env.elmt_product17 = Reacs.elmt_product17;

end Piedrafita2010_MR_System;
