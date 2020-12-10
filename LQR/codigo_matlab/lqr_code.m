%% Reset
clear
clc

%% Variables
g = 9.80556;
m = 0.076;
M = 0.286;
l = 0.5;

%% Espacio de estados
A = [0 1 0 0;
     0 0 (g*m)/M 0;
     0 0 0 1;
     0 0 -(g*(m+M))/(l*M) 0];
B = [0;
     1/M;
     0;
     -1/(l*M)];
C = [1 0 0 0;
     0 0 1 0];
D = [0;0];

% Ganacias
Q = [5 0 0 0;
     0 1 0 0;
     0 0 10 0;
     0 0 0 1];
R = 1;

%% Implementación
[K,S,e] = lqr(A,B,Q,R);

sys = ss((A - B*K), B, C, D);

step(sys)
title('Sistema seleccionado')
stepinfo(sys)
