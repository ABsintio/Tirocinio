model BIOMD021 "Chaos and birhythmicity in a model for circadian oscillations of the PER and TIM proteins in drosophila"

  parameter Real Cell = 1.0;
  parameter Real compartment_0000002 = 1.0;

  parameter Real V_mT = 0.7;
  parameter Real V_dT = 2.0;
  parameter Real K1_P = 2.0;
  parameter Real V_1P = 8.0;
  parameter Real K_1T = 2.0;
  parameter Real V_1T = 8.0;
  parameter Real K_2P = 2.0;
  parameter Real V_2P = 1.0;
  parameter Real K_2T = 2.0;
  parameter Real V_2T = 1.0;
  parameter Real K_3P = 2.0;
  parameter Real V_3P = 8.0;
  parameter Real K_3T = 2.0;
  parameter Real V_3T = 8.0;
  parameter Real K_4P = 2.0;
  parameter Real V_4P = 1.0;
  parameter Real K_4T = 2.0;
  parameter Real V_4T = 1.0;
  parameter Real k_d = 0.01;
  parameter Real V_dP = 2.00;
  parameter Real K_dP = 0.20;
  parameter Real K_dT = 0.20;
  parameter Real k3 = 1.2;
  parameter Real k4 = 0.6;
  parameter Real k1 = 0.6;
  parameter Real k2 = 0.2;
  parameter Real k_dC = 0.01;
  parameter Real k_dN = 0.01;
  parameter Real v_sP = 1.0;
  parameter Real K_IP = 1.0;
  parameter Real n = 4.0;
  parameter Real V_sT = 1.0;
  parameter Real K_IT = 1.0;
  parameter Real k_sP = 0.9;
  parameter Real k_sT = 0.9;
  parameter Real V_mP = 0.70;
  parameter Real K_mP = 0.20;
  parameter Real K_mT = 0.20;

  Real Pt(start=0.0) "Total PER";
  Real Tt(start=0.0) "Total TIM";

  Real P0 "PER Protein unphosphorylated";
  Real T0 "TIM Protein unphosphorylated";
  Real P1 "PER Protein mono-phosphorylated";
  Real T1 "TIM Protein mono-phosphorylated";
  Real P2 "PER Protein bi-phosphorylated";
  Real T2 "TIM Protein bi-phosphorylated";
  Real CC "Cytosolic PER-TIM Complex";
  Real Cn "Nuclear PER-TIM Complex";
  Real Mp "PER mRNA";
  Real Mt "TIM mRNA";

initial equation
  P0 = 0.00;
  T0 = 0.00;
  P1 = 0.00;
  T1 = 0.00;
  P2 = 0.00;
  T2 = 0.00;
  CC = 0.00;
  Cn = 0.00;
  Mp = 0.00;
  Mt = 0.00;

equation
  Pt = CC + Cn + P0 + P1 + P2;
  Tt = CC + Cn + T0 + T1 + T2;

  der(P0) = Cell*V_2P*P1/(K_2P+P1) + Cell*k_sP*Mp - Cell*V_1P*P0/(K1_P+P0) - Cell*k_d*P0;
  der(T0) = Cell*V_2T*T1/(K_2T+T1) + Cell*k_sT*Mt - Cell*V_1T*T0/(K_1T+T0) - Cell*k_d*T0;
  der(P1) = Cell*V_1P*P0/(K1_P+P0) + Cell*V_4P*P2/(K_4P+P2) - Cell*V_2P*P1/(K_2P+P1) - Cell*V_3P*P1/(K_3P+P1) - Cell*k_d*P1;
  der(T1) = Cell*V_1T*T0/(K_1T+T0) + Cell*V_4T*T2/(K_4T+T2) - Cell*V_2T*T1/(K_2T+T1) - Cell*V_3T*T1/(K_3T+T1) - Cell*k_d*T1;
  der(P2) = Cell*V_3P*P1/(K_3P+P1) - Cell*V_4P*P2/(K_4P+P2) - (Cell*k_d*P2+Cell*V_dP*P2/(K_dP+P2)) - (Cell*k3*P2*T2-Cell*k4*CC);
  der(T2) = Cell*V_3T*T1/(K_3T+T1) - Cell*V_4T*T2/(K_4T+T2) - (Cell*k_d*T2+Cell*V_dT*T2/(K_dT+T2)) - (Cell*k3*P2*T2-Cell*k4*CC);
  der(CC) = Cell*k3*P2*T2-Cell*k4*CC - (Cell*k1*CC-compartment_0000002*k2*Cn) - Cell*k_dC*CC;
  der(Cn) = Cell*k1*CC-compartment_0000002*k2*Cn - compartment_0000002*k_dN*Cn;
  der(Mp) = Cell*v_sP*K_IP^n/(K_IP^n+Cn^n) - (Cell*k_d*Mp+Cell*V_mP*Mp/(K_mP+Mp));
  der(Mt) = Cell*V_sT*K_IT^n/(K_IT^n+Cn^n) - (Cell*k_d*Mt+Cell*V_mT*Mp/(K_mT+Mt));

end BIOMD021;
