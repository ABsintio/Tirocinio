within BIOMD344;
class Class_elmt_nucleus

    input Real elmt_product74;
    input Real elmt_reactant83;
    input Real elmt_Hsp90Upregulation;
    input Real elmt_reactant62;
    input Real elmt_reactant85;
    input Real elmt_product50;
    input Real elmt_reactant63;
    input Real elmt_product78;
    input Real elmt_Hsf1_Hsf1_Hsf1Phosphorylation;
    input Real elmt_reactant82;
    input Real elmt_Hsp70Upregulation;
    input Real elmt_reactant65;
    input Real elmt_product70;
    input Real elmt_product91;
    input Real elmt_HSE90TriHBinding;
    input Real elmt_HSE90PhosTriHBinding;
    input Real elmt_reactant68;
    input Real elmt_Hsf1_Hsf1_Hsf1DePhosphorylation;
    input Real elmt_reactant72;
    input Real elmt_product84;
    input Real elmt_reactant51;
    input Real elmt_product61;
    input Real elmt_product60;
    input Real elmt_reactant90;
    input Real elmt_product67;
    input Real elmt_HSE70PhosTriHBinding;
    input Real elmt_product66;
    input Real elmt_product87;
    input Real elmt_product64;
    input Real elmt_product86;
    input Real elmt_reactant59;
    input Real elmt_product81;
    input Real elmt_reactant76;
    input Real elmt_reactant77;
    input Real elmt_product80;
    input Real elmt_reactant56;
    input Real elmt_HSE70PhosTriHRelease;
    input Real elmt_reactant57;
    input Real elmt_reactant79;
    input Real elmt_HSE90TriHRelease;
    input Real elmt_trimerisation;
    input Real elmt_product103;
    input Real elmt_deTrimerisation;
    input Real elmt_HSE90PhosTriHRelease;
    input Real elmt_HSE70TriHBinding;
    input Real elmt_product58;
    input Real elmt_HSE70TriHRelease;
    input Real elmt_reactant102;

    Real elmt_nucleus(unit = "m3.0") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_HSEHsp90_Hsf1_Hsf1_Hsf1_P_amount(unit = "");
    Real elmt_HSEHsp90_Hsf1_Hsf1_Hsf1_P_conc(unit = "m-3.0");
    Real elmt_HSEHsp90_Hsf1_Hsf1_Hsf1_P(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_HSEHsp70_amount(unit = "");
    Real elmt_HSEHsp70_conc(unit = "m-3.0");
    Real elmt_HSEHsp70(unit = "") "";
    Real elmt_HSEHsp70_Hsf1_Hsf1_Hsf1_amount(unit = "");
    Real elmt_HSEHsp70_Hsf1_Hsf1_Hsf1_conc(unit = "m-3.0");
    Real elmt_HSEHsp70_Hsf1_Hsf1_Hsf1(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_Hsf1_Hsf1_Hsf1_amount(unit = "");
    Real elmt_Hsf1_Hsf1_Hsf1_conc(unit = "m-3.0");
    Real elmt_Hsf1_Hsf1_Hsf1(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_HSEHsp90_Hsf1_Hsf1_Hsf1_amount(unit = "");
    Real elmt_HSEHsp90_Hsf1_Hsf1_Hsf1_conc(unit = "m-3.0");
    Real elmt_HSEHsp90_Hsf1_Hsf1_Hsf1(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_HSEHsp90_amount(unit = "");
    Real elmt_HSEHsp90_conc(unit = "m-3.0");
    Real elmt_HSEHsp90(unit = "") "";
    Real elmt_Hsf1_Hsf1_Hsf1_P_amount(unit = "");
    Real elmt_Hsf1_Hsf1_Hsf1_P_conc(unit = "m-3.0");
    Real elmt_Hsf1_Hsf1_Hsf1_P(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_HSEHsp70_Hsf1_Hsf1_Hsf1_P_amount(unit = "");
    Real elmt_HSEHsp70_Hsf1_Hsf1_Hsf1_P_conc(unit = "m-3.0");
    Real elmt_HSEHsp70_Hsf1_Hsf1_Hsf1_P(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_nucleus = 1.0;
        elmt_HSEHsp90_Hsf1_Hsf1_Hsf1_P_amount = 0.0;
        elmt_HSEHsp70_amount = 2.0;
        elmt_HSEHsp70_Hsf1_Hsf1_Hsf1_amount = 0.0;
        elmt_Hsf1_Hsf1_Hsf1_amount = 0.0;
        elmt_HSEHsp90_Hsf1_Hsf1_Hsf1_amount = 0.0;
        elmt_HSEHsp90_amount = 2.0;
        elmt_Hsf1_Hsf1_Hsf1_P_amount = 0.0;
        elmt_HSEHsp70_Hsf1_Hsf1_Hsf1_P_amount = 0.0;


    equation
        assert(elmt_nucleus >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_nucleus) = 0;
        elmt_HSEHsp90_Hsf1_Hsf1_Hsf1_P = elmt_HSEHsp90_Hsf1_Hsf1_Hsf1_P_amount;
        elmt_HSEHsp70 = elmt_HSEHsp70_amount;
        elmt_HSEHsp70_Hsf1_Hsf1_Hsf1 = elmt_HSEHsp70_Hsf1_Hsf1_Hsf1_amount;
        elmt_Hsf1_Hsf1_Hsf1 = elmt_Hsf1_Hsf1_Hsf1_amount;
        elmt_HSEHsp90_Hsf1_Hsf1_Hsf1 = elmt_HSEHsp90_Hsf1_Hsf1_Hsf1_amount;
        elmt_HSEHsp90 = elmt_HSEHsp90_amount;
        elmt_Hsf1_Hsf1_Hsf1_P = elmt_Hsf1_Hsf1_Hsf1_P_amount;
        elmt_HSEHsp70_Hsf1_Hsf1_Hsf1_P = elmt_HSEHsp70_Hsf1_Hsf1_Hsf1_P_amount;
        der(elmt_HSEHsp90_Hsf1_Hsf1_Hsf1_P_amount) = ((- (elmt_Hsp90Upregulation * elmt_reactant90)) + (elmt_Hsp90Upregulation * elmt_product91) + (elmt_HSE90PhosTriHBinding * elmt_product84) + (- (elmt_HSE90PhosTriHRelease * elmt_reactant85)));
        der(elmt_HSEHsp70_amount) = ((- (elmt_HSE70PhosTriHBinding * elmt_reactant77)) + (elmt_HSE70PhosTriHRelease * elmt_product81) + (- (elmt_HSE70TriHBinding * elmt_reactant57)) + (elmt_HSE70TriHRelease * elmt_product60));
        der(elmt_HSEHsp70_Hsf1_Hsf1_Hsf1_amount) = ((elmt_HSE70TriHBinding * elmt_product58) + (- (elmt_HSE70TriHRelease * elmt_reactant59)));
        der(elmt_Hsf1_Hsf1_Hsf1_amount) = ((- (elmt_Hsf1_Hsf1_Hsf1Phosphorylation * elmt_reactant68)) + (- (elmt_HSE90TriHBinding * elmt_reactant62)) + (elmt_Hsf1_Hsf1_Hsf1DePhosphorylation * elmt_product74) + (elmt_HSE90TriHRelease * elmt_product67) + (elmt_trimerisation * elmt_product50) + (- (elmt_deTrimerisation * elmt_reactant51)) + (- (elmt_HSE70TriHBinding * elmt_reactant56)) + (elmt_HSE70TriHRelease * elmt_product61));
        der(elmt_HSEHsp90_Hsf1_Hsf1_Hsf1_amount) = ((elmt_HSE90TriHBinding * elmt_product64) + (- (elmt_HSE90TriHRelease * elmt_reactant65)));
        der(elmt_HSEHsp90_amount) = ((- (elmt_HSE90TriHBinding * elmt_reactant63)) + (- (elmt_HSE90PhosTriHBinding * elmt_reactant83)) + (elmt_HSE90TriHRelease * elmt_product66) + (elmt_HSE90PhosTriHRelease * elmt_product87));
        der(elmt_Hsf1_Hsf1_Hsf1_P_amount) = ((- (elmt_HSE70PhosTriHBinding * elmt_reactant76)) + (elmt_HSE70PhosTriHRelease * elmt_product80) + (elmt_Hsf1_Hsf1_Hsf1Phosphorylation * elmt_product70) + (- (elmt_HSE90PhosTriHBinding * elmt_reactant82)) + (- (elmt_Hsf1_Hsf1_Hsf1DePhosphorylation * elmt_reactant72)) + (elmt_HSE90PhosTriHRelease * elmt_product86));
        der(elmt_HSEHsp70_Hsf1_Hsf1_Hsf1_P_amount) = ((elmt_Hsp70Upregulation * elmt_product103) + (- (elmt_Hsp70Upregulation * elmt_reactant102)) + (elmt_HSE70PhosTriHBinding * elmt_product78) + (- (elmt_HSE70PhosTriHRelease * elmt_reactant79)));

    algorithm
        elmt_HSEHsp90_Hsf1_Hsf1_Hsf1_P_conc := elmt_HSEHsp90_Hsf1_Hsf1_Hsf1_P_amount / elmt_nucleus;
        elmt_HSEHsp70_conc := elmt_HSEHsp70_amount / elmt_nucleus;
        elmt_HSEHsp70_Hsf1_Hsf1_Hsf1_conc := elmt_HSEHsp70_Hsf1_Hsf1_Hsf1_amount / elmt_nucleus;
        elmt_Hsf1_Hsf1_Hsf1_conc := elmt_Hsf1_Hsf1_Hsf1_amount / elmt_nucleus;
        elmt_HSEHsp90_Hsf1_Hsf1_Hsf1_conc := elmt_HSEHsp90_Hsf1_Hsf1_Hsf1_amount / elmt_nucleus;
        elmt_HSEHsp90_conc := elmt_HSEHsp90_amount / elmt_nucleus;
        elmt_Hsf1_Hsf1_Hsf1_P_conc := elmt_Hsf1_Hsf1_Hsf1_P_amount / elmt_nucleus;
        elmt_HSEHsp70_Hsf1_Hsf1_Hsf1_P_conc := elmt_HSEHsp70_Hsf1_Hsf1_Hsf1_P_amount / elmt_nucleus;
end Class_elmt_nucleus;
