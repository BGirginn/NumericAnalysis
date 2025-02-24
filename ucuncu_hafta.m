% 3.Hafta - 1.Ders

% Matematiksel vektör oluşturmak için;
x=[0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9]

y=x*10+1  % vektörler ile bu şekilde işlem yapabilirsin

% x(6) yazarsan cevap 7. eleman olur ilk eleman indexi 0 dır
x (6), y(4)

% Operatör ile vektör üretmek

A=2:0.5:6      % 2den 6ya kadar 0.5 artışla vektör
B=1:-0.3:-0.5  % 1 den -0.5 e kadar 0.3 azalış ile vektör

Q=[2:0.3:8]' % bu da bir operatördür ve üs koyarsan satır değil sütun olur


% bir vektör elemanları ile yeni vektör üretmek

A=[2.0 2.3 2.6 2.9 3.2 3.5 3.8]

K=A(2:2:6)  % A'nın 2. ELEMANINDAN 6.'ya 2şer elemanlarla yeni vektör
L=A(5:-1:2) % A'nın 5. ELEMANINDAN 2.ye kadar bir eksilen indexle vektör

A(1:6)  % A vekötürünün 1. elemanından 6. elemanına yazdırır (6 dahil)

A=[1 3 5 7 9 11 13 15 17 19 21]
Z=A([3 8 1 9])  % A nın 3 8 1 ve 9. elemanı ile yeni vektör oluştur
Z'  % Z vektörü satır ise sütun, sütun ise satır haline getir

F= [11 Z]  % Z vektörünün soluna 11 yazıp bunu F vektörü olarak tanımla

F(2)= -1.4  % F'in ilk elemanını -1.4 olarak değiştir


M=linspace(0,11,9)  % (ilk değer,Son değer,Eleman sayısı)

N=logspace(1,2,6)  
% logspace de tüm sayılar 10 üssü cinsindendir. (ilk üs,son üs,eleman sayısı)

J=[1;2;3;4;5;6]  % bu sütun vektördür

T=[1+5j, 4j, -8-2j, 7]

T' % hem satırı sütun yapıyor hem eşlenik

T.'  % bu sadece satırı sütun yapmayı sağlar eğer vektör kompleks değilse anlamsız

S=zeros(2,1)  % 2 satır 1 sütun tüm elemanlar 0

H=ones(1,2)


% iki vektör ile toplama ve çıkarma yapmak için;
  % birinci satır ikinci satır, birinci sütun ikinci sütun eşit olmalı

% çarpma bölme için;
  % birinci satır ikinci sütun, birinci sütun ikinci satır eşit olmalı  


% İç (nokta) Çarpım (Skaler Çarpım)
% A=[x;y;z]   B=[q;w;r]
% (A,B) = A.B = (x*q)+(y*w)+(z*r)
