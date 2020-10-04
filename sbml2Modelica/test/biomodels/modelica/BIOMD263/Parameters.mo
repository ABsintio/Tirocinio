within BIOMD263;
class Parameters

    input Real elmt_pAkt_S6;
    input Real elmt_pTrkA_Akt;
    input Real elmt_pS6;
    input Real elmt_pTrkA;
    input Real elmt_pAkt;

    Real elmt_pTrkA_scaleFactor(unit = "") "pTrkA_scaleFactor";
    Real elmt_NGF_conc_ramp(unit = ".m-3.0") "NGF_conc_ramp";
    Real elmt_pulse_time(unit = "") "pulse_time";
    Real elmt_pS6_total(unit = ".m-3.0") "pS6_total";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_pTrkA_total(unit = ".m-3.0") "pTrkA_total";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_ramp_time(unit = "") "ramp_time";
    Real elmt_NGF_conc_step(unit = ".m-3.0") "NGF_conc_step";
    Real elmt_NGF_conc_pulse(unit = ".m-3.0") "NGF_conc_pulse";
    Real elmt_pAkt_scaleFactor(unit = "") "pAkt_scaleFactor";
    Real elmt_pS6_scaleFactor(unit = "") "pS6_scaleFactor";
    Real elmt_pAkt_total(unit = ".m-3.0") "pAkt_total";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_TrkA_turnover(unit = "s-1.0") "TrkA_turnover";


    initial equation
        elmt_pTrkA_scaleFactor = 0.848783474941268;
        elmt_NGF_conc_ramp = 30.0;
        elmt_pulse_time = 60.0;
        elmt_ramp_time = 3600.0;
        elmt_NGF_conc_step = 0.0;
        elmt_NGF_conc_pulse = 0.0;
        elmt_pAkt_scaleFactor = 2.42381211094508;
        elmt_pS6_scaleFactor = 0.525842718263069;
        elmt_TrkA_turnover = 0.0011032440769796;


    equation
        der(elmt_pTrkA_scaleFactor) = 0;
        der(elmt_NGF_conc_ramp) = 0;
        der(elmt_pulse_time) = 0;
        elmt_pS6_total = (elmt_pS6 * elmt_pS6_scaleFactor);
        elmt_pTrkA_total = ((elmt_pTrkA + elmt_pTrkA_Akt) * elmt_pTrkA_scaleFactor);
        der(elmt_ramp_time) = 0;
        der(elmt_NGF_conc_step) = 0;
        der(elmt_NGF_conc_pulse) = 0;
        der(elmt_pAkt_scaleFactor) = 0;
        der(elmt_pS6_scaleFactor) = 0;
        elmt_pAkt_total = ((elmt_pAkt + elmt_pAkt_S6) * elmt_pAkt_scaleFactor);
        der(elmt_TrkA_turnover) = 0;

end Parameters;
