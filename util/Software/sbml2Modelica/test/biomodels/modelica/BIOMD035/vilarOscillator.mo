within BIOMD035;
model vilarOscillator "Vilar2002_Oscillator" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_deterministicOscillator elmt_deterministicOscillator;

    equation
        Reacs.elmt_MR = elmt_deterministicOscillator.elmt_MR;
        Reacs.elmt_MA = elmt_deterministicOscillator.elmt_MA;
        Reacs.elmt_DAp = elmt_deterministicOscillator.elmt_DAp;
        Reacs.elmt_DRp = elmt_deterministicOscillator.elmt_DRp;
        Reacs.elmt_DA = elmt_deterministicOscillator.elmt_DA;
        Reacs.elmt_DR = elmt_deterministicOscillator.elmt_DR;
        Reacs.elmt_C = elmt_deterministicOscillator.elmt_C;
        Reacs.elmt_A = elmt_deterministicOscillator.elmt_A;
        Reacs.elmt_R = elmt_deterministicOscillator.elmt_R;
        elmt_deterministicOscillator.elmt_product30 = Reacs.elmt_product30;
        elmt_deterministicOscillator.elmt_reactant40 = Reacs.elmt_reactant40;
        elmt_deterministicOscillator.elmt_product34 = Reacs.elmt_product34;
        elmt_deterministicOscillator.elmt_product33 = Reacs.elmt_product33;
        elmt_deterministicOscillator.elmt_product31 = Reacs.elmt_product31;
        elmt_deterministicOscillator.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_deterministicOscillator.elmt_product25 = Reacs.elmt_product25;
        elmt_deterministicOscillator.elmt_product24 = Reacs.elmt_product24;
        elmt_deterministicOscillator.elmt_product28 = Reacs.elmt_product28;
        elmt_deterministicOscillator.elmt_product41 = Reacs.elmt_product41;
        elmt_deterministicOscillator.elmt_product42 = Reacs.elmt_product42;
        elmt_deterministicOscillator.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_deterministicOscillator.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_deterministicOscillator.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_deterministicOscillator.elmt_product37 = Reacs.elmt_product37;
        elmt_deterministicOscillator.elmt_product36 = Reacs.elmt_product36;
        elmt_deterministicOscillator.elmt_product11 = Reacs.elmt_product11;
        elmt_deterministicOscillator.elmt_reactant26 = Reacs.elmt_reactant26;
        elmt_deterministicOscillator.elmt_reactant27 = Reacs.elmt_reactant27;
        elmt_deterministicOscillator.elmt_reactant21 = Reacs.elmt_reactant21;
        elmt_deterministicOscillator.elmt_reactant23 = Reacs.elmt_reactant23;
        elmt_deterministicOscillator.elmt_Reaction9 = Reacs.elmt_Reaction9;
        elmt_deterministicOscillator.elmt_Reaction8 = Reacs.elmt_Reaction8;
        elmt_deterministicOscillator.elmt_Reaction7 = Reacs.elmt_Reaction7;
        elmt_deterministicOscillator.elmt_Reaction6 = Reacs.elmt_Reaction6;
        elmt_deterministicOscillator.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_deterministicOscillator.elmt_Reaction5 = Reacs.elmt_Reaction5;
        elmt_deterministicOscillator.elmt_Reaction4 = Reacs.elmt_Reaction4;
        elmt_deterministicOscillator.elmt_Reaction3 = Reacs.elmt_Reaction3;
        elmt_deterministicOscillator.elmt_Reaction2 = Reacs.elmt_Reaction2;
        elmt_deterministicOscillator.elmt_Reaction1 = Reacs.elmt_Reaction1;
        elmt_deterministicOscillator.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_deterministicOscillator.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_deterministicOscillator.elmt_product6 = Reacs.elmt_product6;
        elmt_deterministicOscillator.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_deterministicOscillator.elmt_product20 = Reacs.elmt_product20;
        elmt_deterministicOscillator.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_deterministicOscillator.elmt_Reaction16 = Reacs.elmt_Reaction16;
        elmt_deterministicOscillator.elmt_Reaction15 = Reacs.elmt_Reaction15;
        elmt_deterministicOscillator.elmt_reactant38 = Reacs.elmt_reactant38;
        elmt_deterministicOscillator.elmt_Reaction14 = Reacs.elmt_Reaction14;
        elmt_deterministicOscillator.elmt_Reaction13 = Reacs.elmt_Reaction13;
        elmt_deterministicOscillator.elmt_Reaction12 = Reacs.elmt_Reaction12;
        elmt_deterministicOscillator.elmt_reactant32 = Reacs.elmt_reactant32;
        elmt_deterministicOscillator.elmt_Reaction11 = Reacs.elmt_Reaction11;
        elmt_deterministicOscillator.elmt_Reaction10 = Reacs.elmt_Reaction10;
        elmt_deterministicOscillator.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_deterministicOscillator.elmt_reactant35 = Reacs.elmt_reactant35;
        elmt_deterministicOscillator.elmt_product2 = Reacs.elmt_product2;
        elmt_deterministicOscillator.elmt_reactant29 = Reacs.elmt_reactant29;
        elmt_deterministicOscillator.elmt_product16 = Reacs.elmt_product16;
        elmt_deterministicOscillator.elmt_product14 = Reacs.elmt_product14;
        elmt_deterministicOscillator.elmt_product13 = Reacs.elmt_product13;
        elmt_deterministicOscillator.elmt_product19 = Reacs.elmt_product19;
        elmt_deterministicOscillator.elmt_product17 = Reacs.elmt_product17;

end vilarOscillator;
