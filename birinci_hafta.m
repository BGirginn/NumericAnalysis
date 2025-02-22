% 1. Hafta - 2. Ders

% Matrislerde toplama ve çıkarma yapmak için iki matrisin satır ve sütün sayıları eşit olmalı

x = [1,2,3,4,7];
y = [1,4,3,5,3];

x+y

% çarpma bölme için birincinin satırı ikincinin sütunu ve birin sütünu ikinci satırı eşit olmalı

a=[1,2,3,4,5,6;1,2,3,4,5,6];
b=[1,1;2,2;3,3;4,4;5,5;6,6];

a*b

% sonuc matrisinin boyutu a nın satır sayısı x b nin sütun sayısı
% ilk satır ilk sütun => 1-1 (ilk satırın ilki ile ilk sütunun ilki çarpılır hepsine yapıp topla)
% ilk satır ikinci sütun => 1-2 ...


% önemli uyarı eğer çalıştırınca çıktı almak ve disp kullanmamak için işlemin sonuna noktalı virgül koyma


a='bora';   % string ifade için tek tırnak çift değil
size(a)


% değer bilinmeyen değişken tanımlamak için syms <değişken adı> kullanılır

syms a b c d
A=[a,b;c,d]

det(A)  % determinant bulma yöntemi

inv(A)  % matrisin tersini al


% 10/3=3.33    10\3=0.33  




% 1.Hafta - 3. Ders

% isvarname <mat işlem ismi sqrt gibi>sonucu 1 ise o işlemi değişken olarak tanımlayabilirsin ama yapma
% iskeyword <function> buna 1 gelirse onu değişken adı yapamazsın demek

syms s;
C=(s^3-2*s^2+1)/(s^2+s-5);

% ans = sonucu verir
% pi = pi
% eps = iki sayı arasındaki farkın en küçük değeri
% Nan = not a number yani 0/0 gibi belirsizlikler demek 0 a eşit değil
% who = ana kadar kullanılan değişkenleri listeler
% whos = o ana kadarki deişkenlerin detayları
% abs() = mutlak değer
% sing(x) = x 1 den büyükse 1 küçükse -1 o ise sign(x) 0 olur.
% exp(x) = e^x olarak yazar
% log(x) = x sayısının e = 2.71818 tabanına göre logaritması (10 tabanında değilse ln olarak ifade edilir yani log e tabanında x = ln x
% log10(x) = x sayısının 10 tabanında logaritması
% sqrt(x) = x sayısının karekökü
% nthroot(x,y) = x sayısının y. derece kökü 
% rem(x,y) = x/y nin kalanını yazdırır
% fix(a) = a ile sıfır arasındaki a dan küçük ilk tam sayıya yuvarlar
% floor(a) = a sayısı ile -sonsuz arasında a'dan küçük ilk tam sayıya yuvarlar
% round(b) = b sayısı içinde nokta varsa en yakın tam sayıya yuvarlar 


%{
x^2-x-3=0 "denklemininin köklerini bul"

a=1, b=-1, c=-3;

x1=-b/(2*a)+1/(2*a)*sqrt(b^2-4*a*c)

x2=-b/(2*a)-1/(2*a)*sqrt(b^2-4*a*c)   "formül hatalı olabilir emin değilim"
%}


% bir reel sayı genelde x*10^y olarak gösterilir bu sayının alt üst limitleri;

syms r q;
func1=r*(10^q);

0<=r<10;
-308<=q<=308;

realmax
realmin

% e yazıyorsa 10 üzeri demek exp yazarsa e demek farkındayım çok saçma

% bir sayı 9dan fazla rakam içeriyorsa 10 üssü olarak yazar
% noktalı sayılarda ise sol taraf max3 sağ taraf max 4 sonrası 10 (e) üssü


