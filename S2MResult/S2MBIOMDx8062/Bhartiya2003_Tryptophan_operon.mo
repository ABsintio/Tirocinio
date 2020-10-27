within S2MBIOMDx8062;
model Bhartiya2003_Tryptophan_operon "Bhartiya2003_Tryptophan_operon"

 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
//<notes>
//      <body xmlns="http://www.w3.org/1999/xhtml">
//        <p>      <a href="http://www.sbml.org/">SBML</a>
//          level 2 code originaly generated for the JWS Online project by Jacky Snoep using      <a href="http://pysces.sourceforge.net/">PySCeS</a>
//                <br/>
//          Run this model online at      <a href="http://jjj.biochem.sun.ac.za/">http://jjj.biochem.sun.ac.za</a>
//                <br/>
//          To cite JWS Online please refer to: Olivier, B.G. and Snoep, J.L. (2004)      <a href="http://bioinformatics.oupjournals.org/cgi/content/abstract/20/13/2143">Web-based 
//modelling using JWS Online</a>
//          , Bioinformatics, 20:2143-2144      </p>
//            <p>      <u>BioModels Curation</u>
//          : The model reproduces Fig 3 of the publication. By substituting a value of 1.4 for Tex it is possible to reproduce Fig 3C and 3D(iii), Fig 3A and 3D(i), are obtained by setting Tex=0. Also, note that the tryptophan concentrations have been normalized by 82 micromolar in the figures; the normalized concetrations can be obtained via the parameters To/s/t_norm. The model was successfully tested on MathSBML and Copasi.      </p>
//            <p>This model originates from BioModels Database: A Database of Annotated Published Models. It is copyright (c) 2005-2010 The BioModels Team.      <br/>
//          For more information see the      <a href="http://www.ebi.ac.uk/biomodels/legal.html" target="_blank">terms of use</a>
//          .      <br/>
//          To cite BioModels Database, please use      <a href="http://www.pubmedcentral.nih.gov/articlerender.fcgi?tool=pubmed&amp;pubmedid=16381960" target="_blank">Le Novère N., Bornstein B., Broicher A., Courtot M., Donizelli M., Dharuri H., Li L., Sauro H., Schilstra M., Shapiro B., Snoep J.L., Hucka M. (2006) BioModels Database: A Free, Centralized Database of Curated, Published, Quantitative Kinetic Models of Biochemical and Cellular Systems Nucleic Acids Res., 34: D689-D691.</a>
//                </p>
//            </body>
//      
//    </notes>


    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment elmt_compartment;

    equation
        Params.elmt_Ts = elmt_compartment.elmt_Ts;
        Params.elmt_Enz = elmt_compartment.elmt_Enz;
        Params.elmt_Tt = elmt_compartment.elmt_Tt;
        Params.elmt_To = elmt_compartment.elmt_To;
        Reacs.elmt_compartment = elmt_compartment.elmt_compartment;
        Reacs.elmt_Ts = elmt_compartment.elmt_Ts;
        Reacs.elmt_Enz = elmt_compartment.elmt_Enz;
        Reacs.elmt_Tt = elmt_compartment.elmt_Tt;
        elmt_compartment.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_compartment.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_compartment.elmt_tryptophan_consumption = Reacs.elmt_tryptophan_consumption;
        elmt_compartment.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_compartment.elmt_Tomax = Params.elmt_Tomax;
        elmt_compartment.elmt_f_val = Params.elmt_f_val;
        elmt_compartment.elmt_tryptophan_synthesis = Reacs.elmt_tryptophan_synthesis;
        elmt_compartment.elmt_product0 = Reacs.elmt_product0;
        elmt_compartment.elmt_Enzyme_dilution = Reacs.elmt_Enzyme_dilution;
        elmt_compartment.elmt_product2 = Reacs.elmt_product2;
        elmt_compartment.elmt_Tex = Params.elmt_Tex;
        elmt_compartment.elmt_e_val = Params.elmt_e_val;
        elmt_compartment.elmt_Enzyme_synthesis = Reacs.elmt_Enzyme_synthesis;
        elmt_compartment.elmt_tryptophan_dilution = Reacs.elmt_tryptophan_dilution;

end Bhartiya2003_Tryptophan_operon;
