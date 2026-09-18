%% 1 užduotis
%% a)

a = 10:1:15;
%% b)

b = log2(a);
%% c)

c = a ./ b;
%% d)

disp(c.' );
%% 2 Uzduotis

C_m1 = [pi/2 : pi/2 : (3*pi)/2];
C_m2 = [-1:1];
C_m3 = [-3:-1:-5];
  
%% a)

C = [C_m1; C_m2; C_m3];

%% b)


 suma = sum(C, 2);
 
%% 3 Uzudotis

A = 6;
f = 4;
sigma = 1.3;
U1 = 3.5;
U2 = 2.5;

s = A*sin(2*pi*f*t) + 0.5*A*cos(4*pi*f*t);
t = 0:0.001:1.5;
n = sigma * randn(size(t));
sn = s + n; %signalas su triuksmu
 
%% a)

virsijancios = sn(sn > U1);

%% b)

filtruotas = sn;
filtruotas(abs(filtruotas) < U2) = 0;

%% c)

dydis = length(filtruotas);

%% d)

Dydisatrinktu = length(virsijancios);
%% e)

didziausia = max(filtruotas);
maziausias = min(filtruotas);


%% 2 Klausimas
A = 1:4;
k = 4;
B = repelem(A, 4)
disp('vektorius B yra:');
disp(B);
