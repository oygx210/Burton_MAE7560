function [a_tilde] = contMeas(xt, a_t, w_a, simpar)
%contInertialMeas synthesizes noise measurements used to propagate the
%navigation state
%
% Inputs:
%   xt = truth state
%   a_t = current thrust command
%   w_a = process noise
% Outputs
%   a_tilde = sythensized accelerometer data
ba = xt(simpar.states.ix.ba);
%Intertial to body transform
T_i2b = calc_attitude(xt, simpar);

%Syntesize noise
eta_a = 0; %%%%%TBD

%Synthesize meausrement
a_tilde = T_i2b*(a_t+w_a)+ba+eta_a;

end
