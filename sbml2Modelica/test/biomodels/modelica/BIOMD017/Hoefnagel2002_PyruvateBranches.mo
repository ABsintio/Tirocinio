within BIOMD017;
model Hoefnagel2002_PyruvateBranches "Hoefnagel2002_PyruvateBranches" annotation(Documentation(info="<annotation>
  <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
  </rdf:RDF>
</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment elmt_compartment;

    equation
        Reacs.elmt_AcetoinIn = elmt_compartment.elmt_AcetoinIn;
        Reacs.elmt_CoA = elmt_compartment.elmt_CoA;
        Reacs.elmt_PO4 = elmt_compartment.elmt_PO4;
        Reacs.elmt_O2 = elmt_compartment.elmt_O2;
        Reacs.elmt_lactate = elmt_compartment.elmt_lactate;
        Reacs.elmt_Ac = elmt_compartment.elmt_Ac;
        Reacs.elmt_NAD = elmt_compartment.elmt_NAD;
        Reacs.elmt_EtOH = elmt_compartment.elmt_EtOH;
        Reacs.elmt_ATP = elmt_compartment.elmt_ATP;
        Reacs.elmt_AcCoA = elmt_compartment.elmt_AcCoA;
        Reacs.elmt_pyruvate = elmt_compartment.elmt_pyruvate;
        Reacs.elmt_AcLac = elmt_compartment.elmt_AcLac;
        Reacs.elmt_AcO = elmt_compartment.elmt_AcO;
        Reacs.elmt_ADP = elmt_compartment.elmt_ADP;
        Reacs.elmt_AcP = elmt_compartment.elmt_AcP;
        Reacs.elmt_halfglucose = elmt_compartment.elmt_halfglucose;
        Reacs.elmt_Butanediol = elmt_compartment.elmt_Butanediol;
        Reacs.elmt_NADH = elmt_compartment.elmt_NADH;
        elmt_compartment.elmt_product30 = Reacs.elmt_product30;
        elmt_compartment.elmt_reactant42 = Reacs.elmt_reactant42;
        elmt_compartment.elmt_product33 = Reacs.elmt_product33;
        elmt_compartment.elmt_reactant47 = Reacs.elmt_reactant47;
        elmt_compartment.elmt_reactant44 = Reacs.elmt_reactant44;
        elmt_compartment.elmt_product27 = Reacs.elmt_product27;
        elmt_compartment.elmt_product26 = Reacs.elmt_product26;
        elmt_compartment.elmt_product25 = Reacs.elmt_product25;
        elmt_compartment.elmt_R7 = Reacs.elmt_R7;
        elmt_compartment.elmt_product40 = Reacs.elmt_product40;
        elmt_compartment.elmt_R8 = Reacs.elmt_R8;
        elmt_compartment.elmt_R5 = Reacs.elmt_R5;
        elmt_compartment.elmt_R6 = Reacs.elmt_R6;
        elmt_compartment.elmt_R3 = Reacs.elmt_R3;
        elmt_compartment.elmt_R4 = Reacs.elmt_R4;
        elmt_compartment.elmt_R1 = Reacs.elmt_R1;
        elmt_compartment.elmt_product43 = Reacs.elmt_product43;
        elmt_compartment.elmt_R2 = Reacs.elmt_R2;
        elmt_compartment.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_compartment.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_compartment.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_compartment.elmt_R9 = Reacs.elmt_R9;
        elmt_compartment.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_compartment.elmt_product35 = Reacs.elmt_product35;
        elmt_compartment.elmt_R14 = Reacs.elmt_R14;
        elmt_compartment.elmt_reactant20 = Reacs.elmt_reactant20;
        elmt_compartment.elmt_R12 = Reacs.elmt_R12;
        elmt_compartment.elmt_R13 = Reacs.elmt_R13;
        elmt_compartment.elmt_R10 = Reacs.elmt_R10;
        elmt_compartment.elmt_R11 = Reacs.elmt_R11;
        elmt_compartment.elmt_reactant28 = Reacs.elmt_reactant28;
        elmt_compartment.elmt_reactant23 = Reacs.elmt_reactant23;
        elmt_compartment.elmt_reactant24 = Reacs.elmt_reactant24;
        elmt_compartment.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt_compartment.elmt_product48 = Reacs.elmt_product48;
        elmt_compartment.elmt_product46 = Reacs.elmt_product46;
        elmt_compartment.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_compartment.elmt_product8 = Reacs.elmt_product8;
        elmt_compartment.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_compartment.elmt_product21 = Reacs.elmt_product21;
        elmt_compartment.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_compartment.elmt_reactant36 = Reacs.elmt_reactant36;
        elmt_compartment.elmt_reactant38 = Reacs.elmt_reactant38;
        elmt_compartment.elmt_reactant39 = Reacs.elmt_reactant39;
        elmt_compartment.elmt_reactant32 = Reacs.elmt_reactant32;
        elmt_compartment.elmt_product5 = Reacs.elmt_product5;
        elmt_compartment.elmt_product4 = Reacs.elmt_product4;
        elmt_compartment.elmt_product3 = Reacs.elmt_product3;
        elmt_compartment.elmt_reactant34 = Reacs.elmt_reactant34;
        elmt_compartment.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_compartment.elmt_reactant29 = Reacs.elmt_reactant29;
        elmt_compartment.elmt_product14 = Reacs.elmt_product14;
        elmt_compartment.elmt_product13 = Reacs.elmt_product13;
        elmt_compartment.elmt_product18 = Reacs.elmt_product18;
        elmt_compartment.elmt_product17 = Reacs.elmt_product17;

end Hoefnagel2002_PyruvateBranches;
