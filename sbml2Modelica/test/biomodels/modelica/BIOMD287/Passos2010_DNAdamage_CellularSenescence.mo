within BIOMD287;
model Passos2010_DNAdamage_CellularSenescence "Passos2010_DNAdamage_CellularSenescence" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell elmt_cell;
    Class_elmt_stressCell elmt_stressCell;
    Class_elmt_stopStress elmt_stopStress;
    Class_elmt_stopp38ROS elmt_stopp38ROS;

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
        Params.elmt_stopp38ROS = elmt_stopp38ROS.trigger;
        Reacs.elmt_GADD45 = elmt_cell.elmt_GADD45;
        Reacs.elmt_ROS = elmt_cell.elmt_ROS;
        Reacs.elmt_p53_P = elmt_cell.elmt_p53_P;
        Reacs.elmt_ksynp53mRNA = Params.elmt_ksynp53mRNA;
        Reacs.elmt_ksynMdm2 = Params.elmt_ksynMdm2;
        Reacs.elmt_kdephosp38 = Params.elmt_kdephosp38;
        Reacs.elmt_kp38ROS = Params.elmt_kp38ROS;
        Reacs.elmt_Mdm2_P = elmt_cell.elmt_Mdm2_P;
        Reacs.elmt_Mdm2_mRNA = elmt_cell.elmt_Mdm2_mRNA;
        Reacs.elmt_kbinMdm2p53 = Params.elmt_kbinMdm2p53;
        Reacs.elmt_p38_P = elmt_cell.elmt_p38_P;
        Reacs.elmt_p38 = elmt_cell.elmt_p38;
        Reacs.elmt_kdegp53mdm2ind = Params.elmt_kdegp53mdm2ind;
        Reacs.elmt_kphosp53 = Params.elmt_kphosp53;
        Reacs.elmt_kGADD45 = Params.elmt_kGADD45;
        Reacs.elmt_kdegGADD45 = Params.elmt_kdegGADD45;
        Reacs.elmt_IR = elmt_cell.elmt_IR;
        Reacs.elmt_p21_mRNA = elmt_cell.elmt_p21_mRNA;
        Reacs.elmt_kdam = Params.elmt_kdam;
        Reacs.elmt_ksynMdm2mRNA = Params.elmt_ksynMdm2mRNA;
        Reacs.elmt_kremROS = Params.elmt_kremROS;
        Reacs.elmt_Mdm2 = elmt_cell.elmt_Mdm2;
        Reacs.elmt_kdamBasalROS = Params.elmt_kdamBasalROS;
        Reacs.elmt_kdephosMdm2 = Params.elmt_kdephosMdm2;
        Reacs.elmt_kgenROSp38 = Params.elmt_kgenROSp38;
        Reacs.elmt_kdegp53 = Params.elmt_kdegp53;
        Reacs.elmt_kdephosp53 = Params.elmt_kdephosp53;
        Reacs.elmt_damDNA = elmt_cell.elmt_damDNA;
        Reacs.elmt_p53_mRNA = elmt_cell.elmt_p53_mRNA;
        Reacs.elmt_ATMA = elmt_cell.elmt_ATMA;
        Reacs.elmt_ksynp21mRNAp53 = Params.elmt_ksynp21mRNAp53;
        Reacs.elmt_Source = elmt_cell.elmt_Source;
        Reacs.elmt_basalROS = elmt_cell.elmt_basalROS;
        Reacs.elmt_kdegMdm2 = Params.elmt_kdegMdm2;
        Reacs.elmt_ksynp21mRNAp53P = Params.elmt_ksynp21mRNAp53P;
        Reacs.elmt_kinactATM = Params.elmt_kinactATM;
        Reacs.elmt_kdegp53mRNA = Params.elmt_kdegp53mRNA;
        Reacs.elmt_p53 = elmt_cell.elmt_p53;
        Reacs.elmt_kdegp21 = Params.elmt_kdegp21;
        Reacs.elmt_kphosMdm2 = Params.elmt_kphosMdm2;
        Reacs.elmt_krepair = Params.elmt_krepair;
        Reacs.elmt_krelMdm2p53 = Params.elmt_krelMdm2p53;
        Reacs.elmt_kphosp38 = Params.elmt_kphosp38;
        Reacs.elmt_kdegATMMdm2 = Params.elmt_kdegATMMdm2;
        Reacs.elmt_kdegMdm2mRNA = Params.elmt_kdegMdm2mRNA;
        Reacs.elmt_kactATM = Params.elmt_kactATM;
        Reacs.elmt_kdamROS = Params.elmt_kdamROS;
        Reacs.elmt_ATMI = elmt_cell.elmt_ATMI;
        Reacs.elmt_ksynp21step3 = Params.elmt_ksynp21step3;
        Reacs.elmt_ksynp21step2 = Params.elmt_ksynp21step2;
        Reacs.elmt_ksynp21step1 = Params.elmt_ksynp21step1;
        Reacs.elmt_kdegp21mRNA = Params.elmt_kdegp21mRNA;
        Reacs.elmt_p21step1 = elmt_cell.elmt_p21step1;
        Reacs.elmt_p21 = elmt_cell.elmt_p21;
        Reacs.elmt_Mdm2_p53 = elmt_cell.elmt_Mdm2_p53;
        Reacs.elmt_p21step2 = elmt_cell.elmt_p21step2;
        Reacs.elmt_ksynp53 = Params.elmt_ksynp53;
        elmt_cell.elmt_p21degradation = Reacs.elmt_p21degradation;
        elmt_cell.elmt_reactant41 = Reacs.elmt_reactant41;
        elmt_cell.elmt_reactant42 = Reacs.elmt_reactant42;
        elmt_cell.elmt_product71 = Reacs.elmt_product71;
        elmt_cell.elmt_DNArepair = Reacs.elmt_DNArepair;
        elmt_cell.elmt_p53Synthesis = Reacs.elmt_p53Synthesis;
        elmt_cell.elmt_product76 = Reacs.elmt_product76;
        elmt_cell.elmt_product75 = Reacs.elmt_product75;
        elmt_cell.elmt_GADD45degradation = Reacs.elmt_GADD45degradation;
        elmt_cell.elmt_reactant47 = Reacs.elmt_reactant47;
        elmt_cell.elmt_reactant48 = Reacs.elmt_reactant48;
        elmt_cell.elmt_p38inactivation = Reacs.elmt_p38inactivation;
        elmt_cell.elmt_DNAdamage = Reacs.elmt_DNAdamage;
        elmt_cell.elmt_reactant45 = Reacs.elmt_reactant45;
        elmt_cell.elmt_ATMactivation = Reacs.elmt_ATMactivation;
        elmt_cell.elmt_Mdm2mRNASynthesis1 = Reacs.elmt_Mdm2mRNASynthesis1;
        elmt_cell.elmt_Mdm2mRNASynthesis2 = Reacs.elmt_Mdm2mRNASynthesis2;
        elmt_cell.elmt_basalROSDNAdamage = Reacs.elmt_basalROSDNAdamage;
        elmt_cell.elmt_product69 = Reacs.elmt_product69;
        elmt_cell.elmt_product84 = Reacs.elmt_product84;
        elmt_cell.elmt_reactant51 = Reacs.elmt_reactant51;
        elmt_cell.elmt_product82 = Reacs.elmt_product82;
        elmt_cell.elmt_reactant53 = Reacs.elmt_reactant53;
        elmt_cell.elmt_product87 = Reacs.elmt_product87;
        elmt_cell.elmt_product86 = Reacs.elmt_product86;
        elmt_cell.elmt_p53phoshorylation = Reacs.elmt_p53phoshorylation;
        elmt_cell.elmt_product81 = Reacs.elmt_product81;
        elmt_cell.elmt_reactant55 = Reacs.elmt_reactant55;
        elmt_cell.elmt_reactant57 = Reacs.elmt_reactant57;
        elmt_cell.elmt_product95 = Reacs.elmt_product95;
        elmt_cell.elmt_product94 = Reacs.elmt_product94;
        elmt_cell.elmt_reactant20 = Reacs.elmt_reactant20;
        elmt_cell.elmt_product12 = Reacs.elmt_product12;
        elmt_cell.elmt_product11 = Reacs.elmt_product11;
        elmt_cell.elmt_reactant26 = Reacs.elmt_reactant26;
        elmt_cell.elmt_reactant27 = Reacs.elmt_reactant27;
        elmt_cell.elmt_product92 = Reacs.elmt_product92;
        elmt_cell.elmt_product91 = Reacs.elmt_product91;
        elmt_cell.elmt_reactant22 = Reacs.elmt_reactant22;
        elmt_cell.elmt_reactant24 = Reacs.elmt_reactant24;
        elmt_cell.elmt_Mdm2Pdegradation = Reacs.elmt_Mdm2Pdegradation;
        elmt_cell.elmt_p21mRNASynthesis1 = Reacs.elmt_p21mRNASynthesis1;
        elmt_cell.elmt_GADD45activation2 = Reacs.elmt_GADD45activation2;
        elmt_cell.elmt_p53mRNADegradation = Reacs.elmt_p53mRNADegradation;
        elmt_cell.elmt_Mdm2Degradation = Reacs.elmt_Mdm2Degradation;
        elmt_cell.elmt_p21mRNASynthesis2 = Reacs.elmt_p21mRNASynthesis2;
        elmt_cell.elmt_Mdm2Synthesis = Reacs.elmt_Mdm2Synthesis;
        elmt_cell.elmt_product9 = Reacs.elmt_product9;
        elmt_cell.elmt_product8 = Reacs.elmt_product8;
        elmt_cell.elmt_product6 = Reacs.elmt_product6;
        elmt_cell.elmt_product21 = Reacs.elmt_product21;
        elmt_cell.elmt_product1 = Reacs.elmt_product1;
        elmt_cell.elmt_Mdm2dephosorylation = Reacs.elmt_Mdm2dephosorylation;
        elmt_cell.elmt_reactant37 = Reacs.elmt_reactant37;
        elmt_cell.elmt_p21Synthesis1 = Reacs.elmt_p21Synthesis1;
        elmt_cell.elmt_reactant38 = Reacs.elmt_reactant38;
        elmt_cell.elmt_reactant32 = Reacs.elmt_reactant32;
        elmt_cell.elmt_product5 = Reacs.elmt_product5;
        elmt_cell.elmt_p21Synthesis2 = Reacs.elmt_p21Synthesis2;
        elmt_cell.elmt_reactant35 = Reacs.elmt_reactant35;
        elmt_cell.elmt_p21Synthesis3 = Reacs.elmt_p21Synthesis3;
        elmt_cell.elmt_ROSgenerationP38 = Reacs.elmt_ROSgenerationP38;
        elmt_cell.elmt_reactant29 = Reacs.elmt_reactant29;
        elmt_cell.elmt_product19 = Reacs.elmt_product19;
        elmt_cell.elmt_product18 = Reacs.elmt_product18;
        elmt_cell.elmt_product30 = Reacs.elmt_product30;
        elmt_cell.elmt_reactant83 = Reacs.elmt_reactant83;
        elmt_cell.elmt_reactant85 = Reacs.elmt_reactant85;
        elmt_cell.elmt_product34 = Reacs.elmt_product34;
        elmt_cell.elmt_reactant80 = Reacs.elmt_reactant80;
        elmt_cell.elmt_product33 = Reacs.elmt_product33;
        elmt_cell.elmt_product31 = Reacs.elmt_product31;
        elmt_cell.elmt_ATMInactivation = Reacs.elmt_ATMInactivation;
        elmt_cell.elmt_reactant88 = Reacs.elmt_reactant88;
        elmt_cell.elmt_ROSDNAdamage = Reacs.elmt_ROSDNAdamage;
        elmt_cell.elmt_p53mRNASynthesis = Reacs.elmt_p53mRNASynthesis;
        elmt_cell.elmt_product28 = Reacs.elmt_product28;
        elmt_cell.elmt_product40 = Reacs.elmt_product40;
        elmt_cell.elmt_reactant90 = Reacs.elmt_reactant90;
        elmt_cell.elmt_product44 = Reacs.elmt_product44;
        elmt_cell.elmt_product43 = Reacs.elmt_product43;
        elmt_cell.elmt_reactant93 = Reacs.elmt_reactant93;
        elmt_cell.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_cell.elmt_reactant17 = Reacs.elmt_reactant17;
        elmt_cell.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_cell.elmt_reactant13 = Reacs.elmt_reactant13;
        elmt_cell.elmt_Mdm2mRNADegradation = Reacs.elmt_Mdm2mRNADegradation;
        elmt_cell.elmt_p21mRNADegradation = Reacs.elmt_p21mRNADegradation;
        elmt_cell.elmt_product39 = Reacs.elmt_product39;
        elmt_cell.elmt_product52 = Reacs.elmt_product52;
        elmt_cell.elmt_product50 = Reacs.elmt_product50;
        elmt_cell.elmt_reactant63 = Reacs.elmt_reactant63;
        elmt_cell.elmt_ROSremoval = Reacs.elmt_ROSremoval;
        elmt_cell.elmt_product56 = Reacs.elmt_product56;
        elmt_cell.elmt_reactant60 = Reacs.elmt_reactant60;
        elmt_cell.elmt_reactant65 = Reacs.elmt_reactant65;
        elmt_cell.elmt_p38activation = Reacs.elmt_p38activation;
        elmt_cell.elmt_reactant68 = Reacs.elmt_reactant68;
        elmt_cell.elmt_P53_Mdm2Release = Reacs.elmt_P53_Mdm2Release;
        elmt_cell.elmt_P53_Mdm2Binding = Reacs.elmt_P53_Mdm2Binding;
        elmt_cell.elmt_product49 = Reacs.elmt_product49;
        elmt_cell.elmt_product46 = Reacs.elmt_product46;
        elmt_cell.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_cell.elmt_reactant72 = Reacs.elmt_reactant72;
        elmt_cell.elmt_product62 = Reacs.elmt_product62;
        elmt_cell.elmt_product61 = Reacs.elmt_product61;
        elmt_cell.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_cell.elmt_reactant74 = Reacs.elmt_reactant74;
        elmt_cell.elmt_product67 = Reacs.elmt_product67;
        elmt_cell.elmt_product66 = Reacs.elmt_product66;
        elmt_cell.elmt_reactant70 = Reacs.elmt_reactant70;
        elmt_cell.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_cell.elmt_reactant77 = Reacs.elmt_reactant77;
        elmt_cell.elmt_reactant79 = Reacs.elmt_reactant79;
        elmt_cell.elmt_p53dephosorylation = Reacs.elmt_p53dephosorylation;
        elmt_cell.elmt_Mdm2phoshorylation = Reacs.elmt_Mdm2phoshorylation;
        elmt_cell.elmt_p53Degradation = Reacs.elmt_p53Degradation;
        elmt_cell.elmt_p53Mdm2IndepDegradation2 = Reacs.elmt_p53Mdm2IndepDegradation2;
        elmt_cell.elmt_p53Mdm2IndepDegradation1 = Reacs.elmt_p53Mdm2IndepDegradation1;
        elmt_cell.elmt_product59 = Reacs.elmt_product59;
        elmt_cell.elmt_product58 = Reacs.elmt_product58;
        elmt_cell.elmt_stressCell = elmt_stressCell.trigger;
        elmt_cell.elmt_stopStress = elmt_stopStress.trigger;

        Params.assign_elmt_kp38ROS = elmt_stopp38ROS.value_elmt_kp38ROS;
        elmt_cell.assign_elmt_IR = prioritize_between_2({Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY}, {elmt_stressCell.value_elmt_IR, elmt_stopStress.value_elmt_IR}, {edge(elmt_stressCell.trigger), edge(elmt_stopStress.trigger)});
end Passos2010_DNAdamage_CellularSenescence;
