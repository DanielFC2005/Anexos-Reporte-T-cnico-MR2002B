clear
clc

soluciones = 0;

l1 = 2.537;
l2 = 0.963;
l12 = 3.5;
v = 2;

for ts = 0.1:0.01:8
    for mp = 0.01:0.01:0.15
        chu = sqrt(((log(mp))^2)/((pi)^2+(log(mp))^2));

        wn = 4/(ts*chu);

        ki = ((wn^2)/(1.005));

        kp = ((2*chu*wn-(v/3.5))/(1.005));
        
        if kp > 0 && ki > 0
            ts
            mp
            kp
            ki
        end
    end
end

jk = asin(l2*(tan(pi/6))/sqrt(l1^2+l12^2*(tan(pi/6))^2))+ atan(l12*(tan(pi/6))/l1)


