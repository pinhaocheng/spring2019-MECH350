clc, clear all, close all

%init vars
M1 = 10; %kg
M2 = 10; %kg
K1 = 20; %N/m
B = 0; %Ns/m (ideal pivot)
L1 = 0.25; %m
L2 = 0.25; %m
L = L1 + L2; %m
g = 9.8; 
theta1_init = 45 * pi / 180; %radians
theta2_init = 30 * pi / 180; %radians
tau1_init = 35; %N/m
tau2_init = 25; %N/m
tau1_final = 0; %N/m
tau2_final = 0; %N/m
stepInputTime = 3; % sec
stopTime = 60; %sec

% run model
sim('hw4_sim');

X1 = linspace(0,60);
Y1 = 0.09;
% plot(X1,Y1,'-r', 'LineWidth', 3)
hold on;

% plot data
yyaxis left
% plot(X1,Y1,'g--', 'LineWidth', 3), hold on;
plot(theta1.Time, theta1.Data, '-r', 'LineWidth', 3)
plot(theta2.Time, theta2.Data, '-b', 'LineWidth', 3),hold off
ylabel('Angle (rad)')

yyaxis right
plot(inputTau1.Time, inputTau1.Data, '-k', 'LineWidth',3), hold on
plot(inputTau2.Time, inputTau2.Data, '-g', 'LineWidth',3)
legend('\theta_1 Displacement', '\theta_2 Displacement','input \tau_1', 'input \tau_2', 'location', 'bestoutside');
ylabel('Applied Torque (N/m)')
ylim([-1 36])
