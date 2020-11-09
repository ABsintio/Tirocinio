
block TrafficLight

    parameter Real RedTimer = 6;
    parameter Real GreenTimer = 6;
    parameter Real OrangeTimer = 3;
    // parameter Real OrangeTimer = 1;   // t0o short, ctr fails

    parameter Real T = 0.1;   // time step

    parameter TrafficLightSignal x0 = TrafficLightSignal.green;  // initial signal value
    parameter Real c0 = GreenTimer;  

    output TrafficLightSignal x;

    //protected
    Real counter;

initial equation
    counter = c0;
    x = x0;

algorithm

    when sample(0, T) then
    
        if (pre(counter) <= 0) then
            if (pre(x) == TrafficLightSignal.green) then
                x := TrafficLightSignal.orange;
                counter := OrangeTimer;
            elseif (pre(x) == TrafficLightSignal.orange) then
                x := TrafficLightSignal.red;
                counter := RedTimer;
            else 
                x := TrafficLightSignal.green;
                counter := GreenTimer;
            end if;
        else
            counter := pre(counter) - T;
        end if;

    end when;

end TrafficLight;
