within BIOMD287;
class Class_elmt_stopp38ROS ""

    Boolean trigger;
    Real    value_elmt_kp38ROS;

    equation
        trigger = (time >= 691200.0);
        algorithm
            value_elmt_kp38ROS := 0.6;
end Class_elmt_stopp38ROS;
