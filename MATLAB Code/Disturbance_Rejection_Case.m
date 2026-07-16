%%  ----- Closed Loop System Performance Anlysis of DC Motor System----
clc
%% ---- Disturbance Rejection Case ---

kp1 = 10 ; ki1 = 20 ; kd1 = 0.1 ;
info1 = stepinfo(out.angular_velocity1.Data, out.angular_velocity1.Time);
fprintf("System Performance without the Disturbanceis :\n")
disp(info1)


% Step Disturbance of value -0.5 at t = 5s
info2 = stepinfo(out.angular_velocity2.Data, out.angular_velocity2.Time);
fprintf("System Performance when Disturbance of -0.5 is involved:\n")
disp(info2)


% Step Disturbance of value 0.5 at t = 5s
info3 = stepinfo(out.angular_velocity3.Data, out.angular_velocity3.Time);
fprintf("System Performance when Disturbance of 0.5 is involved:\n")
disp(info3)