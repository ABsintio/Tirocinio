within S2MBIOMDx8062;
class Class_elmt_compartment
    extends Modelica.Icons.VariantsPackage;


    input Real elmt_reactant1;
    input Real elmt_reactant4;
    input Real elmt_tryptophan_consumption;
    input Real elmt_reactant3;
    input Real elmt_Tomax;
    input Real elmt_f_val;
    input Real elmt_tryptophan_synthesis;
    input Real elmt_product0;
    input Real elmt_Enzyme_dilution;
    input Real elmt_product2;
    input Real elmt_Tex;
    input Real elmt_e_val;
    input Real elmt_Enzyme_synthesis;
    input Real elmt_tryptophan_dilution;

    Real elmt_compartment(unit = "") "cell";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Enz_conc(unit = "");
    Real elmt_Enz_amount(unit = "");
    Real elmt_Enz(unit = "") "Anthranilate synthase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Ts_conc(unit = "");
    Real elmt_Ts_amount(unit = "");
    Real elmt_Ts(unit = "") "Synthesized tryptophan";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Tt_conc(unit = "");
    Real elmt_Tt_amount(unit = "");
    Real elmt_Tt(unit = "") "Total tryptophan";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_To_conc(unit = "");
    Real elmt_To_amount(unit = "");
    Real elmt_To(unit = "") "exog. Trp";

    initial equation
        elmt_compartment = 1.0;
        elmt_Enz_conc = 0.0;
        elmt_Ts_conc = 0.0;


    equation
        assert(elmt_compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment) = 0;
        elmt_Enz = elmt_Enz_conc;
        elmt_Ts = elmt_Ts_conc;
        elmt_Tt = elmt_Tt_conc;
        elmt_To = elmt_To_conc;
        elmt_Tt_amount = (elmt_To + elmt_Ts) * elmt_compartment;
        elmt_To_amount = ((elmt_Tomax * elmt_Tex) / ((elmt_Tex * (1.0 + (elmt_Ts / elmt_f_val))) + elmt_e_val)) * elmt_compartment;
        der(elmt_Enz_amount) = ((elmt_Enzyme_synthesis * elmt_product0) + (- (elmt_Enzyme_dilution * elmt_reactant1)));
        der(elmt_Ts_amount) = ((- (elmt_tryptophan_consumption * elmt_reactant3)) + (elmt_tryptophan_synthesis * elmt_product2) + (- (elmt_tryptophan_dilution * elmt_reactant4)));

    algorithm
        elmt_Enz_conc := elmt_Enz_amount / elmt_compartment;
        elmt_Ts_conc := elmt_Ts_amount / elmt_compartment;
        elmt_Tt_conc := elmt_Tt_amount / elmt_compartment;
        elmt_To_conc := elmt_To_amount / elmt_compartment;
end Class_elmt_compartment;
