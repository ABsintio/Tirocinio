
class System

Controller K;
Gate gate;
Train train;
Monitor M;

equation

train.app = K.app;
train.exit = K.exit;
gate.lower = K.lower;
gate.raise = K.raise;
M.m = gate.m;
M.x = train.x;

end System;