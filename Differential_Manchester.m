%------Differential Manchester Encoding-----------------%

disp('Differential Manchester Encoding.........\n');
x=input('Enter the bit stream for Differential Manchester encoding\n','s'); %entering the sequence for diff manchester
x=strsplit(x,' '); % split the input as seperate characters
x1=[];
for i=1:size(x,2),
    if(strcmp(x(i),'1'))
        x1=[x1 1];  %trying to store it as integer from character by comparing
    else
        x1=[x1 0];
    end;
    
end;
x=x1;


T=length(x);    % length of input
n=100;
N=S*n*T;        % S is the baud rate
dt=T/N;         % the increment dt is calculated
pulse = 0;
if x(1)==0
    pulse=1;    % pulse is initially assigned
else
    pulse=-1;
end;


t=0:dt:T;
y=zeros(1,length(t)); % array of zeroes is declared


    
  for i=0:(T-1)
         if x(i+1)==0
                 y(i*2*n+1 : (2*i+1)*n)=-1*pulse;
                 y((2*i+1)*n+1 : (2*i+2)*n)=pulse;  
                 pulse = 1* pulse;
         else
                 
                 y(i*2*n+1 : (2*i+1)*n)=pulse;
                 y((2*i+1)*n+1 : (2*i+2)*n)=-1*pulse;
                 pulse=-1*pulse;
         end;
   end;
   
%Plotting of the graph   
figure(1); 
plot(t,y);
axis([0  2*T/S  -2  2]);        % Axis goes from -2 to 2
grid on;
title('Differential Manchester');
xlabel('Time(s)');
ylabel('Voltage(V)');
hold on
