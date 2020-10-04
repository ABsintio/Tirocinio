within BIOMD225;
class Reactions

    input Real elmt_comp;
    input Real elmt_Sgk;
    input Real elmt_FBP;
    input Real elmt_F6P;
    input Real elmt_Spfk;
    input Real elmt_Vpfk;
    input Real elmt_GLC;
    input Real elmt_Vgk;
    input Real elmt_Xpfk;
    input Real elmt_hx;
    input Real elmt_hact;
    input Real elmt_Sfba;
    input Real elmt_Vfba;
    input Real elmt_alpha;
    input Real elmt_hGK;
    input Real elmt_hpfk;

    Real elmt_vpfk(unit = "") "vpfk";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_reactant2 "";
    Real elmt_product3 "";
    Real elmt_vfba(unit = "") "vfba";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_reactant4 "";
    Real elmt_product5 "";
    Real elmt_vgk(unit = "") "vgk";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_product1 "";
    Real elmt_reactant0 "";


    initial equation
        elmt_reactant2 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product1 = 1.0;
        elmt_product5 = 1.0;
        elmt_product3 = 1.0;
        elmt_reactant0 = 1.0;


    equation
        elmt_vpfk = ((elmt_comp * elmt_Vpfk * Functions.pow((elmt_F6P / elmt_Spfk), (elmt_hpfk - ((elmt_hpfk - elmt_hact) * ((elmt_FBP / elmt_Sfba) / (1.0 + (elmt_FBP / elmt_Sfba))))))) / (Functions.pow((elmt_F6P / elmt_Spfk), (elmt_hpfk - ((elmt_hpfk - elmt_hact) * ((elmt_FBP / elmt_Sfba) / (1.0 + (elmt_FBP / elmt_Sfba)))))) + ((1.0 + Functions.pow((elmt_FBP / elmt_Xpfk), elmt_hx)) / (1.0 + (Functions.pow(elmt_alpha, (elmt_hpfk - ((elmt_hpfk - elmt_hact) * ((elmt_FBP / elmt_Sfba) / (1.0 + (elmt_FBP / elmt_Sfba)))))) * Functions.pow((elmt_FBP / elmt_Xpfk), elmt_hx))))));
        elmt_vfba = ((elmt_comp * elmt_Vfba * (elmt_FBP / elmt_Sfba)) / ((elmt_FBP / elmt_Sfba) + 1.0));
        elmt_vgk = ((elmt_comp * elmt_Vgk * Functions.pow((elmt_GLC / elmt_Sgk), elmt_hGK)) / (1.0 + Functions.pow((elmt_GLC / elmt_Sgk), elmt_hGK)));
        der(elmt_reactant2) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product1) = 0;
        der(elmt_product5) = 0;
        der(elmt_product3) = 0;
        der(elmt_reactant0) = 0;

end Reactions;
