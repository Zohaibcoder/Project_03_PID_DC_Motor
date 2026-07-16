%%  ----- Closed Loop System Performance Anlysis of DC Motor System----
clc
%% PID Tune


J=0.01; b=0.1; R=1; L=0.5; Kt=0.01; Ke=0.01;
G = tf(Kt, [(J*L) (J*R+b*L) (b*R+Kt*Ke)]);
C = pidtune(G,'PID');
T = feedback(C*G,1);
stepinfo(T)
