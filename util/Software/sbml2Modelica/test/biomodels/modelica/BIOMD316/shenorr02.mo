within BIOMD316;
model shenorr02 "Shen-Orr2002_FeedForward_AND_gate" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell elmt_cell;
    Class_elmt_e4 elmt_e4;
    Class_elmt_e2 elmt_e2;
    Class_elmt_e3 elmt_e3;
    Class_elmt_e1 elmt_e1;

    function prioritize_between_4
        input Real[4] prios;
        input Real[4] values;
        input Boolean[4] trigs;
        output Real value;
        protected Real min_prio;
        algorithm
            value := 0;
            min_prio := Constants.INFINITY;
            for i in 1:4 loop
                if trigs[i] and prios[i] < min_prio then
                    value := values[i];
                    min_prio := prios[i];
                end if;
            end for;
    end prioritize_between_4;
    equation
        Reacs.elmt_Y = elmt_cell.elmt_Y;
        Reacs.elmt_Z = elmt_cell.elmt_Z;
        Reacs.elmt_X = elmt_cell.elmt_X;
        elmt_cell.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_cell.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_cell.elmt_r3 = Reacs.elmt_r3;
        elmt_cell.elmt_r4 = Reacs.elmt_r4;
        elmt_cell.elmt_r1 = Reacs.elmt_r1;
        elmt_cell.elmt_r2 = Reacs.elmt_r2;
        elmt_cell.elmt_product0 = Reacs.elmt_product0;
        elmt_cell.elmt_product2 = Reacs.elmt_product2;
        elmt_cell.elmt_e4 = elmt_e4.trigger;
        elmt_cell.elmt_e2 = elmt_e2.trigger;
        elmt_cell.elmt_e3 = elmt_e3.trigger;
        elmt_cell.elmt_e1 = elmt_e1.trigger;

        elmt_cell.assign_elmt_X = prioritize_between_4({Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY}, {elmt_e4.value_elmt_X, elmt_e2.value_elmt_X, elmt_e3.value_elmt_X, elmt_e1.value_elmt_X}, {edge(elmt_e4.trigger), edge(elmt_e2.trigger), edge(elmt_e3.trigger), edge(elmt_e1.trigger)});
end shenorr02;
