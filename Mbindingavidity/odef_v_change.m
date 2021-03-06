%Written on Oct 14, 2011
%Detailed explanation goes here
%SIRS Model with reinfection
%The last group of susceptible individuals will obtain permanant resistant
%ODE function for status based model
%With migration rate
%Flag1) Fixed V and W
%Flag2) Fixed V 
%Flag3) Fixed W
%Flag4) Allow V & W

function X_dot = odef_v_change(t,x,pars)

global params;
% check whether params is empty 
kc = params.kc;

V = x;
%Beta = get_beta_list([0:params.N_Infect-1]',V, params.p, params.r, params.a, params.b, params.c);

X_dot = kc*dBeta_dV(pars.k,V,params.p, params.r, params.a, params.b, params.c)';
end


