within BIOMD101;
class Parameters

    input Boolean elmt_event_0000001;
    input Real assign_elmt_ligand;


    Real elmt_ka(unit = "") "";
    Real elmt_pRI(unit = "") "";
    Real elmt_pRII(unit = "") "";
    Real elmt_klid(unit = "") "";
    Real elmt_ki(unit = "") "";
    Real elmt_ligand(unit = "") "";
    Real elmt_kcd(unit = "") "";
    Real elmt_alpha(unit = "") "";
    Real elmt_kr(unit = "") "";


    initial equation
        elmt_ka = 1.0;
        elmt_pRI = 8.0;
        elmt_pRII = 4.0;
        elmt_klid = 0.25;
        elmt_ki = 0.3333333333333;
        elmt_ligand = 3.0E-5;
        elmt_kcd = 0.0277777778;
        elmt_alpha = 1.0;
        elmt_kr = 0.0333333333333333;


    equation
        der(elmt_ka) = 0;
        der(elmt_pRI) = 0;
        der(elmt_pRII) = 0;
        der(elmt_klid) = 0;
        der(elmt_ki) = 0;
        der(elmt_ligand) = 0.0;
        der(elmt_kcd) = 0;
        der(elmt_alpha) = 0;
        der(elmt_kr) = 0;

        when elmt_event_0000001 then
            reinit(elmt_ligand, assign_elmt_ligand);
        end when;
end Parameters;
