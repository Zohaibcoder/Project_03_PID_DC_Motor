%%  ----- Closed Loop System Performance Anlysis of DC Motor System----
clc

%% ------ Closed Loop DC Motor System with only P controller----
disp("System Performance when Kp = 1 is :")
info_kp = stepinfo(out.angular_velocity.Data,out.angular_velocity.Time);
disp(info_kp)

kp_value = [0.5,1,5,10,50];
for i = 1:length(kp_value)
    signal = out.(sprintf('angular_velocity%d',i));
    info = stepinfo(signal.Data, signal.Time);
    fprintf("System Performance when Kp = %d is :\n",kp_value(i))
    disp(info)
end
