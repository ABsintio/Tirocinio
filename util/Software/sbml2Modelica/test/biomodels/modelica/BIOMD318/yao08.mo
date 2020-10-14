within BIOMD318;
model yao08 "Yao2008_Rb_E2F_Switch" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell elmt_cell;
    Class_elmt_e2 elmt_e2;
    Class_elmt_e1 elmt_e1;

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
        Params.elmt_e2 = elmt_e2.trigger;
        Params.elmt_e1 = elmt_e1.trigger;
        Reacs.elmt_MC = elmt_cell.elmt_MC;
        Reacs.elmt_cell = elmt_cell.elmt_cell;
        Reacs.elmt_RE = elmt_cell.elmt_RE;
        Reacs.elmt_CD = elmt_cell.elmt_CD;
        Reacs.elmt_EF = elmt_cell.elmt_EF;
        Reacs.elmt_CE = elmt_cell.elmt_CE;
        Reacs.elmt_RB = elmt_cell.elmt_RB;
        Reacs.elmt_RP = elmt_cell.elmt_RP;
        Reacs.elmt_S = Params.elmt_S;
        elmt_cell.elmt_r7 = Reacs.elmt_r7;
        elmt_cell.elmt_r8 = Reacs.elmt_r8;
        elmt_cell.elmt_r5 = Reacs.elmt_r5;
        elmt_cell.elmt_reactant20 = Reacs.elmt_reactant20;
        elmt_cell.elmt_r6 = Reacs.elmt_r6;
        elmt_cell.elmt_r3 = Reacs.elmt_r3;
        elmt_cell.elmt_product11 = Reacs.elmt_product11;
        elmt_cell.elmt_r4 = Reacs.elmt_r4;
        elmt_cell.elmt_r1 = Reacs.elmt_r1;
        elmt_cell.elmt_r2 = Reacs.elmt_r2;
        elmt_cell.elmt_reactant21 = Reacs.elmt_reactant21;
        elmt_cell.elmt_reactant22 = Reacs.elmt_reactant22;
        elmt_cell.elmt_r9 = Reacs.elmt_r9;
        elmt_cell.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_cell.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt_cell.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_cell.elmt_r17 = Reacs.elmt_r17;
        elmt_cell.elmt_product8 = Reacs.elmt_product8;
        elmt_cell.elmt_r16 = Reacs.elmt_r16;
        elmt_cell.elmt_product7 = Reacs.elmt_product7;
        elmt_cell.elmt_r15 = Reacs.elmt_r15;
        elmt_cell.elmt_r14 = Reacs.elmt_r14;
        elmt_cell.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_cell.elmt_r13 = Reacs.elmt_r13;
        elmt_cell.elmt_r12 = Reacs.elmt_r12;
        elmt_cell.elmt_r11 = Reacs.elmt_r11;
        elmt_cell.elmt_r10 = Reacs.elmt_r10;
        elmt_cell.elmt_product1 = Reacs.elmt_product1;
        elmt_cell.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_cell.elmt_product0 = Reacs.elmt_product0;
        elmt_cell.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_cell.elmt_reactant17 = Reacs.elmt_reactant17;
        elmt_cell.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_cell.elmt_product5 = Reacs.elmt_product5;
        elmt_cell.elmt_product4 = Reacs.elmt_product4;
        elmt_cell.elmt_product3 = Reacs.elmt_product3;
        elmt_cell.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_cell.elmt_product2 = Reacs.elmt_product2;
        elmt_cell.elmt_product15 = Reacs.elmt_product15;
        elmt_cell.elmt_product13 = Reacs.elmt_product13;

        Params.assign_elmt_S = prioritize_between_2({Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY}, {elmt_e2.value_elmt_S, elmt_e1.value_elmt_S}, {edge(elmt_e2.trigger), edge(elmt_e1.trigger)});
end yao08;
