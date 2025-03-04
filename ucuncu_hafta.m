% 3.Hafta - 1.Ders
% MATLAB'da Vektör İşlemleri ve Temel Operasyonlar
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

H=ones(1,2)   % 1 satır 2 sütun tüm elemanlar 1


% iki vektör ile toplama ve çıkarma yapmak için;
  % birinci satır ikinci satır, birinci sütun ikinci sütun eşit olmalı

% çarpma bölme için;
  % birinci satır ikinci sütun, birinci sütun ikinci satır eşit olmalı  


% İç (nokta) Çarpım (Skaler Çarpım)
% A=[x;y;z]   B=[q;w;r]
% (A,B) = A.B = (x*q)+(y*w)+(z*r)


% 3. Hafta - 2.Ders

% bir matrisin elemanları ile yeni matris oluşturma


P = [1 2 3 4 
     5 6 7 8
     9 10 11 12
     13 14 15 16]

U = P(:,3)  % P matrisinin tüm satırları ve 3. sütünunun kesişimi

E = P(1,:)  % P matrisinin tüm sütunları ve 1. satırının kesişimi

% bir matrisin satır sütununu alırken virgülden öncesi satır sonrası sütundur ve herhangi birinin yerine noktalı virgül gelirse tüm da sütunu al anlamına gelir

W = P(:,2:4)  % tüm satırlar ile 2,3,4. sütunların kesişimi

F = P([1:3],[2:2:4])  % P sütununun 1,2,3. satırları ile 2 den 4. sütuna kadar 2 şerli sütunlarının kesişimi


K = P([2 1;4 2],[2 1;3 1])

% bu işlemde ilk olarak satırlar değişir
% K 1. satıra, P 2. satır
% K 2. satıra, P 1. satır
% K 3. satıra, P 4. satır
% K 4. satıra, P 2. satır

% ardından yeni halin üstüne yeni sütunlar gelir

% K 1. sütuna, P 2. sütun
% K 2. sütuna, P 1. sütun
% K 3. sütuna, P 3. sütun
% K 4. sütuna, P 1. sütun

% Yazım anındaki noktalı virgülün işlevi nedir?

% Burada [2 1; 4 2] ve [2 1; 3 1] diye iki matris var. 
% Bu iki matris de 2x2 olduğu için MATLAB çapraz seçim yapıyor ve sonuç 4x4 matris çıkıyor.


S = P (:,[3 1 2])

% S 1. sütuna P 3. sütun
% S 2. sütuna P 1. sütun
% S 3. sütuna P 2. sütun

I = [1.0000 4.0000 0 0
    0.1000 0.7000 8.0000 8.0000
    0.8000 0.8200 0.9000 0.9000
    1.0000 4.0000 0 0]

T = I([1 5 6 8 3 12]);

% K =(1 0.1 0.8 1 4 0.7 0.82 4 0 8 0.9 0 0 8 0.9 0) şeklinde saklanır
% sol üstten başlar sütunlar şeklinde saklanır matrisler

I([1 5 6 8 3 12])=99

% I matrisinin seçilen elemanlarını 99 olarak değiştirir

I([1 3],[2 4])=[1 -1;2 -2]

% 1. satır 2. sütunu 1 yap
% 1. satır 4. sütunu -1 yap
% 3. satır 2. sütunu 2 yap
% 3. satır 4. sütunu -2 yap

% 2 satır 2 sütun belirttiğin için 4 kesişim var 4 tane new replace değeri verdin

