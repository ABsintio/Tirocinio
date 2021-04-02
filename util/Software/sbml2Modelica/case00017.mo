within .;
model case00017 "case00017"
    extends Modelica.Icons.ExamplesPackage;


    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment elmt_compartment;

    equation
        Reacs.elmt_k1 = Params.elmt_k1;
        Reacs.elmt_compartment = elmt_compartment.elmt_compartment;
        Reacs.elmt_S4 = elmt_compartment.elmt_S4;
        Reacs.elmt_S2 = elmt_compartment.elmt_S2;
        Reacs.elmt_S3 = elmt_compartment.elmt_S3;
        Reacs.elmt_S1 = elmt_compartment.elmt_S1;
        Reacs.elmt_k2 = Params.elmt_k2;
        elmt_compartment.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_compartment.elmt_product7 = Reacs.elmt_product7;
        elmt_compartment.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_compartment.elmt_product6 = Reacs.elmt_product6;
        elmt_compartment.elmt_reaction2 = Reacs.elmt_reaction2;
        elmt_compartment.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_compartment.elmt_reaction1 = Reacs.elmt_reaction1;
        elmt_compartment.elmt_product3 = Reacs.elmt_product3;
        elmt_compartment.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_compartment.elmt_product2 = Reacs.elmt_product2;

end case00017;
