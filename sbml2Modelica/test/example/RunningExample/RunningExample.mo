within RunningExample;
model RunningExample "Running Example Model"
    extends Modelica.Icons.ExamplesPackage;


    Parameters Params;
    Reactions Reacs;
    Class_elmt_c elmt_c;
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
    ((elmt_c.elmt_s2 / elmt_c.elmt_s1) - (elmt_c.elmt_s3 / elmt_c.elmt_s4)) = 0;

        Params.elmt_e2 = elmt_e2.execution;
        Params.elmt_e1 = elmt_e1.trigger;
        Reacs.elmt_p2 = Params.elmt_p2;
        Reacs.elmt_s2 = elmt_c.elmt_s2;
        Reacs.elmt_s1 = elmt_c.elmt_s1;
        elmt_c.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_c.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_c.elmt_p1 = Params.elmt_p1;
        elmt_c.elmt_product1 = Reacs.elmt_product1;
        elmt_c.elmt_r = Reacs.elmt_r;
        elmt_e1.elmt_s4 = elmt_c.elmt_s4;
        elmt_e1.elmt_s2 = elmt_c.elmt_s2;
        elmt_e1.elmt_s3 = elmt_c.elmt_s3;
        elmt_e1.elmt_s1 = elmt_c.elmt_s1;
        elmt_e2.elmt_p4 = Params.elmt_p4;
        elmt_e2.elmt_s4 = elmt_c.elmt_s4;
        elmt_e2.elmt_s2 = elmt_c.elmt_s2;
        elmt_e2.elmt_s3 = elmt_c.elmt_s3;
        elmt_e2.elmt_s1 = elmt_c.elmt_s1;

        Params.assign_elmt_p4 = elmt_e2.value_elmt_p4;
        Params.assign_elmt_p2 = prioritize_between_2({elmt_e2.priority, elmt_e1.priority}, {elmt_e2.value_elmt_p2, elmt_e1.value_elmt_p2}, {edge(elmt_e2.execution), edge(elmt_e1.trigger)});
end RunningExample;
