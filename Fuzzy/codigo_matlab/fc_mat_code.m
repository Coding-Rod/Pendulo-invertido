% Import .mat data
% Plot and results

subplot(121)
plot(FC_angle)
title('Respuesta del ángulo');
stepinfo(FC_angle.Data,FC_angle.Time)

subplot(122)
plot(FC_position)
title('Respuesta del desplazamiento');
stepinfo(FC_position.Data,FC_position.Time)