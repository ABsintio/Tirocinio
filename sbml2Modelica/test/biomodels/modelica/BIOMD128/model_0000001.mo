within BIOMD128;
model model_0000001 "Bertram2006_Endothelin" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell elmt_cell;
    Class_elmt_event_0000001 elmt_event_0000001;

    equation
        Params.elmt_cAMP = elmt_cell.elmt_cAMP;
        Params.elmt_cer = elmt_cell.elmt_cer;
        Params.elmt_c = elmt_cell.elmt_c;
        Params.elmt_event_0000001 = elmt_event_0000001.trigger;
        Reacs.elmt_cell = elmt_cell.elmt_cell;
        Reacs.elmt_cAMP = elmt_cell.elmt_cAMP;
        Reacs.elmt_fer = Params.elmt_fer;
        Reacs.elmt_sigmav = Params.elmt_sigmav;
        Reacs.elmt_taudir = Params.elmt_taudir;
        Reacs.elmt_jertot = Params.elmt_jertot;
        Reacs.elmt_f = Params.elmt_f;
        Reacs.elmt_ETswitch = Params.elmt_ETswitch;
        Reacs.elmt_cAMPlow = Params.elmt_cAMPlow;
        Reacs.elmt_jmemtot = Params.elmt_jmemtot;
        elmt_cell.elmt_product1 = Reacs.elmt_product1;
        elmt_cell.elmt_reaction_000003 = Reacs.elmt_reaction_000003;
        elmt_cell.elmt_product0 = Reacs.elmt_product0;
        elmt_cell.elmt_reaction_0000002 = Reacs.elmt_reaction_0000002;
        elmt_cell.elmt_product2 = Reacs.elmt_product2;
        elmt_cell.elmt_reaction_0000001 = Reacs.elmt_reaction_0000001;

        Params.assign_elmt_ETswitch = elmt_event_0000001.value_elmt_ETswitch;
        Params.assign_elmt_IP3 = elmt_event_0000001.value_elmt_IP3;
        Params.assign_elmt_girk = elmt_event_0000001.value_elmt_girk;
end model_0000001;
