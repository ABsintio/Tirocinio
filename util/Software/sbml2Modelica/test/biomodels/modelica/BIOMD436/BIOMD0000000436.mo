within BIOMD436;
model BIOMD0000000436 "Gupta2009 - Eicosanoid Metabolism" annotation(Documentation(info="<annotation>
  <pathwaydocument xmlns=\"http://www.lipidmaps.org/ns\">
    <pathway authors=\"Robert Byrnes, Shakti Gupta, Mano Ram Maurya, Daren L. Stephens, Edward A. Dennis, and Shankar Subramaniam\" breaks=\"0\" descbreaks=\"0\" description=\"Based upon Gupta et al., An Integrated Model of Eicosanoid Metabolism and Signaling Based on Lipidomics Flux Analysis, Biophys. J. vol. 96, pp. 4542 -4551, 2009.\" history=\"January 22, 2010\" name=\"Eicosanoid metabolism\" numlayers=\"0\" pathwaytype=\"Metabolic\">
      <participantlist>
        <participant breaks=\"0\" description=\"Arachidonic acid-containing glycerophospholipids: DG(14:0/16:0)_14:0, DG(14:0/16:0)_16:0, DG(14:0/16:1)_14:0, DG(14:0/18:1)_14:0, DG(14:1/16:0)_16:0, DG(15:0/16:0)_15:0, DG(15:0/16:1)_15:0, DG(15:0/18:1)_15:0, DG(16:0/16:0)_16:0, DG(16:0/19:0)_16:0, DG(16:0/19:0)_19:0, DG(16:0/20:1)_16:0, DG(16:0/20:2)_16:0, DG(16:0/20:3)_16:0, DG(16:0/20:4)_16:0, DG(16:0/20:4)_20:4, DG(16:1/16:0)_16:0, DG(16:1/20:4)_20:4, DG(17:0/18:1)_17:0, DG(18:0/20:4)_20:4, DG(18:1/20:4)_20:4, DG(20:0/20:0)_20:0, DG(20:4/20:0)_20:4\" index=\"0\" layer=\"0\" name=\"DG\" participantid=\"165\" species=\"DG\">
          <smallmolecule charge=\"0\" compoundtype=\"Small molecule\" molecularweight=\"0.0\" name=\"DG\" recordid=\"-2179\"/>
          <compartment goaccession=\"null\" name=\"Unspecified\" typeid=\"1\" typename=\"Not specified\"/>
        </participant>
        <participant breaks=\"0\" index=\"1\" layer=\"0\" name=\"AA\" participantid=\"166\" species=\"AA\">
          <smallmolecule charge=\"0\" chemicalformula=\"C20H32O2\" compoundtype=\"Small molecule\" molecularweight=\"304.2402\" name=\"Arachidonic acid\" recordid=\"217\" smallmoleculetype=\"Fatty Acyls\">
            <synonymlist>
              <synonym name=\"(5Z,8Z,11Z,14Z)-Icosatetraenoic acid\"/>
              <synonym name=\"AA\"/>
              <synonym name=\"Arachidonate\"/>
              <synonym name=\"cis-5,8,11,14-Eicosatetraenoic acid\"/>
            </synonymlist>
            <datasource>
              <database name=\"Pathway\" record=\"217\" table=\"small_mol\"/>
            </datasource>
            <databaselist>
              <database host=\"unknown\" name=\"KEGG\" port=\"1521\" record=\"C00219\" table=\"unknown\"/>
              <database description=\"a file for temporary sample demo of EC data of KEGG via a local database, Dawn- Joshua\" host=\"unknown\" name=\"LIPID MAPS\" port=\"0\" record=\"LMFA01030001\" table=\"unknown\" user=\"file\"/>
            </databaselist>
          </smallmolecule>
          <compartment goaccession=\"null\" name=\"Unspecified\" typeid=\"1\" typename=\"Not specified\"/>
        </participant>
        <participant breaks=\"0\" index=\"2\" layer=\"0\" name=\"PGH2\" participantid=\"167\" species=\"PGH2\">
          <smallmolecule charge=\"0\" compoundtype=\"Small molecule\" molecularweight=\"0.0\" name=\"PGH2\" recordid=\"-2453793\"/>
          <compartment goaccession=\"null\" name=\"Unspecified\" typeid=\"1\" typename=\"Not specified\"/>
        </participant>
        <participant breaks=\"0\" index=\"3\" layer=\"0\" name=\"PGE2\" participantid=\"168\" species=\"PGE2\">
          <smallmolecule charge=\"0\" chemicalformula=\"C20H32O5\" compoundtype=\"Small molecule\" molecularweight=\"352.224952\" name=\"PGE2\" recordid=\"13476\" smallmoleculetype=\"Fatty Acyls\">
            <synonymlist>
              <synonym name=\"9-oxo-11R,15S-dihydroxy-5Z,13E-prostadienoic acid\"/>
            </synonymlist>
            <datasource>
              <database name=\"Pathway\" record=\"13476\" table=\"small_mol\"/>
            </datasource>
            <databaselist>
              <database description=\"a file for temporary sample demo of EC data of KEGG via a local database, Dawn- Joshua\" host=\"unknown\" name=\"LIPID MAPS\" port=\"0\" record=\"LMFA03010003\" table=\"unknown\" user=\"file\"/>
            </databaselist>
          </smallmolecule>
          <compartment goaccession=\"null\" name=\"Unspecified\" typeid=\"1\" typename=\"Not specified\"/>
        </participant>
        <participant breaks=\"0\" index=\"4\" layer=\"0\" name=\"PGF2a\" participantid=\"169\" species=\"PGF2a\">
          <smallmolecule charge=\"0\" chemicalformula=\"C20H34O5\" compoundtype=\"Small molecule\" molecularweight=\"354.240603\" name=\"PGF2a\" recordid=\"13475\" smallmoleculetype=\"Fatty Acyls\">
            <synonymlist>
              <synonym name=\"9S,11R,15S-trihydroxy-5Z,13E-prostadienoic acid\"/>
              <synonym name=\"Amoglandin\"/>
              <synonym name=\"Cyclosin\"/>
              <synonym name=\"Dinoprost\"/>
              <synonym name=\"Enzaprost\"/>
              <synonym name=\"PGF2alpha\"/>
              <synonym name=\"Prostaglandin F2a\"/>
              <synonym name=\"Prostaglandin F2alpha\"/>
            </synonymlist>
            <datasource>
              <database name=\"Pathway\" record=\"13475\" table=\"small_mol\"/>
            </datasource>
            <databaselist>
              <database host=\"unknown\" name=\"KEGG\" port=\"1521\" record=\"C00639\" table=\"unknown\"/>
              <database description=\"a file for temporary sample demo of EC data of KEGG via a local database, Dawn- Joshua\" host=\"unknown\" name=\"LIPID MAPS\" port=\"0\" record=\"LMFA03010002\" table=\"unknown\" user=\"file\"/>
            </databaselist>
          </smallmolecule>
          <compartment goaccession=\"null\" name=\"Unspecified\" typeid=\"1\" typename=\"Not specified\"/>
        </participant>
        <participant breaks=\"0\" index=\"5\" layer=\"0\" name=\"11-HETE\" participantid=\"170\" species=\"HETE\">
          <smallmolecule charge=\"0\" chemicalformula=\"C20H32O3\" compoundtype=\"Small molecule\" molecularweight=\"320.24\" name=\"11-HETE\" recordid=\"13407\" smallmoleculetype=\"Fatty Acyls\">
            <synonymlist>
              <synonym name=\"11-hydroxy-5Z,8Z,11E,14Z-eicosatetraenoic acid\"/>
            </synonymlist>
            <datasource>
              <database name=\"Pathway\" record=\"13407\" table=\"small_mol\"/>
            </datasource>
            <databaselist>
              <database description=\"a file for temporary sample demo of EC data of KEGG via a local database, Dawn- Joshua\" host=\"unknown\" name=\"LIPID MAPS\" port=\"0\" record=\"LMFA03060085\" table=\"unknown\" user=\"file\"/>
            </databaselist>
          </smallmolecule>
          <compartment goaccession=\"null\" name=\"Unspecified\" typeid=\"1\" typename=\"Not specified\"/>
        </participant>
        <participant breaks=\"0\" index=\"6\" layer=\"0\" name=\"PGD2\" participantid=\"171\" species=\"PGD2\">
          <smallmolecule charge=\"0\" chemicalformula=\"C20H32O5\" compoundtype=\"Small molecule\" molecularweight=\"352.225\" name=\"PGD2\" recordid=\"660\" smallmoleculetype=\"Fatty Acyls\">
            <synonymlist>
              <synonym name=\"(5Z,13E)-(15S)-9alpha,15-Dihydroxy-11-oxoprosta-5,13-dienoate\"/>
              <synonym name=\"9S,15S-dihydroxy-11-oxo-5Z,13E-prostadienoic acid\"/>
              <synonym name=\"Prostaglandin D2\"/>
            </synonymlist>
            <datasource>
              <database name=\"Pathway\" record=\"660\" table=\"small_mol\"/>
            </datasource>
            <databaselist>
              <database host=\"unknown\" name=\"KEGG\" port=\"1521\" record=\"C00696\" table=\"unknown\"/>
              <database description=\"a file for temporary sample demo of EC data of KEGG via a local database, Dawn- Joshua\" host=\"unknown\" name=\"LIPID MAPS\" port=\"0\" record=\"LMFA03010004\" table=\"unknown\" user=\"file\"/>
            </databaselist>
          </smallmolecule>
          <compartment goaccession=\"null\" name=\"Unspecified\" typeid=\"1\" typename=\"Not specified\"/>
        </participant>
        <participant breaks=\"0\" index=\"7\" layer=\"0\" name=\"PGJ2\" participantid=\"172\" species=\"PGJ2\">
          <smallmolecule charge=\"0\" chemicalformula=\"C20H30O4\" compoundtype=\"Small molecule\" molecularweight=\"334.2144\" name=\"PGJ2\" recordid=\"4830\" smallmoleculetype=\"Fatty Acyls\">
            <synonymlist>
              <synonym name=\"11-oxo-15S-hydroxy-5Z,8Z,13E-prostatrienoic acid\"/>
              <synonym name=\"Prostaglandin J2\"/>
            </synonymlist>
            <datasource>
              <database name=\"Pathway\" record=\"4830\" table=\"small_mol\"/>
            </datasource>
            <databaselist>
              <database host=\"unknown\" name=\"KEGG\" port=\"1521\" record=\"C05957\" table=\"unknown\"/>
              <database description=\"a file for temporary sample demo of EC data of KEGG via a local database, Dawn- Joshua\" host=\"unknown\" name=\"LIPID MAPS\" port=\"0\" record=\"LMFA03010019\" table=\"unknown\" user=\"file\"/>
            </databaselist>
          </smallmolecule>
          <compartment goaccession=\"null\" name=\"Unspecified\" typeid=\"1\" typename=\"Not specified\"/>
        </participant>
        <participant breaks=\"0\" index=\"8\" layer=\"0\" name=\"15-deoxy-PGJ2\" participantid=\"173\" species=\"dPGJ2\">
          <smallmolecule charge=\"0\" chemicalformula=\"C20H28O3\" compoundtype=\"Small molecule\" molecularweight=\"316.2039\" name=\"15-deoxy-PGJ2\" recordid=\"12653\" smallmoleculetype=\"Fatty Acyls\">
            <synonymlist>
              <synonym name=\"11-oxo-5Z,9,12E,14E-prostatetraenoic acid\"/>
              <synonym name=\"15-deoxy-d-12,14-PGJ2\"/>
              <synonym name=\"15-Deoxy-delta-12,14-PGJ2\"/>
              <synonym name=\"15-deoxy-delta-12,14-PGJ2\"/>
              <synonym name=\"15-Deoxy-delta-12,14-prostaglandin J2\"/>
              <synonym name=\"15-Deoxy-PGJ2\"/>
            </synonymlist>
            <datasource>
              <database name=\"Pathway\" record=\"12653\" table=\"small_mol\"/>
            </datasource>
            <databaselist>
              <database host=\"unknown\" name=\"KEGG\" port=\"1521\" record=\"C14717\" table=\"unknown\"/>
              <database description=\"a file for temporary sample demo of EC data of KEGG via a local database, Dawn- Joshua\" host=\"unknown\" name=\"LIPID MAPS\" port=\"0\" record=\"LMFA03010021\" table=\"unknown\" user=\"file\"/>
            </databaselist>
          </smallmolecule>
          <compartment goaccession=\"null\" name=\"Unspecified\" typeid=\"1\" typename=\"Not specified\"/>
        </participant>
        <participant breaks=\"0\" index=\"9\" layer=\"0\" name=\"15-deoxy-PGD2\" participantid=\"174\" species=\"dPGD2\">
          <smallmolecule charge=\"0\" chemicalformula=\"C20H30O4\" compoundtype=\"Small molecule\" molecularweight=\"334.21\" name=\"15-deoxy-PGD2\" recordid=\"13405\" smallmoleculetype=\"Fatty Acyls\">
            <synonymlist>
              <synonym name=\"15-deoxy-d-12,14-PGD2\"/>
              <synonym name=\"9S-hydroxy-11-oxo-5Z,12E,14E-prostatrienoic acid\"/>
            </synonymlist>
            <datasource>
              <database name=\"Pathway\" record=\"13405\" table=\"small_mol\"/>
            </datasource>
            <databaselist>
              <database description=\"a file for temporary sample demo of EC data of KEGG via a local database, Dawn- Joshua\" host=\"unknown\" name=\"LIPID MAPS\" port=\"0\" record=\"LMFA03010051\" table=\"unknown\" user=\"file\"/>
            </databaselist>
          </smallmolecule>
          <compartment goaccession=\"null\" name=\"Unspecified\" typeid=\"1\" typename=\"Not specified\"/>
        </participant>
        <participant breaks=\"0\" description=\"Kdo2-lipid A\" index=\"10\" layer=\"0\" name=\"LPS\" participantid=\"176\" species=\"LPS\">
          <smallmolecule charge=\"0\" compoundtype=\"Small molecule\" molecularweight=\"0.0\" name=\"LPS\" recordid=\"-75599\"/>
          <compartment goaccession=\"null\" name=\"Unspecified\" typeid=\"1\" typename=\"Not specified\"/>
        </participant>
        <participant breaks=\"0\" description=\"Fatty acyls\" index=\"11\" layer=\"0\" name=\"FA\" participantid=\"177\" species=\"FA\">
          <smallmolecule charge=\"0\" compoundtype=\"Small molecule\" molecularweight=\"0.0\" name=\"FA\" recordid=\"-2235\"/>
          <compartment goaccession=\"null\" name=\"Unspecified\" typeid=\"1\" typename=\"Not specified\"/>
        </participant>
        <participant breaks=\"0\" description=\"Glycerophosphocholines\" index=\"12\" layer=\"0\" name=\"GPCho\" participantid=\"178\" species=\"GPCho\">
          <smallmolecule charge=\"0\" compoundtype=\"Small molecule\" molecularweight=\"0.0\" name=\"GPCho\" recordid=\"-68020993\"/>
          <compartment goaccession=\"null\" name=\"Unspecified\" typeid=\"1\" typename=\"Not specified\"/>
        </participant>
      </participantlist>
      <interactionlist>
        <interaction breaks=\"0\" descbreaks=\"0\" index=\"0\" interactionid=\"125\" layer=\"0\" name=\"Unnamed process\" reaction=\"r5\" reversible=\"false\">
          <participantuselist>
            <participantuse index=\"0\" nodeid=\"165\" participantusetype=\"Reactant\" stoichiometry=\"1.0\" type=\"participant\"/>
            <participantuse index=\"1\" nodeid=\"166\" participantusetype=\"Product\" stoichiometry=\"1.0\" type=\"participant\"/>
            <participantuse index=\"12\" nodeid=\"178\" participantusetype=\"Reactant\" stoichiometry=\"1.0\" type=\"participant\"/>
          </participantuselist>
        </interaction>
        <interaction breaks=\"0\" descbreaks=\"0\" index=\"1\" interactionid=\"126\" layer=\"0\" name=\"Unnamed process\" reaction=\"r15\" reversible=\"false\">
          <participantuselist>
            <participantuse index=\"2\" nodeid=\"167\" participantusetype=\"Reactant\" stoichiometry=\"1.0\" type=\"participant\"/>
            <participantuse index=\"4\" nodeid=\"169\" participantusetype=\"Product\" stoichiometry=\"1.0\" type=\"participant\"/>
          </participantuselist>
        </interaction>
        <interaction breaks=\"0\" descbreaks=\"0\" index=\"2\" interactionid=\"127\" layer=\"0\" name=\"Unnamed process\" reaction=\"r13\" reversible=\"false\">
          <participantuselist>
            <participantuse index=\"2\" nodeid=\"167\" participantusetype=\"Reactant\" stoichiometry=\"1.0\" type=\"participant\"/>
            <participantuse index=\"3\" nodeid=\"168\" participantusetype=\"Product\" stoichiometry=\"1.0\" type=\"participant\"/>
          </participantuselist>
        </interaction>
        <interaction breaks=\"0\" descbreaks=\"0\" index=\"3\" interactionid=\"128\" layer=\"0\" name=\"Unnamed process\" reaction=\"r8\" reversible=\"false\">
          <participantuselist>
            <participantuse index=\"1\" nodeid=\"166\" participantusetype=\"Reactant\" stoichiometry=\"1.0\" type=\"participant\"/>
            <participantuse index=\"5\" nodeid=\"170\" participantusetype=\"Product\" stoichiometry=\"1.0\" type=\"participant\"/>
          </participantuselist>
        </interaction>
        <interaction breaks=\"0\" descbreaks=\"0\" index=\"4\" interactionid=\"129\" layer=\"0\" name=\"Unnamed process\" reaction=\"r17\" reversible=\"false\">
          <participantuselist>
            <participantuse index=\"6\" nodeid=\"171\" participantusetype=\"Product\" stoichiometry=\"1.0\" type=\"participant\"/>
            <participantuse index=\"2\" nodeid=\"167\" participantusetype=\"Reactant\" stoichiometry=\"1.0\" type=\"participant\"/>
          </participantuselist>
        </interaction>
        <interaction breaks=\"0\" descbreaks=\"0\" index=\"5\" interactionid=\"130\" layer=\"0\" name=\"Unnamed process\" reaction=\"r18\" reversible=\"false\">
          <participantuselist>
            <participantuse index=\"6\" nodeid=\"171\" participantusetype=\"Reactant\" stoichiometry=\"1.0\" type=\"participant\"/>
            <participantuse index=\"7\" nodeid=\"172\" participantusetype=\"Product\" stoichiometry=\"1.0\" type=\"participant\"/>
          </participantuselist>
        </interaction>
        <interaction breaks=\"0\" descbreaks=\"0\" index=\"6\" interactionid=\"131\" layer=\"0\" name=\"Unnamed process\" reaction=\"r21\" reversible=\"false\">
          <participantuselist>
            <participantuse index=\"7\" nodeid=\"172\" participantusetype=\"Reactant\" stoichiometry=\"1.0\" type=\"participant\"/>
            <participantuse index=\"8\" nodeid=\"173\" participantusetype=\"Product\" stoichiometry=\"1.0\" type=\"participant\"/>
          </participantuselist>
        </interaction>
        <interaction breaks=\"0\" descbreaks=\"0\" index=\"7\" interactionid=\"132\" layer=\"0\" name=\"Unnamed process\" reaction=\"r19\" reversible=\"false\">
          <participantuselist>
            <participantuse index=\"6\" nodeid=\"171\" participantusetype=\"Reactant\" stoichiometry=\"1.0\" type=\"participant\"/>
            <participantuse index=\"9\" nodeid=\"174\" participantusetype=\"Product\" stoichiometry=\"1.0\" type=\"participant\"/>
          </participantuselist>
        </interaction>
        <interaction breaks=\"0\" descbreaks=\"0\" index=\"8\" interactionid=\"133\" layer=\"0\" name=\"Unnamed process\" reaction=\"r4\" reversible=\"false\">
          <participantuselist>
            <participantuse index=\"1\" nodeid=\"166\" participantusetype=\"Reactant\" stoichiometry=\"1.0\" type=\"participant\"/>
          </participantuselist>
        </interaction>
        <interaction breaks=\"0\" descbreaks=\"0\" index=\"9\" interactionid=\"134\" layer=\"0\" name=\"Unnamed process\" reaction=\"r1\" reversible=\"false\">
          <participantuselist>
            <participantuse index=\"11\" nodeid=\"177\" participantusetype=\"Reactant\" stoichiometry=\"1.0\" type=\"participant\"/>
            <participantuse index=\"1\" nodeid=\"166\" participantusetype=\"Product\" stoichiometry=\"1.0\" type=\"participant\"/>
            <participantuse index=\"10\" nodeid=\"176\" participantusetype=\"Reactant\" stoichiometry=\"1.0\" type=\"participant\"/>
          </participantuselist>
        </interaction>
        <interaction breaks=\"0\" descbreaks=\"0\" index=\"10\" interactionid=\"135\" layer=\"0\" name=\"Unnamed process\" reaction=\"r6\" reversible=\"false\">
          <participantuselist>
            <participantuse index=\"12\" nodeid=\"178\" participantusetype=\"Reactant\" stoichiometry=\"1.0\" type=\"participant\"/>
            <participantuse index=\"1\" nodeid=\"166\" participantusetype=\"Product\" stoichiometry=\"1.0\" type=\"participant\"/>
            <participantuse index=\"10\" nodeid=\"176\" participantusetype=\"Reactant\" stoichiometry=\"1.0\" type=\"participant\"/>
          </participantuselist>
        </interaction>
        <interaction breaks=\"0\" descbreaks=\"0\" index=\"11\" interactionid=\"136\" layer=\"0\" name=\"Unnamed process\" reaction=\"r2\" reversible=\"false\">
          <participantuselist>
            <participantuse index=\"11\" nodeid=\"177\" participantusetype=\"Reactant\" stoichiometry=\"1.0\" type=\"participant\"/>
            <participantuse index=\"1\" nodeid=\"166\" participantusetype=\"Product\" stoichiometry=\"1.0\" type=\"participant\"/>
          </participantuselist>
        </interaction>
        <interaction breaks=\"0\" descbreaks=\"0\" index=\"12\" interactionid=\"137\" layer=\"0\" name=\"Unnamed process\" reaction=\"r3\" reversible=\"false\">
          <participantuselist>
            <participantuse index=\"0\" nodeid=\"165\" participantusetype=\"Reactant\" stoichiometry=\"1.0\" type=\"participant\"/>
            <participantuse index=\"1\" nodeid=\"166\" participantusetype=\"Product\" stoichiometry=\"1.0\" type=\"participant\"/>
          </participantuselist>
        </interaction>
        <interaction breaks=\"0\" descbreaks=\"0\" index=\"13\" interactionid=\"138\" layer=\"0\" name=\"Unnamed process\" reaction=\"r7\" reversible=\"false\">
          <participantuselist>
            <participantuse index=\"12\" nodeid=\"178\" participantusetype=\"Reactant\" stoichiometry=\"1.0\" type=\"participant\"/>
            <participantuse index=\"1\" nodeid=\"166\" participantusetype=\"Product\" stoichiometry=\"1.0\" type=\"participant\"/>
          </participantuselist>
        </interaction>
        <interaction breaks=\"0\" descbreaks=\"0\" index=\"14\" interactionid=\"139\" layer=\"0\" name=\"Unnamed process\" reaction=\"r9\" reversible=\"false\">
          <participantuselist>
            <participantuse index=\"5\" nodeid=\"170\" participantusetype=\"Reactant\" stoichiometry=\"1.0\" type=\"participant\"/>
          </participantuselist>
        </interaction>
        <interaction breaks=\"0\" descbreaks=\"0\" index=\"15\" interactionid=\"140\" layer=\"0\" name=\"Unnamed process\" reaction=\"r12\" reversible=\"false\">
          <participantuselist>
            <participantuse index=\"1\" nodeid=\"166\" participantusetype=\"Reactant\" stoichiometry=\"1.0\" type=\"participant\"/>
            <participantuse index=\"2\" nodeid=\"167\" participantusetype=\"Product\" stoichiometry=\"1.0\" type=\"participant\"/>
          </participantuselist>
        </interaction>
        <interaction breaks=\"0\" descbreaks=\"0\" index=\"16\" interactionid=\"141\" layer=\"0\" name=\"Unnamed process\" reaction=\"r14\" reversible=\"false\">
          <participantuselist>
            <participantuse index=\"3\" nodeid=\"168\" participantusetype=\"Reactant\" stoichiometry=\"1.0\" type=\"participant\"/>
          </participantuselist>
        </interaction>
        <interaction breaks=\"0\" descbreaks=\"0\" index=\"17\" interactionid=\"142\" layer=\"0\" name=\"Unnamed process\" reaction=\"r16\" reversible=\"false\">
          <participantuselist>
            <participantuse index=\"4\" nodeid=\"169\" participantusetype=\"Reactant\" stoichiometry=\"1.0\" type=\"participant\"/>
          </participantuselist>
        </interaction>
        <interaction breaks=\"0\" descbreaks=\"0\" index=\"18\" interactionid=\"143\" layer=\"0\" name=\"Unnamed process\" reaction=\"r20\" reversible=\"false\">
          <participantuselist>
            <participantuse index=\"9\" nodeid=\"174\" participantusetype=\"Reactant\" stoichiometry=\"1.0\" type=\"participant\"/>
          </participantuselist>
        </interaction>
        <interaction breaks=\"0\" descbreaks=\"0\" index=\"19\" interactionid=\"144\" layer=\"0\" name=\"Unnamed process\" reaction=\"r22\" reversible=\"false\">
          <participantuselist>
            <participantuse index=\"8\" nodeid=\"173\" participantusetype=\"Reactant\" stoichiometry=\"1.0\" type=\"participant\"/>
          </participantuselist>
        </interaction>
        <interaction breaks=\"0\" descbreaks=\"0\" index=\"20\" interactionid=\"145\" layer=\"0\" name=\"Unnamed process\" reaction=\"r11\" reversible=\"false\">
          <participantuselist>
            <participantuse index=\"1\" nodeid=\"166\" participantusetype=\"Reactant\" stoichiometry=\"1.0\" type=\"participant\"/>
            <participantuse index=\"2\" nodeid=\"167\" participantusetype=\"Product\" stoichiometry=\"1.0\" type=\"participant\"/>
            <participantuse index=\"10\" nodeid=\"176\" participantusetype=\"Reactant\" stoichiometry=\"1.0\" type=\"participant\"/>
          </participantuselist>
        </interaction>
        <interaction breaks=\"0\" descbreaks=\"0\" index=\"21\" interactionid=\"146\" layer=\"0\" name=\"Unnamed process\" reaction=\"r10\" reversible=\"false\">
          <participantuselist>
            <participantuse index=\"0\" nodeid=\"165\" participantusetype=\"Reactant\" stoichiometry=\"1.0\" type=\"participant\"/>
            <participantuse index=\"2\" nodeid=\"167\" participantusetype=\"Product\" stoichiometry=\"1.0\" type=\"participant\"/>
            <participantuse index=\"1\" nodeid=\"166\" participantusetype=\"Reactant\" stoichiometry=\"1.0\" type=\"participant\"/>
          </participantuselist>
        </interaction>
      </interactionlist>
    </pathway>
    <presentationlist>
      <presentation name=\"Eicosanoid metabolism\" zoom=\"40.0\">
        <participantstatelist>
          <participantstate bodycolor1=\"a0bce5ff\" bodycolor2=\"a0bce5ff\" depth=\"0.0\" fontclass=\"Java\" gapsizechange=\"0.0\" height=\"1.4314658641815186\" indent1=\"0\" indent2=\"0\" indent3=\"0\" index=\"0\" javafontname=\"Arial\" javafontsize=\"22\" javafonttype=\"Plain\" labelcolor=\"000000ff\" resize=\"false\" shadowcolor=\"333333ff\" shape=\"0\" tiltleft=\"0.0\" tilttop=\"0.0\" tiltup=\"0.0\" verticalindent=\"-0.2\" visible=\"true\" width=\"6.400000095367432\" x=\"-16.365397247540457\" y=\"6.6840802570379925\" z=\"0.0\"/>
          <participantstate bodycolor1=\"a0bce5ff\" bodycolor2=\"a0bce5ff\" depth=\"0.0\" fontclass=\"Java\" gapsizechange=\"0.0\" height=\"1.4314658641815186\" indent1=\"0\" indent2=\"0\" indent3=\"0\" index=\"1\" javafontname=\"Arial\" javafontsize=\"22\" javafonttype=\"Plain\" labelcolor=\"000000ff\" resize=\"false\" shadowcolor=\"333333ff\" shape=\"0\" tiltleft=\"0.0\" tilttop=\"0.0\" tiltup=\"0.0\" verticalindent=\"-0.2\" visible=\"true\" width=\"6.400000095367432\" x=\"-14.599307158861972\" y=\"-11.015012344051065\" z=\"0.0\"/>
          <participantstate bodycolor1=\"a0bce5ff\" bodycolor2=\"a0bce5ff\" depth=\"0.0\" fontclass=\"Java\" gapsizechange=\"0.0\" height=\"1.4314658641815186\" indent1=\"0\" indent2=\"0\" indent3=\"0\" index=\"2\" javafontname=\"Arial\" javafontsize=\"22\" javafonttype=\"Plain\" labelcolor=\"000000ff\" resize=\"false\" shadowcolor=\"333333ff\" shape=\"0\" tiltleft=\"0.0\" tilttop=\"0.0\" tiltup=\"0.0\" verticalindent=\"-0.2\" visible=\"true\" width=\"6.400000095367432\" x=\"-6.953248277153416\" y=\"-11.117807855654009\" z=\"0.0\"/>
          <participantstate bodycolor1=\"a0bce5ff\" bodycolor2=\"a0bce5ff\" depth=\"0.0\" fontclass=\"Java\" gapsizechange=\"0.0\" height=\"1.4314658641815186\" indent1=\"0\" indent2=\"0\" indent3=\"0\" index=\"3\" javafontname=\"Arial\" javafontsize=\"22\" javafonttype=\"Plain\" labelcolor=\"000000ff\" resize=\"false\" shadowcolor=\"333333ff\" shape=\"0\" tiltleft=\"0.0\" tilttop=\"0.0\" tiltup=\"0.0\" verticalindent=\"-0.2\" visible=\"true\" width=\"6.400000095367432\" x=\"-10.75519881570446\" y=\"-18.859732815528226\" z=\"0.0\"/>
          <participantstate bodycolor1=\"a0bce5ff\" bodycolor2=\"a0bce5ff\" depth=\"0.0\" fontclass=\"Java\" gapsizechange=\"0.0\" height=\"1.4314658641815186\" indent1=\"0\" indent2=\"0\" indent3=\"0\" index=\"4\" javafontname=\"Arial\" javafontsize=\"22\" javafonttype=\"Plain\" labelcolor=\"000000ff\" resize=\"false\" shadowcolor=\"333333ff\" shape=\"0\" tiltleft=\"0.0\" tilttop=\"0.0\" tiltup=\"0.0\" verticalindent=\"-0.2\" visible=\"true\" width=\"6.400000095367432\" x=\"-2.26154511958809\" y=\"-18.709459214990623\" z=\"0.0\"/>
          <participantstate bodycolor1=\"a0bce5ff\" bodycolor2=\"a0bce5ff\" depth=\"0.0\" fontclass=\"Java\" gapsizechange=\"0.0\" height=\"1.4314658641815186\" indent1=\"0\" indent2=\"0\" indent3=\"0\" index=\"5\" javafontname=\"Arial\" javafontsize=\"22\" javafonttype=\"Plain\" labelcolor=\"000000ff\" resize=\"false\" shadowcolor=\"333333ff\" shape=\"0\" tiltleft=\"0.0\" tilttop=\"0.0\" tiltup=\"0.0\" verticalindent=\"-0.2\" visible=\"true\" width=\"6.400000095367432\" x=\"-22.485665699120155\" y=\"-11.154616540332174\" z=\"0.0\"/>
          <participantstate bodycolor1=\"a0bce5ff\" bodycolor2=\"a0bce5ff\" depth=\"0.0\" fontclass=\"Java\" gapsizechange=\"0.0\" height=\"1.4314658641815186\" indent1=\"0\" indent2=\"0\" indent3=\"0\" index=\"6\" javafontname=\"Arial\" javafontsize=\"22\" javafonttype=\"Plain\" labelcolor=\"000000ff\" resize=\"false\" shadowcolor=\"333333ff\" shape=\"0\" tiltleft=\"0.0\" tilttop=\"0.0\" tiltup=\"0.0\" verticalindent=\"-0.2\" visible=\"true\" width=\"6.400000095367432\" x=\"0.9104888582141117\" y=\"-11.168684911173285\" z=\"0.0\"/>
          <participantstate bodycolor1=\"a0bce5ff\" bodycolor2=\"a0bce5ff\" depth=\"0.0\" fontclass=\"Java\" gapsizechange=\"0.0\" height=\"1.4314658641815186\" indent1=\"0\" indent2=\"0\" indent3=\"0\" index=\"7\" javafontname=\"Arial\" javafontsize=\"22\" javafonttype=\"Plain\" labelcolor=\"000000ff\" resize=\"false\" shadowcolor=\"333333ff\" shape=\"0\" tiltleft=\"0.0\" tilttop=\"0.0\" tiltup=\"0.0\" verticalindent=\"-0.2\" visible=\"true\" width=\"6.400000095367432\" x=\"2.5635138304854794\" y=\"-15.32682582832506\" z=\"0.0\"/>
          <participantstate bodycolor1=\"a0bce5ff\" bodycolor2=\"a0bce5ff\" depth=\"0.0\" fontclass=\"Java\" gapsizechange=\"0.0\" height=\"1.4314658641815186\" indent1=\"0\" indent2=\"0\" indent3=\"0\" index=\"8\" javafontname=\"Arial\" javafontsize=\"22\" javafonttype=\"Plain\" labelcolor=\"000000ff\" resize=\"false\" shadowcolor=\"333333ff\" shape=\"0\" tiltleft=\"0.0\" tilttop=\"0.0\" tiltup=\"0.0\" verticalindent=\"-0.2\" visible=\"true\" width=\"7.947368621826172\" x=\"3.0808284428919124\" y=\"-21.981472020028033\" z=\"0.0\"/>
          <participantstate bodycolor1=\"a0bce5ff\" bodycolor2=\"a0bce5ff\" depth=\"0.0\" fontclass=\"Java\" gapsizechange=\"0.0\" height=\"1.4314658641815186\" indent1=\"0\" indent2=\"0\" indent3=\"0\" index=\"9\" javafontname=\"Arial\" javafontsize=\"22\" javafonttype=\"Plain\" labelcolor=\"000000ff\" resize=\"false\" shadowcolor=\"333333ff\" shape=\"0\" tiltleft=\"0.0\" tilttop=\"0.0\" tiltup=\"0.0\" verticalindent=\"-0.2\" visible=\"true\" width=\"8.210526466369629\" x=\"2.9172982827781833\" y=\"-4.79740194917878\" z=\"0.0\"/>
          <participantstate bodycolor1=\"a0bce5ff\" bodycolor2=\"a0bce5ff\" depth=\"0.0\" fontclass=\"Java\" gapsizechange=\"0.0\" height=\"1.4314658641815186\" indent1=\"0\" indent2=\"0\" indent3=\"0\" index=\"10\" javafontname=\"Arial\" javafontsize=\"22\" javafonttype=\"Plain\" labelcolor=\"000000ff\" resize=\"false\" shadowcolor=\"333333ff\" shape=\"0\" tiltleft=\"0.0\" tilttop=\"0.0\" tiltup=\"0.0\" verticalindent=\"-0.2\" visible=\"true\" width=\"6.400000095367432\" x=\"-8.983625838178265\" y=\"6.7289093114131875\" z=\"0.0\"/>
          <participantstate bodycolor1=\"a0bce5ff\" bodycolor2=\"a0bce5ff\" depth=\"0.0\" fontclass=\"Java\" gapsizechange=\"0.0\" height=\"1.4314658641815186\" indent1=\"0\" indent2=\"0\" indent3=\"0\" index=\"11\" javafontname=\"Arial\" javafontsize=\"22\" javafonttype=\"Plain\" labelcolor=\"000000ff\" resize=\"false\" shadowcolor=\"333333ff\" shape=\"0\" tiltleft=\"0.0\" tilttop=\"0.0\" tiltup=\"0.0\" verticalindent=\"-0.2\" visible=\"true\" width=\"6.400000095367432\" x=\"-1.078145014273644\" y=\"6.755577752169899\" z=\"0.0\"/>
          <participantstate bodycolor1=\"a0bce5ff\" bodycolor2=\"a0bce5ff\" depth=\"0.0\" fontclass=\"Java\" gapsizechange=\"0.0\" height=\"1.4314658641815186\" indent1=\"0\" indent2=\"0\" indent3=\"0\" index=\"12\" javafontname=\"Arial\" javafontsize=\"22\" javafonttype=\"Plain\" labelcolor=\"000000ff\" resize=\"false\" shadowcolor=\"333333ff\" shape=\"0\" tiltleft=\"0.0\" tilttop=\"0.0\" tiltup=\"0.0\" verticalindent=\"-0.2\" visible=\"true\" width=\"6.400000095367432\" x=\"-23.61618550192105\" y=\"6.854393429136091\" z=\"0.0\"/>
        </participantstatelist>
        <interactionstatelist>
          <interactionstate blankcolorlength=\"0.0\" blend=\"false\" bodycolor=\"7f7f7fff\" endcolor=\"7f7f7fff\" endshape=\"Arrow\" endsize=\"1\" height=\"0.5\" index=\"0\" interactionid=\"125\" linewidth=\"0.30000001192092896\" shadowcolor=\"7f7f7fff\" shape=\"0\" startcolor=\"7f7f7fff\" stipplecolorlength=\"0.0\" stippled=\"false\" tiltup=\"0.0\" visible=\"true\" width=\"0.5\" x=\"-13.253649941727529\" y=\"-1.9140168628798853\" z=\"0.0\"/>
          <interactionstate blankcolorlength=\"0.0\" blend=\"false\" bodycolor=\"7f7f7fff\" endcolor=\"7f7f7fff\" endshape=\"Arrow\" endsize=\"1\" height=\"0.5\" index=\"1\" interactionid=\"126\" linewidth=\"0.30000001192092896\" shadowcolor=\"7f7f7fff\" shape=\"0\" startcolor=\"7f7f7fff\" stipplecolorlength=\"0.0\" stippled=\"false\" tiltup=\"0.0\" visible=\"true\" width=\"0.5\" x=\"-4.723404104934222\" y=\"-14.424766008782568\" z=\"0.0\"/>
          <interactionstate blankcolorlength=\"0.0\" blend=\"false\" bodycolor=\"7f7f7fff\" endcolor=\"7f7f7fff\" endshape=\"Arrow\" endsize=\"1\" height=\"0.5\" index=\"2\" interactionid=\"127\" linewidth=\"0.30000001192092896\" shadowcolor=\"7f7f7fff\" shape=\"0\" startcolor=\"7f7f7fff\" stipplecolorlength=\"0.0\" stippled=\"false\" tiltup=\"0.0\" visible=\"true\" width=\"0.5\" x=\"-8.615572330621392\" y=\"-14.810744530150055\" z=\"0.0\"/>
          <interactionstate blankcolorlength=\"0.0\" blend=\"false\" bodycolor=\"7f7f7fff\" endcolor=\"7f7f7fff\" endshape=\"Arrow\" endsize=\"1\" height=\"0.5\" index=\"3\" interactionid=\"128\" linewidth=\"0.30000001192092896\" shadowcolor=\"7f7f7fff\" shape=\"0\" startcolor=\"7f7f7fff\" stipplecolorlength=\"0.0\" stippled=\"false\" tiltup=\"0.0\" visible=\"true\" width=\"0.5\" x=\"-18.495765217182758\" y=\"-11.173720064345716\" z=\"0.0\"/>
          <interactionstate blankcolorlength=\"0.0\" blend=\"false\" bodycolor=\"7f7f7fff\" endcolor=\"7f7f7fff\" endshape=\"Arrow\" endsize=\"1\" height=\"0.5\" index=\"4\" interactionid=\"129\" linewidth=\"0.30000001192092896\" shadowcolor=\"7f7f7fff\" shape=\"0\" startcolor=\"7f7f7fff\" stipplecolorlength=\"0.0\" stippled=\"false\" tiltup=\"0.0\" visible=\"true\" width=\"0.5\" x=\"-2.81887330850307\" y=\"-11.277180435313667\" z=\"0.0\"/>
          <interactionstate blankcolorlength=\"0.0\" blend=\"false\" bodycolor=\"7f7f7fff\" endcolor=\"7f7f7fff\" endshape=\"Arrow\" endsize=\"1\" height=\"0.5\" index=\"5\" interactionid=\"130\" linewidth=\"0.30000001192092896\" shadowcolor=\"7f7f7fff\" shape=\"0\" startcolor=\"7f7f7fff\" stipplecolorlength=\"0.0\" stippled=\"false\" tiltup=\"0.0\" visible=\"true\" width=\"0.5\" x=\"1.7308871192540694\" y=\"-13.91541989494799\" z=\"0.0\"/>
          <interactionstate blankcolorlength=\"0.0\" blend=\"false\" bodycolor=\"7f7f7fff\" endcolor=\"7f7f7fff\" endshape=\"Arrow\" endsize=\"1\" height=\"0.5\" index=\"6\" interactionid=\"131\" linewidth=\"0.30000001192092896\" shadowcolor=\"7f7f7fff\" shape=\"0\" startcolor=\"7f7f7fff\" stipplecolorlength=\"0.0\" stippled=\"false\" tiltup=\"0.0\" visible=\"true\" width=\"0.5\" x=\"2.868327226187286\" y=\"-18.984978072281418\" z=\"0.0\"/>
          <interactionstate blankcolorlength=\"0.0\" blend=\"false\" bodycolor=\"7f7f7fff\" endcolor=\"7f7f7fff\" endshape=\"Arrow\" endsize=\"1\" height=\"0.5\" index=\"7\" interactionid=\"132\" linewidth=\"0.30000001192092896\" shadowcolor=\"7f7f7fff\" shape=\"0\" startcolor=\"7f7f7fff\" stipplecolorlength=\"0.0\" stippled=\"false\" tiltup=\"0.0\" visible=\"true\" width=\"0.5\" x=\"2.126518460796985\" y=\"-7.862988193429144\" z=\"0.0\"/>
          <interactionstate blankcolorlength=\"0.0\" blend=\"false\" bodycolor=\"7f7f7fff\" endcolor=\"7f7f7fff\" endshape=\"Arrow\" endsize=\"1\" height=\"0.5\" index=\"8\" interactionid=\"133\" linewidth=\"0.30000001192092896\" shadowcolor=\"7f7f7fff\" shape=\"0\" startcolor=\"7f7f7fff\" stipplecolorlength=\"0.0\" stippled=\"false\" tiltup=\"0.0\" visible=\"true\" width=\"0.5\" x=\"-14.786721390205235\" y=\"-14.070610451396073\" z=\"0.0\"/>
          <interactionstate blankcolorlength=\"0.0\" blend=\"false\" bodycolor=\"7f7f7fff\" endcolor=\"7f7f7fff\" endshape=\"Arrow\" endsize=\"1\" height=\"0.5\" index=\"9\" interactionid=\"134\" linewidth=\"0.30000001192092896\" shadowcolor=\"7f7f7fff\" shape=\"0\" startcolor=\"7f7f7fff\" stipplecolorlength=\"0.0\" stippled=\"false\" tiltup=\"0.0\" visible=\"true\" width=\"0.5\" x=\"-11.176585398622702\" y=\"-2.0174772338406757\" z=\"0.0\"/>
          <interactionstate blankcolorlength=\"0.0\" blend=\"false\" bodycolor=\"7f7f7fff\" endcolor=\"7f7f7fff\" endshape=\"Arrow\" endsize=\"1\" height=\"0.5\" index=\"10\" interactionid=\"135\" linewidth=\"0.30000001192092896\" shadowcolor=\"7f7f7fff\" shape=\"0\" startcolor=\"7f7f7fff\" stipplecolorlength=\"0.0\" stippled=\"false\" tiltup=\"0.0\" visible=\"true\" width=\"0.5\" x=\"-17.45723294563217\" y=\"-1.9657470483578923\" z=\"0.0\"/>
          <interactionstate blankcolorlength=\"0.0\" blend=\"false\" bodycolor=\"7f7f7fff\" endcolor=\"7f7f7fff\" endshape=\"Arrow\" endsize=\"1\" height=\"0.5\" index=\"11\" interactionid=\"136\" linewidth=\"0.30000001192092896\" shadowcolor=\"7f7f7fff\" shape=\"0\" startcolor=\"7f7f7fff\" stipplecolorlength=\"0.0\" stippled=\"false\" tiltup=\"0.0\" visible=\"true\" width=\"0.5\" x=\"-6.280647547011779\" y=\"-2.224397975771808\" z=\"0.0\"/>
          <interactionstate blankcolorlength=\"0.0\" blend=\"false\" bodycolor=\"7f7f7fff\" endcolor=\"7f7f7fff\" endshape=\"Arrow\" endsize=\"1\" height=\"0.5\" index=\"12\" interactionid=\"137\" linewidth=\"0.30000001192092896\" shadowcolor=\"7f7f7fff\" shape=\"0\" startcolor=\"7f7f7fff\" stipplecolorlength=\"0.0\" stippled=\"false\" tiltup=\"0.0\" visible=\"true\" width=\"0.5\" x=\"-19.484843571046458\" y=\"-2.2761281612594106\" z=\"0.0\"/>
          <interactionstate blankcolorlength=\"0.0\" blend=\"false\" bodycolor=\"7f7f7fff\" endcolor=\"7f7f7fff\" endshape=\"Arrow\" endsize=\"1\" height=\"0.5\" index=\"13\" interactionid=\"138\" linewidth=\"0.30000001192092896\" shadowcolor=\"7f7f7fff\" shape=\"0\" startcolor=\"7f7f7fff\" stipplecolorlength=\"0.0\" stippled=\"false\" tiltup=\"0.0\" visible=\"true\" width=\"0.5\" x=\"-22.056447291081575\" y=\"-2.1726677902890397\" z=\"0.0\"/>
          <interactionstate blankcolorlength=\"0.0\" blend=\"false\" bodycolor=\"7f7f7fff\" endcolor=\"7f7f7fff\" endshape=\"Arrow\" endsize=\"1\" height=\"0.5\" index=\"14\" interactionid=\"139\" linewidth=\"0.30000001192092896\" shadowcolor=\"7f7f7fff\" shape=\"0\" startcolor=\"7f7f7fff\" stipplecolorlength=\"0.0\" stippled=\"false\" tiltup=\"0.0\" visible=\"true\" width=\"0.5\" x=\"-22.74880213877505\" y=\"-14.225801007844376\" z=\"0.0\"/>
          <interactionstate blankcolorlength=\"0.0\" blend=\"false\" bodycolor=\"7f7f7fff\" endcolor=\"7f7f7fff\" endshape=\"Arrow\" endsize=\"1\" height=\"0.5\" index=\"15\" interactionid=\"140\" linewidth=\"0.30000001192092896\" shadowcolor=\"7f7f7fff\" shape=\"0\" startcolor=\"7f7f7fff\" stipplecolorlength=\"0.0\" stippled=\"false\" tiltup=\"0.0\" visible=\"true\" width=\"0.5\" x=\"-10.682046221689154\" y=\"-10.966799322414698\" z=\"0.0\"/>
          <interactionstate blankcolorlength=\"0.0\" blend=\"false\" bodycolor=\"7f7f7fff\" endcolor=\"7f7f7fff\" endshape=\"Arrow\" endsize=\"1\" height=\"0.5\" index=\"16\" interactionid=\"141\" linewidth=\"0.30000001192092896\" shadowcolor=\"7f7f7fff\" shape=\"0\" startcolor=\"7f7f7fff\" stipplecolorlength=\"0.0\" stippled=\"false\" tiltup=\"0.0\" visible=\"true\" width=\"0.5\" x=\"-10.706387766281628\" y=\"-22.06357815243579\" z=\"0.0\"/>
          <interactionstate blankcolorlength=\"0.0\" blend=\"false\" bodycolor=\"7f7f7fff\" endcolor=\"7f7f7fff\" endshape=\"Arrow\" endsize=\"1\" height=\"0.5\" index=\"17\" interactionid=\"142\" linewidth=\"0.30000001192092896\" shadowcolor=\"7f7f7fff\" shape=\"0\" startcolor=\"7f7f7fff\" stipplecolorlength=\"0.0\" stippled=\"false\" tiltup=\"0.0\" visible=\"true\" width=\"0.5\" x=\"-2.225426296190392\" y=\"-22.243979757715667\" z=\"0.0\"/>
          <interactionstate blankcolorlength=\"0.0\" blend=\"false\" bodycolor=\"7f7f7fff\" endcolor=\"7f7f7fff\" endshape=\"Arrow\" endsize=\"1\" height=\"0.5\" index=\"18\" interactionid=\"143\" linewidth=\"0.30000001192092896\" shadowcolor=\"7f7f7fff\" shape=\"0\" startcolor=\"7f7f7fff\" stipplecolorlength=\"0.0\" stippled=\"false\" tiltup=\"0.0\" visible=\"true\" width=\"0.5\" x=\"9.74686150752999\" y=\"-4.762288832732273\" z=\"0.0\"/>
          <interactionstate blankcolorlength=\"0.0\" blend=\"false\" bodycolor=\"7f7f7fff\" endcolor=\"7f7f7fff\" endshape=\"Arrow\" endsize=\"1\" height=\"0.5\" index=\"19\" interactionid=\"144\" linewidth=\"0.30000001192092896\" shadowcolor=\"7f7f7fff\" shape=\"0\" startcolor=\"7f7f7fff\" stipplecolorlength=\"0.0\" stippled=\"false\" tiltup=\"0.0\" visible=\"true\" width=\"0.5\" x=\"3.16488118134104\" y=\"-24.89636275689204\" z=\"0.0\"/>
          <interactionstate blankcolorlength=\"0.0\" blend=\"false\" bodycolor=\"7f7f7fff\" endcolor=\"7f7f7fff\" endshape=\"Arrow\" endsize=\"1\" height=\"0.5\" index=\"20\" interactionid=\"145\" linewidth=\"0.30000001192092896\" shadowcolor=\"7f7f7fff\" shape=\"0\" startcolor=\"7f7f7fff\" stipplecolorlength=\"0.0\" stippled=\"false\" tiltup=\"0.0\" visible=\"true\" width=\"0.5\" x=\"-8.555527760890103\" y=\"-1.9657470483602653\" z=\"0.0\"/>
          <interactionstate blankcolorlength=\"0.0\" blend=\"false\" bodycolor=\"7f7f7fff\" endcolor=\"7f7f7fff\" endshape=\"Arrow\" endsize=\"1\" height=\"0.5\" index=\"21\" interactionid=\"146\" linewidth=\"0.30000001192092896\" shadowcolor=\"7f7f7fff\" shape=\"0\" startcolor=\"7f7f7fff\" stipplecolorlength=\"0.0\" stippled=\"false\" tiltup=\"0.0\" visible=\"true\" width=\"0.5\" x=\"-15.775799744069854\" y=\"-1.8622866773899092\" z=\"0.0\"/>
        </interactionstatelist>
      </presentation>
    </presentationlist>
    <experimentlist>
      <experiment date=\"01-27-2006\" description=\"RAW cells Kdo - media\" id=\"8\" labname=\"Eicosanoids/Fatty acids (Core G), Department of Biochemistry, University of California-San Diego\" limsid=\"BCG060127A\" type=\"analyte\" visible=\"true\"/>
      <experiment date=\"02-10-2006\" description=\"RAW cells Kdo - media\" id=\"10\" labname=\"Eicosanoids/Fatty acids (Core G), Department of Biochemistry, University of California-San Diego\" limsid=\"BCG060210A\" type=\"analyte\" visible=\"true\"/>
      <experiment date=\"02-01-2006\" description=\"RAW cells Kdo - media\" id=\"9\" labname=\"Eicosanoids/Fatty acids (Core G), Department of Biochemistry, University of California-San Diego\" limsid=\"BCG060201A\" type=\"analyte\" visible=\"true\"/>
      <experiment date=\"04-13-2007\" description=\"RAW cells Kdo\" id=\"1\" labname=\"Macrophage Biology/Functional Genomics (Core D), University of California-San Diego\" limsid=\"null\" type=\"microarray\" visible=\"true\"/>
    </experimentlist>
  </pathwaydocument>
  <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
  </rdf:RDF>
</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_c1 elmt_c1;
    Class_elmt_event2 elmt_event2;
    Class_elmt_event1 elmt_event1;
    Class_elmt_event4 elmt_event4;
    Class_elmt_event3 elmt_event3;
    Class_elmt_event6 elmt_event6;
    Class_elmt_event5 elmt_event5;
    Class_elmt_event0 elmt_event0;

    function prioritize_between_3
        input Real[3] prios;
        input Real[3] values;
        input Boolean[3] trigs;
        output Real value;
        protected Real min_prio;
        algorithm
            value := 0;
            min_prio := Constants.INFINITY;
            for i in 1:3 loop
                if trigs[i] and prios[i] < min_prio then
                    value := values[i];
                    min_prio := prios[i];
                end if;
            end for;
    end prioritize_between_3;
    function prioritize_between_7
        input Real[7] prios;
        input Real[7] values;
        input Boolean[7] trigs;
        output Real value;
        protected Real min_prio;
        algorithm
            value := 0;
            min_prio := Constants.INFINITY;
            for i in 1:7 loop
                if trigs[i] and prios[i] < min_prio then
                    value := values[i];
                    min_prio := prios[i];
                end if;
            end for;
    end prioritize_between_7;
    equation
        Params.elmt_event2 = elmt_event2.trigger;
        Params.elmt_event1 = elmt_event1.trigger;
        Params.elmt_event4 = elmt_event4.trigger;
        Params.elmt_event3 = elmt_event3.trigger;
        Params.elmt_event6 = elmt_event6.trigger;
        Params.elmt_event5 = elmt_event5.trigger;
        Params.elmt_event0 = elmt_event0.trigger;
        Reacs.elmt_DNA = Params.elmt_DNA;
        Reacs.elmt_LPSactivity = Params.elmt_LPSactivity;
        Reacs.elmt_PGE2 = elmt_c1.elmt_PGE2;
        Reacs.elmt_dPGD2 = elmt_c1.elmt_dPGD2;
        Reacs.elmt_k16 = Params.elmt_k16;
        Reacs.elmt_k15 = Params.elmt_k15;
        Reacs.elmt_k14 = Params.elmt_k14;
        Reacs.elmt_FA = elmt_c1.elmt_FA;
        Reacs.elmt_k13 = Params.elmt_k13;
        Reacs.elmt_k12 = Params.elmt_k12;
        Reacs.elmt_dPGJ2 = elmt_c1.elmt_dPGJ2;
        Reacs.elmt_PGF2a = elmt_c1.elmt_PGF2a;
        Reacs.elmt_k11 = Params.elmt_k11;
        Reacs.elmt_k10 = Params.elmt_k10;
        Reacs.elmt_k1 = Params.elmt_k1;
        Reacs.elmt_GPChoratio = Params.elmt_GPChoratio;
        Reacs.elmt_GPCho = elmt_c1.elmt_GPCho;
        Reacs.elmt_k19 = Params.elmt_k19;
        Reacs.elmt_k18 = Params.elmt_k18;
        Reacs.elmt_k17 = Params.elmt_k17;
        Reacs.elmt_AA = elmt_c1.elmt_AA;
        Reacs.elmt_k8 = Params.elmt_k8;
        Reacs.elmt_PGJ2 = elmt_c1.elmt_PGJ2;
        Reacs.elmt_k9 = Params.elmt_k9;
        Reacs.elmt_PGH2 = elmt_c1.elmt_PGH2;
        Reacs.elmt_k6 = Params.elmt_k6;
        Reacs.elmt_k7 = Params.elmt_k7;
        Reacs.elmt_HETE = elmt_c1.elmt_HETE;
        Reacs.elmt_k4 = Params.elmt_k4;
        Reacs.elmt_k5 = Params.elmt_k5;
        Reacs.elmt_k2 = Params.elmt_k2;
        Reacs.elmt_PGD2 = elmt_c1.elmt_PGD2;
        Reacs.elmt_k3 = Params.elmt_k3;
        Reacs.elmt_DGactivity = Params.elmt_DGactivity;
        Reacs.elmt_DGperDNA = Params.elmt_DGperDNA;
        Reacs.elmt_onepmol = Params.elmt_onepmol;
        Reacs.elmt_k22 = Params.elmt_k22;
        Reacs.elmt_k21 = Params.elmt_k21;
        Reacs.elmt_k20 = Params.elmt_k20;
        elmt_c1.elmt_r7 = Reacs.elmt_r7;
        elmt_c1.elmt_product30 = Reacs.elmt_product30;
        elmt_c1.elmt_r8 = Reacs.elmt_r8;
        elmt_c1.elmt_r5 = Reacs.elmt_r5;
        elmt_c1.elmt_r6 = Reacs.elmt_r6;
        elmt_c1.elmt_r3 = Reacs.elmt_r3;
        elmt_c1.elmt_r4 = Reacs.elmt_r4;
        elmt_c1.elmt_product33 = Reacs.elmt_product33;
        elmt_c1.elmt_r1 = Reacs.elmt_r1;
        elmt_c1.elmt_r22 = Reacs.elmt_r22;
        elmt_c1.elmt_r2 = Reacs.elmt_r2;
        elmt_c1.elmt_r21 = Reacs.elmt_r21;
        elmt_c1.elmt_r9 = Reacs.elmt_r9;
        elmt_c1.elmt_product27 = Reacs.elmt_product27;
        elmt_c1.elmt_product25 = Reacs.elmt_product25;
        elmt_c1.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_c1.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_c1.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_c1.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_c1.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_c1.elmt_product37 = Reacs.elmt_product37;
        elmt_c1.elmt_product35 = Reacs.elmt_product35;
        elmt_c1.elmt_product11 = Reacs.elmt_product11;
        elmt_c1.elmt_reactant26 = Reacs.elmt_reactant26;
        elmt_c1.elmt_reactant28 = Reacs.elmt_reactant28;
        elmt_c1.elmt_reactant21 = Reacs.elmt_reactant21;
        elmt_c1.elmt_reactant22 = Reacs.elmt_reactant22;
        elmt_c1.elmt_reactant24 = Reacs.elmt_reactant24;
        elmt_c1.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_c1.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt_c1.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_c1.elmt_r17 = Reacs.elmt_r17;
        elmt_c1.elmt_product9 = Reacs.elmt_product9;
        elmt_c1.elmt_r16 = Reacs.elmt_r16;
        elmt_c1.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_c1.elmt_product7 = Reacs.elmt_product7;
        elmt_c1.elmt_r15 = Reacs.elmt_r15;
        elmt_c1.elmt_r14 = Reacs.elmt_r14;
        elmt_c1.elmt_reactant31 = Reacs.elmt_reactant31;
        elmt_c1.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_c1.elmt_r13 = Reacs.elmt_r13;
        elmt_c1.elmt_product23 = Reacs.elmt_product23;
        elmt_c1.elmt_r12 = Reacs.elmt_r12;
        elmt_c1.elmt_r11 = Reacs.elmt_r11;
        elmt_c1.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_c1.elmt_r10 = Reacs.elmt_r10;
        elmt_c1.elmt_product20 = Reacs.elmt_product20;
        elmt_c1.elmt_reactant36 = Reacs.elmt_reactant36;
        elmt_c1.elmt_product1 = Reacs.elmt_product1;
        elmt_c1.elmt_product5 = Reacs.elmt_product5;
        elmt_c1.elmt_reactant34 = Reacs.elmt_reactant34;
        elmt_c1.elmt_product3 = Reacs.elmt_product3;
        elmt_c1.elmt_r19 = Reacs.elmt_r19;
        elmt_c1.elmt_r18 = Reacs.elmt_r18;
        elmt_c1.elmt_reactant29 = Reacs.elmt_reactant29;
        elmt_c1.elmt_r20 = Reacs.elmt_r20;
        elmt_c1.elmt_product13 = Reacs.elmt_product13;
        elmt_c1.elmt_product17 = Reacs.elmt_product17;
        elmt_event6.elmt_DGslope6 = Params.elmt_DGslope6;
        elmt_event6.elmt_timevalue = Params.elmt_timevalue;
        elmt_event6.elmt_t6 = Params.elmt_t6;
        elmt_event6.elmt_GPChoslope6 = Params.elmt_GPChoslope6;
        elmt_event6.elmt_GPChoint6 = Params.elmt_GPChoint6;
        elmt_event6.elmt_DGint6 = Params.elmt_DGint6;
        elmt_event1.elmt_LPSslope1 = Params.elmt_LPSslope1;
        elmt_event1.elmt_DGint1 = Params.elmt_DGint1;
        elmt_event1.elmt_GPChoslope1 = Params.elmt_GPChoslope1;
        elmt_event1.elmt_timevalue = Params.elmt_timevalue;
        elmt_event1.elmt_DGslope1 = Params.elmt_DGslope1;
        elmt_event1.elmt_t1 = Params.elmt_t1;
        elmt_event1.elmt_LPSint1 = Params.elmt_LPSint1;
        elmt_event1.elmt_GPChoint1 = Params.elmt_GPChoint1;
        elmt_event3.elmt_DGslope3 = Params.elmt_DGslope3;
        elmt_event3.elmt_LPSslope3 = Params.elmt_LPSslope3;
        elmt_event3.elmt_timevalue = Params.elmt_timevalue;
        elmt_event3.elmt_t3 = Params.elmt_t3;
        elmt_event3.elmt_GPChoint3 = Params.elmt_GPChoint3;
        elmt_event3.elmt_GPChoslope3 = Params.elmt_GPChoslope3;
        elmt_event3.elmt_LPSint3 = Params.elmt_LPSint3;
        elmt_event3.elmt_DGint3 = Params.elmt_DGint3;
        elmt_event5.elmt_DGslope5 = Params.elmt_DGslope5;
        elmt_event5.elmt_timevalue = Params.elmt_timevalue;
        elmt_event5.elmt_t5 = Params.elmt_t5;
        elmt_event5.elmt_GPChoslope5 = Params.elmt_GPChoslope5;
        elmt_event5.elmt_GPChoint5 = Params.elmt_GPChoint5;
        elmt_event5.elmt_DGint5 = Params.elmt_DGint5;
        elmt_event2.elmt_DGint2 = Params.elmt_DGint2;
        elmt_event2.elmt_timevalue = Params.elmt_timevalue;
        elmt_event2.elmt_GPChoslope2 = Params.elmt_GPChoslope2;
        elmt_event2.elmt_DGslope2 = Params.elmt_DGslope2;
        elmt_event2.elmt_t2 = Params.elmt_t2;
        elmt_event2.elmt_GPChoint2 = Params.elmt_GPChoint2;
        elmt_event4.elmt_DGslope4 = Params.elmt_DGslope4;
        elmt_event4.elmt_timevalue = Params.elmt_timevalue;
        elmt_event4.elmt_t4 = Params.elmt_t4;
        elmt_event4.elmt_GPChoint4 = Params.elmt_GPChoint4;
        elmt_event4.elmt_GPChoslope4 = Params.elmt_GPChoslope4;
        elmt_event4.elmt_DGint4 = Params.elmt_DGint4;
        elmt_event0.elmt_LPSintzero = Params.elmt_LPSintzero;
        elmt_event0.elmt_LPSslopezero = Params.elmt_LPSslopezero;
        elmt_event0.elmt_DGslopezero = Params.elmt_DGslopezero;
        elmt_event0.elmt_GPChoslopezero = Params.elmt_GPChoslopezero;
        elmt_event0.elmt_timevalue = Params.elmt_timevalue;
        elmt_event0.elmt_GPChointzero = Params.elmt_GPChointzero;
        elmt_event0.elmt_t0 = Params.elmt_t0;
        elmt_event0.elmt_DGintzero = Params.elmt_DGintzero;

        Params.assign_elmt_LPSint = prioritize_between_3({Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY}, {elmt_event1.value_elmt_LPSint, elmt_event3.value_elmt_LPSint, elmt_event0.value_elmt_LPSint}, {edge(elmt_event1.trigger), edge(elmt_event3.trigger), edge(elmt_event0.trigger)});
        Params.assign_elmt_GPChoint = prioritize_between_7({Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY}, {elmt_event2.value_elmt_GPChoint, elmt_event1.value_elmt_GPChoint, elmt_event4.value_elmt_GPChoint, elmt_event3.value_elmt_GPChoint, elmt_event6.value_elmt_GPChoint, elmt_event5.value_elmt_GPChoint, elmt_event0.value_elmt_GPChoint}, {edge(elmt_event2.trigger), edge(elmt_event1.trigger), edge(elmt_event4.trigger), edge(elmt_event3.trigger), edge(elmt_event6.trigger), edge(elmt_event5.trigger), edge(elmt_event0.trigger)});
        Params.assign_elmt_DGslope = prioritize_between_7({Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY}, {elmt_event2.value_elmt_DGslope, elmt_event1.value_elmt_DGslope, elmt_event4.value_elmt_DGslope, elmt_event3.value_elmt_DGslope, elmt_event6.value_elmt_DGslope, elmt_event5.value_elmt_DGslope, elmt_event0.value_elmt_DGslope}, {edge(elmt_event2.trigger), edge(elmt_event1.trigger), edge(elmt_event4.trigger), edge(elmt_event3.trigger), edge(elmt_event6.trigger), edge(elmt_event5.trigger), edge(elmt_event0.trigger)});
        Params.assign_elmt_LPSslope = prioritize_between_3({Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY}, {elmt_event1.value_elmt_LPSslope, elmt_event3.value_elmt_LPSslope, elmt_event0.value_elmt_LPSslope}, {edge(elmt_event1.trigger), edge(elmt_event3.trigger), edge(elmt_event0.trigger)});
        Params.assign_elmt_GPChoslope = prioritize_between_7({Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY}, {elmt_event2.value_elmt_GPChoslope, elmt_event1.value_elmt_GPChoslope, elmt_event4.value_elmt_GPChoslope, elmt_event3.value_elmt_GPChoslope, elmt_event6.value_elmt_GPChoslope, elmt_event5.value_elmt_GPChoslope, elmt_event0.value_elmt_GPChoslope}, {edge(elmt_event2.trigger), edge(elmt_event1.trigger), edge(elmt_event4.trigger), edge(elmt_event3.trigger), edge(elmt_event6.trigger), edge(elmt_event5.trigger), edge(elmt_event0.trigger)});
        Params.assign_elmt_DGint = prioritize_between_7({Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY}, {elmt_event2.value_elmt_DGint, elmt_event1.value_elmt_DGint, elmt_event4.value_elmt_DGint, elmt_event3.value_elmt_DGint, elmt_event6.value_elmt_DGint, elmt_event5.value_elmt_DGint, elmt_event0.value_elmt_DGint}, {edge(elmt_event2.trigger), edge(elmt_event1.trigger), edge(elmt_event4.trigger), edge(elmt_event3.trigger), edge(elmt_event6.trigger), edge(elmt_event5.trigger), edge(elmt_event0.trigger)});
end BIOMD0000000436;
