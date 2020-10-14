within BIOMD207;
class Reactions

    input Real elmt_kd1;
    input Real elmt_M2;
    input Real elmt_Kim2;
    input Real elmt_compartment;
    input Real elmt_M1;
    input Real elmt_K_d1;
    input Real elmt_Kim1;
    input Real elmt_K_d2;
    input Real elmt_vi2;
    input Real elmt_C1;
    input Real elmt_vi1;
    input Real elmt_kd2;
    input Real elmt_vd2;
    input Real elmt_vd1;
    input Real elmt_C2;
    input Real elmt_X1;
    input Real elmt_X2;

    Real elmt_R8(unit = "") "cyclinE synthesis";
    Real elmt_product3 "";
    Real elmt_R3(unit = "") "cyclinB degradation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant2 "";
    Real elmt_R1(unit = "") "cdk2 mediated cyclinB synthesis";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product0 "";
    Real elmt_R10(unit = "") "cyclinE degradation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant5 "";
    Real elmt_R2(unit = "") "Ubiquitin ligase mediated cyclinB degradation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant1 "";
    Real elmt_R9(unit = "") "Ubiquitin ligase mediated cyclinE degradation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant4 "";


    initial equation
        elmt_reactant2 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_product0 = 1.0;
        elmt_product3 = 1.0;


    equation
        elmt_R8 = ((elmt_compartment * elmt_vi2 * elmt_Kim2) / (elmt_Kim2 + elmt_M1));
        elmt_R3 = (elmt_compartment * elmt_kd1 * elmt_C1);
        elmt_R1 = ((elmt_compartment * elmt_vi1 * elmt_Kim1) / (elmt_Kim1 + elmt_M2));
        elmt_R10 = (elmt_compartment * elmt_kd2 * elmt_C2);
        elmt_R2 = ((elmt_compartment * elmt_vd1 * elmt_X1 * elmt_C1) / (elmt_K_d1 + elmt_C1));
        elmt_R9 = ((elmt_compartment * elmt_vd2 * elmt_X2 * elmt_C2) / (elmt_K_d2 + elmt_C2));
        der(elmt_reactant2) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_product0) = 0;
        der(elmt_product3) = 0;

end Reactions;
