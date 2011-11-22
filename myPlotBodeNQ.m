function [ L_sys ] = myPlotBodeNQ( )
%myPlotBodeNQ Plot Bode and Nyquist for
%   

f = @(deg) deg/180*pi;

% Bode:
% Small pipe:
K = 5;
T = 25;
L = 1.5;
phi_max = f(5);
bode(mySys(K, T, L, phi_max));
waitforbuttonpress;

end