clear all
clc
% Clase 27 de agosto de 2018
% Solución de la prueba de entrada
%______________________________________________________________________________
%-------------------------------------------------------------------------------
% Pregunta 1
n = 0:4; % La muestra es de 5 comenzando desde 0 al 4
x1 =3*[ 0 ones(1,4) ]; % Escalón multiplicado por 3 desfazado en 1 
x2 =-5*[0 0 1 0 0];% Impulso multiplicado por -5 y desfazado en 2
x3 = 8*[0 0 0 1 1];% Escalon desfazado en 3 con amplitud 8
x4 = -[0 0 0 0 1];% Escalon desfazado en 3 con amplitud 8
% x5 no se tomará en cuenta porque esta desfazado fuera del rango de
% muestreo
x= x1+x2+x3+x4;
stem(n,x),axis([2 4 -4 12])
%-------------------------------------------------------------------------------
% Pregunta 2
t = 0: 0.01: 2.5; % desde 0 a 2.5 segundos con incremento de 0.01
x = 7*cos(450*pi*t);
plot(t,x)
%-------------------------------------------------------------------------------
% Pregunta 3
% Fs > 2*Fmáx si Fmáx es 800 Fs>1600 ejemplo Fs = 4000
Fs = 4000
t = linspace(0,1,Fs); % tiempo equivalente a 1 segundo
x = 8*sin(2*pi*250*t)+10*sin(2*pi*800*t);
plot(t,x)
%-------------------------------------------------------------------------------
% Pregunta 4
% usando la transformada de fourirer rapida
N=1024; % mejora el muestreo usando una potencia de 2 a la 10
Fs = 4000
t = linspace(0,1,Fs); % tiempo equivalente a 1 segundo
x = 8*sin(2*pi*250*t)+10*sin(2*pi*800*t);
tx = fft(x,N)/N; % se obtiene la TDF(tranformada discreta de fourier) dividimos entre N para normalizar y achicar el valor de y
mtx=abs(tx); % se obtiene el modulo de la TDF de tamaño igual a N
F = linspace(0,Fs,N);% creamos un vector de frecuencia de tamaño igual a N
%plot(F,mtx)
plot(F,mtx),axis([0 Fs/2 0 5 ]) % damos valor al eje x de 0 a Fs/2 y Y de 0 a 5
%plot(F(1:512),mtx(1:512)) % ploteamos solo hasta el valor de 512
%-------------------------------------------------------------------------------
% Desplazanado la TDF
N=1024; % mejora el muestreo usando una potencia de 2 a la 10
Fs = 4000
t = linspace(0,1,Fs); % tiempo equivalente a 1 segundo
x = 8*sin(2*pi*250*t)+10*sin(2*pi*800*t);
tx = fft(x,N)/N; % se obtiene la TDF(tranformada discreta de fourier) dividimos entre N para normalizar y achicar el valor de y
mtx=abs(tx); % se obtiene el modulo de la TDF de tamaño igual a N
dmtx=fftshift(mtx); % desplazando el módulo de la TDF
F = linspace(-Fs/2,Fs/2,N);% creamos un vector de frecuencia de tamaño igual a N
plot(F,mtx)