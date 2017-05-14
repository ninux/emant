%-------------------------------------------------------------------------------
% file:         emant.m
% authors:      Ervin Mazlagic, Markus Birrer
% description:  Calculations for 2.4GHz compact PCB antenna.
%-------------------------------------------------------------------------------

% definitions
f1      = 2.4E9;      % [Hz]  freqeuncy
f2      = 5.0E9;      % [Hz]  freqeuncy
c       = 299792458;  % [m/s] speed of light
cf      = 0.85;       % [-]   correction factor
lambda1 = (cf*c)/f1;  % [m]   wavelangth
lambda2 = (cf*c)/f2;  % [m]   wavelangth


% calculate antenna length (als - anntenna stub length)
asl1     = lambda1/4;
asl2     = lambda2/4;

