within BIOMD231;
model Valero2006_Adenine_TernaryCycle "Valero2006_Adenine_TernaryCycle" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment elmt_compartment;

    equation
        Reacs.elmt_Km2AMP = Params.elmt_Km2AMP;
        Reacs.elmt_K = Params.elmt_K;
        Reacs.elmt_ATP = elmt_compartment.elmt_ATP;
        Reacs.elmt_k4 = Params.elmt_k4;
        Reacs.elmt_Vm2 = Params.elmt_Vm2;
        Reacs.elmt_AMP = elmt_compartment.elmt_AMP;
        Reacs.elmt_Vmapp1 = Params.elmt_Vmapp1;
        Reacs.elmt_Kmapp1 = Params.elmt_Kmapp1;
        Reacs.elmt_Vmapp3 = Params.elmt_Vmapp3;
        Reacs.elmt_ADP = elmt_compartment.elmt_ADP;
        Reacs.elmt_Km2ATP = Params.elmt_Km2ATP;
        Reacs.elmt_Kmapp3 = Params.elmt_Kmapp3;
        Reacs.elmt_Pyr = elmt_compartment.elmt_Pyr;
        elmt_compartment.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_compartment.elmt_product7 = Reacs.elmt_product7;
        elmt_compartment.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_compartment.elmt_product6 = Reacs.elmt_product6;
        elmt_compartment.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_compartment.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_compartment.elmt_product1 = Reacs.elmt_product1;
        elmt_compartment.elmt_product4 = Reacs.elmt_product4;
        elmt_compartment.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_compartment.elmt_v3 = Reacs.elmt_v3;
        elmt_compartment.elmt_v4 = Reacs.elmt_v4;
        elmt_compartment.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_compartment.elmt_v1 = Reacs.elmt_v1;
        elmt_compartment.elmt_v2 = Reacs.elmt_v2;

end Valero2006_Adenine_TernaryCycle;
