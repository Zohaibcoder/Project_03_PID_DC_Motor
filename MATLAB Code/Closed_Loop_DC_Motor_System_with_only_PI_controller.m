%%  ----- Closed Loop System Performance Anlysis of DC Motor System----
clc
%% ------ Closed Loop DC Motor System with only PI controller----

ki_value = [1,5,10,20,30,50];
for i = 1:length(ki_value)
    signal = out.(sprintf('angular_velocity%d',i));
    info = stepinfo(signal.Data, signal.Time);
    fprintf("System Performance when Kp = 10 & Ki = %d is :\n",ki_value(i))
    disp(info)
end