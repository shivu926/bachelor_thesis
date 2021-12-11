
clc;    
close all;  
clear;  
workspace;  % Make sure the workspace panel is showing.
format long g;
format compact;
fontSize = 13;
l = [0 20 20 0 0];
b=[0 0 20 20 0];
plot(l,b);
fill(l,b,'b');

EA= 47000000000;
EM= 24000000000;
S=100e6;
H = 0.032 + (0.06 - 0.032)*(1- exp(-235*S/EA));
Ms=3;
Mf=-29;
As=12;
Af=26;
alp= 11e-6;
T =13;
A=0;
eM = S/EM +H;
eA = S/EA + alp*(T);

if(T>Mf && T<Ms)
    A=eM;
end
if(T>As && T<Af)
    A=eA;
end
if(T>Ms && T<As)
    A=eM+eA;
end   
A=A*1000;
% Define oscillation parameters.
period = 10;
t = linspace(0, 2 * pi, 100);
if(T>12)
    x = A * sin(2 * pi * t / period);
end
if(T<12)
    x=A*(t/period);
end
% Define graphics parameters:
rectangleHeight = 20;
rectangleWidth = 20;
rectangleY1 = 0;
lineX = 15;
%axes.
grid on;
ylim([-50, 50]);
xlim([0, 30]);
xlabel('X', 'FontSize', 15);
ylabel('Y', 'FontSize', 15);
%Start the movement:
for k = 1 : length(x)
	
	r = rectangle('Position', [x(k), rectangleY1, rectangleWidth, rectangleHeight], 'FaceColor', 'b');
	
	drawnow;
	%Wait long enough to see it at this location.
	pause(0.1)
	%Delete the rectangle to prepare for the next one.
	if k < length(x) % Don't delete the very last one.
		delete(r);
	%	delete(hLine);
	end
end