within BIOMD262;
class Parameters

    input Real elmt_pAkt_S6;
    input Real elmt_pEGFR_Akt;
    input Real elmt_pS6;
    input Real elmt_pAkt;
    input Real elmt_pEGFR;

    Real elmt_pEGFR_total(unit = ".m-3.0") "pEGFR_total";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_pulse_time(unit = "") "pulse_time";
    Real elmt_pS6_total(unit = ".m-3.0") "pS6_total";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_ramp_time(unit = "") "ramp_time";
    Real elmt_pEGFR_scaleFactor(unit = "") "pEGFR_scaleFactor";
    Real elmt_EGF_conc_step(unit = ".m-3.0") "EGF_conc_step";
    Real elmt_EGFR_turnover(unit = "s-1.0") "EGFR_turnover";
    Real elmt_pAkt_scaleFactor(unit = "") "pAkt_scaleFactor";
    Real elmt_EGF_conc_ramp(unit = ".m-3.0") "EGF_conc_ramp";
    Real elmt_pS6_scaleFactor(unit = "") "pS6_scaleFactor";
    Real elmt_EGF_conc_impulse(unit = ".m-3.0") "EGF_conc_impulse";
    Real elmt_pAkt_total(unit = ".m-3.0") "pAkt_total";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));


    initial equation
        elmt_pulse_time = 60.0;
        elmt_ramp_time = 3600.0;
        elmt_pEGFR_scaleFactor = 1.81734813832032E-4;
        elmt_EGF_conc_step = 0.0;
        elmt_EGFR_turnover = 1.06386129269658E-4;
        elmt_pAkt_scaleFactor = 60.0587507734138;
        elmt_EGF_conc_ramp = 30.0;
        elmt_pS6_scaleFactor = 49886.2313741851;
        elmt_EGF_conc_impulse = 0.0;


    equation
        elmt_pEGFR_total = ((elmt_pEGFR + elmt_pEGFR_Akt) * elmt_pEGFR_scaleFactor);
        der(elmt_pulse_time) = 0;
        elmt_pS6_total = (elmt_pS6 * elmt_pS6_scaleFactor);
        der(elmt_ramp_time) = 0;
        der(elmt_pEGFR_scaleFactor) = 0;
        der(elmt_EGF_conc_step) = 0;
        der(elmt_EGFR_turnover) = 0;
        der(elmt_pAkt_scaleFactor) = 0;
        der(elmt_EGF_conc_ramp) = 0;
        der(elmt_pS6_scaleFactor) = 0;
        der(elmt_EGF_conc_impulse) = 0;
        elmt_pAkt_total = ((elmt_pAkt + elmt_pAkt_S6) * elmt_pAkt_scaleFactor);

end Parameters;
