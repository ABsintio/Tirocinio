within ifmodel;
model system
	Real x;
	Real y;
	Integer i;
initial equation
	i = 0.0;
	y = 0.0;
	x = 0.0;
equation
	if i > 10 then
		der(x) = i*sin(time);
		der(y) = i*cos(time);
	else 
        der(x) = i*cos(time);
        der(y) = i*sin(time);
    end if;
	
	when sample(1.0, 0.1) then
		i = 1 + pre(i);
	end when;

end system;
