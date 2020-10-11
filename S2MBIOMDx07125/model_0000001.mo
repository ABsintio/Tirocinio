within S2BBIOMDx07125;
model model_0000001 "Komarova2005_TheoreticalFramework_BasicArchitecture"
    extends Modelica.Icons.ExamplesPackage;
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
//<notes>
//      <body xmlns="http://www.w3.org/1999/xhtml">
//        <p>This model according to the paper      <i>A Theoretical Framework for Specificity in Cell Signalling</i>
//          The model is "basic architecture" of Figure2A. Figure2B, Figure2C have been reproduced by MathSBML. The reproduced figures are slightly different from the original ones in the paper, the peak of [x2] is higher than 1 and is not decreasing dramatically when [x0]=0. And I think maybe the author shift the or scale the curves.      </p>
//            <br/>
//            <p>To the extent possible under law, all copyright and related or neighbouring rights to this encoded model have been dedicated to the public domain worldwide. Please refer to      <a href="http://creativecommons.org/publicdomain/zero/1.0/" title="Creative Commons CC0">CC0 Public Domain Dedication</a>
//          for more information.      </p>
//            <p>In summary, you are entitled to use this encoded model in absolutely any manner you deem suitable, verbatim, or with modification, alone or embedded it in a larger context, redistribute it, commercially or not, in a restricted way or not.</p>
//            <br/>
//            <p>To cite BioModels Database, please use:      <a href="http://www.ncbi.nlm.nih.gov/pubmed/20587024" target="_blank">Li C, Donizelli M, Rodriguez N, Dharuri H, Endler L, Chelliah V, Li L, He E, Henry A, Stefan MI, Snoep JL, Hucka M, Le Novère N, Laibe C (2010) BioModels Database: An enhanced, curated and annotated resource for published quantitative kinetic models. BMC Syst Biol., 4:92.</a>
//                </p>
//            </body>
//      
//    </notes>


    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment_0000001 elmt_compartment_0000001;
    Class_elmt_event_0000001 elmt_event_0000001;

    equation
        Reacs.elmt_compartment_0000001 = elmt_compartment_0000001.elmt_compartment_0000001;
        Reacs.elmt_d1 = Params.elmt_d1;
        Reacs.elmt_a2 = Params.elmt_a2;
        Reacs.elmt_b1 = Params.elmt_b1;
        Reacs.elmt_b2 = Params.elmt_b2;
        Reacs.elmt_a1 = Params.elmt_a1;
        Reacs.elmt_y2 = elmt_compartment_0000001.elmt_y2;
        Reacs.elmt_x1 = elmt_compartment_0000001.elmt_x1;
        Reacs.elmt_d2y = Params.elmt_d2y;
        Reacs.elmt_x2 = elmt_compartment_0000001.elmt_x2;
        Reacs.elmt_d2x = Params.elmt_d2x;
        Reacs.elmt_y0 = elmt_compartment_0000001.elmt_y0;
        Reacs.elmt_x0 = elmt_compartment_0000001.elmt_x0;
        elmt_compartment_0000001.elmt_reaction_0000007 = Reacs.elmt_reaction_0000007;
        elmt_compartment_0000001.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_compartment_0000001.elmt_reaction_0000006 = Reacs.elmt_reaction_0000006;
        elmt_compartment_0000001.elmt_reaction_0000005 = Reacs.elmt_reaction_0000005;
        elmt_compartment_0000001.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_compartment_0000001.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_compartment_0000001.elmt_product1 = Reacs.elmt_product1;
        elmt_compartment_0000001.elmt_product0 = Reacs.elmt_product0;
        elmt_compartment_0000001.elmt_product3 = Reacs.elmt_product3;
        elmt_compartment_0000001.elmt_product2 = Reacs.elmt_product2;
        elmt_compartment_0000001.elmt_reaction_0000004 = Reacs.elmt_reaction_0000004;
        elmt_compartment_0000001.elmt_reaction_0000003 = Reacs.elmt_reaction_0000003;
        elmt_compartment_0000001.elmt_reaction_0000002 = Reacs.elmt_reaction_0000002;
        elmt_compartment_0000001.elmt_reaction_0000001 = Reacs.elmt_reaction_0000001;
        elmt_compartment_0000001.elmt_event_0000001 = elmt_event_0000001.trigger;

        elmt_compartment_0000001.assign_elmt_x0 = elmt_event_0000001.value_elmt_x0;
end model_0000001;
