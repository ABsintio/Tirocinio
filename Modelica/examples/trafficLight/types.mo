
type TrafficLightSignal = enumeration(
    green "Go",
    orange "PrepareToStop",
    red "Stop"
);


type CarState = enumeration(
    before "About to cross",
    crossing "Crossing",
    past "Crossing completed"
);

type Driver = enumeration(
    stop "stop car",
    go  "move car ahead"
);
