within BIOMD149;
model BIOMD0000000149 "Kim2007 - Crosstalk between Wnt and ERK pathways" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_nucleus elmt_nucleus;
    Class_elmt_cytoplasm elmt_cytoplasm;
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
        Params.elmt_X14 = elmt_nucleus.elmt_X14;
        Params.elmt_X13 = elmt_nucleus.elmt_X13;
        Params.elmt_event_0000001 = elmt_event_0000001.trigger;
        Params.elmt_event_0000002 = elmt_event_0000002.trigger;
        Reacs.elmt_nucleus = elmt_nucleus.elmt_nucleus;
        Reacs.elmt_n1 = Params.elmt_n1;
        Reacs.elmt_k_minus6 = Params.elmt_k_minus6;
        Reacs.elmt_k_minus8 = Params.elmt_k_minus8;
        Reacs.elmt_k_minus7 = Params.elmt_k_minus7;
        Reacs.elmt_W = Params.elmt_W;
        Reacs.elmt_k15 = Params.elmt_k15;
        Reacs.elmt_Ki = Params.elmt_Ki;
        Reacs.elmt_k14 = Params.elmt_k14;
        Reacs.elmt_k13 = Params.elmt_k13;
        Reacs.elmt_k11 = Params.elmt_k11;
        Reacs.elmt_k10 = Params.elmt_k10;
        Reacs.elmt_k_plus17 = Params.elmt_k_plus17;
        Reacs.elmt_Vmax5 = Params.elmt_Vmax5;
        Reacs.elmt_kcat6 = Params.elmt_kcat6;
        Reacs.elmt_k_plus16 = Params.elmt_k_plus16;
        Reacs.elmt_kcat7 = Params.elmt_kcat7;
        Reacs.elmt_Vmax6 = Params.elmt_Vmax6;
        Reacs.elmt_k1 = Params.elmt_k1;
        Reacs.elmt_kcat4 = Params.elmt_kcat4;
        Reacs.elmt_Vmax3 = Params.elmt_Vmax3;
        Reacs.elmt_Vmax4 = Params.elmt_Vmax4;
        Reacs.elmt_kcat5 = Params.elmt_kcat5;
        Reacs.elmt_Vmax1 = Params.elmt_Vmax1;
        Reacs.elmt_Vmax2 = Params.elmt_Vmax2;
        Reacs.elmt_k19 = Params.elmt_k19;
        Reacs.elmt_k18 = Params.elmt_k18;
        Reacs.elmt_k9 = Params.elmt_k9;
        Reacs.elmt_k4 = Params.elmt_k4;
        Reacs.elmt_kcat2 = Params.elmt_kcat2;
        Reacs.elmt_k5 = Params.elmt_k5;
        Reacs.elmt_kcat3 = Params.elmt_kcat3;
        Reacs.elmt_Vmax7 = Params.elmt_Vmax7;
        Reacs.elmt_k2 = Params.elmt_k2;
        Reacs.elmt_kcat1 = Params.elmt_kcat1;
        Reacs.elmt_k3 = Params.elmt_k3;
        Reacs.elmt_Km1 = Params.elmt_Km1;
        Reacs.elmt_Km2 = Params.elmt_Km2;
        Reacs.elmt_k_minus17 = Params.elmt_k_minus17;
        Reacs.elmt_k21 = Params.elmt_k21;
        Reacs.elmt_k_minus16 = Params.elmt_k_minus16;
        Reacs.elmt_k20 = Params.elmt_k20;
        Reacs.elmt_X11 = elmt_nucleus.elmt_X11;
        Reacs.elmt_Km9 = Params.elmt_Km9;
        Reacs.elmt_V12 = Params.elmt_V12;
        Reacs.elmt_X10 = elmt_cytoplasm.elmt_X10;
        Reacs.elmt_Km7 = Params.elmt_Km7;
        Reacs.elmt_Km8 = Params.elmt_Km8;
        Reacs.elmt_k_plus8 = Params.elmt_k_plus8;
        Reacs.elmt_Km5 = Params.elmt_Km5;
        Reacs.elmt_k_plus7 = Params.elmt_k_plus7;
        Reacs.elmt_Km6 = Params.elmt_Km6;
        Reacs.elmt_Km3 = Params.elmt_Km3;
        Reacs.elmt_Km4 = Params.elmt_Km4;
        Reacs.elmt_X19 = elmt_cytoplasm.elmt_X19;
        Reacs.elmt_X18 = elmt_cytoplasm.elmt_X18;
        Reacs.elmt_X17 = elmt_cytoplasm.elmt_X17;
        Reacs.elmt_k_plus6 = Params.elmt_k_plus6;
        Reacs.elmt_X16 = elmt_cytoplasm.elmt_X16;
        Reacs.elmt_X15 = elmt_cytoplasm.elmt_X15;
        Reacs.elmt_X14 = elmt_nucleus.elmt_X14;
        Reacs.elmt_X13 = elmt_nucleus.elmt_X13;
        Reacs.elmt_X12 = elmt_cytoplasm.elmt_X12;
        Reacs.elmt_Km14 = Params.elmt_Km14;
        Reacs.elmt_X22 = elmt_cytoplasm.elmt_X22;
        Reacs.elmt_X21 = elmt_cytoplasm.elmt_X21;
        Reacs.elmt_X20 = elmt_cytoplasm.elmt_X20;
        Reacs.elmt_Km12 = Params.elmt_Km12;
        Reacs.elmt_Km13 = Params.elmt_Km13;
        Reacs.elmt_X9 = elmt_cytoplasm.elmt_X9;
        Reacs.elmt_Km10 = Params.elmt_Km10;
        Reacs.elmt_Km11 = Params.elmt_Km11;
        Reacs.elmt_X7 = elmt_cytoplasm.elmt_X7;
        Reacs.elmt_X8 = elmt_cytoplasm.elmt_X8;
        Reacs.elmt_X28 = elmt_cytoplasm.elmt_X28;
        Reacs.elmt_X27 = elmt_cytoplasm.elmt_X27;
        Reacs.elmt_X26 = elmt_cytoplasm.elmt_X26;
        Reacs.elmt_X25 = elmt_cytoplasm.elmt_X25;
        Reacs.elmt_X24 = elmt_cytoplasm.elmt_X24;
        Reacs.elmt_X23 = elmt_cytoplasm.elmt_X23;
        Reacs.elmt_cytoplasm = elmt_cytoplasm.elmt_cytoplasm;
        Reacs.elmt_X5 = elmt_cytoplasm.elmt_X5;
        Reacs.elmt_X6 = elmt_cytoplasm.elmt_X6;
        Reacs.elmt_X3 = elmt_cytoplasm.elmt_X3;
        Reacs.elmt_X4 = elmt_cytoplasm.elmt_X4;
        Reacs.elmt_X1 = elmt_cytoplasm.elmt_X1;
        Reacs.elmt_X2 = elmt_cytoplasm.elmt_X2;
        elmt_nucleus.elmt_R16 = Reacs.elmt_R16;
        elmt_nucleus.elmt_R17 = Reacs.elmt_R17;
        elmt_nucleus.elmt_R8 = Reacs.elmt_R8;
        elmt_nucleus.elmt_reactant30 = Reacs.elmt_reactant30;
        elmt_nucleus.elmt_reactant31 = Reacs.elmt_reactant31;
        elmt_nucleus.elmt_R12 = Reacs.elmt_R12;
        elmt_nucleus.elmt_R13 = Reacs.elmt_R13;
        elmt_nucleus.elmt_product32 = Reacs.elmt_product32;
        elmt_nucleus.elmt_product26 = Reacs.elmt_product26;
        elmt_nucleus.elmt_reactant27 = Reacs.elmt_reactant27;
        elmt_nucleus.elmt_reactant17 = Reacs.elmt_reactant17;
        elmt_nucleus.elmt_reactant33 = Reacs.elmt_reactant33;
        elmt_cytoplasm.elmt_reactant40 = Reacs.elmt_reactant40;
        elmt_cytoplasm.elmt_reactant42 = Reacs.elmt_reactant42;
        elmt_cytoplasm.elmt_R32 = Reacs.elmt_R32;
        elmt_cytoplasm.elmt_R33 = Reacs.elmt_R33;
        elmt_cytoplasm.elmt_reactant48 = Reacs.elmt_reactant48;
        elmt_cytoplasm.elmt_reactant44 = Reacs.elmt_reactant44;
        elmt_cytoplasm.elmt_reactant46 = Reacs.elmt_reactant46;
        elmt_cytoplasm.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_cytoplasm.elmt_product24 = Reacs.elmt_product24;
        elmt_cytoplasm.elmt_product28 = Reacs.elmt_product28;
        elmt_cytoplasm.elmt_product41 = Reacs.elmt_product41;
        elmt_cytoplasm.elmt_R7 = Reacs.elmt_R7;
        elmt_cytoplasm.elmt_reactant50 = Reacs.elmt_reactant50;
        elmt_cytoplasm.elmt_R8 = Reacs.elmt_R8;
        elmt_cytoplasm.elmt_reactant52 = Reacs.elmt_reactant52;
        elmt_cytoplasm.elmt_R5 = Reacs.elmt_R5;
        elmt_cytoplasm.elmt_R6 = Reacs.elmt_R6;
        elmt_cytoplasm.elmt_product45 = Reacs.elmt_product45;
        elmt_cytoplasm.elmt_R3 = Reacs.elmt_R3;
        elmt_cytoplasm.elmt_R4 = Reacs.elmt_R4;
        elmt_cytoplasm.elmt_product43 = Reacs.elmt_product43;
        elmt_cytoplasm.elmt_R1 = Reacs.elmt_R1;
        elmt_cytoplasm.elmt_R2 = Reacs.elmt_R2;
        elmt_cytoplasm.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_cytoplasm.elmt_reactant58 = Reacs.elmt_reactant58;
        elmt_cytoplasm.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_cytoplasm.elmt_reactant55 = Reacs.elmt_reactant55;
        elmt_cytoplasm.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_cytoplasm.elmt_R9 = Reacs.elmt_R9;
        elmt_cytoplasm.elmt_reactant56 = Reacs.elmt_reactant56;
        elmt_cytoplasm.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_cytoplasm.elmt_product37 = Reacs.elmt_product37;
        elmt_cytoplasm.elmt_product35 = Reacs.elmt_product35;
        elmt_cytoplasm.elmt_product39 = Reacs.elmt_product39;
        elmt_cytoplasm.elmt_reactant61 = Reacs.elmt_reactant61;
        elmt_cytoplasm.elmt_reactant62 = Reacs.elmt_reactant62;
        elmt_cytoplasm.elmt_R17 = Reacs.elmt_R17;
        elmt_cytoplasm.elmt_product51 = Reacs.elmt_product51;
        elmt_cytoplasm.elmt_R14 = Reacs.elmt_R14;
        elmt_cytoplasm.elmt_R15 = Reacs.elmt_R15;
        elmt_cytoplasm.elmt_reactant20 = Reacs.elmt_reactant20;
        elmt_cytoplasm.elmt_reactant64 = Reacs.elmt_reactant64;
        elmt_cytoplasm.elmt_R10 = Reacs.elmt_R10;
        elmt_cytoplasm.elmt_product54 = Reacs.elmt_product54;
        elmt_cytoplasm.elmt_product10 = Reacs.elmt_product10;
        elmt_cytoplasm.elmt_R11 = Reacs.elmt_R11;
        elmt_cytoplasm.elmt_product53 = Reacs.elmt_product53;
        elmt_cytoplasm.elmt_reactant25 = Reacs.elmt_reactant25;
        elmt_cytoplasm.elmt_reactant22 = Reacs.elmt_reactant22;
        elmt_cytoplasm.elmt_reactant66 = Reacs.elmt_reactant66;
        elmt_cytoplasm.elmt_R18 = Reacs.elmt_R18;
        elmt_cytoplasm.elmt_R19 = Reacs.elmt_R19;
        elmt_cytoplasm.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_cytoplasm.elmt_product49 = Reacs.elmt_product49;
        elmt_cytoplasm.elmt_R20 = Reacs.elmt_R20;
        elmt_cytoplasm.elmt_product47 = Reacs.elmt_product47;
        elmt_cytoplasm.elmt_product63 = Reacs.elmt_product63;
        elmt_cytoplasm.elmt_R27 = Reacs.elmt_R27;
        elmt_cytoplasm.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_cytoplasm.elmt_R28 = Reacs.elmt_R28;
        elmt_cytoplasm.elmt_product8 = Reacs.elmt_product8;
        elmt_cytoplasm.elmt_R25 = Reacs.elmt_R25;
        elmt_cytoplasm.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_cytoplasm.elmt_R26 = Reacs.elmt_R26;
        elmt_cytoplasm.elmt_product60 = Reacs.elmt_product60;
        elmt_cytoplasm.elmt_product6 = Reacs.elmt_product6;
        elmt_cytoplasm.elmt_R23 = Reacs.elmt_R23;
        elmt_cytoplasm.elmt_product67 = Reacs.elmt_product67;
        elmt_cytoplasm.elmt_product23 = Reacs.elmt_product23;
        elmt_cytoplasm.elmt_R24 = Reacs.elmt_R24;
        elmt_cytoplasm.elmt_R21 = Reacs.elmt_R21;
        elmt_cytoplasm.elmt_product21 = Reacs.elmt_product21;
        elmt_cytoplasm.elmt_product65 = Reacs.elmt_product65;
        elmt_cytoplasm.elmt_R22 = Reacs.elmt_R22;
        elmt_cytoplasm.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_cytoplasm.elmt_reactant36 = Reacs.elmt_reactant36;
        elmt_cytoplasm.elmt_product1 = Reacs.elmt_product1;
        elmt_cytoplasm.elmt_reactant38 = Reacs.elmt_reactant38;
        elmt_cytoplasm.elmt_product5 = Reacs.elmt_product5;
        elmt_cytoplasm.elmt_reactant34 = Reacs.elmt_reactant34;
        elmt_cytoplasm.elmt_R29 = Reacs.elmt_R29;
        elmt_cytoplasm.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_cytoplasm.elmt_product3 = Reacs.elmt_product3;
        elmt_cytoplasm.elmt_reactant29 = Reacs.elmt_reactant29;
        elmt_cytoplasm.elmt_R30 = Reacs.elmt_R30;
        elmt_cytoplasm.elmt_product16 = Reacs.elmt_product16;
        elmt_cytoplasm.elmt_R31 = Reacs.elmt_R31;
        elmt_cytoplasm.elmt_product59 = Reacs.elmt_product59;
        elmt_cytoplasm.elmt_product57 = Reacs.elmt_product57;
        elmt_cytoplasm.elmt_product13 = Reacs.elmt_product13;
        elmt_cytoplasm.elmt_product19 = Reacs.elmt_product19;

        Params.assign_elmt_W = prioritize_between_2({Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY}, {elmt_event_0000001.value_elmt_W, elmt_event_0000002.value_elmt_W}, {edge(elmt_event_0000001.trigger), edge(elmt_event_0000002.trigger)});
end BIOMD0000000149;
