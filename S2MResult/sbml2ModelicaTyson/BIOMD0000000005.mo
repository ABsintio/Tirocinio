within sbml2ModelicaTyson;
model BIOMD0000000005 "Tyson1991 - Cell Cycle 6 var"
    extends Modelica.Icons.ExamplesPackage;
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
      </rdf:RDF>
    </annotation>"));
//<notes>
//      <body xmlns="http://www.w3.org/1999/xhtml">
//        <div class="dc:title">Tyson1991 - Cell Cycle 6 var</div>
//        <div class="dc:description">
//          <p>Mathematical model of the interactions of cdc2 and cyclin.</p>
//        </div>
//        <div class="dc:bibliographicCitation">
//          <p>This model is described in the article:</p>
//          <div class="bibo:title">
//            <a href="http://identifiers.org/pubmed/1831270" title="Access to this publication">Modeling the cell division cycle: cdc2 and cyclin interactions.</a>
//          </div>
//          <div class="bibo:authorList">Tyson JJ.</div>
//          <div class="bibo:Journal">Proc. Natl. Acad. Sci. U.S.A. 1991; 88(16); 7328-32</div>
//          <p>Abstract:</p>
//          <div class="bibo:abstract">
//            <p>The proteins cdc2 and cyclin form a heterodimer (maturation promoting factor) that controls the major events of the cell cycle. A mathematical model for the interactions of cdc2 and cyclin is constructed. Simulation and analysis of the model show that the control system can operate in three modes: as a steady state with high maturation promoting factor activity, as a spontaneous oscillator, or as an excitable switch. We associate the steady state with metaphase arrest in unfertilized eggs, the spontaneous oscillations with rapid division cycles in early embryos, and the excitable switch with growth-controlled division cycles typical of nonembryonic cells.</p>
//          </div>
//        </div>
//        <div class="dc:publisher">
//          <p>This model is hosted on        <a href="http://www.ebi.ac.uk/biomodels/">BioModels Database</a>
//            and identified by:        <a href="http://identifiers.org/biomodels.db/BIOMD0000000005">BIOMD0000000005</a>
//            .        </p>
//          <p>To cite BioModels Database, please use:        <a href="http://identifiers.org/pubmed/20587024" title="Latest BioModels Database publication">BioModels Database: An enhanced, curated and annotated resource for published quantitative kinetic models</a>
//            .        </p>
//        </div>
//        <div class="dc:license">
//          <p>To the extent possible under law, all copyright and related or neighbouring rights to this encoded model have been dedicated to the public domain worldwide. Please refer to        <a href="http://creativecommons.org/publicdomain/zero/1.0/" title="Access to: CC0 1.0 Universal (CC0 1.0), Public Domain Dedication">CC0 Public Domain Dedication</a>
//            for more information.        </p>
//        </div>
//      </body>
//    </notes>


    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell elmt_cell;

    equation
        Reacs.elmt_cell = elmt_cell.elmt_cell;
        Reacs.elmt_M = elmt_cell.elmt_M;
        Reacs.elmt_CT = elmt_cell.elmt_CT;
        Reacs.elmt_Y = elmt_cell.elmt_Y;
        Reacs.elmt_C2 = elmt_cell.elmt_C2;
        Reacs.elmt_pM = elmt_cell.elmt_pM;
        Reacs.elmt_CP = elmt_cell.elmt_CP;
        Reacs.elmt_YP = elmt_cell.elmt_YP;
        elmt_cell.elmt_product11 = Reacs.elmt_product11;
        elmt_cell.elmt_Reaction9 = Reacs.elmt_Reaction9;
        elmt_cell.elmt_Reaction8 = Reacs.elmt_Reaction8;
        elmt_cell.elmt_Reaction7 = Reacs.elmt_Reaction7;
        elmt_cell.elmt_Reaction6 = Reacs.elmt_Reaction6;
        elmt_cell.elmt_Reaction5 = Reacs.elmt_Reaction5;
        elmt_cell.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_cell.elmt_Reaction4 = Reacs.elmt_Reaction4;
        elmt_cell.elmt_Reaction3 = Reacs.elmt_Reaction3;
        elmt_cell.elmt_Reaction2 = Reacs.elmt_Reaction2;
        elmt_cell.elmt_Reaction1 = Reacs.elmt_Reaction1;
        elmt_cell.elmt_product9 = Reacs.elmt_product9;
        elmt_cell.elmt_product6 = Reacs.elmt_product6;
        elmt_cell.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_cell.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_cell.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_cell.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_cell.elmt_product1 = Reacs.elmt_product1;
        elmt_cell.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_cell.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_cell.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_cell.elmt_product4 = Reacs.elmt_product4;
        elmt_cell.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_cell.elmt_product2 = Reacs.elmt_product2;
        elmt_cell.elmt_product13 = Reacs.elmt_product13;
        elmt_cell.elmt_product19 = Reacs.elmt_product19;

end BIOMD0000000005;
