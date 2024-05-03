clear all;
clc;
% Construire le vecteur des 20 premiers nombres impaires
Ni = 1;
Nf= 39;
Ni:2:Nf;


% Construire un vecteur par itération, commençant à 0 et finissant à l00 
% avec 50 valeurs.

ab=0:100/49:100;


% Ecrire un script dans lequel on puisse entrer en paramètre les valeurs 
% Nf, Ni et N. Ce scripte retournera un vecteur de N valeur allant de Ni jusqu'à Nf.

%Nf = input("Entrez les valeurs de Nf : ");
%Ni = input("Entrez les valeurs de Ni : ");
%N = input("Entrez les valeurs de N : ");
%m = Ni:N:Nf;

% Ecrire un scripte pour tracer 3 périodes d'une sinusoïde, de période 4ms et d'amplitude 2V
%a = 2;
%f = 1/4e-3;
%t=0:1/10000:12e-3;
%y=a*sin(2*pi*f*t);
%plot(t,y);
%xlabel('Temps (s)');
%ylabel('Amplitude (V)');
%title('Trois périodes d une sinusoide');

% Exercice 5 


%t=0:1/10000:12e-3;
%x1= 4*sin(2000*pi*t);
%x2=2*sin(4000*pi*t) ;
%x3=sin(6000*pi*t+pi/3);
%x= x1+x2+x3;
%plot(t,x1,t,x2,t,x3,t,x);

% Exercice 6

% Durée de l'appui sur le chiffre 3 en secondes
duree = 0.1;

% Fréquence d'échantillonnage (en Hz)
fe = 44100; % Par exemple, 44100 Hz est couramment utilisé pour l'audio

% Temps associé à chaque échantillon
t = 0:1/fe:duree;

% Génération des signaux sinusoïdaux pour les deux fréquences
signal1 = sin(2 * pi * 697 * t);
signal2 = sin(2 * pi * 1477 * t);
signal3 = sin(2 * pi * 1335 * t);
signal4 = sin(2 * pi * 941 * t);
signal5 = sin(2 * pi * 852 * t);
signal6 = sin(2 * pi * 770 * t);
signal7 = sin(2 * pi * 1209 * t);

% Somme des signaux pour obtenir le signal DTMF
zero = signal3 + signal4;
trois = signal1 + signal2;
huit = signal3 + signal5;
neuf = signal5 + signal2;
deux = signal3 + signal1;
quatre = signal6 + signal7;
cinq = signal3 + signal6;
sept = signal5 + signal7;

% Lecture du signal
sound(trois, fe);
pause(0.25);
sound(zero, fe);
pause(0.25);
sound(huit, fe);
pause(0.25);
sound(neuf, fe);
pause(0.25);
sound(deux, fe);
pause(0.25);
sound(quatre, fe);
pause(0.25);
sound(quatre, fe);
pause(0.25);
sound(cinq, fe);
pause(0.25);
sound(sept, fe);
% Affichage du signal
plot(t, trois)
xlabel('Temps (s)');
ylabel('Amplitude');
title('Signal DTMF pour le chiffre 3');
grid on
