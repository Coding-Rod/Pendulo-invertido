clear
clc

M = .286;
m = .076;
g = 9.81;
l = 0.5;

A = [0 1 0 0;0 0 (g*m)/M 0;0 0 0 1;0 0 -(g*(m+M))/(l*M) 0];
B = [0;1/M;0;-1/(M*l)];
C = [0 0 1 0;1 0 0 0];
D = [0;0];

[num,den] = ss2tf(A,B,C,D);
tran = tf(num(1,:),den); %función de transferencia

kp = -46.1621;
ki = -200.233;
kd = -4.03087;

set_point = pi;
iptf = series(set_point,feedback((pid(kp,ki,kp))*tran,1));

subplot(121)
step(iptf)
stepinfo(iptf)
title('Respuesta del �ngulo');

tran = tf(num(2,:),den); %función de transferencia

kp = 1.13206;
ki = 0.542008;
kd = 1.05359;

set_point = 1;
iptf = series(set_point,feedback(pid(kp,ki,kp)*tran,1));
stepinfo(iptf)

subplot(122)
step(iptf)
title('Respuesta del desplazamiento');