within BIOMD223;
class Class_elmt_extra

    input Real elmt_reactant1;
    input Real elmt_reaction_1;
    input Real elmt_reactant49;
    input Real elmt_reaction_24;

    Real elmt_extra(unit = "") "extracellular space";
    Real elmt_EGF_conc(unit = "");
    Real elmt_EGF_amount(unit = "");
    Real elmt_EGF(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_I_conc(unit = "");
    Real elmt_I_amount(unit = "");
    Real elmt_I(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_extra = 34.0;
        elmt_EGF_conc = 1.0;
        elmt_I_conc = 0.0;


    equation
        assert(elmt_extra >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_extra) = 0;
        elmt_EGF = elmt_EGF_conc;
        elmt_I = elmt_I_conc;
        der(elmt_EGF_amount) = (- (elmt_reaction_1 * elmt_reactant1));
        der(elmt_I_amount) = (- (elmt_reaction_24 * elmt_reactant49));

    algorithm
        elmt_EGF_conc := elmt_EGF_amount / elmt_extra;
        elmt_I_conc := elmt_I_amount / elmt_extra;
end Class_elmt_extra;
