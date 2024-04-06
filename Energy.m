close all;clear;clc;
Tf=6000;Ts=0.1;TEN=1;
%% Energy
%K=1
Tf=6000;Ts=0.1;TEN=1;
A=0.1;w=4.6;zigma=3.5;
% Periodic 
Theta0=0;
Alpha0=pi/6;
Theta_dot0=0;
Alpha_dot0=0;
k=1;
a0=pi/4;
sim('Energy_Flapping_Plant.slx');
figure
subplot(3,2,2)
plot(Alpha_dot,Alpha,'k.','MarkerSize',0.1)
xlabel('$\dot{\alpha}$', 'Interpreter','latex')
ylabel('{\alpha}')
subplot(3,2,1)
plot3(Theta_dot,Alpha_dot,Alpha,'k.','MarkerSize',0.5)
xlabel('$\dot{\theta}$', 'Interpreter','latex')
ylabel('$\dot{\alpha}$', 'Interpreter','latex')
zlabel('{\alpha}')
hold on
[X,Y,Z]=sphere;
axis equal
r=3;
X=X*r;Y=Y*r;Z=Z*r+a0;
surf(X,Y,Z)
colorbar
XX=-3:0.1:3;
YY=-3:0.1:3;
[XX,YY]=meshgrid(XX,YY);
ZZ=XX.^2+YY.^2;
ZZ=ZZ-3;
[~,h]=contourf(X,Y,Z);
h.ContourZLevel = -3;

%k=10
Tf=6000;Ts=0.1;TEN=0;
A=0.1;w=2.5;zigma=0.8;
% Periodic 
Theta0=0;
Alpha0=pi/6;
Theta_dot0=0;
Alpha_dot0=0;
k=10;
a0=pi/4;
sim('Energy_Flapping_Plant.slx');
subplot(3,2,4)
plot(Alpha_dot,Alpha,'k.','MarkerSize',0.1)
xlabel('$\dot{\alpha}$', 'Interpreter','latex')
ylabel('{\alpha}')
subplot(3,2,3)
plot3(Theta_dot,Alpha_dot,Alpha,'k.','MarkerSize',0.5)
xlabel('$\dot{\theta}$', 'Interpreter','latex')
ylabel('$\dot{\alpha}$', 'Interpreter','latex')
zlabel('{\alpha}')
hold on
[X,Y,Z]=sphere;
axis equal
r=3;
X=X*r;Y=Y*r;Z=Z*r+a0;
surf(X,Y,Z)
colorbar
XX=-3:0.1:3;
YY=-3:0.1:3;
[XX,YY]=meshgrid(XX,YY);
ZZ=XX.^2+YY.^2;
ZZ=ZZ-3;
[~,h]=contourf(X,Y,Z);
h.ContourZLevel = -3;

% k=20
Tf=6000;Ts=0.1;TEN=1;
A=0.1;w=4;zigma=10;
% Periodic 
Theta0=0;
Alpha0=pi/6;
Theta_dot0=0;
Alpha_dot0=0;
k=20;
a0=pi/4;
sim('Energy_Flapping_Plant.slx');
subplot(3,2,6)
plot(Alpha_dot,Alpha,'k.','MarkerSize',0.1)
xlabel('$\dot{\alpha}$', 'Interpreter','latex')
ylabel('{\alpha}')
subplot(3,2,5)
plot3(Theta_dot,Alpha_dot,Alpha,'k.','MarkerSize',0.5)
xlabel('$\dot{\theta}$', 'Interpreter','latex')
ylabel('$\dot{\alpha}$', 'Interpreter','latex')
zlabel('{\alpha}')
hold on
[X,Y,Z]=sphere;
axis equal
r=3;
X=X*r;Y=Y*r;Z=Z*r+a0;
surf(X,Y,Z)
colorbar
XX=-3:0.1:3;
YY=-3:0.1:3;
[XX,YY]=meshgrid(XX,YY);
ZZ=XX.^2+YY.^2;
ZZ=ZZ-3;
[~,h]=contourf(X,Y,Z);
h.ContourZLevel = -3;