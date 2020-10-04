within BIOMD565;
class Parameters

    Real elmt_Dil(unit = "s-1.0") "";
    Real elmt_camp(unit = "m-3.0.") "";
    Real elmt_cnadh(unit = "m-3.0.") "";
    Real elmt_catp(unit = "m-3.0.") "";
    Real elmt_cadp(unit = "m-3.0.") "";
    Real elmt_cnadph(unit = "m-3.0.") "";
    Real elmt_cnad(unit = "m-3.0.") "";
    Real elmt_cnadp(unit = "m-3.0.") "";


    initial equation
        elmt_Dil = 0.0;
        elmt_camp = 0.955;
        elmt_cnadh = 0.1;
        elmt_catp = 4.27;
        elmt_cadp = 0.595;
        elmt_cnadph = 0.062;
        elmt_cnad = 1.47;
        elmt_cnadp = 0.195;


    equation
        der(elmt_Dil) = 0;
        der(elmt_camp) = 0;
        der(elmt_cnadh) = 0;
        der(elmt_catp) = 0;
        der(elmt_cadp) = 0;
        der(elmt_cnadph) = 0;
        der(elmt_cnad) = 0;
        der(elmt_cnadp) = 0;

end Parameters;
