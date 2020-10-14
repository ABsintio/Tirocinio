within BIOMD508;
model MODEL1401200000 "Barrack2014 - Calcium/cell cycle coupling - Cyclin D dependent ATP release" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell elmt_cell;

    equation
        elmt_cell.elmt_p5 = Params.elmt_p5;
        elmt_cell.elmt_ps = Params.elmt_ps;
        elmt_cell.elmt_m = Params.elmt_m;
        elmt_cell.elmt_p3 = Params.elmt_p3;
        elmt_cell.elmt_n = Params.elmt_n;
        elmt_cell.elmt_p4 = Params.elmt_p4;
        elmt_cell.elmt_k = Params.elmt_k;
        elmt_cell.elmt_p1 = Params.elmt_p1;
        elmt_cell.elmt_p2 = Params.elmt_p2;
        elmt_cell.elmt_rt = Params.elmt_rt;
        elmt_cell.elmt_vdeg = Params.elmt_vdeg;
        elmt_cell.elmt_kkdeg = Params.elmt_kkdeg;
        elmt_cell.elmt_g = Params.elmt_g;
        elmt_cell.elmt_f = Params.elmt_f;
        elmt_cell.elmt_addash = Params.elmt_addash;
        elmt_cell.elmt_px = Params.elmt_px;
        elmt_cell.elmt_pe = Params.elmt_pe;
        elmt_cell.elmt_rhstar = Params.elmt_rhstar;
        elmt_cell.elmt_pd = Params.elmt_pd;
        elmt_cell.elmt_dee = Params.elmt_dee;
        elmt_cell.elmt_vatp_s = Params.elmt_vatp_s;
        elmt_cell.elmt_dcrit = Params.elmt_dcrit;
        elmt_cell.elmt_alpha = Params.elmt_alpha;
        elmt_cell.elmt_ax = Params.elmt_ax;
        elmt_cell.elmt_af = Params.elmt_af;
        elmt_cell.elmt_ae = Params.elmt_ae;
        elmt_cell.elmt_gf = Params.elmt_gf;
        elmt_cell.elmt_kdeg = Params.elmt_kdeg;
        elmt_cell.elmt_qx = Params.elmt_qx;
        elmt_cell.elmt_kr = Params.elmt_kr;
        elmt_cell.elmt_yo = Params.elmt_yo;
        elmt_cell.elmt_ip30 = Params.elmt_ip30;
        elmt_cell.elmt_ka = Params.elmt_ka;
        elmt_cell.elmt_qd = Params.elmt_qd;
        elmt_cell.elmt_qe = Params.elmt_qe;
        elmt_cell.elmt_scale = Params.elmt_scale;
        elmt_cell.elmt_ddd = Params.elmt_ddd;
        elmt_cell.elmt_dxx = Params.elmt_dxx;
        elmt_cell.elmt_ip3min = Params.elmt_ip3min;
        elmt_cell.elmt_gamma = Params.elmt_gamma;
        elmt_cell.elmt_ymax = Params.elmt_ymax;
        elmt_cell.elmt_krel = Params.elmt_krel;
        elmt_cell.elmt_kd = Params.elmt_kd;

end MODEL1401200000;
