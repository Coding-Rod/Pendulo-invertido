clear
clc

M = .286;
m = .076;
g = 9.81;
l = 0.5;

A = [0 1 0 0;0 0 (g*m)/M 0;0 0 0 1;0 0 -(g*(m+M))/(l*M) 0];
B = [0;1/M;0;-1/(M*l)];
C = [0 0 1 0];
D = 0;

[num,den] = ss2tf(A,B,C,D);
tran = tf(num,den) %función de transferencia

kp = -46.1621;
ki= -200.233;
kd= -4.03087;

set_point = pi;
iptf = series(set_point,feedback(pid(kp,ki,kp)*tran,1));

step(iptf)