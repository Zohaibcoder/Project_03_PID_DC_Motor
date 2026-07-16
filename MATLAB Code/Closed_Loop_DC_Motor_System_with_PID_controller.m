%%  ----- Closed Loop System Performance Anlysis of DC Motor System----
clc

%% ------ Closed Loop DC Motor System with  PID controller----

kp1 = 10 ; ki1 = 19.9 ; kd1 = 0.1 ;
info1 = stepinfo(out.angular_velocity1.Data, out.angular_velocity1.Time);
fprintf("System Performance when Kp = 10 , Ki = 19.9 , Kd = 0.1 is :\n")
disp(info1)


kp2 = 10 ; ki2 = 20 ; kd2 = 0.1 ;
info2 = stepinfo(out.angular_velocity2.Data, out.angular_velocity2.Time);
fprintf("System Performance when Kp = 10 , Ki = 20 , Kd = 0.1 is :\n")
disp(info2)

kp3 = 10 ; ki3 = 21 ; kd3 = 0.1 ;
info3 = stepinfo(out.angular_velocity3.Data, out.angular_velocity3.Time);
fprintf("System Performance when Kp = 10 , Ki = 21 , Kd = 0.1 is :\n")
disp(info3)