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

% 3. Matrica 3x3, kiekvienas elementas vienetu didesnis uz praeita
A = [N,   N+1, N+2;
     N+3, N+4, N+5;
     N+6, N+7, N+8]

% 4. Elementu atrinkimas pagal schemas
A_a = A(3,2)                  % a) viena langele - 3 eilute, 2 stulpelis
A_b = A(2:3, 1:2)             % b) 2-3 eilutes, 1-2 stulpeliai
A_c = [A(1,1), A(1,3);        % c) keturi kampai
       A(3,1), A(3,3)]

% 5. Vektoriaus prijungimas prie matricos A (kaip papildoma eilute)
v_mod = v(1:3);       % paliekam tik pirmus 3 elementus (kad tiktu prie 3 stulpeliu)
A_new = [A; v_mod]

