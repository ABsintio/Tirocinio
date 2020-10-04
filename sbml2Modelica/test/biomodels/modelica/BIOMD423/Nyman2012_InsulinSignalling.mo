within BIOMD423;
model Nyman2012_InsulinSignalling "Nyman2012_InsulinSignalling" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_default elmt_default;

    equation
        Params.elmt_IRp = elmt_default.elmt_IRp;
        Params.elmt_IRSiP = elmt_default.elmt_IRSiP;
        Params.elmt_IRiP = elmt_default.elmt_IRiP;
        Params.elmt_IRins = elmt_default.elmt_IRins;
        Params.elmt_IR = elmt_default.elmt_IR;
        Reacs.elmt_k1f = Params.elmt_k1f;
        Reacs.elmt_k1e = Params.elmt_k1e;
        Reacs.elmt_k1d = Params.elmt_k1d;
        Reacs.elmt_k1c = Params.elmt_k1c;
        Reacs.elmt_k1b = Params.elmt_k1b;
        Reacs.elmt_k1a = Params.elmt_k1a;
        Reacs.elmt_km23 = Params.elmt_km23;
        Reacs.elmt_IRiP = elmt_default.elmt_IRiP;
        Reacs.elmt_k1g = Params.elmt_k1g;
        Reacs.elmt_km2 = Params.elmt_km2;
        Reacs.elmt_X = elmt_default.elmt_X;
        Reacs.elmt_k1r = Params.elmt_k1r;
        Reacs.elmt_IRS = elmt_default.elmt_IRS;
        Reacs.elmt_IRins = elmt_default.elmt_IRins;
        Reacs.elmt_km3 = Params.elmt_km3;
        Reacs.elmt_IRi = elmt_default.elmt_IRi;
        Reacs.elmt_IR = elmt_default.elmt_IR;
        Reacs.elmt_k3 = Params.elmt_k3;
        Reacs.elmt_k1aBasic = Params.elmt_k1aBasic;
        Reacs.elmt_IRp = elmt_default.elmt_IRp;
        Reacs.elmt_IRSiP = elmt_default.elmt_IRSiP;
        Reacs.elmt_ins = Params.elmt_ins;
        Reacs.elmt_k22 = Params.elmt_k22;
        Reacs.elmt_k21 = Params.elmt_k21;
        Reacs.elmt_Xp = elmt_default.elmt_Xp;
        elmt_default.elmt_reactant20 = Reacs.elmt_reactant20;
        elmt_default.elmt_product11 = Reacs.elmt_product11;
        elmt_default.elmt_v1c = Reacs.elmt_v1c;
        elmt_default.elmt_v1b = Reacs.elmt_v1b;
        elmt_default.elmt_v1a = Reacs.elmt_v1a;
        elmt_default.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_default.elmt_v3 = Reacs.elmt_v3;
        elmt_default.elmt_v2 = Reacs.elmt_v2;
        elmt_default.elmt_v1g = Reacs.elmt_v1g;
        elmt_default.elmt_v1e = Reacs.elmt_v1e;
        elmt_default.elmt_v1d = Reacs.elmt_v1d;
        elmt_default.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_default.elmt_product9 = Reacs.elmt_product9;
        elmt_default.elmt_v1r = Reacs.elmt_v1r;
        elmt_default.elmt_product7 = Reacs.elmt_product7;
        elmt_default.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_default.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_default.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_default.elmt_product21 = Reacs.elmt_product21;
        elmt_default.elmt_product1 = Reacs.elmt_product1;
        elmt_default.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_default.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_default.elmt_product5 = Reacs.elmt_product5;
        elmt_default.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_default.elmt_vm3 = Reacs.elmt_vm3;
        elmt_default.elmt_vm2 = Reacs.elmt_vm2;
        elmt_default.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_default.elmt_product3 = Reacs.elmt_product3;
        elmt_default.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_default.elmt_product15 = Reacs.elmt_product15;
        elmt_default.elmt_product13 = Reacs.elmt_product13;
        elmt_default.elmt_product19 = Reacs.elmt_product19;
        elmt_default.elmt_product17 = Reacs.elmt_product17;

end Nyman2012_InsulinSignalling;
