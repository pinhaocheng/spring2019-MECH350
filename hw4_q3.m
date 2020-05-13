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
theta2_init = 45 * pi / 180; %radians
tau1_init = 35; %N/m
tau2_init = 25; %N/m
tau1_final = 0; %N/m
tau2_final = 0; %N/m
stepInputTime = 3; % sec
stopTime = 150; %sec

% run model
sim('hw4_sim');

%plot graph
yyaxis left
plot(theta1.Time, theta1.Data, '-r', 'LineWidth', 3),hold on
plot(theta2.Time, theta2.Data, '-b', 'LineWidth', 3),hold off
ylabel('Angle (rad)')

yyaxis right
plot(inputTau1.Time, inputTau1.Data, '-k', 'LineWidth',4), hold on
plot(inputTau2.Time, inputTau2.Data, '-g', 'LineWidth',3)
legend('\theta_1 Displacement', '\theta_2 Displacement','input \tau_1', 'input \tau_2', 'location', 'bestoutside');
ylabel('Applied Torque (N/m)')

%labeling horizontal axis and title
xlabel('Time (s)')
name = sprintf('B=%.2f Ns/m, k=%.2f N/m, L_1=%.2f m, L_2=%.2f m, M_1=%.2f kg, M_2=%.2f kg', B , K1 , L1 , L2 , M1 , M2 );
title(name);
ylim([-1 36])