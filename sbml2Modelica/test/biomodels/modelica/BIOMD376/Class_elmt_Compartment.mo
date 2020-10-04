within BIOMD376;
class Class_elmt_Compartment

    input Real elmt_JO;
    input Real elmt_Jer;
    input Real elmt_Ik;
    input Real elmt_Jmem;
    input Real elmt_fcyt;
    input Real elmt_JGK_ms;
    input Real elmt_JPDH;
    input Real elmt_Vc_Ver;
    input Real elmt_JGPDH;
    input Real elmt_JANT;
    input Real elmt_Jmito;
    input Real elmt_tau_n;
    input Real elmt_JPFK_ms;
    input Real elmt_delta;
    input Real elmt_Juni;
    input Real elmt_Cmito;
    input Real elmt_Ikca;
    input Real elmt_n_infinity;
    input Real elmt_fer;
    input Real elmt_JHres;
    input Real elmt_Jhyd;
    input Real elmt_cm;
    input Real elmt_Ica;
    input Real elmt_JHatp;
    input Real elmt_JHleak;
    input Real elmt_fmito;
    input Real elmt_Ikatp;
    input Real elmt_JF1F0;
    input Real elmt_JNaCa;
    input Real elmt_gamma;

    Real elmt_Compartment(unit = "") "Compartment";
    Real elmt_ADPm_conc(unit = "");
    Real elmt_ADPm_amount(unit = "");
    Real elmt_ADPm(unit = "") "ADPm";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_n_conc(unit = "");
    Real elmt_n_amount(unit = "");
    Real elmt_n(unit = "") "n";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_NADHm_conc(unit = "");
    Real elmt_NADHm_amount(unit = "");
    Real elmt_NADHm(unit = "") "NADHm";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_FBP_conc(unit = "");
    Real elmt_FBP_amount(unit = "");
    Real elmt_FBP(unit = "") "FBP";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_G6P_conc(unit = "");
    Real elmt_G6P_amount(unit = "");
    Real elmt_G6P(unit = "") "G6P";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Cam_conc(unit = "");
    Real elmt_Cam_amount(unit = "");
    Real elmt_Cam(unit = "") "Cam";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_delta_psi_conc(unit = "");
    Real elmt_delta_psi_amount(unit = "");
    Real elmt_delta_psi(unit = "") "delta_psi";
    Real elmt_adp_conc(unit = "");
    Real elmt_adp_amount(unit = "");
    Real elmt_adp(unit = "") "adp";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_c_conc(unit = "");
    Real elmt_c_amount(unit = "");
    Real elmt_c(unit = "") "c";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Vm_conc(unit = "");
    Real elmt_Vm_amount(unit = "");
    Real elmt_Vm(unit = "") "Vm";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Caer_conc(unit = "");
    Real elmt_Caer_amount(unit = "");
    Real elmt_Caer(unit = "") "Caer";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_Compartment = 1.0;
        elmt_ADPm_conc = (11.1 / elmt_Compartment);
        elmt_n_conc = (0.0 / elmt_Compartment);
        elmt_NADHm_conc = (0.4 / elmt_Compartment);
        elmt_FBP_conc = (2.16 / elmt_Compartment);
        elmt_G6P_conc = (301.0 / elmt_Compartment);
        elmt_Cam_conc = (0.2 / elmt_Compartment);
        elmt_delta_psi_conc = (164.0 / elmt_Compartment);
        elmt_adp_conc = (1137.0 / elmt_Compartment);
        elmt_c_conc = (0.17 / elmt_Compartment);
        elmt_Vm_conc = ((-60.0) / elmt_Compartment);
        elmt_Caer_conc = (345.0 / elmt_Compartment);


    equation
        assert(elmt_Compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Compartment) = 0;
        elmt_ADPm = elmt_ADPm_conc;
        elmt_n = elmt_n_conc;
        elmt_NADHm = elmt_NADHm_conc;
        elmt_FBP = elmt_FBP_conc;
        elmt_G6P = elmt_G6P_conc;
        elmt_Cam = elmt_Cam_conc;
        elmt_delta_psi = elmt_delta_psi_conc;
        elmt_adp = elmt_adp_conc;
        elmt_c = elmt_c_conc;
        elmt_Vm = elmt_Vm_conc;
        elmt_Caer = elmt_Caer_conc;
        der(elmt_ADPm_amount / elmt_Compartment) = (elmt_gamma * (elmt_JANT - elmt_JF1F0));
        der(elmt_n_amount / elmt_Compartment) = ((elmt_n_infinity - elmt_n) / elmt_tau_n);
        der(elmt_NADHm_amount / elmt_Compartment) = (elmt_gamma * (elmt_JPDH - elmt_JO));
        der(elmt_FBP_amount / elmt_Compartment) = (elmt_JPFK_ms - (0.5 * elmt_JGPDH));
        der(elmt_G6P_amount / elmt_Compartment) = (elmt_JGK_ms - elmt_JPFK_ms);
        der(elmt_Cam_amount / elmt_Compartment) = ((- elmt_fmito) * elmt_Jmito);
        der(elmt_delta_psi_amount / elmt_Compartment) = ((elmt_JHres - (elmt_JHatp + elmt_JANT + elmt_JHleak + elmt_JNaCa + (2.0 * elmt_Juni))) / elmt_Cmito);
        der(elmt_adp_amount / elmt_Compartment) = (((- elmt_delta) * elmt_JANT) + elmt_Jhyd);
        der(elmt_c_amount / elmt_Compartment) = (elmt_fcyt * (elmt_Jmem + elmt_Jer + (elmt_delta * elmt_Jmito)));
        der(elmt_Vm_amount / elmt_Compartment) = ((- (elmt_Ik + elmt_Ica + elmt_Ikca + elmt_Ikatp)) / elmt_cm);
        der(elmt_Caer_amount / elmt_Compartment) = ((- elmt_fer) * elmt_Vc_Ver * elmt_Jer);

    algorithm
        elmt_ADPm_conc := elmt_ADPm_amount / elmt_Compartment;
        elmt_n_conc := elmt_n_amount / elmt_Compartment;
        elmt_NADHm_conc := elmt_NADHm_amount / elmt_Compartment;
        elmt_FBP_conc := elmt_FBP_amount / elmt_Compartment;
        elmt_G6P_conc := elmt_G6P_amount / elmt_Compartment;
        elmt_Cam_conc := elmt_Cam_amount / elmt_Compartment;
        elmt_delta_psi_conc := elmt_delta_psi_amount / elmt_Compartment;
        elmt_adp_conc := elmt_adp_amount / elmt_Compartment;
        elmt_c_conc := elmt_c_amount / elmt_Compartment;
        elmt_Vm_conc := elmt_Vm_amount / elmt_Compartment;
        elmt_Caer_conc := elmt_Caer_amount / elmt_Compartment;
end Class_elmt_Compartment;
