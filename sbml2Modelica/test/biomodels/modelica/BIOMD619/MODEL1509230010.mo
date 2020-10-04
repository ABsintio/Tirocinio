within BIOMD619;
model MODEL1509230010 "Sluka2016  - Acetaminophen PBPK" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_VVen elmt_VVen;
    Class_elmt_VGutLumen elmt_VGutLumen;
    Class_elmt_VLiver elmt_VLiver;
    Class_elmt_VRest elmt_VRest;
    Class_elmt_VKidney elmt_VKidney;
    Class_elmt_VArt elmt_VArt;
    Class_elmt_VGut elmt_VGut;
    Class_elmt_VKidneyTubules elmt_VKidneyTubules;
    Class_elmt_VLung elmt_VLung;

    equation
        Reacs.elmt_Kkidney2plasma = Params.elmt_Kkidney2plasma;
        Reacs.elmt_Fraction_unbound_plasma = Params.elmt_Fraction_unbound_plasma;
        Reacs.elmt_CGut = elmt_VGut.elmt_CGut;
        Reacs.elmt_CLung = elmt_VLung.elmt_CLung;
        Reacs.elmt_Qgfr = Params.elmt_Qgfr;
        Reacs.elmt_Kliver2plasma = Params.elmt_Kliver2plasma;
        Reacs.elmt_VLung = elmt_VLung.elmt_VLung;
        Reacs.elmt_QRest = Params.elmt_QRest;
        Reacs.elmt_CKidney = elmt_VKidney.elmt_CKidney;
        Reacs.elmt_VLiver = elmt_VLiver.elmt_VLiver;
        Reacs.elmt_CLiver = elmt_VLiver.elmt_CLiver;
        Reacs.elmt_VRest = elmt_VRest.elmt_VRest;
        Reacs.elmt_VKidney = elmt_VKidney.elmt_VKidney;
        Reacs.elmt_QCardiac = Params.elmt_QCardiac;
        Reacs.elmt_QGut = Params.elmt_QGut;
        Reacs.elmt_VVen = elmt_VVen.elmt_VVen;
        Reacs.elmt_CArt = elmt_VArt.elmt_CArt;
        Reacs.elmt_AGutlumen = elmt_VGutLumen.elmt_AGutlumen;
        Reacs.elmt_VArt = elmt_VArt.elmt_VArt;
        Reacs.elmt_QLiver = Params.elmt_QLiver;
        Reacs.elmt_Ratioblood2plasma = Params.elmt_Ratioblood2plasma;
        Reacs.elmt_QKidney = Params.elmt_QKidney;
        Reacs.elmt_CLmetabolism = Params.elmt_CLmetabolism;
        Reacs.elmt_kGutabs = Params.elmt_kGutabs;
        Reacs.elmt_CRest = elmt_VRest.elmt_CRest;
        Reacs.elmt_VGut = elmt_VGut.elmt_VGut;
        Reacs.elmt_KRest2plasma = Params.elmt_KRest2plasma;
        Reacs.elmt_CVen = elmt_VVen.elmt_CVen;
        elmt_VKidneyTubules.elmt_product23 = Reacs.elmt_product23;
        elmt_VKidneyTubules.elmt_J12 = Reacs.elmt_J12;
        elmt_VLung.elmt_VLung_fraction_VTotal = Params.elmt_VLung_fraction_VTotal;
        elmt_VLung.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_VLung.elmt_product7 = Reacs.elmt_product7;
        elmt_VLung.elmt_VTotal = Params.elmt_VTotal;
        elmt_VLung.elmt_J3 = Reacs.elmt_J3;
        elmt_VLung.elmt_J4 = Reacs.elmt_J4;
        elmt_VLiver.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_VLiver.elmt_J9 = Reacs.elmt_J9;
        elmt_VLiver.elmt_J7 = Reacs.elmt_J7;
        elmt_VLiver.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_VLiver.elmt_VTotal = Params.elmt_VTotal;
        elmt_VLiver.elmt_J8 = Reacs.elmt_J8;
        elmt_VLiver.elmt_product15 = Reacs.elmt_product15;
        elmt_VLiver.elmt_VLiver_fraction_VTotal = Params.elmt_VLiver_fraction_VTotal;
        elmt_VLiver.elmt_product13 = Reacs.elmt_product13;
        elmt_VLiver.elmt_J10 = Reacs.elmt_J10;
        elmt_VLiver.elmt_product17 = Reacs.elmt_product17;
        elmt_VVen.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_VVen.elmt_VVen_fraction_VTotal = Params.elmt_VVen_fraction_VTotal;
        elmt_VVen.elmt_product11 = Reacs.elmt_product11;
        elmt_VVen.elmt_VTotal = Params.elmt_VTotal;
        elmt_VVen.elmt_product25 = Reacs.elmt_product25;
        elmt_VVen.elmt_J6 = Reacs.elmt_J6;
        elmt_VVen.elmt_J4 = Reacs.elmt_J4;
        elmt_VVen.elmt_J13 = Reacs.elmt_J13;
        elmt_VVen.elmt_product19 = Reacs.elmt_product19;
        elmt_VVen.elmt_J10 = Reacs.elmt_J10;
        elmt_VKidney.elmt_product21 = Reacs.elmt_product21;
        elmt_VKidney.elmt_VTotal = Params.elmt_VTotal;
        elmt_VKidney.elmt_J12 = Reacs.elmt_J12;
        elmt_VKidney.elmt_VKidney_fraction_VTotal = Params.elmt_VKidney_fraction_VTotal;
        elmt_VKidney.elmt_reactant22 = Reacs.elmt_reactant22;
        elmt_VKidney.elmt_J13 = Reacs.elmt_J13;
        elmt_VKidney.elmt_reactant24 = Reacs.elmt_reactant24;
        elmt_VKidney.elmt_J11 = Reacs.elmt_J11;
        elmt_VRest.elmt_product9 = Reacs.elmt_product9;
        elmt_VRest.elmt_VVen = elmt_VVen.elmt_VVen;
        elmt_VRest.elmt_VLiver = elmt_VLiver.elmt_VLiver;
        elmt_VRest.elmt_VKidney = elmt_VKidney.elmt_VKidney;
        elmt_VRest.elmt_VArt = elmt_VArt.elmt_VArt;
        elmt_VRest.elmt_VTotal = Params.elmt_VTotal;
        elmt_VRest.elmt_VGut = elmt_VGut.elmt_VGut;
        elmt_VRest.elmt_J5 = Reacs.elmt_J5;
        elmt_VRest.elmt_J6 = Reacs.elmt_J6;
        elmt_VRest.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_VRest.elmt_VLung = elmt_VLung.elmt_VLung;
        elmt_VGutLumen.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_VGutLumen.elmt_APAP_Dose = Params.elmt_APAP_Dose;
        elmt_VGutLumen.elmt_J2 = Reacs.elmt_J2;
        elmt_VArt.elmt_reactant20 = Reacs.elmt_reactant20;
        elmt_VArt.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_VArt.elmt_VArt_fraction_VTotal = Params.elmt_VArt_fraction_VTotal;
        elmt_VArt.elmt_J7 = Reacs.elmt_J7;
        elmt_VArt.elmt_VTotal = Params.elmt_VTotal;
        elmt_VArt.elmt_J5 = Reacs.elmt_J5;
        elmt_VArt.elmt_J3 = Reacs.elmt_J3;
        elmt_VArt.elmt_product5 = Reacs.elmt_product5;
        elmt_VArt.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_VArt.elmt_J1 = Reacs.elmt_J1;
        elmt_VArt.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_VArt.elmt_J11 = Reacs.elmt_J11;
        elmt_VGut.elmt_J9 = Reacs.elmt_J9;
        elmt_VGut.elmt_product1 = Reacs.elmt_product1;
        elmt_VGut.elmt_VTotal = Params.elmt_VTotal;
        elmt_VGut.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_VGut.elmt_VGut_fraction_VTotal = Params.elmt_VGut_fraction_VTotal;
        elmt_VGut.elmt_J1 = Reacs.elmt_J1;
        elmt_VGut.elmt_product3 = Reacs.elmt_product3;
        elmt_VGut.elmt_J2 = Reacs.elmt_J2;

end MODEL1509230010;
