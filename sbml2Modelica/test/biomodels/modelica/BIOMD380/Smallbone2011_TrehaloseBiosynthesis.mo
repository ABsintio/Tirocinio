within BIOMD380;
model Smallbone2011_TrehaloseBiosynthesis "Smallbone2011_TrehaloseBiosynthesis" annotation(Documentation(info="<annotation>
<listoflayouts xmlns=\"http://www.arcadia.org/ns\">
      <layout>
        <container strategy=\"Hierarchy\">
          <container sbmlid=\"medium\" strategy=\"Hierarchy\">
            <container sbmlid=\"cell\" strategy=\"Hierarchy\">
              <clone sbmlid=\"g1p\" x=\"-700\" y=\"4170\"/>
              <clone sbmlid=\"udg\" x=\"-410\" y=\"4170\"/>
              <clone sbmlid=\"ppi\" x=\"-490\" y=\"4250\"/>
              <clone sbmlid=\"pgm\" x=\"-870\" y=\"4170\"/>
              <container strategy=\"Clone\">
                <clone iscore=\"iscore\" sbmlid=\"tps\" x=\"-410\" y=\"4090\"/>
                <clone sbmlid=\"udp\" x=\"-540\" y=\"4000\">
                  <neighbour relationship=\"Product\" sbmlid=\"tps\"/>
                </clone>
                <clone sbmlid=\"h\" x=\"-570\" y=\"4040\">
                  <neighbour relationship=\"Product\" sbmlid=\"tps\"/>
                </clone>
                <clone sbmlid=\"t6p\" x=\"-410\" y=\"4000\">
                  <neighbour relationship=\"Product\" sbmlid=\"tps\"/>
                </clone>
              </container>
              <container strategy=\"Clone\">
                <clone iscore=\"iscore\" sbmlid=\"ugp\" x=\"-540\" y=\"4170\"/>
                <clone sbmlid=\"h\" x=\"-640\" y=\"4250\">
                  <neighbour relationship=\"Reactant\" sbmlid=\"ugp\"/>
                </clone>
                <clone sbmlid=\"utp\" x=\"-600\" y=\"4290\">
                  <neighbour relationship=\"Reactant\" sbmlid=\"ugp\"/>
                </clone>
              </container>
              <container strategy=\"Branch\">
                <container strategy=\"Clone\">
                  <clone iscore=\"iscore\" sbmlid=\"tpp\" x=\"-410\" y=\"3890\"/>
                  <clone sbmlid=\"h2o\" x=\"-480\" y=\"3910\">
                    <neighbour relationship=\"Reactant\" sbmlid=\"tpp\"/>
                  </clone>
                  <clone sbmlid=\"pho\" x=\"-480\" y=\"3830\">
                    <neighbour relationship=\"Product\" sbmlid=\"tpp\"/>
                  </clone>
                  <clone sbmlid=\"t6p\" x=\"-410\" y=\"4000\">
                    <neighbour relationship=\"Reactant\" sbmlid=\"tpp\"/>
                  </clone>
                </container>
              </container>
              <container strategy=\"Triangle\">
                <container strategy=\"Clone\">
                  <clone iscore=\"iscore\" sbmlid=\"nth\" x=\"-700\" y=\"3760\"/>
                  <clone sbmlid=\"h2o\" x=\"-620\" y=\"3720\">
                    <neighbour relationship=\"Reactant\" sbmlid=\"nth\"/>
                  </clone>
                </container>
                <clone sbmlid=\"trh\" x=\"-410\" y=\"3760\"/>
              </container>
              <container strategy=\"Branch\">
                <clone iscore=\"iscore\" sbmlid=\"g6p\" x=\"-1020\" y=\"4170\"/>
                <clone sbmlid=\"f6p\" x=\"-1020\" y=\"4420\"/>
                <clone sbmlid=\"pgi\" x=\"-1020\" y=\"4290\"/>
              </container>
              <container strategy=\"Clone\">
                <clone iscore=\"iscore\" sbmlid=\"hxk\" x=\"-1020\" y=\"3960\"/>
                <clone sbmlid=\"h\" x=\"-1060\" y=\"4040\">
                  <neighbour relationship=\"Product\" sbmlid=\"hxk\"/>
                </clone>
                <clone sbmlid=\"adp\" x=\"-960\" y=\"4040\">
                  <neighbour relationship=\"Product\" sbmlid=\"hxk\"/>
                </clone>
                <clone sbmlid=\"atp\" x=\"-1060\" y=\"3890\">
                  <neighbour relationship=\"Reactant\" sbmlid=\"hxk\"/>
                </clone>
                <clone sbmlid=\"t6p\" x=\"-870\" y=\"3960\">
                  <neighbour relationship=\"Modifier\" sbmlid=\"hxk\"/>
                </clone>
              </container>
              <clone sbmlid=\"glc\" x=\"-1020\" y=\"3760\"/>
            </container>
            <clone iscore=\"iscore\" sbmlid=\"glx\" x=\"-1020\" y=\"3470\"/>
            <clone sbmlid=\"hxt\" x=\"-1020\" y=\"3620\"/>
          </container>
        </container>
      </layout>
    </listoflayouts>
                                <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell elmt_cell;
    Class_elmt_medium elmt_medium;

    equation
        Params.elmt_udg = elmt_cell.elmt_udg;
        Params.elmt_g1p = elmt_cell.elmt_g1p;
        Params.elmt_g6p = elmt_cell.elmt_g6p;
        Params.elmt_glc = elmt_cell.elmt_glc;
        Params.elmt_t6p = elmt_cell.elmt_t6p;
        Params.elmt_trh = elmt_cell.elmt_trh;
        Reacs.elmt_udg = elmt_cell.elmt_udg;
        Reacs.elmt_heat = Params.elmt_heat;
        Reacs.elmt_glx = elmt_medium.elmt_glx;
        Reacs.elmt_utp = elmt_cell.elmt_utp;
        Reacs.elmt_f6p = elmt_cell.elmt_f6p;
        Reacs.elmt_glc = elmt_cell.elmt_glc;
        Reacs.elmt_atp = elmt_cell.elmt_atp;
        Reacs.elmt_cell = elmt_cell.elmt_cell;
        Reacs.elmt_g1p = elmt_cell.elmt_g1p;
        Reacs.elmt_g6p = elmt_cell.elmt_g6p;
        Reacs.elmt_t6p = elmt_cell.elmt_t6p;
        Reacs.elmt_adp = elmt_cell.elmt_adp;
        Reacs.elmt_trh = elmt_cell.elmt_trh;
        elmt_cell.elmt_tps = Reacs.elmt_tps;
        elmt_cell.elmt_reactant20 = Reacs.elmt_reactant20;
        elmt_cell.elmt_tpp = Reacs.elmt_tpp;
        elmt_cell.elmt_product10 = Reacs.elmt_product10;
        elmt_cell.elmt_t6p_0 = Params.elmt_t6p_0;
        elmt_cell.elmt_g6p_0 = Params.elmt_g6p_0;
        elmt_cell.elmt_reactant23 = Reacs.elmt_reactant23;
        elmt_cell.elmt_trh_0 = Params.elmt_trh_0;
        elmt_cell.elmt_product26 = Reacs.elmt_product26;
        elmt_cell.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_cell.elmt_glc_0 = Params.elmt_glc_0;
        elmt_cell.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_cell.elmt_pgm = Reacs.elmt_pgm;
        elmt_cell.elmt_product6 = Reacs.elmt_product6;
        elmt_cell.elmt_product22 = Reacs.elmt_product22;
        elmt_cell.elmt_pgi = Reacs.elmt_pgi;
        elmt_cell.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_cell.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_cell.elmt_ugp = Reacs.elmt_ugp;
        elmt_cell.elmt_hxk = Reacs.elmt_hxk;
        elmt_cell.elmt_g1p_0 = Params.elmt_g1p_0;
        elmt_cell.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_cell.elmt_product3 = Reacs.elmt_product3;
        elmt_cell.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_cell.elmt_hxt = Reacs.elmt_hxt;
        elmt_cell.elmt_nth = Reacs.elmt_nth;
        elmt_cell.elmt_product13 = Reacs.elmt_product13;
        elmt_cell.elmt_udg_0 = Params.elmt_udg_0;
        elmt_cell.elmt_product17 = Reacs.elmt_product17;

end Smallbone2011_TrehaloseBiosynthesis;
