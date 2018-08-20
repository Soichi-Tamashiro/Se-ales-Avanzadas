% Fs=#impulsos/seg(frecuencia de muestreo)
% Fs > 2*Fmax
Fs = 40000;
t = linspace(0,1.5,1.5*Fs);
x = 5*cos(2*pi*4000*t)+5*cos(2*pi*2000*t);
%plot(t,x)
%stem(t,x)
% sound(x,Fs)
% Generacion de Ruido
x = rand(1,1.5*Fs);
% Graficando onda Cuadrada
% square genera entre -1 y 1
% = 0:.00001:.0625;
y = 2.5*square(2*pi*30*t)+2.5;
%plot(t,y)
% Graficando Transformada de Discreta de Fourirer
% fft
% Fs = 40000;
% t = linspace(0,1.5,1.5*Fs);
% x = 5*cos(2*pi*4000*t)+5*cos(2*pi*2000*t)+1;
% subplot(2,1,1),plot(t,x)
% N=4096;
% tx = fft(x,N); % se obtiene la tranformada
% mtx=abs(tx); % se obtiene el modulo
% F = linspace(0,Fs,N);% vector de frecuencia
% subplot(2,1,2),plot(F,mtx)
% insertando onda cuadrada
Fs = 40000;
t = linspace(0,1.5,1.5*Fs);
x =square(2*pi*30*t);
subplot(2,1,1),plot(t,x)
N=4096;
tx = fft(x,N); % se obtiene la tranformada
mtx=abs(tx); % se obtiene el modulo
F = linspace(0,Fs,N);% vector de frecuencia
subplot(2,1,2),plot(F,mtx)