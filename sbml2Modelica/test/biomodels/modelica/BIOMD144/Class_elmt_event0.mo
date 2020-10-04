within BIOMD144;
class Class_elmt_event0 "" annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    input Real elmt_E_1;
    input Real elmt_Wee1n;
    input Real elmt_N;
    input Real elmt_preMPFn;
    input Real elmt_Stgn;
    input Real elmt_MPFc;
    input Real elmt_StgPc;
    input Real elmt_MPFn;
    input Real elmt_Wee1Pn;
    input Real elmt_Stgc;
    input Real elmt_factor_1;
    input Real elmt_Wee1c;
    input Real elmt_FZYa;
    input Real elmt_kez_1;
    input Real elmt_StgPn;
    Boolean trigger;
    Real    value_elmt_N;
    Real    value_elmt_Wee1Pn;
    Real    value_elmt_MPFc;
    Real    value_elmt_Wee1n;
    Real    value_elmt_MPFn;
    Real    value_elmt_Stgc;
    Real    value_elmt_StgPc;
    Real    value_elmt_preMPFn;
    Real    value_elmt_StgPn;
    Real    value_elmt_Wee1c;
    Real    value_elmt_Stgn;

    equation
        trigger = (elmt_FZYa >= elmt_kez_1);
        algorithm
            value_elmt_N := (elmt_factor_1 * pre(elmt_N));
            value_elmt_Wee1Pn := (pre(elmt_Wee1Pn) / 1.95);
            value_elmt_MPFc := (pre(elmt_MPFc) * ((1.0 - (elmt_N * elmt_E_1)) / (1.0 - (1.95 * elmt_N * elmt_E_1))));
            value_elmt_Wee1n := (pre(elmt_Wee1n) / 1.95);
            value_elmt_MPFn := (pre(elmt_MPFn) / 1.95);
            value_elmt_Stgc := (pre(elmt_Stgc) * ((1.0 - (elmt_N * elmt_E_1)) / (1.0 - (1.95 * elmt_N * elmt_E_1))));
            value_elmt_StgPc := (pre(elmt_StgPc) * ((1.0 - (elmt_N * elmt_E_1)) / (1.0 - (1.95 * elmt_N * elmt_E_1))));
            value_elmt_preMPFn := (pre(elmt_preMPFn) / 1.95);
            value_elmt_StgPn := (pre(elmt_StgPn) / 1.95);
            value_elmt_Wee1c := (pre(elmt_Wee1c) * ((1.0 - (elmt_N * elmt_E_1)) / (1.0 - (1.95 * elmt_N * elmt_E_1))));
            value_elmt_Stgn := (pre(elmt_Stgn) / 1.95);
end Class_elmt_event0;
