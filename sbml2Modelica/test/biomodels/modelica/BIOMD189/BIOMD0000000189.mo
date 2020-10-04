within BIOMD189;
model BIOMD0000000189 "Proctor2008 - p53/Mdm2 circuit - p53 stablisation by p14ARF" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell elmt_cell;
    Class_elmt_stressCell elmt_stressCell;
    Class_elmt_stopStress elmt_stopStress;

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
        Params.elmt_stressCell = elmt_stressCell.trigger;
        Params.elmt_stopStress = elmt_stopStress.trigger;
        Reacs.elmt_ARF = elmt_cell.elmt_ARF;
        Reacs.elmt_kdegp53 = Params.elmt_kdegp53;
        Reacs.elmt_kproteff = Params.elmt_kproteff;
        Reacs.elmt_damDNA = elmt_cell.elmt_damDNA;
        Reacs.elmt_krepair = Params.elmt_krepair;
        Reacs.elmt_Source = elmt_cell.elmt_Source;
        Reacs.elmt_IR = Params.elmt_IR;
        Reacs.elmt_krelMdm2p53 = Params.elmt_krelMdm2p53;
        Reacs.elmt_ksynMdm2 = Params.elmt_ksynMdm2;
        Reacs.elmt_kdegARF = Params.elmt_kdegARF;
        Reacs.elmt_kdegMdm2mRNA = Params.elmt_kdegMdm2mRNA;
        Reacs.elmt_kdegMdm2 = Params.elmt_kdegMdm2;
        Reacs.elmt_kactARF = Params.elmt_kactARF;
        Reacs.elmt_kdam = Params.elmt_kdam;
        Reacs.elmt_ksynMdm2mRNA = Params.elmt_ksynMdm2mRNA;
        Reacs.elmt_Mdm2_mRNA = elmt_cell.elmt_Mdm2_mRNA;
        Reacs.elmt_Mdm2 = elmt_cell.elmt_Mdm2;
        Reacs.elmt_p53 = elmt_cell.elmt_p53;
        Reacs.elmt_ARF_Mdm2 = elmt_cell.elmt_ARF_Mdm2;
        Reacs.elmt_kbinARFMdm2 = Params.elmt_kbinARFMdm2;
        Reacs.elmt_Mdm2_p53 = elmt_cell.elmt_Mdm2_p53;
        Reacs.elmt_ksynp53 = Params.elmt_ksynp53;
        Reacs.elmt_kdegARFMdm2 = Params.elmt_kdegARFMdm2;
        Reacs.elmt_kbinMdm2p53 = Params.elmt_kbinMdm2p53;
        elmt_cell.elmt_ARF_Mdm2Binding = Reacs.elmt_ARF_Mdm2Binding;
        elmt_cell.elmt_DNArepair = Reacs.elmt_DNArepair;
        elmt_cell.elmt_p53Synthesis = Reacs.elmt_p53Synthesis;
        elmt_cell.elmt_product32 = Reacs.elmt_product32;
        elmt_cell.elmt_product31 = Reacs.elmt_product31;
        elmt_cell.elmt_ARFDegradation = Reacs.elmt_ARFDegradation;
        elmt_cell.elmt_DNAdamage = Reacs.elmt_DNAdamage;
        elmt_cell.elmt_product27 = Reacs.elmt_product27;
        elmt_cell.elmt_product26 = Reacs.elmt_product26;
        elmt_cell.elmt_product25 = Reacs.elmt_product25;
        elmt_cell.elmt_product24 = Reacs.elmt_product24;
        elmt_cell.elmt_reactant17 = Reacs.elmt_reactant17;
        elmt_cell.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_cell.elmt_ARF_Mdm2Degradation = Reacs.elmt_ARF_Mdm2Degradation;
        elmt_cell.elmt_product38 = Reacs.elmt_product38;
        elmt_cell.elmt_product37 = Reacs.elmt_product37;
        elmt_cell.elmt_Mdm2mRNADegradation = Reacs.elmt_Mdm2mRNADegradation;
        elmt_cell.elmt_product35 = Reacs.elmt_product35;
        elmt_cell.elmt_reactant20 = Reacs.elmt_reactant20;
        elmt_cell.elmt_product10 = Reacs.elmt_product10;
        elmt_cell.elmt_reactant28 = Reacs.elmt_reactant28;
        elmt_cell.elmt_reactant21 = Reacs.elmt_reactant21;
        elmt_cell.elmt_reactant23 = Reacs.elmt_reactant23;
        elmt_cell.elmt_P53_Mdm2Release = Reacs.elmt_P53_Mdm2Release;
        elmt_cell.elmt_P53_Mdm2Binding = Reacs.elmt_P53_Mdm2Binding;
        elmt_cell.elmt_Mdm2Degradation = Reacs.elmt_Mdm2Degradation;
        elmt_cell.elmt_Mdm2Synthesis = Reacs.elmt_Mdm2Synthesis;
        elmt_cell.elmt_reactant30 = Reacs.elmt_reactant30;
        elmt_cell.elmt_product7 = Reacs.elmt_product7;
        elmt_cell.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_cell.elmt_product6 = Reacs.elmt_product6;
        elmt_cell.elmt_product22 = Reacs.elmt_product22;
        elmt_cell.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_cell.elmt_product1 = Reacs.elmt_product1;
        elmt_cell.elmt_reactant36 = Reacs.elmt_reactant36;
        elmt_cell.elmt_Mdm2mRNASynthesis = Reacs.elmt_Mdm2mRNASynthesis;
        elmt_cell.elmt_reactant39 = Reacs.elmt_reactant39;
        elmt_cell.elmt_product5 = Reacs.elmt_product5;
        elmt_cell.elmt_reactant33 = Reacs.elmt_reactant33;
        elmt_cell.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_cell.elmt_product3 = Reacs.elmt_product3;
        elmt_cell.elmt_reactant34 = Reacs.elmt_reactant34;
        elmt_cell.elmt_product2 = Reacs.elmt_product2;
        elmt_cell.elmt_ARFactivation = Reacs.elmt_ARFactivation;
        elmt_cell.elmt_p53Degradation = Reacs.elmt_p53Degradation;
        elmt_cell.elmt_product16 = Reacs.elmt_product16;
        elmt_cell.elmt_product15 = Reacs.elmt_product15;
        elmt_cell.elmt_product13 = Reacs.elmt_product13;
        elmt_cell.elmt_product19 = Reacs.elmt_product19;
        elmt_cell.elmt_product18 = Reacs.elmt_product18;

        Params.assign_elmt_IR = prioritize_between_2({Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY}, {elmt_stressCell.value_elmt_IR, elmt_stopStress.value_elmt_IR}, {edge(elmt_stressCell.trigger), edge(elmt_stopStress.trigger)});
end BIOMD0000000189;
