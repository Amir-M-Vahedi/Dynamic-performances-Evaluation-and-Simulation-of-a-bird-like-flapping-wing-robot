close all;clear;clc;
Tf=500;
%% Ideal
A=0;w=0.5;zigma=0.2;
% Periodic 
Theta0=pi/3;
Alpha0=pi/6;
Theta_dot0=0;
Alpha_dot0=0;
k=32;
a0=pi/4;
sim('Flapping_Plant.slx');
subplot(2,2,1)
plot(Theta,Theta_dot)
ylabel('$\dot{\theta}$', 'Interpreter','latex')
xlabel('${\theta}$', 'Interpreter','latex')
xlim([-2 2])
hold on;plot(0, 0,'r.','MarkerSize',20)
subplot(2,2,2)
plot(Alpha,Alpha_dot)
ylabel('$\dot{\alpha}$', 'Interpreter','latex')
xlabel('${\alpha}$', 'Interpreter','latex')
xlim([0 1.5])
hold on;plot(a0 ,0,'r.','MarkerSize',20)
% Chaotic 
Theta0=pi/2;
Alpha0=pi/4;
Theta_dot0=1.1521;
Alpha_dot0=0;
k=8;
a0=pi/4;
sim('Flapping_Plant.slx');
subplot(2,2,3)
plot(Theta,Theta_dot)
ylabel('$\dot{\theta}$', 'Interpreter','latex')
xlabel('${\theta}$', 'Interpreter','latex')
xlim([-4 4])
hold on;plot(0, 0,'r.','MarkerSize',20)
subplot(2,2,4)
plot(Alpha,Alpha_dot)
ylabel('$\dot{\alpha}$', 'Interpreter','latex')
xlabel('${\alpha}$', 'Interpreter','latex')
xlim([0.4 1.2])
ylim([-1 1])
hold on;plot(a0 ,0,'r.','MarkerSize',20)

%% Randomly uncertain disturbances
A=0.1;w=15;zigma=1.15;
% Periodic 
Theta0=pi/3;
Alpha0=pi/6;
Theta_dot0=0;
Alpha_dot0=0;
k=32;
a0=pi/4;
sim('Flapping_Plant.slx');
figure;
subplot(3,2,1)
plot(Theta,Theta_dot)
ylabel('$\dot{\theta}$', 'Interpreter','latex')
xlabel('${\theta}$', 'Interpreter','latex')
ylim([-1,1])
xlim([-1.5 1.5])
hold on;plot(0, 0,'r.','MarkerSize',20)
subplot(3,2,2)
plot(Alpha,Alpha_dot)
ylabel('$\dot{\alpha}$', 'Interpreter','latex')
xlabel('${\alpha}$', 'Interpreter','latex')
hold on;plot(a0 ,0,'r.','MarkerSize',20)
ylim([-2,2])
xlim([0.2 1.2])
% Chaotic 
Theta0=pi/2;
Alpha0=pi/4;
Theta_dot0=1.1521;
Alpha_dot0=0;
k=8;
a0=pi/4;
sim('Flapping_Plant.slx');
subplot(3,2,3)
plot(Theta,Theta_dot)
ylabel('$\dot{\theta}$', 'Interpreter','latex')
xlabel('${\theta}$', 'Interpreter','latex')
hold on;plot(0, 0,'r.','MarkerSize',20)
ylim([-2,2])
xlim([-5 5])
subplot(3,2,4)
plot(Alpha,Alpha_dot)
ylabel('$\dot{\alpha}$', 'Interpreter','latex')
xlabel('${\alpha}$', 'Interpreter','latex')
ylim([-1,1])
xlim([0.2, 1.4])
hold on;plot(a0 ,0,'r.','MarkerSize',20)
subplot(3,2,5)
plot(tout,Theta)
ylabel('${\theta}$', 'Interpreter','latex')
xlabel('$Time [s]$', 'Interpreter','latex')
ylim([-10,5])
xlim([0 500])
subplot(3,2,6)
plot(tout,Alpha)
ylabel('${\alpha}$', 'Interpreter','latex')
xlabel('$Time [s]$', 'Interpreter','latex')
ylim([0,1.5])
xlim([0 500])

%% Randomly uncertain disturbances with diffrent amplitude
Tf=45;
A=0.05;w=120;zigma=0.9;
% Periodic 
Theta0=pi/3;
Alpha0=pi/6;
Theta_dot0=0;
Alpha_dot0=0;
k=32;
a0=pi/4;
sim('Flapping_Plant.slx');
figure;
subplot(5,2,1)
plot(Theta,Theta_dot)
ylabel('$\dot{\theta}$', 'Interpreter','latex')
xlabel('${\theta}$', 'Interpreter','latex')
ylim([-1,1])
xlim([-2 2])
hold on;plot(0, 0,'r.','MarkerSize',10)
subplot(5,2,2)
plot(Alpha,Alpha_dot)
ylabel('$\dot{\alpha}$', 'Interpreter','latex')
xlabel('${\alpha}$', 'Interpreter','latex')
hold on;plot(a0 ,0,'r.','MarkerSize',10)
ylim([-2,2])
xlim([0 1.5])
%
A=0.5;
sim('Flapping_Plant.slx');
subplot(5,2,3)
plot(Theta,Theta_dot)
ylabel('$\dot{\theta}$', 'Interpreter','latex')
xlabel('${\theta}$', 'Interpreter','latex')
ylim([-1,1])
xlim([-2 2])
hold on;plot(0, 0,'r.','MarkerSize',10)
subplot(5,2,4)
plot(Alpha,Alpha_dot)
ylabel('$\dot{\alpha}$', 'Interpreter','latex')
xlabel('${\alpha}$', 'Interpreter','latex')
hold on;plot(a0 ,0,'r.','MarkerSize',10)
ylim([-2,2])
xlim([0 1.5])
%
A=5;
sim('Flapping_Plant.slx');
subplot(5,2,5)
plot(Theta,Theta_dot)
ylabel('$\dot{\theta}$', 'Interpreter','latex')
xlabel('${\theta}$', 'Interpreter','latex')
ylim([-2,2])
xlim([-2 2])
hold on;plot(0, 0,'r.','MarkerSize',10)
subplot(5,2,6)
plot(Alpha,Alpha_dot)
ylabel('$\dot{\alpha}$', 'Interpreter','latex')
xlabel('${\alpha}$', 'Interpreter','latex')
hold on;plot(a0 ,0,'r.','MarkerSize',10)
ylim([-2,2])
xlim([0 1.5])
%
A=20;
sim('Flapping_Plant.slx');
subplot(5,2,7)
plot(Theta,Theta_dot)
ylabel('$\dot{\theta}$', 'Interpreter','latex')
xlabel('${\theta}$', 'Interpreter','latex')
ylim([-2,2])
xlim([-3 3])
hold on;plot(0, 0,'r.','MarkerSize',10)
subplot(5,2,8)
plot(Alpha,Alpha_dot)
ylabel('$\dot{\alpha}$', 'Interpreter','latex')
xlabel('${\alpha}$', 'Interpreter','latex')
hold on;plot(a0 ,0,'r.','MarkerSize',10)
ylim([-2,2])
xlim([0 1.5])
subplot(5,2,9)
plot(tout,Theta)
ylabel('${\theta}$', 'Interpreter','latex')
xlabel('$Time [s]$', 'Interpreter','latex')
subplot(5,2,10)
plot(tout,Alpha)
ylabel('${\alpha}$', 'Interpreter','latex')
xlabel('$Time [s]$', 'Interpreter','latex')



