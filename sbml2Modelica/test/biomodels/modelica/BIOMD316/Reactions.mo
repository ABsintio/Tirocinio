within BIOMD316;
class Reactions

    input Real elmt_Y;
    input Real elmt_Z;
    input Real elmt_X;

    Real elmt_r3(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_r3_elmt_Ty(unit "") = 0.5 "";
    parameter Real elmt_r3_elmt_Tz(unit "") = 0.5 "";
    Real elmt_product2 "";
    Real elmt_r4(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_r4_elmt_a(unit "") = 1.0 "";
    Real elmt_reactant3 "";
    Real elmt_r1(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_r1_elmt_Ty(unit "") = 0.5 "";
    Real elmt_product0 "";
    Real elmt_r2(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_r2_elmt_a(unit "") = 1.0 "";
    Real elmt_reactant1 "";


    initial equation
        elmt_reactant1 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_product0 = 1.0;
        elmt_product2 = 1.0;


    equation
        elmt_r3 = (((if (elmt_X >= elmt_r3_elmt_Ty) then 1.0 else 0.0)) * ((if (elmt_Y >= elmt_r3_elmt_Tz) then 1.0 else 0.0)));
        elmt_r4 = (elmt_r4_elmt_a * elmt_Z);
        elmt_r1 = ((if (elmt_X >= elmt_r1_elmt_Ty) then 1.0 else 0.0));
        elmt_r2 = (elmt_r2_elmt_a * elmt_Y);
        der(elmt_reactant1) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_product0) = 0;
        der(elmt_product2) = 0;

end Reactions;
