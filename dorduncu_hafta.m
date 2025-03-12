% 4.Hafta - 1.Ders

% PERIYODIK FONKSIYONLAR


% x(t) =x(t+nT), n=1,2,3,4...  % burada T periyot olarak adlandırılan ve sabit pozitif bir değerdir

% Eğer periyodik olan fonksiyon (yani T) sinüzoidal ise;

% x(t) Acos(wt+θ) şeklinde yazılır

% A: Değişkenin genliğidir. Eğer mesela x gerilimi gösteriyor ise A nın birimi volt olur
% t: Bağımsız zaman değişkenidir birimi saniyedir
% w: Açısal frekanstır. T= 2π/w ilişkisi vardır
% θ: x(t) eğrisinin coswt eğrisine göre faz farkıdır. 0 dan büyük ise 


% Matlab ortamında polinom gösterimi
% standart polinom gösterimi an*x^n+a(n-1)*x^(n-1)+...+a1*x+a0

% Eğer "x" daha önce tanımlanmmış bir sayı ise B(x) eşitliği alttaki şekilde yazılır
% B(x)=3*x^4-7*x^2+2*x-1

% Ancak eğer "x" tanımlanmış bir vektör ise alttaki gibi yazılır !!! Önemli fark !!!

% B(x)= 3*x.^4-7*x.^2+2*x-1  % bunun sonunda B ifadesi x vektörü ile aynı boyutta olacaktır

% y(x)=4x^3+2x^2-7x+1

x = linspace (-2,2,50); % -2 den 2 ye 50 tane eleman olacak şekilde yatay eksen
a=[4 2 -7 1];  % buradaki sayıları sırası ile x yerine koyuyor
y = polyval (a,x)
plot(x,y,"k-");
title("y=4x^3+2x^2-7x+1"),
xlabel("x")
ylabel("y(x)")
grid

% IKI POLINOMUN TOPLAMI VEYA FARKI

% İki polinom toplanır veya çıkarılırken katsayıları içeren vektörlerin boyutları aynı olmalıdır.
% İşlem yapılırken aynı üslü olanların katsayıları ile işlem yapılır
% Eğer polinomlardan birinde olan üs diğerinde yoksa katsayısı 0 kabul edilerek matrise işlenir

% Polinom bir tam sayı ile çarpılırken tüm ifadelerin katsayısını çarpar yerine yazarsın


% K(x) = 4*x^4-8*x^3+7*x+1
% M(x) = 2*x^5+7*x^3-2*x+6

% T(x)=K(x)*M(x)

k=[4 -8 0 7 1]
m=[2 0 7 0 -2 6]
t=conv(k,m)  % k ve m bir satır vektör olmak zorunda. 
% bu komutu kullanmak için iki polinomun da (bulunmayıp katsayısı 0 olanlar bile dahil) katsayılırını birer matrise atamalısın
% bu komut senin için çarpmayı yapıp istenen matrise atar (x^3 ve x^4 çarpımı katsayısı ile x^2 ve x^5 çarpımı katsayısı toplar)
