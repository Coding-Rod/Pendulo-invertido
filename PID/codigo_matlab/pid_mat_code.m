% Import .mat data
% Plot and results

subplot(121)
plot(PID_angle)
title('Respuesta del ángulo');
stepinfo(PID_angle.Data,PID_angle.Time)

subplot(122)
plot(PID_position)
title('Respuesta del desplazamiento');
stepinfo(PID_position.Data,PID_position.Time)