%%  ----- Closed Loop System Performance Anlysis of DC Motor System----
clc
%% ------ Closed Loop DC Motor System with only PD controller----

kd_value = [0.01,0.05,0.1,0.5,5,10];
for i = 1:length(kd_value)
    signal = out.(sprintf('angular_velocity%d',i));
    info = stepinfo(signal.Data, signal.Time);
    fprintf("System Performance when Kp = 10 & Kd = %d is :\n",kd_value(i))
    disp(info)
end