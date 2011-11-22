function [ L_sys ] = mySys ( K, T, L, phi_max )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

% G
s = tf('s');
G = K/(1+T*s)*exp(-s*L);

% Preperations
w_c = 0.2;

% I-part
tau_i = T;
F_PI = (1+s*tau_i)/(s*tau_i);
% K_I  = wc/(g()*..)


K_I  = 1;
% K_PI = K_I*T;
K_PI = 1;

% D-part
b = (1+sin(phi_max))/(1-sin(phi_max));
tau_d = sqrt(b)/w_c;
F_PD = (1+s*tau_d)/(1+s*tau_d/b);
% K_PD = 1/(absG*sqrt(b));
K_PD = 1;
K_PIPD = K_PI*K_PD;

%  F_PIPD
F_PIPD = K_PIPD*F_PI*F_PD;

L_sys = G*F_PIPD;

end

