within BIOMD314;
class Parameters

    Real elmt_pRec_intern(unit = "") "";
    Real elmt_pJAK2_dephosphorylation(unit = "") "";
    Real elmt_JAK2_phosphorylation(unit = "") "";
    Real elmt_CD274mRNA_production(unit = "") "";
    Real elmt_Rec_phosphorylation(unit = "") "";
    Real elmt_STAT5_phosphorylation(unit = "") "";
    Real elmt_Kon_IL13Rec(unit = "") "";
    Real elmt_pRec_degradation(unit = "") "";
    Real elmt_Rec_intern(unit = "") "";
    Real elmt_Rec_recycle(unit = "") "";
    Real elmt_pSTAT5_dephosphorylation(unit = "") "";
    Real elmt_IL13stimulation(unit = ".m3.0") "IL13stimulation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
          </rdf:RDF>
        </annotation>"));


    initial equation
        elmt_pRec_intern = 0.324132;
        elmt_pJAK2_dephosphorylation = 0.0981611;
        elmt_JAK2_phosphorylation = 0.300019;
        elmt_CD274mRNA_production = 0.0115928;
        elmt_Rec_phosphorylation = 9.07541;
        elmt_STAT5_phosphorylation = 0.00426767;
        elmt_Kon_IL13Rec = 0.00174087;
        elmt_pRec_degradation = 0.417538;
        elmt_Rec_intern = 0.259686;
        elmt_Rec_recycle = 0.0039243;
        elmt_pSTAT5_dephosphorylation = 0.0116389;
        elmt_IL13stimulation = 1.0;


    equation
        der(elmt_pRec_intern) = 0;
        der(elmt_pJAK2_dephosphorylation) = 0;
        der(elmt_JAK2_phosphorylation) = 0;
        der(elmt_CD274mRNA_production) = 0;
        der(elmt_Rec_phosphorylation) = 0;
        der(elmt_STAT5_phosphorylation) = 0;
        der(elmt_Kon_IL13Rec) = 0;
        der(elmt_pRec_degradation) = 0;
        der(elmt_Rec_intern) = 0;
        der(elmt_Rec_recycle) = 0;
        der(elmt_pSTAT5_dephosphorylation) = 0;
        der(elmt_IL13stimulation) = 0;

end Parameters;
