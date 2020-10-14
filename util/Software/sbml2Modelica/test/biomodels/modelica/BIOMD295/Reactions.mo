within BIOMD295;
class Reactions

    input Real elmt_n;
    input Real elmt_dawn;
    input Real elmt_FCp;
    input Real elmt_km;
    input Real elmt_vd;
    input Real elmt_FN;
    input Real elmt_ks;
    input Real elmt_k1n;
    input Real elmt_ksp;
    input Real elmt_FNp;
    input Real elmt_k2n;
    input Real elmt_amp;
    input Real elmt_vdp;
    input Real elmt_vs;
    input Real elmt_dusk;
    input Real elmt_FC;
    input Real elmt_ki;
    input Real elmt_MF;
    input Real elmt_k1np;
    input Real elmt_vm;
    input Real elmt_k2np;

    Real elmt_MFtrn(unit = "") "MFtrn";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product0 "";
    Real elmt_FCtrl(unit = "") "FCtrl";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product2 "";
    Real elmt_FCtrs(unit = "") "FCtrs";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant4 "";
    Real elmt_product5 "";
    Real elmt_FCptrl(unit = "") "FCptrl";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product6 "";
    Real elmt_MFdeg(unit = "") "MFdeg";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant1 "";
    Real elmt_FCdeg(unit = "") "FCdeg";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant3 "";
    Real elmt_FCptrs(unit = "") "FCptrs";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product9 "";
    Real elmt_reactant8 "";
    Real elmt_FCpdeg(unit = "") "FCpdeg";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant7 "";


    initial equation
        elmt_product9 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product6 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_product0 = 1.0;
        elmt_product5 = 1.0;
        elmt_product2 = 1.0;


    equation
        elmt_MFtrn = (((elmt_vs + (elmt_amp * (((1.0 + tanh((2.0 * ((time - (24.0 * floor((time / 24.0)))) - elmt_dawn)))) * (1.0 - tanh((2.0 * ((time - (24.0 * floor((time / 24.0)))) - elmt_dusk))))) / 4.0))) * Functions.pow(elmt_ki, elmt_n)) / (Functions.pow(elmt_ki, elmt_n) + Functions.pow((elmt_FN + elmt_FNp), elmt_n)));
        elmt_FCtrl = (elmt_ks * elmt_MF);
        elmt_FCtrs = ((elmt_k1n * elmt_FC) - (elmt_k2n * elmt_FN));
        elmt_FCptrl = (elmt_ksp * elmt_MF);
        elmt_MFdeg = ((elmt_vm * elmt_MF) / (elmt_km + elmt_MF));
        elmt_FCdeg = (elmt_vd * elmt_FC);
        elmt_FCptrs = ((elmt_k1np * elmt_FCp) - (elmt_k2np * elmt_FNp));
        elmt_FCpdeg = (elmt_vdp * elmt_FCp);
        der(elmt_product9) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product6) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_product0) = 0;
        der(elmt_product5) = 0;
        der(elmt_product2) = 0;

end Reactions;
