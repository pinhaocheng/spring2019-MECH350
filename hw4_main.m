clc, clear all, close all

%init vars
M1 = 10; %kg
M2 = 10; %kg
K1 = 20; %N/m
B = 0; %Ns/m (ideal pivot)
L1 = 0.25; %m
L2 = 0.25; %m
L = L1 + L2; %m
g = 9.8; %gravitational acceleration
theta1_init = 45 * pi / 180; %radians
theta2_init = 30 * pi / 180; %radians
tau1_init = M1*g*L*sin(theta1_init); %N/m
tau2_init = M2*g*L*sin(theta2_init); %N/m
tau1_final = 0; %N/m
tau2_final = 0; %N/m
stepInputTime = 3; % sec
stopTime = 60; %sec

%%
M1 = 5; %kg
M2 = 5; %kg
tau1_init = M1*g*L*sin(theta1_init); %N/m
tau2_init = M2*g*L*sin(theta2_init); %N/m
%change the value for var and plot graph for Q1
sim('hw4_sim'); % run model
figure
graphHW4(theta1.Time,theta1.Data,theta2.Time, theta2.Data,...
    inputTau1.Time, inputTau1.Data,inputTau2.Time,inputTau2.Data,...
    B,K1,L1,L2,M1,M2)

%%
M1 = 5; %kg
M2 = 10; %kg
tau1_init = M1*g*L*sin(theta1_init); %N/m
tau2_init = M2*g*L*sin(theta2_init); %N/m
%change the value for var and plot graph for Q1
sim('hw4_sim'); % run model
figure
graphHW4(theta1.Time,theta1.Data,theta2.Time, theta2.Data,...
    inputTau1.Time, inputTau1.Data,inputTau2.Time,inputTau2.Data,...
    B,K1,L1,L2,M1,M2)
%%
M1 = 5; %kg
M2 = 15; %kg
tau1_init = M1*g*L*sin(theta1_init); %N/m
tau2_init = M2*g*L*sin(theta2_init); %N/m
%change the value for var and plot graph for Q1
sim('hw4_sim'); % run model
figure
graphHW4(theta1.Time,theta1.Data,theta2.Time, theta2.Data,...
    inputTau1.Time, inputTau1.Data,inputTau2.Time,inputTau2.Data,...
    B,K1,L1,L2,M1,M2)
%%
M1 = 10; %kg
M2 = 5; %kg
tau1_init = M1*g*L*sin(theta1_init); %N/m
tau2_init = M2*g*L*sin(theta2_init); %N/m
%change the value for var and plot graph for Q1
sim('hw4_sim'); % run model
figure
graphHW4(theta1.Time,theta1.Data,theta2.Time, theta2.Data,...
    inputTau1.Time, inputTau1.Data,inputTau2.Time,inputTau2.Data,...
    B,K1,L1,L2,M1,M2)
%%
M1 = 10; %kg
M2 = 10; %kg
tau1_init = M1*g*L*sin(theta1_init); %N/m
tau2_init = M2*g*L*sin(theta2_init); %N/m
%change the value for var and plot graph for Q1
sim('hw4_sim'); % run model
figure
graphHW4(theta1.Time,theta1.Data,theta2.Time, theta2.Data,...
    inputTau1.Time, inputTau1.Data,inputTau2.Time,inputTau2.Data,...
    B,K1,L1,L2,M1,M2)
%%
% M1 = 15; %kg
% M2 = 10; %kg
% tau1_init = M1*g*L*sin(theta1_init); %N/m
% tau2_init = M2*g*L*sin(theta2_init); %N/m
% %change the value for var and plot graph for Q1
% sim('hw4_sim'); % run model
% figure
% graphHW4(theta1.Time,theta1.Data,theta2.Time, theta2.Data,...
%     inputTau1.Time, inputTau1.Data,inputTau2.Time,inputTau2.Data,...
%     B,K1,L1,L2,M1,M2)
%%
% %change the value for var and plot graph for Q2
% B = 0.1;%N/s
% stopTime = 150; %sec
% sim('hw4_sim'); % run model
% 
% %define horizontal line
% y1 = 5 * pi / 180;%5 degrees converted to radians
% y2 = - y1;%-5 degrees converted to radians
% figure
% graphHW4(theta1.Time,theta1.Data,theta2.Time, theta2.Data,...
%     inputTau1.Time, inputTau1.Data,inputTau2.Time,inputTau2.Data,...
%     B,K1,L1,L2,M1,M2)
% 
% %draw horizontal line
% hold on
% yyaxis left
% yline(y1,'-y','LineWidth', 5);
% yline(y2,'-m','LineWidth', 5);
% hold off
% 
% %label value for axis 
% xticks([0 10 20 30 40 50 60 70 80 90 100 110 120 130 140 150])
% xticklabels({'0','10','20','30','40','50','60','70','80','90','100','110','120','130','140','150'})
% yticks([-0.09 0.09])
% yticklabels({'-0.09' '0.09'})
% legend('\theta_1 Displacement', '\theta_2 Displacement','+5 degrees','-5 degrees',...
%     'input \tau_1', 'input \tau_2', 'location', 'bestoutside');

%%
% %change the value for var and plot graph for Q3
% B = 0;%N/s
% theta1_init = 45 * pi / 180; %radians
% theta2_init = 45 * pi / 180; %radians
% tau1_init = M1*g*L*sin(theta1_init); %N/m
% tau2_init = M2*g*L*sin(theta2_init); %N/m
% stopTime = 150; %sec
% sim('hw4_sim'); % run model
% figure
% graphHW4(theta1.Time,theta1.Data,theta2.Time, theta2.Data,...
%     inputTau1.Time, inputTau1.Data,inputTau2.Time,inputTau2.Data,...
%     B,K1,L1,L2,M1,M2)

%%
% % change the value for var and plot graph for Q4, without B
% B = 0;
% K =
% L1 =
% L2 =
% graphHW4(theta1.Time,theta1.Data,theta2.Time, theta2.Data,...
%     inputTau1.Time, inputTau1.Data,inputTau2.Time,inputTau2.Data,...
%     B,K1,L1,L2,M1,M2)

%%
% % change the value for var and plot graph for Q4, with B
% B = 0.1;
% graphHW4(theta1.Time,theta1.Data,theta2.Time, theta2.Data,...
%     inputTau1.Time, inputTau1.Data,inputTau2.Time,inputTau2.Data,...
%     B,K1,L1,L2,M1,M2)

%%
%general function to generate graph for different conditions 
function [] = graphHW4(theta1Time,theta1Data,theta2Time, theta2Data,...
    inputTau1Time, inputTau1Data,inputTau2Time,inputTau2Data,...
    B,K1,L1,L2,M1,M2)

%plot graph
yyaxis left
plot(theta1Time, theta1Data, '-r', 'LineWidth', 4),hold on
plot(theta2Time, theta2Data, '-b', 'LineWidth', 3),hold off
ylabel('Angle (rad)')

yyaxis right
plot(inputTau1Time, inputTau1Data, '-k', 'LineWidth',4), hold on
plot(inputTau2Time, inputTau2Data, '-g', 'LineWidth',3)
legend('\theta_1 Displacement', '\theta_2 Displacement','input \tau_1', 'input \tau_2',...
    'location', 'bestoutside');
ylabel('Applied Torque (N/m)')

%labeling horizontal axis and title
xlabel('Time (s)')
name = sprintf('\\theta_1_,_i_n_i_t= %.0f\\circ, \\theta_2_,_i_n_i_t= %.0f\\circ, B=%.2f Ns/m, k=%.2f N/m, L_1=%.2f m, L_2=%.2f m, M_1=%.2f kg, M_2=%.2f kg',...
    theta1Data(1)*180/pi , theta2Data(1)*180/pi , B , K1 , L1 , L2 , M1 , M2 );
title(name);
ylim([-1 36])
end
