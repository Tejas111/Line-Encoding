%----------------- 8B6T encoding ------------------%

disp('8B6T Encoding.....')
prompt = 'Enter the sequence for 8B6T encoding\n';  
s= input(prompt,'s');           %enter the 8B6T sequence
m=S;

nosigelem=size(s,2);            % splitting the sequence in size of 6
nosigelem=nosigelem/6;


weight=[];
for i=1:nosigelem,
    
    ctr=0;
    for j=1:6,
        
        if(s(1,6*(i-1)+j)=='+')
            ctr=ctr+1;
        elseif(s(1,6*(i-1)+j)=='-')
                ctr=ctr-1;
            
        else
            
        end;
    end;
    weight=[weight ctr];
    
    
end;
weight;
y=[];
                        % getting final output sequence y whic is to be
                        % plotted
for i=1:size(s,2)
    if(s(1,i)=='+')
        y=[y 1];
    elseif(s(1,i)=='-')
        y=[y -1];
    else
        y=[y 0];
    end;
end;


for i=1:nosigelem,
    if(weight(1,i)==0);
    elseif(weight(1,i)==1)
        if(i~=nosigelem & weight(1,i+1)==1)
            for j=1:6,
                y(1,(6*i)+j)=-1*y(1,(6*i)+j);
            end;
        end;
    end;
end;



T=length(y);
n=100;
N=S*n*T;
dt=T/N;
t=0:dt:T;                       % the increment dt is calculated
z=zeros(1,length(t));   
  for i=0:(T-1)
         if y(i+1)==-1
            z(i*1*n+1:(1*i+2)*n)=-1;    % the graph is plotted
            
         elseif y(i+1)==1
            z(i*1*n+1:(1*i+2)*n)=+1;
            
         else
           z(i*1*n+1:(1*i+2)*n)=0;
           
         end;
 end;
 T;
 m;
p =  T/S;

% plotting of the graph
figure(2);
plot(t,z);
axis([0  p  -2  2]);
grid on;
title('8B6T encoding');
xlabel('Time(s)');
ylabel('Voltage(V)');