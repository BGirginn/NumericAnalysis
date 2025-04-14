% 5. Hafta - 1. Ders

% Mantık fonksiyonları

y=[0 4 3 8 10 12 14 16 18];
x=[2:2:18];

mantik1=y>=8  % her elemanı y vektöründeki elemanlar ile kıyaslar ardından 0 veya 1 çıktısı verir
mantik2=x>y
mantik3=(x==y)

z=y>10   % burada z ye atanan değerler 0 ve 1 olarak atanıyor
% z = y(y > 10) yaparsan z nin içine y nin 10 dan büyük elemanlarını atamış olursun

w=z.*y  % y nin içinde 10 dan büyük olmayanlar için 0 büyükler için y deki değerini koruyup bunu w vektörüne atıyor


% Mantıksal işlemler  

% &: ve, |:veya, ~:değil anlamına gelen operatörlerdir
% xor(x,y): x ve y aynı ise 1 farklı ise 0

% && ve, || veya komutudur. bu komutlar sadece 1*1 vekötürlerde kullanılabilir
% any(vektör adı): vektörün içinde 0 dan farklı bir değer varsa 1 değerini alır
% all(vektör adi): vekötrün tüm elemanları 0 dan farklı ise 1 değerini alır
% find(vektör)


