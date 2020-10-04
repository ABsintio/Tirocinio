within BIOMD241;
model Shi1993_Caffeine_pressor_tolerance "Shi1993_Caffeine_pressor_tolerance" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_P elmt_P;
    Class_elmt_Eff elmt_Eff;
    Class_elmt_Gut elmt_Gut;
    Class_elmt_Tol elmt_Tol;
    Class_elmt_C elmt_C;
    Class_elmt_coffecup elmt_coffecup;

    equation
        Params.elmt_C_t = elmt_Tol.elmt_C_t;
        Params.elmt_C_e = elmt_Eff.elmt_C_e;
        Params.elmt_coffecup = elmt_coffecup.trigger;
        elmt_Gut.elmt_k_a = Params.elmt_k_a;
        elmt_Gut.elmt_coffecup = elmt_coffecup.trigger;
        elmt_P.elmt_C_p = elmt_C.elmt_C_p;
        elmt_P.elmt_k12 = Params.elmt_k12;
        elmt_P.elmt_k21 = Params.elmt_k21;
        elmt_Tol.elmt_k_tol = Params.elmt_k_tol;
        elmt_Tol.elmt_C_p = elmt_C.elmt_C_p;
        elmt_Eff.elmt_C_p = elmt_C.elmt_C_p;
        elmt_Eff.elmt_k_eo = Params.elmt_k_eo;
        elmt_C.elmt_X_gut = elmt_Gut.elmt_X_gut;
        elmt_C.elmt_C_per = elmt_P.elmt_C_per;
        elmt_C.elmt_k_a = Params.elmt_k_a;
        elmt_C.elmt_F = Params.elmt_F;
        elmt_C.elmt_k12 = Params.elmt_k12;
        elmt_C.elmt_V_C = Params.elmt_V_C;
        elmt_C.elmt_k21 = Params.elmt_k21;
        elmt_C.elmt_k10 = Params.elmt_k10;
        elmt_coffecup.elmt_bodyweight = Params.elmt_bodyweight;
        elmt_coffecup.elmt_t_lag = Params.elmt_t_lag;
        elmt_coffecup.elmt_X_gut = elmt_Gut.elmt_X_gut;
        elmt_coffecup.elmt_t_int = Params.elmt_t_int;
        elmt_coffecup.elmt_cupsize = Params.elmt_cupsize;
        elmt_coffecup.elmt_cups = Params.elmt_cups;

        elmt_Gut.assign_elmt_X_gut = elmt_coffecup.value_elmt_X_gut;
        Params.assign_elmt_cups = elmt_coffecup.value_elmt_cups;
end Shi1993_Caffeine_pressor_tolerance;
