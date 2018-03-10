clc;
clear;


%--------------main module--------------------------%
S=input('Enter the baud rate\n'); % entering baud rate



%------------- Differential Manchester module-------%
Differential_Manchester

% corresponding bitrate is given for baud rate
disp('The bitrate in bps for the given baudrate for Differential Manchester encoding is : \n');
S/2

disp('Considering a noiseless channel the average bandwidth required in Hz for the differential manchester singnal is :\n');
S/2

%------------- 8B6T---------------------------------%
Encoding_8B6T

disp('The bitrate in bps for the given baudrate for 8B6T encoding is : \n');
4*S/3

disp('Considering a noiseless channel the average bandwidth required in Hz for the 8B6T singnal is :\n');
3*4*S/3/8

disp('The value of r for Differential Manchester is 1/2 and that for 8B6T encoding is 4/3\n');



