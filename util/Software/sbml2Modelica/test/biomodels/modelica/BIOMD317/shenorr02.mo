within BIOMD317;
model shenorr02 "Shen-Orr2002_Single_Input_Module" annotation(Documentation(info="<annotation>
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
        Reacs.elmt_X = elmt_cell.elmt_X;
        Reacs.elmt_Z3 = elmt_cell.elmt_Z3;
        Reacs.elmt_Z1 = elmt_cell.elmt_Z1;
        Reacs.elmt_Z2 = elmt_cell.elmt_Z2;
        elmt_cell.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_cell.elmt_r5 = Reacs.elmt_r5;
        elmt_cell.elmt_r6 = Reacs.elmt_r6;
        elmt_cell.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_cell.elmt_r3 = Reacs.elmt_r3;
        elmt_cell.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_cell.elmt_r4 = Reacs.elmt_r4;
        elmt_cell.elmt_r1 = Reacs.elmt_r1;
        elmt_cell.elmt_r2 = Reacs.elmt_r2;
        elmt_cell.elmt_product0 = Reacs.elmt_product0;
        elmt_cell.elmt_product4 = Reacs.elmt_product4;
        elmt_cell.elmt_product2 = Reacs.elmt_product2;
        elmt_cell.elmt_FX = Params.elmt_FX;

        Params.assign_elmt_FX = prioritize_between_2({Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY}, {elmt_e2.value_elmt_FX, elmt_e1.value_elmt_FX}, {edge(elmt_e2.trigger), edge(elmt_e1.trigger)});
end shenorr02;
