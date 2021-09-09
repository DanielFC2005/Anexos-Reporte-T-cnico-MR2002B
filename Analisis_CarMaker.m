%%Programa para exportar y gráficar los datos de CarMaker

clear
figure
V = 7; %Número de variaciones por pruebas.


%Gráficas de las pruebas de línea
for i = 0:V
    
    CM = cmread ([pwd,'\', 'line' , '\','Variation ', int2str(i) ,'.erg']);
    Time_s = CM.Time.data';
    TrailerAngle_deg = CM.Tr_Hitch_dr_0_z.data';
    hold on
    plot (Time_s, TrailerAngle_deg)
    legend('Variation 0','Variation 1','Variation 2','Variation 3','Variation 4','Variation 5','Variation 6','Variation 7')
    title('Line')
    xlabel('Time[s]')
    ylabel('Trailer Angle [rad] ')
end
%Gráficas de las pruebas de círculo
figure
for i = 0:V
    
    CM = cmread ([pwd,'\', 'circle' , '\','Variation ', int2str(i) ,'.erg']);
    Time_s = CM.Time.data';
    TrailerAngle_deg = CM.Tr_Hitch_dr_0_z.data';
    hold on
    plot (Time_s, TrailerAngle_deg)
    legend('Variation 0','Variation 1','Variation 2','Variation 3','Variation 4','Variation 5','Variation 6','Variation 7')
    title('Circle')
    xlabel('Time[s]')
    ylabel('Trailer Angle [rad] ')
end
%Gráficas de las pruebas de regreso a la línea
figure
for i = 0:V
    
    CM = cmread ([pwd,'\', 'returnLine' , '\','Variation ', int2str(i) ,'.erg']);
    Time_s = CM.Time.data';
    TrailerAngle_deg = CM.Tr_Hitch_dr_0_z.data';
    hold on
    plot (Time_s, TrailerAngle_deg)
    legend('Variation 0','Variation 1','Variation 2','Variation 3','Variation 4','Variation 5','Variation 6','Variation 7')
    title('Return Line')
    xlabel('Time[s]')
    ylabel('Trailer Angle [rad] ')
end