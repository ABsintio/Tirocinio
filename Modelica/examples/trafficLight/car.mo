
block Car

    parameter Real CrossingTimer = 2;
    parameter Real BeforeTimer = 1;
    parameter Real PastTimer = 1;

    // stop on red+orange: all pass

    parameter Real ArrivalDelay =  8.1;  

    // FAIL when stop just on red
    // parameter Real ArrivalDelay =  7.9;  
    // parameter Real ArrivalDelay =  8.1;  
    // parameter Real ArrivalDelay =  8.2;  
    // parameter Real ArrivalDelay =  8.3;  
    // parameter Real ArrivalDelay =  8.4;  
    // parameter Real ArrivalDelay =  8.5;  
    // parameter Real ArrivalDelay =  8.9;  


    parameter Real T = 0.1;   // time step

    parameter CarState x0 = CarState.before;  // initial signal value
    parameter Real c0 = ArrivalDelay;  // arrival delay

    input  Driver u;
    output CarState x;

    //protected
    Real counter;

initial equation
    counter = c0;
    x = x0;

algorithm

    when sample(0, T) then
        if (pre(counter) <= 0) then
            if (pre(x) == CarState.before) then
                if (pre(u) == Driver.go) then 
                    x := CarState.crossing;
                    counter := CrossingTimer;
                else 
                    x := pre(x);
                    counter := 0;
                end if;
            elseif (pre(x) == CarState.crossing) then
                if (pre(u) == Driver.go) then 
                    x := CarState.past;
                    counter := PastTimer;	           
                else
                    x := pre(x);
                    counter := 0;	           
                end if;
        
            else
                x := CarState.past;
                counter := 0;
            end if;
        else
            counter := pre(counter) - T;
        end if;
    end when;

end Car;
