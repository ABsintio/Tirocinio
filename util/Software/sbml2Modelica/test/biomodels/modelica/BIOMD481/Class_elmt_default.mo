within BIOMD481;
class Class_elmt_default

    input Real elmt_SpeciesReference;
    input Real elmt_SpeciesReference_46;
    input Real elmt_SpeciesReference_48;
    input Real elmt_SpeciesReference_50;
    input Real elmt_SpeciesReference_52;
    input Real elmt_SpeciesReference_54;
    input Real elmt_parameter_4;
    input Real elmt_parameter_3;
    input Real elmt_re26;
    input Real elmt_re27;
    input Real elmt_re28;
    input Real elmt_re3;
    input Real elmt_SpeciesReference_56;
    input Real elmt_re2;
    input Real elmt_SpeciesReference_13;
    input Real elmt_SpeciesReference_58;
    input Real elmt_re1;
    input Real elmt_re20;
    input Real elmt_re21;
    input Real elmt_re22;
    input Real elmt_re23;
    input Real elmt_SpeciesReference_18;
    input Real elmt_re24;
    input Real elmt_re25;
    input Real elmt_SpeciesReference_60;
    input Real elmt_re9;
    input Real elmt_re8;
    input Real elmt_re7;
    input Real elmt_re6;
    input Real elmt_SpeciesReference_64;
    input Real elmt_SpeciesReference_21;
    input Real elmt_re5;
    input Real elmt_re4;
    input Real elmt_SpeciesReference_8;
    input Real elmt_re15;
    input Real elmt_re16;
    input Real elmt_re17;
    input Real elmt_re18;
    input Real elmt_re19;
    input Real elmt_SpeciesReference_24;
    input Real elmt_SpeciesReference_68;
    input Real elmt_re10;
    input Real elmt_SpeciesReference_1;
    input Real elmt_SpeciesReference_4;
    input Real elmt_SpeciesReference_27;
    input Real elmt_re11;
    input Real elmt_SpeciesReference_3;
    input Real elmt_re12;
    input Real elmt_re13;
    input Real elmt_re14;
    input Real elmt_SpeciesReference_72;
    input Real elmt_SpeciesReference_30;
    input Real elmt_SpeciesReference_75;
    input Real elmt_SpeciesReference_34;
    input Real elmt_SpeciesReference_37;
    input Real elmt_SpeciesReference_84;
    input Real elmt_SpeciesReference_40;
    input Real elmt_SpeciesReference_42;
    input Real elmt_SpeciesReference_44;
    input Real elmt_ModelValue_60;
    input Real elmt_ModelValue_61;
    input Real elmt_SpeciesReference_80;

    Real elmt_default(unit = "m3.0") "default";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_snk_FSH_conc(unit = "");
    Real elmt_snk_FSH_amount(unit = "");
    Real elmt_snk_FSH(unit = "") "snk_FSH";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
            <celldesigner:speciesIdentity>
              <celldesigner:class>DEGRADED</celldesigner:class>
              <celldesigner:name>snk_FSH</celldesigner:name>
            </celldesigner:speciesIdentity>
          </celldesigner:extension>
                        </annotation>"));
    Real elmt_snk_E2_conc(unit = "");
    Real elmt_snk_E2_amount(unit = "");
    Real elmt_snk_E2(unit = "") "snk_E2";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
            <celldesigner:speciesIdentity>
              <celldesigner:class>DEGRADED</celldesigner:class>
              <celldesigner:name>snk_E2</celldesigner:name>
            </celldesigner:speciesIdentity>
          </celldesigner:extension>
                        </annotation>"));
    Real elmt_FSH_Pit_conc(unit = "");
    Real elmt_FSH_Pit_amount(unit = "");
    Real elmt_FSH_Pit(unit = "") "FSH_Pit";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
            <celldesigner:speciesIdentity>
              <celldesigner:class>UNKNOWN</celldesigner:class>
              <celldesigner:name>FSH_Pit</celldesigner:name>
            </celldesigner:speciesIdentity>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_FSH_Bld_conc(unit = "");
    Real elmt_FSH_Bld_amount(unit = "");
    Real elmt_FSH_Bld(unit = "") "FSH_Bld";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
            <celldesigner:speciesIdentity>
              <celldesigner:class>UNKNOWN</celldesigner:class>
              <celldesigner:name>FSH_Bld</celldesigner:name>
            </celldesigner:speciesIdentity>
            <celldesigner:listOfCatalyzedReactions>
              <celldesigner:catalyzed reaction=\"re27\"/>
            </celldesigner:listOfCatalyzedReactions>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_E2_conc(unit = "");
    Real elmt_E2_amount(unit = "");
    Real elmt_E2(unit = "") "E2";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
            <celldesigner:speciesIdentity>
              <celldesigner:class>UNKNOWN</celldesigner:class>
              <celldesigner:name>E2</celldesigner:name>
            </celldesigner:speciesIdentity>
            <celldesigner:listOfCatalyzedReactions>
              <celldesigner:catalyzed reaction=\"re2\"/>
              <celldesigner:catalyzed reaction=\"re3\"/>
              <celldesigner:catalyzed reaction=\"re9\"/>
              <celldesigner:catalyzed reaction=\"re24\"/>
              <celldesigner:catalyzed reaction=\"re26\"/>
            </celldesigner:listOfCatalyzedReactions>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_src_Inh_conc(unit = "");
    Real elmt_src_Inh_amount(unit = "");
    Real elmt_src_Inh(unit = "") "src_Inh";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
            <celldesigner:speciesIdentity>
              <celldesigner:class>DEGRADED</celldesigner:class>
              <celldesigner:name>src_Inh</celldesigner:name>
            </celldesigner:speciesIdentity>
          </celldesigner:extension>
                        </annotation>"));
    Real elmt_snk_Enz_conc(unit = "");
    Real elmt_snk_Enz_amount(unit = "");
    Real elmt_snk_Enz(unit = "") "snk_Enz";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
            <celldesigner:speciesIdentity>
              <celldesigner:class>DEGRADED</celldesigner:class>
              <celldesigner:name>snk_Enz</celldesigner:name>
            </celldesigner:speciesIdentity>
          </celldesigner:extension>
                        </annotation>"));
    Real elmt_src_LH_conc(unit = "");
    Real elmt_src_LH_amount(unit = "");
    Real elmt_src_LH(unit = "") "src_LH";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
            <celldesigner:speciesIdentity>
              <celldesigner:class>DEGRADED</celldesigner:class>
              <celldesigner:name>src_LH</celldesigner:name>
            </celldesigner:speciesIdentity>
          </celldesigner:extension>
                        </annotation>"));
    Real elmt_snk_GnRH_Pit_conc(unit = "");
    Real elmt_snk_GnRH_Pit_amount(unit = "");
    Real elmt_snk_GnRH_Pit(unit = "") "snk_GnRH_Pit";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
            <celldesigner:speciesIdentity>
              <celldesigner:class>DEGRADED</celldesigner:class>
              <celldesigner:name>snk_GnRH_Pit</celldesigner:name>
            </celldesigner:speciesIdentity>
          </celldesigner:extension>
                        </annotation>"));
    Real elmt_GnRH_Hyp_conc(unit = "");
    Real elmt_GnRH_Hyp_amount(unit = "");
    Real elmt_GnRH_Hyp(unit = "") "GnRH_Hyp";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
            <celldesigner:speciesIdentity>
              <celldesigner:class>UNKNOWN</celldesigner:class>
              <celldesigner:name>GnRH_Hyp</celldesigner:name>
            </celldesigner:speciesIdentity>
            <celldesigner:listOfCatalyzedReactions>
              <celldesigner:catalyzed reaction=\"re5\"/>
              <celldesigner:catalyzed reaction=\"re26\"/>
            </celldesigner:listOfCatalyzedReactions>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Inh_conc(unit = "");
    Real elmt_Inh_amount(unit = "");
    Real elmt_Inh(unit = "") "Inh";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
            <celldesigner:speciesIdentity>
              <celldesigner:class>UNKNOWN</celldesigner:class>
              <celldesigner:name>Inh</celldesigner:name>
            </celldesigner:speciesIdentity>
            <celldesigner:listOfCatalyzedReactions>
              <celldesigner:catalyzed reaction=\"re25\"/>
            </celldesigner:listOfCatalyzedReactions>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_snk_Inh_conc(unit = "");
    Real elmt_snk_Inh_amount(unit = "");
    Real elmt_snk_Inh(unit = "") "snk_Inh";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
            <celldesigner:speciesIdentity>
              <celldesigner:class>DEGRADED</celldesigner:class>
              <celldesigner:name>snk_Inh</celldesigner:name>
            </celldesigner:speciesIdentity>
          </celldesigner:extension>
                        </annotation>"));
    Real elmt_src_Foll_conc(unit = "");
    Real elmt_src_Foll_amount(unit = "");
    Real elmt_src_Foll(unit = "") "src_Foll";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
            <celldesigner:speciesIdentity>
              <celldesigner:class>DEGRADED</celldesigner:class>
              <celldesigner:name>src_Foll</celldesigner:name>
            </celldesigner:speciesIdentity>
          </celldesigner:extension>
                        </annotation>"));
    Real elmt_src_E2_conc(unit = "");
    Real elmt_src_E2_amount(unit = "");
    Real elmt_src_E2(unit = "") "src_E2";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
            <celldesigner:speciesIdentity>
              <celldesigner:class>DEGRADED</celldesigner:class>
              <celldesigner:name>src_E2</celldesigner:name>
            </celldesigner:speciesIdentity>
          </celldesigner:extension>
                        </annotation>"));
    Real elmt_src_PGF_conc(unit = "");
    Real elmt_src_PGF_amount(unit = "");
    Real elmt_src_PGF(unit = "") "src_PGF";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
            <celldesigner:speciesIdentity>
              <celldesigner:class>DEGRADED</celldesigner:class>
              <celldesigner:name>src_PGF</celldesigner:name>
            </celldesigner:speciesIdentity>
          </celldesigner:extension>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#s23\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2013-09-18T10:10:04Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                        </annotation>"));
    Real elmt_snk_Foll_conc(unit = "");
    Real elmt_snk_Foll_amount(unit = "");
    Real elmt_snk_Foll(unit = "") "snk_Foll";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
            <celldesigner:speciesIdentity>
              <celldesigner:class>DEGRADED</celldesigner:class>
              <celldesigner:name>snk_Foll</celldesigner:name>
            </celldesigner:speciesIdentity>
          </celldesigner:extension>
                        </annotation>"));
    Real elmt_OT_conc(unit = "");
    Real elmt_OT_amount(unit = "");
    Real elmt_OT(unit = "") "OT";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
            <celldesigner:speciesIdentity>
              <celldesigner:class>UNKNOWN</celldesigner:class>
              <celldesigner:name>OT</celldesigner:name>
            </celldesigner:speciesIdentity>
            <celldesigner:listOfCatalyzedReactions>
              <celldesigner:catalyzed reaction=\"re11\"/>
            </celldesigner:listOfCatalyzedReactions>
          </celldesigner:extension>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#s13\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2013-09-18T10:10:20Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_src_GnRH_conc(unit = "");
    Real elmt_src_GnRH_amount(unit = "");
    Real elmt_src_GnRH(unit = "") "src_GnRH";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
            <celldesigner:speciesIdentity>
              <celldesigner:class>DEGRADED</celldesigner:class>
              <celldesigner:name>src_GnRH</celldesigner:name>
            </celldesigner:speciesIdentity>
          </celldesigner:extension>
                        </annotation>"));
    Real elmt_P4_conc(unit = "");
    Real elmt_P4_amount(unit = "");
    Real elmt_P4(unit = "") "P4";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
            <celldesigner:speciesIdentity>
              <celldesigner:class>UNKNOWN</celldesigner:class>
              <celldesigner:name>P4</celldesigner:name>
            </celldesigner:speciesIdentity>
            <celldesigner:listOfCatalyzedReactions>
              <celldesigner:catalyzed reaction=\"re2\"/>
              <celldesigner:catalyzed reaction=\"re3\"/>
              <celldesigner:catalyzed reaction=\"re10\"/>
              <celldesigner:catalyzed reaction=\"re22\"/>
              <celldesigner:catalyzed reaction=\"re24\"/>
              <celldesigner:catalyzed reaction=\"re26\"/>
            </celldesigner:listOfCatalyzedReactions>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Enz_conc(unit = "");
    Real elmt_Enz_amount(unit = "");
    Real elmt_Enz(unit = "") "Enz";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
            <celldesigner:speciesIdentity>
              <celldesigner:class>UNKNOWN</celldesigner:class>
              <celldesigner:name>Enz</celldesigner:name>
            </celldesigner:speciesIdentity>
            <celldesigner:listOfCatalyzedReactions>
              <celldesigner:catalyzed reaction=\"re11\"/>
            </celldesigner:listOfCatalyzedReactions>
          </celldesigner:extension>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#s14\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2013-09-18T10:10:25Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                        </annotation>"));
    Real elmt_snk_CL_conc(unit = "");
    Real elmt_snk_CL_amount(unit = "");
    Real elmt_snk_CL(unit = "") "snk_CL";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
            <celldesigner:speciesIdentity>
              <celldesigner:class>DEGRADED</celldesigner:class>
              <celldesigner:name>snk_CL</celldesigner:name>
            </celldesigner:speciesIdentity>
          </celldesigner:extension>
                        </annotation>"));
    Real elmt_IOF_conc(unit = "");
    Real elmt_IOF_amount(unit = "");
    Real elmt_IOF(unit = "") "IOF";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
            <celldesigner:speciesIdentity>
              <celldesigner:class>UNKNOWN</celldesigner:class>
              <celldesigner:name>IOF</celldesigner:name>
            </celldesigner:speciesIdentity>
            <celldesigner:listOfCatalyzedReactions>
              <celldesigner:catalyzed reaction=\"re23\"/>
            </celldesigner:listOfCatalyzedReactions>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_src_IOF_conc(unit = "");
    Real elmt_src_IOF_amount(unit = "");
    Real elmt_src_IOF(unit = "") "src_IOF";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
            <celldesigner:speciesIdentity>
              <celldesigner:class>DEGRADED</celldesigner:class>
              <celldesigner:name>src_IOF</celldesigner:name>
            </celldesigner:speciesIdentity>
          </celldesigner:extension>
                        </annotation>"));
    Real elmt_snk_OT_conc(unit = "");
    Real elmt_snk_OT_amount(unit = "");
    Real elmt_snk_OT(unit = "") "snk_OT";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
            <celldesigner:speciesIdentity>
              <celldesigner:class>DEGRADED</celldesigner:class>
              <celldesigner:name>snk_OT</celldesigner:name>
            </celldesigner:speciesIdentity>
          </celldesigner:extension>
                        </annotation>"));
    Real elmt_GnRH_Pit_conc(unit = "");
    Real elmt_GnRH_Pit_amount(unit = "");
    Real elmt_GnRH_Pit(unit = "") "GnRH_Pit";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
            <celldesigner:speciesIdentity>
              <celldesigner:class>UNKNOWN</celldesigner:class>
              <celldesigner:name>GnRH_Pit</celldesigner:name>
            </celldesigner:speciesIdentity>
            <celldesigner:listOfCatalyzedReactions>
              <celldesigner:catalyzed reaction=\"re1\"/>
              <celldesigner:catalyzed reaction=\"re2\"/>
            </celldesigner:listOfCatalyzedReactions>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_snk_P4_conc(unit = "");
    Real elmt_snk_P4_amount(unit = "");
    Real elmt_snk_P4(unit = "") "snk_P4";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
            <celldesigner:speciesIdentity>
              <celldesigner:class>DEGRADED</celldesigner:class>
              <celldesigner:name>snk_P4</celldesigner:name>
            </celldesigner:speciesIdentity>
          </celldesigner:extension>
                        </annotation>"));
    Real elmt_LH_Pit_conc(unit = "");
    Real elmt_LH_Pit_amount(unit = "");
    Real elmt_LH_Pit(unit = "") "LH_Pit";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
            <celldesigner:speciesIdentity>
              <celldesigner:class>UNKNOWN</celldesigner:class>
              <celldesigner:name>LH_Pit</celldesigner:name>
            </celldesigner:speciesIdentity>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_LH_Bld_conc(unit = "");
    Real elmt_LH_Bld_amount(unit = "");
    Real elmt_LH_Bld(unit = "") "LH_Bld";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
            <celldesigner:speciesIdentity>
              <celldesigner:class>UNKNOWN</celldesigner:class>
              <celldesigner:name>LH_Bld</celldesigner:name>
            </celldesigner:speciesIdentity>
            <celldesigner:listOfCatalyzedReactions>
              <celldesigner:catalyzed reaction=\"re4\"/>
              <celldesigner:catalyzed reaction=\"re22\"/>
            </celldesigner:listOfCatalyzedReactions>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_CL_conc(unit = "");
    Real elmt_CL_amount(unit = "");
    Real elmt_CL(unit = "") "CL";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
            <celldesigner:speciesIdentity>
              <celldesigner:class>UNKNOWN</celldesigner:class>
              <celldesigner:name>CL</celldesigner:name>
            </celldesigner:speciesIdentity>
            <celldesigner:listOfCatalyzedReactions>
              <celldesigner:catalyzed reaction=\"re4\"/>
              <celldesigner:catalyzed reaction=\"re7\"/>
              <celldesigner:catalyzed reaction=\"re9\"/>
              <celldesigner:catalyzed reaction=\"re28\"/>
            </celldesigner:listOfCatalyzedReactions>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Foll_conc(unit = "");
    Real elmt_Foll_amount(unit = "");
    Real elmt_Foll(unit = "") "Foll";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
            <celldesigner:speciesIdentity>
              <celldesigner:class>UNKNOWN</celldesigner:class>
              <celldesigner:name>Foll</celldesigner:name>
            </celldesigner:speciesIdentity>
            <celldesigner:listOfCatalyzedReactions>
              <celldesigner:catalyzed reaction=\"re4\"/>
              <celldesigner:catalyzed reaction=\"re6\"/>
              <celldesigner:catalyzed reaction=\"re8\"/>
              <celldesigner:catalyzed reaction=\"re27\"/>
            </celldesigner:listOfCatalyzedReactions>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_snk_GnRH_Hyp_conc(unit = "");
    Real elmt_snk_GnRH_Hyp_amount(unit = "");
    Real elmt_snk_GnRH_Hyp(unit = "") "snk_GnRH_Hyp";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
            <celldesigner:speciesIdentity>
              <celldesigner:class>DEGRADED</celldesigner:class>
              <celldesigner:name>snk_GnRH_Hyp</celldesigner:name>
            </celldesigner:speciesIdentity>
          </celldesigner:extension>
                        </annotation>"));
    Real elmt_src_CL_conc(unit = "");
    Real elmt_src_CL_amount(unit = "");
    Real elmt_src_CL(unit = "") "src_CL";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
            <celldesigner:speciesIdentity>
              <celldesigner:class>DEGRADED</celldesigner:class>
              <celldesigner:name>src_CL</celldesigner:name>
            </celldesigner:speciesIdentity>
          </celldesigner:extension>
                        </annotation>"));
    Real elmt_src_FSH_conc(unit = "");
    Real elmt_src_FSH_amount(unit = "");
    Real elmt_src_FSH(unit = "") "src_FSH";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
            <celldesigner:speciesIdentity>
              <celldesigner:class>DEGRADED</celldesigner:class>
              <celldesigner:name>src_FSH</celldesigner:name>
            </celldesigner:speciesIdentity>
          </celldesigner:extension>
                        </annotation>"));
    Real elmt_snk_LH_conc(unit = "");
    Real elmt_snk_LH_amount(unit = "");
    Real elmt_snk_LH(unit = "") "snk_LH";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
            <celldesigner:speciesIdentity>
              <celldesigner:class>DEGRADED</celldesigner:class>
              <celldesigner:name>snk_LH</celldesigner:name>
            </celldesigner:speciesIdentity>
          </celldesigner:extension>
                        </annotation>"));
    Real elmt_src_P4_conc(unit = "");
    Real elmt_src_P4_amount(unit = "");
    Real elmt_src_P4(unit = "") "src_P4";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
            <celldesigner:speciesIdentity>
              <celldesigner:class>DEGRADED</celldesigner:class>
              <celldesigner:name>src_P4</celldesigner:name>
            </celldesigner:speciesIdentity>
          </celldesigner:extension>
                        </annotation>"));
    Real elmt_src_OT_conc(unit = "");
    Real elmt_src_OT_amount(unit = "");
    Real elmt_src_OT(unit = "") "src_OT";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
            <celldesigner:speciesIdentity>
              <celldesigner:class>DEGRADED</celldesigner:class>
              <celldesigner:name>src_OT</celldesigner:name>
            </celldesigner:speciesIdentity>
          </celldesigner:extension>
                        </annotation>"));
    Real elmt_snk_PGF_conc(unit = "");
    Real elmt_snk_PGF_amount(unit = "");
    Real elmt_snk_PGF(unit = "") "snk_PGF";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
            <celldesigner:speciesIdentity>
              <celldesigner:class>DEGRADED</celldesigner:class>
              <celldesigner:name>snk_PGF</celldesigner:name>
            </celldesigner:speciesIdentity>
          </celldesigner:extension>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#s32\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2013-09-18T10:09:20Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                        </annotation>"));
    Real elmt_species_1_conc(unit = "");
    Real elmt_species_1_amount(unit = "");
    Real elmt_species_1(unit = "") "PGF_syn";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI1\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2013-09-18T10:25:29Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                        </annotation>"));
    Real elmt_PGF_conc(unit = "");
    Real elmt_PGF_amount(unit = "");
    Real elmt_PGF(unit = "") "PGF";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
            <celldesigner:speciesIdentity>
              <celldesigner:class>UNKNOWN</celldesigner:class>
              <celldesigner:name>PGF</celldesigner:name>
            </celldesigner:speciesIdentity>
            <celldesigner:listOfCatalyzedReactions>
              <celldesigner:catalyzed reaction=\"re28\"/>
            </celldesigner:listOfCatalyzedReactions>
          </celldesigner:extension>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#s15\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2013-09-18T10:09:32Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_src_Enz_conc(unit = "");
    Real elmt_src_Enz_amount(unit = "");
    Real elmt_src_Enz(unit = "") "src_Enz";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
            <celldesigner:speciesIdentity>
              <celldesigner:class>DEGRADED</celldesigner:class>
              <celldesigner:name>src_Enz</celldesigner:name>
            </celldesigner:speciesIdentity>
          </celldesigner:extension>
                        </annotation>"));
    Real elmt_snk_IOF_conc(unit = "");
    Real elmt_snk_IOF_amount(unit = "");
    Real elmt_snk_IOF(unit = "") "snk_IOF";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
            <celldesigner:speciesIdentity>
              <celldesigner:class>DEGRADED</celldesigner:class>
              <celldesigner:name>snk_IOF</celldesigner:name>
            </celldesigner:speciesIdentity>
          </celldesigner:extension>
                        </annotation>"));
    Real elmt_src_GnRH_Pit_conc(unit = "");
    Real elmt_src_GnRH_Pit_amount(unit = "");
    Real elmt_src_GnRH_Pit(unit = "") "src_GnRH_Pit";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
            <celldesigner:speciesIdentity>
              <celldesigner:class>DEGRADED</celldesigner:class>
              <celldesigner:name>src_GnRH_Pit</celldesigner:name>
            </celldesigner:speciesIdentity>
          </celldesigner:extension>
                        </annotation>"));

    initial equation
        elmt_default = 1.0;
        elmt_snk_FSH_conc = (0.0 / elmt_default);
        elmt_snk_E2_conc = (0.0 / elmt_default);
        elmt_FSH_Pit_conc = (0.00579108659591004 / elmt_default);
        elmt_FSH_Bld_conc = (0.0168604631992291 / elmt_default);
        elmt_E2_conc = (0.163690728507925 / elmt_default);
        elmt_src_Inh_conc = (0.0 / elmt_default);
        elmt_snk_Enz_conc = (0.0 / elmt_default);
        elmt_src_LH_conc = (0.0 / elmt_default);
        elmt_snk_GnRH_Pit_conc = (0.0 / elmt_default);
        elmt_GnRH_Hyp_conc = (0.740638780629751 / elmt_default);
        elmt_Inh_conc = (0.493710210684922 / elmt_default);
        elmt_snk_Inh_conc = (0.0 / elmt_default);
        elmt_src_Foll_conc = (0.0 / elmt_default);
        elmt_src_E2_conc = (0.0 / elmt_default);
        elmt_src_PGF_conc = (0.0 / elmt_default);
        elmt_snk_Foll_conc = (0.0 / elmt_default);
        elmt_OT_conc = (0.111730059223483 / elmt_default);
        elmt_src_GnRH_conc = (0.0 / elmt_default);
        elmt_P4_conc = (0.120192549532403 / elmt_default);
        elmt_Enz_conc = (5.83626691122778E-5 / elmt_default);
        elmt_snk_CL_conc = (0.0 / elmt_default);
        elmt_IOF_conc = (0.133415086647186 / elmt_default);
        elmt_src_IOF_conc = (0.0 / elmt_default);
        elmt_snk_OT_conc = (0.0 / elmt_default);
        elmt_GnRH_Pit_conc = (0.219992404098564 / elmt_default);
        elmt_snk_P4_conc = (0.0 / elmt_default);
        elmt_LH_Pit_conc = (2.25000957482152 / elmt_default);
        elmt_LH_Bld_conc = (0.00633682772990623 / elmt_default);
        elmt_CL_conc = (0.314393628471893 / elmt_default);
        elmt_Foll_conc = (0.0286570978235457 / elmt_default);
        elmt_snk_GnRH_Hyp_conc = (0.0 / elmt_default);
        elmt_src_CL_conc = (0.0 / elmt_default);
        elmt_src_FSH_conc = (0.0 / elmt_default);
        elmt_snk_LH_conc = (0.0 / elmt_default);
        elmt_src_P4_conc = (0.0 / elmt_default);
        elmt_src_OT_conc = (0.0 / elmt_default);
        elmt_snk_PGF_conc = (0.0 / elmt_default);
        elmt_species_1_conc = 0.0;
        elmt_PGF_conc = (3.62064120302475E-4 / elmt_default);
        elmt_src_Enz_conc = (0.0 / elmt_default);
        elmt_snk_IOF_conc = (0.0 / elmt_default);
        elmt_src_GnRH_Pit_conc = (0.0 / elmt_default);


    equation
        assert(elmt_default >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_default) = 0;
        elmt_snk_FSH = elmt_snk_FSH_conc;
        elmt_snk_E2 = elmt_snk_E2_conc;
        elmt_FSH_Pit = elmt_FSH_Pit_conc;
        elmt_FSH_Bld = elmt_FSH_Bld_conc;
        elmt_E2 = elmt_E2_conc;
        elmt_src_Inh = elmt_src_Inh_conc;
        elmt_snk_Enz = elmt_snk_Enz_conc;
        elmt_src_LH = elmt_src_LH_conc;
        elmt_snk_GnRH_Pit = elmt_snk_GnRH_Pit_conc;
        elmt_GnRH_Hyp = elmt_GnRH_Hyp_conc;
        elmt_Inh = elmt_Inh_conc;
        elmt_snk_Inh = elmt_snk_Inh_conc;
        elmt_src_Foll = elmt_src_Foll_conc;
        elmt_src_E2 = elmt_src_E2_conc;
        elmt_src_PGF = elmt_src_PGF_conc;
        elmt_snk_Foll = elmt_snk_Foll_conc;
        elmt_OT = elmt_OT_conc;
        elmt_src_GnRH = elmt_src_GnRH_conc;
        elmt_P4 = elmt_P4_conc;
        elmt_Enz = elmt_Enz_conc;
        elmt_snk_CL = elmt_snk_CL_conc;
        elmt_IOF = elmt_IOF_conc;
        elmt_src_IOF = elmt_src_IOF_conc;
        elmt_snk_OT = elmt_snk_OT_conc;
        elmt_GnRH_Pit = elmt_GnRH_Pit_conc;
        elmt_snk_P4 = elmt_snk_P4_conc;
        elmt_LH_Pit = elmt_LH_Pit_conc;
        elmt_LH_Bld = elmt_LH_Bld_conc;
        elmt_CL = elmt_CL_conc;
        elmt_Foll = elmt_Foll_conc;
        elmt_snk_GnRH_Hyp = elmt_snk_GnRH_Hyp_conc;
        elmt_src_CL = elmt_src_CL_conc;
        elmt_src_FSH = elmt_src_FSH_conc;
        elmt_snk_LH = elmt_snk_LH_conc;
        elmt_src_P4 = elmt_src_P4_conc;
        elmt_src_OT = elmt_src_OT_conc;
        elmt_snk_PGF = elmt_snk_PGF_conc;
        elmt_species_1 = elmt_species_1_conc;
        elmt_PGF = elmt_PGF_conc;
        elmt_src_Enz = elmt_src_Enz_conc;
        elmt_snk_IOF = elmt_snk_IOF_conc;
        elmt_src_GnRH_Pit = elmt_src_GnRH_Pit_conc;
        der(elmt_snk_FSH_amount) = 0;
        der(elmt_snk_E2_amount) = 0;
        der(elmt_src_Inh_amount) = 0;
        der(elmt_snk_Enz_amount) = 0;
        der(elmt_src_LH_amount) = 0;
        der(elmt_snk_GnRH_Pit_amount) = 0;
        der(elmt_snk_Inh_amount) = 0;
        der(elmt_src_Foll_amount) = 0;
        der(elmt_src_E2_amount) = 0;
        der(elmt_src_PGF_amount) = 0;
        der(elmt_snk_Foll_amount) = 0;
        der(elmt_src_GnRH_amount) = 0;
        der(elmt_snk_CL_amount) = 0;
        der(elmt_src_IOF_amount) = 0;
        der(elmt_snk_OT_amount) = 0;
        der(elmt_snk_P4_amount) = 0;
        der(elmt_snk_GnRH_Hyp_amount) = 0;
        der(elmt_src_CL_amount) = 0;
        der(elmt_src_FSH_amount) = 0;
        der(elmt_snk_LH_amount) = 0;
        der(elmt_src_P4_amount) = 0;
        der(elmt_src_OT_amount) = 0;
        der(elmt_snk_PGF_amount) = 0;
        der(elmt_species_1_amount / elmt_default) = ((elmt_ModelValue_60 * elmt_ModelValue_61 * elmt_ModelValue_61 * elmt_parameter_4 * exp(((- elmt_ModelValue_61) * elmt_parameter_4))) - (elmt_parameter_3 * elmt_species_1));
        der(elmt_src_Enz_amount) = 0;
        der(elmt_snk_IOF_amount) = 0;
        der(elmt_src_GnRH_Pit_amount) = 0;
        der(elmt_OT_amount) = ((- (elmt_re18 * elmt_SpeciesReference_52)) + (elmt_re9 * elmt_SpeciesReference_30));
        der(elmt_P4_amount) = ((- (elmt_re15 * elmt_SpeciesReference_46)) + (elmt_re7 * elmt_SpeciesReference_24));
        der(elmt_FSH_Pit_amount) = ((- (elmt_re2 * elmt_SpeciesReference_3)) + (elmt_re25 * elmt_SpeciesReference_72));
        der(elmt_Enz_amount) = ((- (elmt_re19 * elmt_SpeciesReference_54)) + (elmt_re10 * elmt_SpeciesReference_34));
        der(elmt_FSH_Bld_amount) = ((- (elmt_re14 * elmt_SpeciesReference_44)) + (elmt_re2 * elmt_SpeciesReference_4));
        der(elmt_E2_amount) = ((- (elmt_re16 * elmt_SpeciesReference_48)) + (elmt_re6 * elmt_SpeciesReference_21));
        der(elmt_IOF_amount) = ((elmt_re28 * elmt_SpeciesReference_84) + (- (elmt_re21 * elmt_SpeciesReference_58)));
        der(elmt_GnRH_Pit_amount) = ((- (elmt_re12 * elmt_SpeciesReference_40)) + (elmt_re26 * elmt_SpeciesReference_75));
        der(elmt_LH_Pit_amount) = ((- (elmt_re1 * elmt_SpeciesReference)) + (elmt_re24 * elmt_SpeciesReference_68));
        der(elmt_LH_Bld_amount) = ((- (elmt_re13 * elmt_SpeciesReference_42)) + (elmt_re1 * elmt_SpeciesReference_1));
        der(elmt_CL_amount) = ((- (elmt_re23 * elmt_SpeciesReference_64)) + (elmt_re4 * elmt_SpeciesReference_13));
        der(elmt_Foll_amount) = ((elmt_re27 * elmt_SpeciesReference_80) + (- (elmt_re22 * elmt_SpeciesReference_60)));
        der(elmt_GnRH_Hyp_amount) = ((- (elmt_re3 * elmt_SpeciesReference_8)) + (elmt_re5 * elmt_SpeciesReference_18));
        der(elmt_Inh_amount) = ((- (elmt_re17 * elmt_SpeciesReference_50)) + (elmt_re8 * elmt_SpeciesReference_27));
        der(elmt_PGF_amount) = ((elmt_re11 * elmt_SpeciesReference_37) + (- (elmt_re20 * elmt_SpeciesReference_56)));

    algorithm
        elmt_snk_FSH_conc := elmt_snk_FSH_amount / elmt_default;
        elmt_snk_E2_conc := elmt_snk_E2_amount / elmt_default;
        elmt_FSH_Pit_conc := elmt_FSH_Pit_amount / elmt_default;
        elmt_FSH_Bld_conc := elmt_FSH_Bld_amount / elmt_default;
        elmt_E2_conc := elmt_E2_amount / elmt_default;
        elmt_src_Inh_conc := elmt_src_Inh_amount / elmt_default;
        elmt_snk_Enz_conc := elmt_snk_Enz_amount / elmt_default;
        elmt_src_LH_conc := elmt_src_LH_amount / elmt_default;
        elmt_snk_GnRH_Pit_conc := elmt_snk_GnRH_Pit_amount / elmt_default;
        elmt_GnRH_Hyp_conc := elmt_GnRH_Hyp_amount / elmt_default;
        elmt_Inh_conc := elmt_Inh_amount / elmt_default;
        elmt_snk_Inh_conc := elmt_snk_Inh_amount / elmt_default;
        elmt_src_Foll_conc := elmt_src_Foll_amount / elmt_default;
        elmt_src_E2_conc := elmt_src_E2_amount / elmt_default;
        elmt_src_PGF_conc := elmt_src_PGF_amount / elmt_default;
        elmt_snk_Foll_conc := elmt_snk_Foll_amount / elmt_default;
        elmt_OT_conc := elmt_OT_amount / elmt_default;
        elmt_src_GnRH_conc := elmt_src_GnRH_amount / elmt_default;
        elmt_P4_conc := elmt_P4_amount / elmt_default;
        elmt_Enz_conc := elmt_Enz_amount / elmt_default;
        elmt_snk_CL_conc := elmt_snk_CL_amount / elmt_default;
        elmt_IOF_conc := elmt_IOF_amount / elmt_default;
        elmt_src_IOF_conc := elmt_src_IOF_amount / elmt_default;
        elmt_snk_OT_conc := elmt_snk_OT_amount / elmt_default;
        elmt_GnRH_Pit_conc := elmt_GnRH_Pit_amount / elmt_default;
        elmt_snk_P4_conc := elmt_snk_P4_amount / elmt_default;
        elmt_LH_Pit_conc := elmt_LH_Pit_amount / elmt_default;
        elmt_LH_Bld_conc := elmt_LH_Bld_amount / elmt_default;
        elmt_CL_conc := elmt_CL_amount / elmt_default;
        elmt_Foll_conc := elmt_Foll_amount / elmt_default;
        elmt_snk_GnRH_Hyp_conc := elmt_snk_GnRH_Hyp_amount / elmt_default;
        elmt_src_CL_conc := elmt_src_CL_amount / elmt_default;
        elmt_src_FSH_conc := elmt_src_FSH_amount / elmt_default;
        elmt_snk_LH_conc := elmt_snk_LH_amount / elmt_default;
        elmt_src_P4_conc := elmt_src_P4_amount / elmt_default;
        elmt_src_OT_conc := elmt_src_OT_amount / elmt_default;
        elmt_snk_PGF_conc := elmt_snk_PGF_amount / elmt_default;
        elmt_species_1_conc := elmt_species_1_amount / elmt_default;
        elmt_PGF_conc := elmt_PGF_amount / elmt_default;
        elmt_src_Enz_conc := elmt_src_Enz_amount / elmt_default;
        elmt_snk_IOF_conc := elmt_snk_IOF_amount / elmt_default;
        elmt_src_GnRH_Pit_conc := elmt_src_GnRH_Pit_amount / elmt_default;
end Class_elmt_default;
