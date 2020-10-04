within BIOMD493;
model MODEL1310150000 "Schittler2010 - Cell fate of progenitor cells, osteoblasts or chondrocytes" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_default_compartment elmt_default_compartment;
    Class_elmt__E1 elmt__E1;
    Class_elmt__E0 elmt__E0;

    function prioritize_between_2
        input Real[2] prios;
        input Real[2] values;
        input Boolean[2] trigs;
        output Real value;
        protected Real min_prio;
        algorithm
            value := 0;
            min_prio := Constants.INFINITY;
            for i in 1:2 loop
                if trigs[i] and prios[i] < min_prio then
                    value := values[i];
                    min_prio := prios[i];
                end if;
            end for;
    end prioritize_between_2;
    equation
        Params.elmt__E1 = elmt__E1.execution;
        Params.elmt__E0 = elmt__E0.execution;
        Reacs.elmt_kP = Params.elmt_kP;
        Reacs.elmt_cOC = Params.elmt_cOC;
        Reacs.elmt_mP = Params.elmt_mP;
        Reacs.elmt_kO = Params.elmt_kO;
        Reacs.elmt_n = Params.elmt_n;
        Reacs.elmt_aC = Params.elmt_aC;
        Reacs.elmt_mO = Params.elmt_mO;
        Reacs.elmt_aO = Params.elmt_aO;
        Reacs.elmt_zC = Params.elmt_zC;
        Reacs.elmt_zD = Params.elmt_zD;
        Reacs.elmt_mC = Params.elmt_mC;
        Reacs.elmt_cOP = Params.elmt_cOP;
        Reacs.elmt_cCC = Params.elmt_cCC;
        Reacs.elmt_cOO = Params.elmt_cOO;
        Reacs.elmt_cCP = Params.elmt_cCP;
        Reacs.elmt_cCO = Params.elmt_cCO;
        Reacs.elmt_kC = Params.elmt_kC;
        Reacs.elmt_O = elmt_default_compartment.elmt_O;
        Reacs.elmt_P = elmt_default_compartment.elmt_P;
        Reacs.elmt_bC = Params.elmt_bC;
        Reacs.elmt_bO = Params.elmt_bO;
        Reacs.elmt_bP = Params.elmt_bP;
        Reacs.elmt_C = elmt_default_compartment.elmt_C;
        Reacs.elmt_zO = Params.elmt_zO;
        Reacs.elmt_cPP = Params.elmt_cPP;
        Reacs.elmt_aP = Params.elmt_aP;
        elmt_default_compartment.elmt_a6 = Reacs.elmt_a6;
        elmt_default_compartment.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_default_compartment.elmt_a4 = Reacs.elmt_a4;
        elmt_default_compartment.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_default_compartment.elmt_a5 = Reacs.elmt_a5;
        elmt_default_compartment.elmt_a2 = Reacs.elmt_a2;
        elmt_default_compartment.elmt_a3 = Reacs.elmt_a3;
        elmt_default_compartment.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_default_compartment.elmt_a1 = Reacs.elmt_a1;
        elmt_default_compartment.elmt_product0 = Reacs.elmt_product0;
        elmt_default_compartment.elmt_product4 = Reacs.elmt_product4;
        elmt_default_compartment.elmt_product2 = Reacs.elmt_product2;
        elmt__E1.elmt_P = elmt_default_compartment.elmt_P;
        elmt__E0.elmt_P = elmt_default_compartment.elmt_P;

        Params.assign_elmt_zO = prioritize_between_2({Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY}, {elmt__E1.value_elmt_zO, elmt__E0.value_elmt_zO}, {edge(elmt__E1.execution), edge(elmt__E0.execution)});
        Params.assign_elmt_zD = prioritize_between_2({Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY}, {elmt__E1.value_elmt_zD, elmt__E0.value_elmt_zD}, {edge(elmt__E1.execution), edge(elmt__E0.execution)});
end MODEL1310150000;
