within BIOMD389;
class Class_elmt_cytosol

    input Real elmt_TPT;
    input Real elmt_product41;
    input Real elmt_reactant40;
    input Real elmt_reactant52;
    input Real elmt_product50;
    input Real elmt_product45;
    input Real elmt_product44;
    input Real elmt_Diffu;
    input Real elmt_Transl;
    input Real elmt_reactant58;
    input Real elmt_UTP_S;
    input Real elmt_reactant43;
    input Real elmt_reactant54;
    input Real elmt_reactant56;
    input Real elmt_reactant46;
    input Real elmt_FBPc_A_ase;
    input Real elmt_Respi;
    input Real elmt_Suc_S;
    input Real elmt_product48;

    Real elmt_cytosol(unit = "") "cytosol";
    Real elmt_TPc_conc(unit = "");
    Real elmt_TPc_amount(unit = "");
    Real elmt_TPc(unit = "") "TPc";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_HePc_conc(unit = "");
    Real elmt_HePc_amount(unit = "");
    Real elmt_HePc(unit = "") "HePc";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Suc_conc(unit = "");
    Real elmt_Suc_amount(unit = "");
    Real elmt_Suc(unit = "") "Suc";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Pic_conc(unit = "");
    Real elmt_Pic_amount(unit = "");
    Real elmt_Pic(unit = "") "Pic";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_cytosol = 1.0;
        elmt_TPc_conc = 0.114;
        elmt_HePc_conc = 0.1;
        elmt_Suc_conc = 77.31;
        elmt_Pic_conc = 0.8;


    equation
        assert(elmt_cytosol >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cytosol) = 0;
        elmt_TPc = elmt_TPc_conc;
        elmt_HePc = elmt_HePc_conc;
        elmt_Suc = elmt_Suc_conc;
        elmt_Pic = elmt_Pic_conc;
        der(elmt_TPc_amount) = ((elmt_TPT * elmt_product41) + (- (elmt_FBPc_A_ase * elmt_reactant43)));
        der(elmt_HePc_amount) = ((elmt_FBPc_A_ase * elmt_product44) + (- (elmt_Suc_S * elmt_reactant46)));
        der(elmt_Suc_amount) = ((- (elmt_Diffu * elmt_reactant56)) + (- (elmt_Transl * elmt_reactant58)) + (- (elmt_Respi * elmt_reactant54)) + (elmt_Suc_S * elmt_product48));
        der(elmt_Pic_amount) = ((- (elmt_TPT * elmt_reactant40)) + (- (elmt_UTP_S * elmt_reactant52)) + (elmt_FBPc_A_ase * elmt_product45) + (elmt_Suc_S * elmt_product50));

    algorithm
        elmt_TPc_conc := elmt_TPc_amount / elmt_cytosol;
        elmt_HePc_conc := elmt_HePc_amount / elmt_cytosol;
        elmt_Suc_conc := elmt_Suc_amount / elmt_cytosol;
        elmt_Pic_conc := elmt_Pic_amount / elmt_cytosol;
end Class_elmt_cytosol;
