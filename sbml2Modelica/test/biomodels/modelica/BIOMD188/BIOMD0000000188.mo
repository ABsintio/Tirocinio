within BIOMD188;
model BIOMD0000000188 "Proctor2008 - p53/Mdm2 circuit - p53 stabilisation by ATM" annotation(Documentation(info="<annotation>
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
        Reacs.elmt_p53_P = elmt_cell.elmt_p53_P;
        Reacs.elmt_kdegp53 = Params.elmt_kdegp53;
        Reacs.elmt_kdephosp53 = Params.elmt_kdephosp53;
        Reacs.elmt_kproteff = Params.elmt_kproteff;
        Reacs.elmt_damDNA = elmt_cell.elmt_damDNA;
        Reacs.elmt_p53_mRNA = elmt_cell.elmt_p53_mRNA;
        Reacs.elmt_ATMA = elmt_cell.elmt_ATMA;
        Reacs.elmt_ksynp53mRNA = Params.elmt_ksynp53mRNA;
        Reacs.elmt_Source = elmt_cell.elmt_Source;
        Reacs.elmt_ksynMdm2 = Params.elmt_ksynMdm2;
        Reacs.elmt_kdegMdm2 = Params.elmt_kdegMdm2;
        Reacs.elmt_Mdm2_P = elmt_cell.elmt_Mdm2_P;
        Reacs.elmt_Mdm2_mRNA = elmt_cell.elmt_Mdm2_mRNA;
        Reacs.elmt_kinactATM = Params.elmt_kinactATM;
        Reacs.elmt_kdegp53mRNA = Params.elmt_kdegp53mRNA;
        Reacs.elmt_p53 = elmt_cell.elmt_p53;
        Reacs.elmt_kbinMdm2p53 = Params.elmt_kbinMdm2p53;
        Reacs.elmt_kphosMdm2 = Params.elmt_kphosMdm2;
        Reacs.elmt_krepair = Params.elmt_krepair;
        Reacs.elmt_kphosp53 = Params.elmt_kphosp53;
        Reacs.elmt_IR = Params.elmt_IR;
        Reacs.elmt_krelMdm2p53 = Params.elmt_krelMdm2p53;
        Reacs.elmt_kdegMdm2mRNA = Params.elmt_kdegMdm2mRNA;
        Reacs.elmt_kdegATMMdm2 = Params.elmt_kdegATMMdm2;
        Reacs.elmt_kactATM = Params.elmt_kactATM;
        Reacs.elmt_ATMI = elmt_cell.elmt_ATMI;
        Reacs.elmt_kdam = Params.elmt_kdam;
        Reacs.elmt_ksynMdm2mRNA = Params.elmt_ksynMdm2mRNA;
        Reacs.elmt_Mdm2 = elmt_cell.elmt_Mdm2;
        Reacs.elmt_Mdm2_p53 = elmt_cell.elmt_Mdm2_p53;
        Reacs.elmt_ksynp53 = Params.elmt_ksynp53;
        Reacs.elmt_kdephosMdm2 = Params.elmt_kdephosMdm2;
        elmt_cell.elmt_reactant42 = Reacs.elmt_reactant42;
        elmt_cell.elmt_DNArepair = Reacs.elmt_DNArepair;
        elmt_cell.elmt_p53Synthesis = Reacs.elmt_p53Synthesis;
        elmt_cell.elmt_product34 = Reacs.elmt_product34;
        elmt_cell.elmt_product33 = Reacs.elmt_product33;
        elmt_cell.elmt_product31 = Reacs.elmt_product31;
        elmt_cell.elmt_reactant48 = Reacs.elmt_reactant48;
        elmt_cell.elmt_ATMInactivation = Reacs.elmt_ATMInactivation;
        elmt_cell.elmt_reactant49 = Reacs.elmt_reactant49;
        elmt_cell.elmt_DNAdamage = Reacs.elmt_DNAdamage;
        elmt_cell.elmt_reactant43 = Reacs.elmt_reactant43;
        elmt_cell.elmt_reactant46 = Reacs.elmt_reactant46;
        elmt_cell.elmt_ATMactivation = Reacs.elmt_ATMactivation;
        elmt_cell.elmt_Mdm2mRNASynthesis1 = Reacs.elmt_Mdm2mRNASynthesis1;
        elmt_cell.elmt_Mdm2mRNASynthesis2 = Reacs.elmt_Mdm2mRNASynthesis2;
        elmt_cell.elmt_p53mRNASynthesis = Reacs.elmt_p53mRNASynthesis;
        elmt_cell.elmt_product27 = Reacs.elmt_product27;
        elmt_cell.elmt_product25 = Reacs.elmt_product25;
        elmt_cell.elmt_product24 = Reacs.elmt_product24;
        elmt_cell.elmt_product28 = Reacs.elmt_product28;
        elmt_cell.elmt_product41 = Reacs.elmt_product41;
        elmt_cell.elmt_product40 = Reacs.elmt_product40;
        elmt_cell.elmt_reactant52 = Reacs.elmt_reactant52;
        elmt_cell.elmt_product45 = Reacs.elmt_product45;
        elmt_cell.elmt_product44 = Reacs.elmt_product44;
        elmt_cell.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_cell.elmt_p53phoshorylation = Reacs.elmt_p53phoshorylation;
        elmt_cell.elmt_reactant54 = Reacs.elmt_reactant54;
        elmt_cell.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_cell.elmt_reactant57 = Reacs.elmt_reactant57;
        elmt_cell.elmt_Mdm2mRNADegradation = Reacs.elmt_Mdm2mRNADegradation;
        elmt_cell.elmt_product35 = Reacs.elmt_product35;
        elmt_cell.elmt_product51 = Reacs.elmt_product51;
        elmt_cell.elmt_product50 = Reacs.elmt_product50;
        elmt_cell.elmt_product56 = Reacs.elmt_product56;
        elmt_cell.elmt_product11 = Reacs.elmt_product11;
        elmt_cell.elmt_product10 = Reacs.elmt_product10;
        elmt_cell.elmt_product53 = Reacs.elmt_product53;
        elmt_cell.elmt_reactant26 = Reacs.elmt_reactant26;
        elmt_cell.elmt_reactant22 = Reacs.elmt_reactant22;
        elmt_cell.elmt_P53_Mdm2Release = Reacs.elmt_P53_Mdm2Release;
        elmt_cell.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt_cell.elmt_P53_Mdm2Binding = Reacs.elmt_P53_Mdm2Binding;
        elmt_cell.elmt_Mdm2Pdegradation = Reacs.elmt_Mdm2Pdegradation;
        elmt_cell.elmt_product47 = Reacs.elmt_product47;
        elmt_cell.elmt_p53mRNADegradation = Reacs.elmt_p53mRNADegradation;
        elmt_cell.elmt_Mdm2Degradation = Reacs.elmt_Mdm2Degradation;
        elmt_cell.elmt_Mdm2Synthesis = Reacs.elmt_Mdm2Synthesis;
        elmt_cell.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_cell.elmt_product9 = Reacs.elmt_product9;
        elmt_cell.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_cell.elmt_product7 = Reacs.elmt_product7;
        elmt_cell.elmt_reactant30 = Reacs.elmt_reactant30;
        elmt_cell.elmt_product6 = Reacs.elmt_product6;
        elmt_cell.elmt_product23 = Reacs.elmt_product23;
        elmt_cell.elmt_product21 = Reacs.elmt_product21;
        elmt_cell.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_cell.elmt_reactant36 = Reacs.elmt_reactant36;
        elmt_cell.elmt_product1 = Reacs.elmt_product1;
        elmt_cell.elmt_Mdm2dephosorylation = Reacs.elmt_Mdm2dephosorylation;
        elmt_cell.elmt_reactant38 = Reacs.elmt_reactant38;
        elmt_cell.elmt_reactant39 = Reacs.elmt_reactant39;
        elmt_cell.elmt_product5 = Reacs.elmt_product5;
        elmt_cell.elmt_reactant32 = Reacs.elmt_reactant32;
        elmt_cell.elmt_p53dephosorylation = Reacs.elmt_p53dephosorylation;
        elmt_cell.elmt_reactant29 = Reacs.elmt_reactant29;
        elmt_cell.elmt_Mdm2phoshorylation = Reacs.elmt_Mdm2phoshorylation;
        elmt_cell.elmt_p53Degradation = Reacs.elmt_p53Degradation;
        elmt_cell.elmt_product15 = Reacs.elmt_product15;
        elmt_cell.elmt_product58 = Reacs.elmt_product58;
        elmt_cell.elmt_product14 = Reacs.elmt_product14;
        elmt_cell.elmt_product13 = Reacs.elmt_product13;
        elmt_cell.elmt_product18 = Reacs.elmt_product18;

        Params.assign_elmt_IR = prioritize_between_2({Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY}, {elmt_stressCell.value_elmt_IR, elmt_stopStress.value_elmt_IR}, {edge(elmt_stressCell.trigger), edge(elmt_stopStress.trigger)});
end BIOMD0000000188;
