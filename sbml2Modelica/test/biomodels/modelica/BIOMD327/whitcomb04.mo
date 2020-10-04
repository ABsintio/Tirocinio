within BIOMD327;
model whitcomb04 "Whitcomb2004_Bicarbonate_Pancreas" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell elmt_cell;
    Class_elmt_plasma elmt_plasma;
    Class_elmt_lumen elmt_lumen;
    Class_elmt_event1 elmt_event1;
    Class_elmt_event0 elmt_event0;

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
        Params.elmt_ci = elmt_cell.elmt_ci;
        Params.elmt_nb = elmt_plasma.elmt_nb;
        Params.elmt_cb = elmt_plasma.elmt_cb;
        Params.elmt_bb = elmt_plasma.elmt_bb;
        Params.elmt_ni = elmt_cell.elmt_ni;
        Params.elmt_cl = elmt_lumen.elmt_cl;
        Params.elmt_bl = elmt_lumen.elmt_bl;
        Params.elmt_bi = elmt_cell.elmt_bi;
        Params.elmt_event1 = elmt_event1.trigger;
        Params.elmt_event0 = elmt_event0.trigger;
        Reacs.elmt_japl = Params.elmt_japl;
        Reacs.elmt_zeta = Params.elmt_zeta;
        Reacs.elmt_buf = Params.elmt_buf;
        Reacs.elmt_lumen = elmt_lumen.elmt_lumen;
        Reacs.elmt_jbcftr = Params.elmt_jbcftr;
        Reacs.elmt_bl = elmt_lumen.elmt_bl;
        Reacs.elmt_bi = elmt_cell.elmt_bi;
        Reacs.elmt_jlum = Params.elmt_jlum;
        Reacs.elmt_cell = elmt_cell.elmt_cell;
        Reacs.elmt_rat = Params.elmt_rat;
        Reacs.elmt_jnaleak = Params.elmt_jnaleak;
        Reacs.elmt_japbl = Params.elmt_japbl;
        Reacs.elmt_jnak = Params.elmt_jnak;
        Reacs.elmt_jac = Params.elmt_jac;
        Reacs.elmt_jccftr = Params.elmt_jccftr;
        Reacs.elmt_bi0 = Params.elmt_bi0;
        elmt_lumen.elmt_cell = elmt_cell.elmt_cell;
        elmt_lumen.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_lumen.elmt_bac = Reacs.elmt_bac;
        elmt_lumen.elmt_product21 = Reacs.elmt_product21;
        elmt_lumen.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_lumen.elmt_bcftr = Reacs.elmt_bcftr;
        elmt_lumen.elmt_vr = Params.elmt_vr;
        elmt_lumen.elmt_apl = Reacs.elmt_apl;
        elmt_lumen.elmt_outflow = Reacs.elmt_outflow;
        elmt_lumen.elmt_reactant23 = Reacs.elmt_reactant23;
        elmt_cell.elmt_nak = Reacs.elmt_nak;
        elmt_cell.elmt_product7 = Reacs.elmt_product7;
        elmt_cell.elmt_buffering = Reacs.elmt_buffering;
        elmt_cell.elmt_product10 = Reacs.elmt_product10;
        elmt_cell.elmt_product20 = Reacs.elmt_product20;
        elmt_cell.elmt_bcftr = Reacs.elmt_bcftr;
        elmt_cell.elmt_apbl = Reacs.elmt_apbl;
        elmt_cell.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_cell.elmt_apl = Reacs.elmt_apl;
        elmt_cell.elmt_product5 = Reacs.elmt_product5;
        elmt_cell.elmt_product3 = Reacs.elmt_product3;
        elmt_cell.elmt_reactant13 = Reacs.elmt_reactant13;
        elmt_cell.elmt_product2 = Reacs.elmt_product2;
        elmt_cell.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_cell.elmt_naleak = Reacs.elmt_naleak;
        elmt_cell.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_cell.elmt_nbc = Reacs.elmt_nbc;
        elmt_cell.elmt_ccftr = Reacs.elmt_ccftr;
        elmt_cell.elmt_product14 = Reacs.elmt_product14;
        elmt_event1.elmt_gcftrbase = Params.elmt_gcftrbase;
        elmt_event1.elmt_toff = Params.elmt_toff;
        elmt_event0.elmt_ton = Params.elmt_ton;
        elmt_event0.elmt_gcftron = Params.elmt_gcftron;

        Params.assign_elmt_gcftr = prioritize_between_2({Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY}, {elmt_event1.value_elmt_gcftr, elmt_event0.value_elmt_gcftr}, {edge(elmt_event1.trigger), edge(elmt_event0.trigger)});
end whitcomb04;
