within BIOMD256;
class Class_elmt_Production_Breakdown ""

    input Real elmt_S_breakdown;
    input Real elmt_Substrate;
    Boolean trigger;
    Real    value_elmt_k39;
    Real    value_elmt_k46;
    Real    value_elmt_k38;
    Real    value_elmt_k1;
    Real    value_elmt_k2r;
    Real    value_elmt_k44;
    Real    value_elmt_k43;
    Real    value_elmt_k51;
    Real    value_elmt_k1r;
    Real    value_elmt_k50;
    Real    value_elmt_k48;
    Real    value_elmt_k2;
    Real    value_elmt_k40;

    equation
        trigger = (elmt_Substrate < elmt_S_breakdown);
        algorithm
            value_elmt_k39 := 0.0058;
            value_elmt_k46 := 0.0058;
            value_elmt_k38 := 0.0058;
            value_elmt_k1 := 0.0;
            value_elmt_k2r := 0.0;
            value_elmt_k44 := 0.0058;
            value_elmt_k43 := 0.0058;
            value_elmt_k51 := 0.0058;
            value_elmt_k1r := 0.0;
            value_elmt_k50 := 0.0058;
            value_elmt_k48 := 0.0058;
            value_elmt_k2 := 0.0;
            value_elmt_k40 := 0.0058;
end Class_elmt_Production_Breakdown;
