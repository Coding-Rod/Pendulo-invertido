% Import .mat data
% Plot and results

subplot(121)
plot(LQR_angle)
title('Respuesta del ángulo');
stepinfo(LQR_angle.Data,LQR_angle.Time)

subplot(122)
plot(LQR_position)
title('Respuesta del desplazamiento');
stepinfo(LQR_position.Data,LQR_position.Time)