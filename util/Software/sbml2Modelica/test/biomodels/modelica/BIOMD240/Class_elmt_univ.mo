within BIOMD240;
class Class_elmt_univ

    input Real elmt_mRNAAprEsyn;
    input Real elmt_mRNAAprEdeg;
    input Real elmt_product11;
    input Real elmt_synthesisDegU;
    input Real elmt_DimerAss;
    input Real elmt_AprEdeg;
    input Real elmt_AprEsyn;
    input Real elmt_phosphorylation;
    input Real elmt_reactant9;
    input Real elmt_reactant2;
    input Real elmt_reactant4;
    input Real elmt_reactant6;
    input Real elmt_degradation2;
    input Real elmt_degradation1;
    input Real elmt_reactant8;
    input Real elmt_degradation3;
    input Real elmt_reactant7;
    input Real elmt_product1;
    input Real elmt_reactant14;
    input Real elmt_synthesismRNA;
    input Real elmt_product5;
    input Real elmt_reactant10;
    input Real elmt_reactant0;
    input Real elmt_product3;
    input Real elmt_reactant12;
    input Real elmt_degradationmRNA;
    input Real elmt_DimerDis;
    input Real elmt_product16;
    input Real elmt_product15;
    input Real elmt_product13;
    input Real elmt_dephosphorylation;
    input Real elmt_product17;

    Real elmt_univ(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_AprE_conc(unit = "");
    Real elmt_AprE_amount(unit = "");
    Real elmt_AprE(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Dim_conc(unit = "");
    Real elmt_Dim_amount(unit = "");
    Real elmt_Dim(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_DegU_conc(unit = "");
    Real elmt_DegU_amount(unit = "");
    Real elmt_DegU(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_mDegU_conc(unit = "");
    Real elmt_mDegU_amount(unit = "");
    Real elmt_mDegU(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_DegUP_conc(unit = "");
    Real elmt_DegUP_amount(unit = "");
    Real elmt_DegUP(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_mAprE_conc(unit = "");
    Real elmt_mAprE_amount(unit = "");
    Real elmt_mAprE(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_univ = 1.0;
        elmt_AprE_conc = (0.0 / elmt_univ);
        elmt_Dim_conc = (0.0 / elmt_univ);
        elmt_DegU_conc = (10.0 / elmt_univ);
        elmt_mDegU_conc = (0.0 / elmt_univ);
        elmt_DegUP_conc = (0.0 / elmt_univ);
        elmt_mAprE_conc = (0.0 / elmt_univ);


    equation
        assert(elmt_univ >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_univ) = 0;
        elmt_AprE = elmt_AprE_conc;
        elmt_Dim = elmt_Dim_conc;
        elmt_DegU = elmt_DegU_conc;
        elmt_mDegU = elmt_mDegU_conc;
        elmt_DegUP = elmt_DegUP_conc;
        elmt_mAprE = elmt_mAprE_conc;
        der(elmt_AprE_amount) = ((- (elmt_AprEdeg * elmt_reactant0)) + (elmt_AprEsyn * elmt_product1));
        der(elmt_Dim_amount) = ((- (elmt_degradation3 * elmt_reactant8)) + (elmt_DimerAss * elmt_product3) + (- (elmt_DimerDis * elmt_reactant4)));
        der(elmt_DegU_amount) = ((- (elmt_degradation1 * elmt_reactant6)) + (elmt_synthesisDegU * elmt_product16) + (- (elmt_phosphorylation * elmt_reactant14)) + (elmt_dephosphorylation * elmt_product11));
        der(elmt_mDegU_amount) = ((elmt_synthesismRNA * elmt_product17) + (- (elmt_degradationmRNA * elmt_reactant9)));
        der(elmt_DegUP_amount) = ((- (elmt_degradation2 * elmt_reactant7)) + (- (elmt_DimerAss * elmt_reactant2)) + (elmt_phosphorylation * elmt_product15) + (elmt_DimerDis * elmt_product5) + (- (elmt_dephosphorylation * elmt_reactant10)));
        der(elmt_mAprE_amount) = ((elmt_mRNAAprEsyn * elmt_product13) + (- (elmt_mRNAAprEdeg * elmt_reactant12)));

    algorithm
        elmt_AprE_conc := elmt_AprE_amount / elmt_univ;
        elmt_Dim_conc := elmt_Dim_amount / elmt_univ;
        elmt_DegU_conc := elmt_DegU_amount / elmt_univ;
        elmt_mDegU_conc := elmt_mDegU_amount / elmt_univ;
        elmt_DegUP_conc := elmt_DegUP_amount / elmt_univ;
        elmt_mAprE_conc := elmt_mAprE_amount / elmt_univ;
end Class_elmt_univ;
