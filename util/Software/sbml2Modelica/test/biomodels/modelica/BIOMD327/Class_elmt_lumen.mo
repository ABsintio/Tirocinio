within BIOMD327;
class Class_elmt_lumen

    input Real elmt_cell;
    input Real elmt_reactant4;
    input Real elmt_bac;
    input Real elmt_product21;
    input Real elmt_reactant8;
    input Real elmt_bcftr;
    input Real elmt_vr;
    input Real elmt_apl;
    input Real elmt_outflow;
    input Real elmt_reactant23;

    Real elmt_lumen(unit = "") "lumen";
    Real elmt_cl_conc(unit = "");
    Real elmt_cl_amount(unit = "");
    Real elmt_cl(unit = "") "CL-";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_bl_conc(unit = "");
    Real elmt_bl_amount(unit = "");
    Real elmt_bl(unit = "") "HCO3-";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_lumen = (elmt_cell / elmt_vr);
        elmt_bl_conc = 32.0;


    equation
        assert(elmt_lumen >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_lumen) = 0;
        elmt_cl = elmt_cl_conc;
        elmt_bl = elmt_bl_conc;
        elmt_cl_amount = (160.0 - elmt_bl) * elmt_lumen;
        der(elmt_bl_amount) = ((elmt_bac * elmt_product21) + (- (elmt_bcftr * elmt_reactant4)) + (- (elmt_apl * elmt_reactant8)) + (- (elmt_outflow * elmt_reactant23)));

    algorithm
        elmt_cl_conc := elmt_cl_amount / elmt_lumen;
        elmt_bl_conc := elmt_bl_amount / elmt_lumen;
end Class_elmt_lumen;
