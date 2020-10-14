within BIOMD376;
model Bertram2007_IsletCell_Oscillations "Bertram2007_IsletCell_Oscillations" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_Compartment elmt_Compartment;

    equation
        Params.elmt_ADPm = elmt_Compartment.elmt_ADPm;
        Params.elmt_n = elmt_Compartment.elmt_n;
        Params.elmt_NADHm = elmt_Compartment.elmt_NADHm;
        Params.elmt_FBP = elmt_Compartment.elmt_FBP;
        Params.elmt_G6P = elmt_Compartment.elmt_G6P;
        Params.elmt_Cam = elmt_Compartment.elmt_Cam;
        Params.elmt_delta_psi = elmt_Compartment.elmt_delta_psi;
        Params.elmt_adp = elmt_Compartment.elmt_adp;
        Params.elmt_c = elmt_Compartment.elmt_c;
        Params.elmt_Vm = elmt_Compartment.elmt_Vm;
        Params.elmt_Caer = elmt_Compartment.elmt_Caer;
        elmt_Compartment.elmt_JO = Params.elmt_JO;
        elmt_Compartment.elmt_Jer = Params.elmt_Jer;
        elmt_Compartment.elmt_Ik = Params.elmt_Ik;
        elmt_Compartment.elmt_Jmem = Params.elmt_Jmem;
        elmt_Compartment.elmt_fcyt = Params.elmt_fcyt;
        elmt_Compartment.elmt_JGK_ms = Params.elmt_JGK_ms;
        elmt_Compartment.elmt_JPDH = Params.elmt_JPDH;
        elmt_Compartment.elmt_Vc_Ver = Params.elmt_Vc_Ver;
        elmt_Compartment.elmt_JGPDH = Params.elmt_JGPDH;
        elmt_Compartment.elmt_JANT = Params.elmt_JANT;
        elmt_Compartment.elmt_Jmito = Params.elmt_Jmito;
        elmt_Compartment.elmt_tau_n = Params.elmt_tau_n;
        elmt_Compartment.elmt_JPFK_ms = Params.elmt_JPFK_ms;
        elmt_Compartment.elmt_delta = Params.elmt_delta;
        elmt_Compartment.elmt_Juni = Params.elmt_Juni;
        elmt_Compartment.elmt_Cmito = Params.elmt_Cmito;
        elmt_Compartment.elmt_Ikca = Params.elmt_Ikca;
        elmt_Compartment.elmt_n_infinity = Params.elmt_n_infinity;
        elmt_Compartment.elmt_fer = Params.elmt_fer;
        elmt_Compartment.elmt_JHres = Params.elmt_JHres;
        elmt_Compartment.elmt_Jhyd = Params.elmt_Jhyd;
        elmt_Compartment.elmt_cm = Params.elmt_cm;
        elmt_Compartment.elmt_Ica = Params.elmt_Ica;
        elmt_Compartment.elmt_JHatp = Params.elmt_JHatp;
        elmt_Compartment.elmt_JHleak = Params.elmt_JHleak;
        elmt_Compartment.elmt_fmito = Params.elmt_fmito;
        elmt_Compartment.elmt_Ikatp = Params.elmt_Ikatp;
        elmt_Compartment.elmt_JF1F0 = Params.elmt_JF1F0;
        elmt_Compartment.elmt_JNaCa = Params.elmt_JNaCa;
        elmt_Compartment.elmt_gamma = Params.elmt_gamma;

end Bertram2007_IsletCell_Oscillations;
