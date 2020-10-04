within BIOMD313;
class Parameters

    Real elmt_pRec_intern(unit = "") "";
    Real elmt_pJAK2_dephosphorylation(unit = "") "";
    Real elmt_JAK2_p_inhibition(unit = "") "";
    Real elmt_JAK2_phosphorylation(unit = "") "";
    Real elmt_CD274mRNA_production(unit = "") "";
    Real elmt_Rec_phosphorylation(unit = "") "";
    Real elmt_STAT5_phosphorylation(unit = "") "";
    Real elmt_Kon_IL13Rec(unit = "") "";
    Real elmt_SOCS3mRNA_production(unit = "") "";
    Real elmt_SOCS3_translation(unit = "") "";
    Real elmt_SOCS3_accumulation(unit = "") "";
    Real elmt_DecoyR_binding(unit = "") "";
    Real elmt_pRec_degradation(unit = "") "";
    Real elmt_SOCS3_degradation(unit = "") "";
    Real elmt_Rec_intern(unit = "") "";
    Real elmt_Rec_recycle(unit = "") "";
    Real elmt_pSTAT5_dephosphorylation(unit = "") "";
    Real elmt_IL13stimulation(unit = ".m3.0") "IL13stimulation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	</rdf:RDF>
	</annotation>"));


    initial equation
        elmt_pRec_intern = 0.15254;
        elmt_pJAK2_dephosphorylation = 6.21906E-4;
        elmt_JAK2_p_inhibition = 0.0168268;
        elmt_JAK2_phosphorylation = 0.157057;
        elmt_CD274mRNA_production = 8.21752E-5;
        elmt_Rec_phosphorylation = 999.631;
        elmt_STAT5_phosphorylation = 0.0382596;
        elmt_Kon_IL13Rec = 0.00341992;
        elmt_SOCS3mRNA_production = 0.00215826;
        elmt_SOCS3_translation = 11.9086;
        elmt_SOCS3_accumulation = 3.70803;
        elmt_DecoyR_binding = 1.24391E-4;
        elmt_pRec_degradation = 0.172928;
        elmt_SOCS3_degradation = 0.0429186;
        elmt_Rec_intern = 0.103346;
        elmt_Rec_recycle = 0.00135598;
        elmt_pSTAT5_dephosphorylation = 3.43392E-4;
        elmt_IL13stimulation = 1.0;


    equation
        der(elmt_pRec_intern) = 0;
        der(elmt_pJAK2_dephosphorylation) = 0;
        der(elmt_JAK2_p_inhibition) = 0;
        der(elmt_JAK2_phosphorylation) = 0;
        der(elmt_CD274mRNA_production) = 0;
        der(elmt_Rec_phosphorylation) = 0;
        der(elmt_STAT5_phosphorylation) = 0;
        der(elmt_Kon_IL13Rec) = 0;
        der(elmt_SOCS3mRNA_production) = 0;
        der(elmt_SOCS3_translation) = 0;
        der(elmt_SOCS3_accumulation) = 0;
        der(elmt_DecoyR_binding) = 0;
        der(elmt_pRec_degradation) = 0;
        der(elmt_SOCS3_degradation) = 0;
        der(elmt_Rec_intern) = 0;
        der(elmt_Rec_recycle) = 0;
        der(elmt_pSTAT5_dephosphorylation) = 0;
        der(elmt_IL13stimulation) = 0;

end Parameters;
