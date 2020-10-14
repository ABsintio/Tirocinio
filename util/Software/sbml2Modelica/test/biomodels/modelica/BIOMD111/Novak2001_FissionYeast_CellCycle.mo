within BIOMD111;
model Novak2001_FissionYeast_CellCycle "Novak2001_FissionYeast_CellCycle" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell elmt_cell;
    Class_elmt_event_0000001 elmt_event_0000001;
    Class_elmt_event_0000002 elmt_event_0000002;

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
        Params.elmt_cdc13T = elmt_cell.elmt_cdc13T;
        Params.elmt_M = elmt_cell.elmt_M;
        Params.elmt_MPF = elmt_cell.elmt_MPF;
        Params.elmt_rum1T = elmt_cell.elmt_rum1T;
        Params.elmt_event_0000001 = elmt_event_0000001.trigger;
        Params.elmt_event_0000002 = elmt_event_0000002.trigger;
        Reacs.elmt_k3_double_prime = Params.elmt_k3_double_prime;
        Reacs.elmt_k2_double_prime = Params.elmt_k2_double_prime;
        Reacs.elmt_slp1 = elmt_cell.elmt_slp1;
        Reacs.elmt_IEP = elmt_cell.elmt_IEP;
        Reacs.elmt_k5_double_prime = Params.elmt_k5_double_prime;
        Reacs.elmt_k5_prime = Params.elmt_k5_prime;
        Reacs.elmt_k2_triple_prime = Params.elmt_k2_triple_prime;
        Reacs.elmt_ste9 = elmt_cell.elmt_ste9;
        Reacs.elmt_cdc13T = elmt_cell.elmt_cdc13T;
        Reacs.elmt_MPF = elmt_cell.elmt_MPF;
        Reacs.elmt_TF = Params.elmt_TF;
        Reacs.elmt_J9 = Params.elmt_J9;
        Reacs.elmt_k14 = Params.elmt_k14;
        Reacs.elmt_k13 = Params.elmt_k13;
        Reacs.elmt_k12 = Params.elmt_k12;
        Reacs.elmt_k11 = Params.elmt_k11;
        Reacs.elmt_k10 = Params.elmt_k10;
        Reacs.elmt_k3_prime = Params.elmt_k3_prime;
        Reacs.elmt_k1 = Params.elmt_k1;
        Reacs.elmt_M = elmt_cell.elmt_M;
        Reacs.elmt_slp1T = elmt_cell.elmt_slp1T;
        Reacs.elmt_J7 = Params.elmt_J7;
        Reacs.elmt_k8 = Params.elmt_k8;
        Reacs.elmt_k9 = Params.elmt_k9;
        Reacs.elmt_J8 = Params.elmt_J8;
        Reacs.elmt_J5 = Params.elmt_J5;
        Reacs.elmt_k6 = Params.elmt_k6;
        Reacs.elmt_k7 = Params.elmt_k7;
        Reacs.elmt_k4 = Params.elmt_k4;
        Reacs.elmt_J3 = Params.elmt_J3;
        Reacs.elmt_J4 = Params.elmt_J4;
        Reacs.elmt_k12_double_prime = Params.elmt_k12_double_prime;
        Reacs.elmt_k12_prime = Params.elmt_k12_prime;
        Reacs.elmt_mu = Params.elmt_mu;
        Reacs.elmt_k4_prime = Params.elmt_k4_prime;
        Reacs.elmt_preMPF = elmt_cell.elmt_preMPF;
        Reacs.elmt_kwee = Params.elmt_kwee;
        Reacs.elmt_rum1T = elmt_cell.elmt_rum1T;
        Reacs.elmt_k2_prime = Params.elmt_k2_prime;
        Reacs.elmt_k25 = Params.elmt_k25;
        Reacs.elmt_J10 = Params.elmt_J10;
        Reacs.elmt_SK = elmt_cell.elmt_SK;
        elmt_cell.elmt_R16 = Reacs.elmt_R16;
        elmt_cell.elmt_R17 = Reacs.elmt_R17;
        elmt_cell.elmt_R14 = Reacs.elmt_R14;
        elmt_cell.elmt_R15 = Reacs.elmt_R15;
        elmt_cell.elmt_R12 = Reacs.elmt_R12;
        elmt_cell.elmt_product12 = Reacs.elmt_product12;
        elmt_cell.elmt_R13 = Reacs.elmt_R13;
        elmt_cell.elmt_R10 = Reacs.elmt_R10;
        elmt_cell.elmt_R11 = Reacs.elmt_R11;
        elmt_cell.elmt_R18 = Reacs.elmt_R18;
        elmt_cell.elmt_R19 = Reacs.elmt_R19;
        elmt_cell.elmt_product9 = Reacs.elmt_product9;
        elmt_cell.elmt_Trimer = Params.elmt_Trimer;
        elmt_cell.elmt_R7 = Reacs.elmt_R7;
        elmt_cell.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_cell.elmt_R8 = Reacs.elmt_R8;
        elmt_cell.elmt_product7 = Reacs.elmt_product7;
        elmt_cell.elmt_R5 = Reacs.elmt_R5;
        elmt_cell.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_cell.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_cell.elmt_R6 = Reacs.elmt_R6;
        elmt_cell.elmt_R3 = Reacs.elmt_R3;
        elmt_cell.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_cell.elmt_R4 = Reacs.elmt_R4;
        elmt_cell.elmt_R1 = Reacs.elmt_R1;
        elmt_cell.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_cell.elmt_R2 = Reacs.elmt_R2;
        elmt_cell.elmt_product0 = Reacs.elmt_product0;
        elmt_cell.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_cell.elmt_reactant17 = Reacs.elmt_reactant17;
        elmt_cell.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_cell.elmt_product5 = Reacs.elmt_product5;
        elmt_cell.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_cell.elmt_R9 = Reacs.elmt_R9;
        elmt_cell.elmt_reactant13 = Reacs.elmt_reactant13;
        elmt_cell.elmt_product2 = Reacs.elmt_product2;
        elmt_cell.elmt_product16 = Reacs.elmt_product16;
        elmt_cell.elmt_product14 = Reacs.elmt_product14;
        elmt_cell.elmt_product18 = Reacs.elmt_product18;
        elmt_cell.elmt_event_0000001 = elmt_event_0000001.trigger;
        elmt_event_0000002.elmt_MPF = elmt_cell.elmt_MPF;
        elmt_event_0000001.elmt_M = elmt_cell.elmt_M;
        elmt_event_0000001.elmt_MPF = elmt_cell.elmt_MPF;
        elmt_event_0000001.elmt_flag_MPF = Params.elmt_flag_MPF;

        elmt_cell.assign_elmt_M = elmt_event_0000001.value_elmt_M;
        Params.assign_elmt_flag_MPF = prioritize_between_2({Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY}, {elmt_event_0000001.value_elmt_flag_MPF, elmt_event_0000002.value_elmt_flag_MPF}, {edge(elmt_event_0000001.trigger), edge(elmt_event_0000002.trigger)});
end Novak2001_FissionYeast_CellCycle;
