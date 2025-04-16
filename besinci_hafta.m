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
% find(vektör): vektörün içinde 0 olmayan elemanları sırası ile bulur

b=[1 1 2; 2 0 7; 0 -2 -2; 0 5 0]
[satir,sutun]=find(b==2)  % b nin elemanlarında 2 ye denk olanların lokasyonları. == yerine < <= > >= 


b(find(b>2))=6  % b nin elemanlarından 2 den büyük olanları 6 yap

b(find(b>1& b<3))=8  % b nin elemanlarından 1 den büyük ve 3 den küçük olanlanları 8 yap

a=input('[...;...;...]şeklinde bir matris giriniz=')
disp("şimdi ekranda a nın negatifleri gözüksün")
a1=(a<0).*a

% if else kodları anlatıldı


% 5. Hafta - 2. Ders

% for döngüsü

for i = 5:-1:1
    disp(i)
end

dizi = [3 6 9 12];
for eleman = dizi
    disp(eleman)
end

isim = 'Ahmet';
yas = 20;
fprintf('%s %d yaşındadır.\n', isim, yas);  
%fprintf de önce %s %d benzeri komutla veri türünü yazılma sırası ile belirtmen lazım  

% mean komutu ile içinde negatif sayılar da olan bir vektörün ortalaması bulunabilir

x=0:1:3;
y=eval("2*x.^2+sin(2*x)") % x vektöründeki her elemanı sıra ile evaldaki denkleme koyup cevapları bulur

y=eval("2*x.^2+sin(2*x)",0:1:3)  % bu da diğer kullanış şekli

for n=1:3
    eval(["A" + num2str(2*n) + "=[n;n-1;n-2]"])
end

% bu da farklı bir kullanım
% a nın yanindaki num2str nin amacı a nın hangi değer için hesaplandığını a nın yanına yazmak a1=... a2=... gibi

f = 'plus';            % MATLAB'da plus(a,b) → a + b
sonuc = feval(f, 4, 5)

secim = "sin";         % kullanıcı "sin" yazdı diyelim
x = pi/2;
y = feval(secim, x);
disp(y)

f = @sin;
y = feval(f, pi/2)  % en önemlisi bu

% tic
% .
% .
% .
% toc  = programın ne kadar sürede çalıştığı


% 5. Hafta - 3.Ders



