within BIOMD583;
class Reactions

    input Real elmt_Th17_LP;
    input Real elmt_M0;
    input Real elmt_LP;
    input Real elmt_tDC_LP;
    input Real elmt_Commensal_Beneficial;
    input Real elmt_Commensal_Dead;
    input Real elmt_Th1_LP;
    input Real elmt_M_LP;
    input Real elmt_Cdiff;
    input Real elmt_Lumen;
    input Real elmt_MLN;
    input Real elmt_eDC_LP;
    input Real elmt_N_Lum;
    input Real elmt_eDC_MLN;
    input Real elmt_E;
    input Real elmt_Th17_MLN;
    input Real elmt_iTreg_MLN;
    input Real elmt_N_LP;
    input Real elmt_tDC_MLN;
    input Real elmt_Epithelium;
    input Real elmt_iTreg_LP;
    input Real elmt_Th1_MLN;
    input Real elmt_E_i;
    input Real elmt_Commensal_Harmful;
    input Real elmt_E_d;

    Real elmt_Treg_Degradation(unit = "") "Treg Degradation";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI28\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-08T14:42:12Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_Treg_Degradation_elmt_k1(unit "") = 0.5069887 "";
    Real elmt_reactant0 "";
    Real elmt_eDC_Degradation(unit = "") "eDC Degradation";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI29\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-08T13:08:26Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_eDC_Degradation_elmt_k1(unit "") = 1.72495199303666E-5 "";
    Real elmt_reactant1 "";
    Real elmt_Th17_Plasticity(unit = "") "Th17 Plasticity";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI41\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-08T14:10:40Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_Th17_Plasticity_elmt_k1(unit "") = 1.27393226093773 "";
    parameter Real elmt_Th17_Plasticity_elmt_k2(unit "") = 0.0020401460213434 "";
    Real elmt_product22 "";
    Real elmt_reactant21 "";
    Real elmt_M_Death(unit = "") "M Death";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI46\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-13T16:12:39Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_M_Death_elmt_k1(unit "") = 20.0 "";
    Real elmt_reactant31 "";
    Real elmt_eDC_Migration(unit = "") "eDC Migration";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI34\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-08T13:29:14Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_eDC_Migration_elmt_k1(unit "") = 10.5 "";
    Real elmt_product8 "";
    Real elmt_reactant7 "";
    Real elmt_Th1_Differentiation(unit = "") "Th1 Differentiation";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI53\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-11-18T12:31:19Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_Th1_Differentiation_elmt_k1(unit "") = 0.0648415756801505 "";
    parameter Real elmt_Th1_Differentiation_elmt_K(unit "") = 0.0430096 "";
    parameter Real elmt_Th1_Differentiation_elmt_k2(unit "") = 9.65568121975566E-5 "";
    Real elmt_product45 "";
    Real elmt_reactant44 "";
    Real elmt_tDC_Migration(unit = "") "tDC Migration";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI50\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-09-19T12:32:12Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_tDC_Migration_elmt_k1(unit "") = 3.65 "";
    Real elmt_product40 "";
    Real elmt_reactant39 "";
    Real elmt_Th1_Degradation(unit = "") "Th1 Degradation";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI31\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-08T13:09:44Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_Th1_Degradation_elmt_k1(unit "") = 0.99505694359 "";
    Real elmt_reactant3 "";
    Real elmt_Th17_Migration(unit = "") "Th17 Migration";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI42\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-08T14:57:38Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_Th17_Migration_elmt_k1(unit "") = 2.50454427171444 "";
    Real elmt_product24 "";
    Real elmt_reactant23 "";
    Real elmt_Cdiff_Growth(unit = "") "Cdiff Growth";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI38\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-08T14:39:05Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_Cdiff_Growth_elmt_K(unit "") = 5.0E-11 "";
    Real elmt_product16 "";
    Real elmt_reactant15 "";
    Real elmt_Commensal_Harmful_Death(unit = "") "Commensal Harmful Death";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI55\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-12-09T13:36:27Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_Commensal_Harmful_Death_elmt_K(unit "") = 2.33225E-5 "";
    parameter Real elmt_Commensal_Harmful_Death_elmt_A2(unit "") = 0.18 "";
    parameter Real elmt_Commensal_Harmful_Death_elmt_A1(unit "") = 0.00478 "";
    Real elmt_reactant48 "";
    Real elmt_E_Inflame(unit = "") "E Inflame";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI43\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-08T14:15:28Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_E_Inflame_elmt_K(unit "") = 1.71079818745428E-4 "";
    Real elmt_reactant25 "";
    Real elmt_product26 "";
    Real elmt_Th17_Differentiation(unit = "") "Th17 Differentiation";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI52\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-11-18T12:30:29Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_Th17_Differentiation_elmt_k1(unit "") = 2255.80469507059 "";
    Real elmt_reactant42 "";
    Real elmt_product43 "";
    Real elmt_M_Activation(unit = "") "M Activation";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI45\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-11T20:55:32Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_M_Activation_elmt_K(unit "") = 4.5E-5 "";
    parameter Real elmt_M_Activation_elmt_e2(unit "") = 0.092308585205372 "";
    parameter Real elmt_M_Activation_elmt_e1(unit "") = 2.0 "";
    Real elmt_product30 "";
    Real elmt_reactant29 "";
    Real elmt_Cdiff_Death(unit = "") "Cdiff Death";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI36\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-08T13:42:20Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_Cdiff_Death_elmt_m2(unit "") = 594.896546415159 "";
    parameter Real elmt_Cdiff_Death_elmt_m3(unit "") = 0.102702503781515 "";
    parameter Real elmt_Cdiff_Death_elmt_K(unit "") = 6.27092296294148E-10 "";
    Real elmt_reactant12 "";
    Real elmt_tDC_Degradation(unit = "") "tDC Degradation";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI51\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-09-19T13:20:41Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_tDC_Degradation_elmt_k(unit "") = 9.5E-4 "";
    Real elmt_reactant41 "";
    Real elmt_N_Degradation(unit = "") "N Degradation";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI32\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-08T14:42:12Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_N_Degradation_elmt_K(unit "") = 2.35932924820229E-7 "";
    Real elmt_reactant4 "";
    Real elmt_Commensal_Regrowth(unit = "") "Commensal Regrowth";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI47\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-13T17:34:53Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_Commensal_Regrowth_elmt_k1(unit "") = 4.5E-10 "";
    parameter Real elmt_Commensal_Regrowth_elmt_k2(unit "") = 0.156287382551622 "";
    Real elmt_product33 "";
    Real elmt_reactant32 "";
    Real elmt_tDC_Production(unit = "") "tDC Production";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI49\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-09-19T12:30:50Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_tDC_Production_elmt_k1(unit "") = 559.297141527983 "";
    parameter Real elmt_tDC_Production_elmt_K(unit "") = 2.0E-4 "";
    parameter Real elmt_tDC_Production_elmt_k2(unit "") = 26.8747332769592 "";
    Real elmt_reactant36 "";
    Real elmt_product38 "";
    Real elmt_reactant37 "";
    Real elmt_E_i_Damage(unit = "") "E_i Damage";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI44\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-08T14:18:04Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_E_i_Damage_elmt_k1(unit "") = 0.006 "";
    parameter Real elmt_E_i_Damage_elmt_v(unit "") = 0.065 "";
    parameter Real elmt_E_i_Damage_elmt_k2(unit "") = 0.0106698310809694 "";
    parameter Real elmt_E_i_Damage_elmt_k3(unit "") = 1.16013457036959E-6 "";
    Real elmt_reactant27 "";
    Real elmt_product28 "";
    Real elmt_N_Activation_Migration(unit = "") "N Activation/Migration";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI37\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-08T13:45:16Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_N_Activation_Migration_elmt_k1(unit "") = 0.120935308788409 "";
    parameter Real elmt_N_Activation_Migration_elmt_v(unit "") = 5.29827880572231E-5 "";
    parameter Real elmt_N_Activation_Migration_elmt_k2(unit "") = 0.171190728888258 "";
    parameter Real elmt_N_Activation_Migration_elmt_k3(unit "") = 0.129717307334483 "";
    Real elmt_product14 "";
    Real elmt_reactant13 "";
    Real elmt_eDC_Production(unit = "") "eDC Production";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI35\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-08T13:33:03Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_eDC_Production_elmt_k(unit "") = 0.55 "";
    Real elmt_product11 "";
    Real elmt_reactant9 "";
    Real elmt_reactant10 "";
    Real elmt_Commensal_Death(unit = "") "Commensal Death";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI56\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-12-09T13:55:57Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_Commensal_Death_elmt_k1(unit "") = 0.0933277452272273 "";
    Real elmt_reactant49 "";
    Real elmt_Th17_Degradation(unit = "") "Th17 Degradation";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI30\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-08T13:25:08Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_Th17_Degradation_elmt_k1(unit "") = 2.39665140586358 "";
    Real elmt_reactant2 "";
    Real elmt_E_i_Natural_Death(unit = "") "E_i Natural Death";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI57\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-04-15T09:25:14Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_E_i_Natural_Death_elmt_k1(unit "") = 2.5 "";
    Real elmt_reactant50 "";
    Real elmt_product51 "";
    Real elmt_Treg_Differentiation(unit = "") "Treg Differentiation";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI54\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-11-18T12:32:12Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_Treg_Differentiation_elmt_k1(unit "") = 53.9130568911728 "";
    Real elmt_product47 "";
    Real elmt_reactant46 "";
    Real elmt_Th1_Migration(unit = "") "Th1 Migration";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI40\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-08T14:43:35Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_Th1_Migration_elmt_k1(unit "") = 1.459 "";
    Real elmt_reactant19 "";
    Real elmt_product20 "";
    Real elmt_E_Damage(unit = "") "E Damage";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI33\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-08T13:16:32Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_E_Damage_elmt_k1(unit "") = 1.1E-5 "";
    parameter Real elmt_E_Damage_elmt_v(unit "") = 1.59920673150176E-6 "";
    parameter Real elmt_E_Damage_elmt_k2(unit "") = 2.3381277077344E-6 "";
    parameter Real elmt_E_Damage_elmt_k3(unit "") = 62.5911647602982 "";
    Real elmt_product6 "";
    Real elmt_reactant5 "";
    Real elmt_Treg_Migration(unit = "") "Treg Migration";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI39\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-08T21:54:38Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_Treg_Migration_elmt_k1(unit "") = 5.5 "";
    Real elmt_reactant17 "";
    Real elmt_product18 "";
    Real elmt_E_Heal(unit = "") "E Heal";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI48\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-09-18T11:52:43Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_E_Heal_elmt_k1(unit "") = 4000.0 "";
    Real elmt_product35 "";
    Real elmt_reactant34 "";


    initial equation
        elmt_product30 = 1.0;
        elmt_reactant41 = 1.0;
        elmt_reactant42 = 1.0;
        elmt_product33 = 1.0;
        elmt_reactant48 = 1.0;
        elmt_reactant49 = 1.0;
        elmt_reactant44 = 1.0;
        elmt_reactant46 = 1.0;
        elmt_product26 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product24 = 1.0;
        elmt_product28 = 1.0;
        elmt_reactant50 = 1.0;
        elmt_product40 = 1.0;
        elmt_product45 = 1.0;
        elmt_product43 = 1.0;
        elmt_reactant15 = 1.0;
        elmt_reactant17 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_reactant13 = 1.0;
        elmt_product38 = 1.0;
        elmt_product35 = 1.0;
        elmt_product51 = 1.0;
        elmt_product11 = 1.0;
        elmt_reactant25 = 1.0;
        elmt_reactant27 = 1.0;
        elmt_reactant21 = 1.0;
        elmt_reactant23 = 1.0;
        elmt_reactant19 = 1.0;
        elmt_product47 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_product8 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_reactant31 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_product6 = 1.0;
        elmt_product22 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_product20 = 1.0;
        elmt_reactant36 = 1.0;
        elmt_reactant37 = 1.0;
        elmt_reactant39 = 1.0;
        elmt_reactant32 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_reactant34 = 1.0;
        elmt_reactant29 = 1.0;
        elmt_product16 = 2.0;
        elmt_product14 = 1.0;
        elmt_product18 = 1.0;


    equation
        elmt_Treg_Degradation = (elmt_LP * elmt_Treg_Degradation_elmt_k1 * elmt_iTreg_LP);
        elmt_eDC_Degradation = (elmt_MLN * elmt_eDC_Degradation_elmt_k1 * elmt_eDC_MLN);
        elmt_Th17_Plasticity = (elmt_LP * (((elmt_Th17_Plasticity_elmt_k1 * elmt_Th17_LP) - (elmt_Th17_Plasticity_elmt_k2 * elmt_Cdiff * elmt_iTreg_LP))));
        elmt_M_Death = (elmt_Epithelium * elmt_M_Death_elmt_k1 * elmt_M_LP);
        elmt_eDC_Migration = (elmt_eDC_Migration_elmt_k1 * elmt_eDC_LP);
        elmt_Th1_Differentiation = (elmt_MLN * (((elmt_Th1_Differentiation_elmt_K * elmt_eDC_MLN * elmt_Commensal_Dead) / ((elmt_Th1_Differentiation_elmt_k1 * elmt_Commensal_Beneficial) + (elmt_Th1_Differentiation_elmt_k2 * elmt_E)))));
        elmt_tDC_Migration = (elmt_Lumen * elmt_tDC_Migration_elmt_k1 * elmt_tDC_LP);
        elmt_Th1_Degradation = (elmt_LP * elmt_Th1_Degradation_elmt_k1 * elmt_Th1_LP);
        elmt_Th17_Migration = (elmt_Th17_Migration_elmt_k1 * elmt_Th17_MLN);
        elmt_Cdiff_Growth = (elmt_Lumen * ((elmt_Cdiff_Growth_elmt_K * elmt_Cdiff * elmt_Commensal_Harmful)));
        elmt_Commensal_Harmful_Death = (elmt_Lumen * ((elmt_Commensal_Harmful_Death_elmt_K * elmt_Commensal_Harmful * ((elmt_N_LP * elmt_Commensal_Harmful_Death_elmt_A1) + (elmt_E_i * elmt_Commensal_Harmful_Death_elmt_A2)))));
        elmt_E_Inflame = (elmt_Epithelium * ((elmt_E_Inflame_elmt_K * elmt_E * elmt_Cdiff)));
        elmt_Th17_Differentiation = (elmt_MLN * elmt_Th17_Differentiation_elmt_k1 * elmt_eDC_MLN);
        elmt_M_Activation = ((elmt_M_Activation_elmt_K * elmt_M0 * (((elmt_M_Activation_elmt_e1 * elmt_Th17_LP) + elmt_Cdiff) - (elmt_M_Activation_elmt_e2 * elmt_iTreg_LP))));
        elmt_Cdiff_Death = (elmt_Lumen * ((elmt_Cdiff_Death_elmt_K * elmt_Cdiff * ((elmt_M_LP + (elmt_Cdiff_Death_elmt_m2 * elmt_N_Lum)) - (elmt_Cdiff_Death_elmt_m3 * elmt_Commensal_Harmful)))));
        elmt_tDC_Degradation = (elmt_Lumen * ((elmt_tDC_Degradation_elmt_k * elmt_tDC_MLN)));
        elmt_N_Degradation = (elmt_Lumen * ((elmt_N_Degradation_elmt_K * elmt_N_Lum * elmt_Commensal_Beneficial)));
        elmt_Commensal_Regrowth = (elmt_Lumen * (((elmt_Commensal_Regrowth_elmt_k1 * elmt_Commensal_Beneficial * elmt_N_Lum * elmt_E_i) - (elmt_Commensal_Regrowth_elmt_k2 * elmt_Commensal_Dead))));
        elmt_tDC_Production = ((elmt_tDC_Production_elmt_K * elmt_Cdiff * (((elmt_tDC_Production_elmt_k1 * elmt_Commensal_Beneficial) / elmt_Commensal_Dead) + ((elmt_tDC_Production_elmt_k2 * elmt_E) / (elmt_E_i + 100.0)))));
        elmt_E_i_Damage = (elmt_Epithelium * ((elmt_E_i_Damage_elmt_v * elmt_E_i * ((elmt_E_i_Damage_elmt_k1 * elmt_N_Lum) + (elmt_E_i_Damage_elmt_k2 * elmt_Th17_LP) + (elmt_E_i_Damage_elmt_k3 * elmt_M_LP)))));
        elmt_N_Activation_Migration = ((elmt_N_Activation_Migration_elmt_v * elmt_N_LP * ((elmt_Cdiff * ((elmt_N_Activation_Migration_elmt_k1 * elmt_E_d) + (elmt_N_Activation_Migration_elmt_k2 * elmt_Th17_LP))) - (elmt_N_Activation_Migration_elmt_k3 * elmt_iTreg_LP))));
        elmt_eDC_Production = ((elmt_eDC_Production_elmt_k * elmt_Cdiff));
        elmt_Commensal_Death = (elmt_Lumen * elmt_Commensal_Death_elmt_k1 * elmt_Commensal_Dead);
        elmt_Th17_Degradation = (elmt_LP * elmt_Th17_Degradation_elmt_k1 * elmt_Th17_LP);
        elmt_E_i_Natural_Death = (elmt_Epithelium * elmt_E_i_Natural_Death_elmt_k1 * elmt_E_i);
        elmt_Treg_Differentiation = (elmt_Treg_Differentiation_elmt_k1 * elmt_tDC_MLN);
        elmt_Th1_Migration = (elmt_Th1_Migration_elmt_k1 * elmt_Th1_MLN);
        elmt_E_Damage = (elmt_Epithelium * ((elmt_E_Damage_elmt_v * elmt_E * ((elmt_E_Damage_elmt_k1 * elmt_N_Lum) + (elmt_E_Damage_elmt_k2 * elmt_Th17_LP) + (elmt_E_Damage_elmt_k3 * elmt_M_LP)))));
        elmt_Treg_Migration = (elmt_Treg_Migration_elmt_k1 * elmt_iTreg_MLN);
        elmt_E_Heal = (elmt_Epithelium * elmt_E_Heal_elmt_k1 * elmt_E_d);
        der(elmt_product30) = 0;
        der(elmt_reactant41) = 0;
        der(elmt_reactant42) = 0;
        der(elmt_product33) = 0;
        der(elmt_reactant48) = 0;
        der(elmt_reactant49) = 0;
        der(elmt_reactant44) = 0;
        der(elmt_reactant46) = 0;
        der(elmt_product26) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product24) = 0;
        der(elmt_product28) = 0;
        der(elmt_reactant50) = 0;
        der(elmt_product40) = 0;
        der(elmt_product45) = 0;
        der(elmt_product43) = 0;
        der(elmt_reactant15) = 0;
        der(elmt_reactant17) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_reactant13) = 0;
        der(elmt_product38) = 0;
        der(elmt_product35) = 0;
        der(elmt_product51) = 0;
        der(elmt_product11) = 0;
        der(elmt_reactant25) = 0;
        der(elmt_reactant27) = 0;
        der(elmt_reactant21) = 0;
        der(elmt_reactant23) = 0;
        der(elmt_reactant19) = 0;
        der(elmt_product47) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_product8) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant31) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_product6) = 0;
        der(elmt_product22) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_product20) = 0;
        der(elmt_reactant36) = 0;
        der(elmt_reactant37) = 0;
        der(elmt_reactant39) = 0;
        der(elmt_reactant32) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_reactant34) = 0;
        der(elmt_reactant29) = 0;
        der(elmt_product16) = 0;
        der(elmt_product14) = 0;
        der(elmt_product18) = 0;

end Reactions;
