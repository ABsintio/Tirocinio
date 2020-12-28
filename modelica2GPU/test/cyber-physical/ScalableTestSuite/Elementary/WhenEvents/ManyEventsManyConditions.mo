within WhenEvents;
model ManyEventsManyConditions
    extends ManyEvents;
    Integer v(start=0,fixed=true);
equation
    when e then
        v = pre(v) + 1;
    end when;
end ManyEventsManyConditions;
