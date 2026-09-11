%
% Paprastas skriptas
%  
x = 1:32;
y = x.^2;

plot(x, y, 'o-r', x, y/3, 'xb')
title('Dvi funkcijos')
xlabel('X-ai')
ylabel('F_1 [-o-]   | F_2 [-x-]')

%%
% 8
help sin   % trumpas aprasymas komandu lenge
help plot
help title

doc sin  % Atidaro pilna dokumentacija kelp lange
doc plot
doc title

%%
% 9 
a = 1;
b = 3;
n = 10;
y = linspace(a, b)     % grazina 100 tasku tarp a ir b
y = linspace(a, b, n); %tolygiai isdesto tasku tarp a ir b, n tasku grazina n tasku

d = size(A)              % grąžina vektorių [eilutės, stulpeliai]
m = size(A, 1)            % tik eilučių skaičius
n = size(A, 2)            % tik stulpelių skaičius
[m, n] = size(A)          % abu dydžiai atskirai į dvi kintamąsias

m = max(A)                  % vektoriui — didžiausia reikšmė; matricai — kiekvieno stulpelio maksimumas
[m, idx] = max(A)           % grąžina ir reikšmę, ir jos indeksą (poziciją)
m = max(A, [], 1)           % maksimumas kiekviename stulpelyje (kaip numatytoji)
m = max(A, [], 2)           % maksimumas kiekvienoje eilutėje
m = max(A, B)               % du to paties dydžio masyvai — po elemento palyginimas
m = max(a, b)                % dviejų skaičių palyginimas — grąžina didesnįjį


% Kitos rekomenduojamos funkcijos
% lenght - grazina didziausia dimensija 
% numel - grazina bendra elelemnetu skaiciu 

%% Papildoma uzduotis

% 1. Kintamasis N - paskutinis studento ID skaitmuo
N = 9; 

% 2. Vektorius nuo N+1 iki N+4 zingsniu 0.5
v = N+1 : 0.5 : N+4

% 3. Matrica 3x3, pirmas elementas N, kiekvienas kitas vienetu didesnis
A = reshape(N:N+8, 3, 3)'

% 4. Elementu atrinkimas pagal schemas
A_a = A(3, 2)              % a) 3 eilute, 2 stulpelis
A_b = A(2:3, 1:2)          % b) 2-3 eilutes, 1-2 stulpeliai
A_c = A([1 3], [1 3])      % c) kampiniai elementai (1 ir 3 eil., 1 ir 3 stulp.)

% 5. Vektoriaus prijungimas prie matricos A
% v turi 7 elementus, o A - 3 stulpelius, todel vektorius modifikuojamas:
% imami pirmi 3 elementai ir prijungiami kaip nauja eilute
v_mod = v(1:3);
A_new = [A; v_mod]

