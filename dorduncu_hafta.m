% 4.Hafta - 1.Ders

% PERIYODIK FONKSIYONLAR


% x(t) =x(t+nT), n=1,2,3,4...  % burada T periyot olarak adlandırılan ve sabit pozitif bir değerdir

% Eğer periyodik olan fonksiyon (yani T) sinüzoidal ise;

% x(t) Acos(wt+θ) şeklinde yazılır

% A: Değişkenin genliğidir. Eğer mesela x gerilimi gösteriyor ise A nın birimi volt olur
% t: Bağımsız zaman değişkenidir birimi saniyedir
% w: Açısal frekanstır. T= 2π/w ilişkisi vardır
% θ: x(t) eğrisinin coswt eğrisine göre faz farkıdır. 0 dan büyük ise 


% Matlab ortamıngşda polinom gösterimi
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


% Büyük dereceli polinomun küçük dereceli polinoma bölünmesi

% X(t) = 7t^6-2t^4+8t^3+2
% Y(t) = 2t^4-4t^3+2t+8

pay=[7 0 -2 8 0 0 2]; payda=[2 -4 0 2 8];
[bolum,kalan]=deconv(pay,payda)

% sonuç= 3,5t^2+7t+13+(53t^3-42t^2-82t-102/2t^4-4t^3+2t+8)
% bu işlemde bölümü yazıp sonrasında kalanı denklem olarak yazıp bölen e bölüp yazıyorsun 


% Polinomun türevinin alınması

% 2t^6+7t^3-8t+3

s=[2 0 0 3 0 -8 3];
a=polyder(s)  % polyder komutu conv ve deconv gibi bir matrisi polinomun katsayıları gibi algılamayı ve türevini almayı sağlar

% polyder (x,y) = x ve y vektörlerinin çarpımının türevini alır

% [pay,payda]=polyder(x,y) = x ve y vektörlerinin bölüm türevini hesaplar, pay türevin kesrinin payı payda ise paydasını verir


% Polinomun integralinin alınması

% A= 2t^3+3t^2-5t+6

a=[2 3 -5 6];
polyint(a)   % polinomun integralini almanı sağlar ve en sona bir 0 ekler bu da C bilinmeyenini ifade eder

% polyint komutunda integral sabiti default olarak 0 seçilir eğer farklı bir şey seçmek istiyorsan polyint(a,sabit) kullanabilirsin


roots(a) % vektör ya da polinomun köklerini hesaplar 

D=[1 2 1]; % bir polinomun katsayılarının vektörü

c=roots(D) % komutu ile kökler c matrisine atanır

f=roots([1 3 7 4]);  % şeklinde de kullanılabilir 


% x1=0, x2=2, x3=1+j, x4=1-j değerlerini kök kabul eden polinom nedir

f=[0 2 1+j 1-j];
k=poly(f)

% bu kodun çıktısındaki katsayılar polinomun katsayılarıdır
% f(t)=t^4-4t^3+6t^2-4t


% A(t)=(t^2-4)/(2t^4-6t^3+2t^2+5)

pay=[1 0 -4]; payda=[2 -6 2 0 5];
[rez,kok]=residue(pay,payda)
% bu şekilde hem rezidü (kalan) hem kök değerlerini bulabiliriz


% 4.Hafta 2. Bölüm

% A(t) t+2-(0.5/t+4)-(0.6145/t-1)+(1.5/t-7) polinomonu A(t)=X(t)/Y(t) formunda yazınız

rez=[-0.5 -0.6145 1.5]; kok=[-4 1 7]; bolum=[1 2];  % burada bölüm neden 1 ve 2 ????

[pay,payda]=residue(rez,kok,bolum)

% Eğer bolüm polinomu yok ise bolum = [] olacaktı

% Üç boyutlu yüzey ve eğri çizimi 

x= -pi:2  % bu komutta -pi den 2 ye default artış oranı olan 1 ile varmak imkansızdır o yüzden sistem 2 ye en yakın sayıda işlemi keser ve hata mesajı vermez
y=0:0.2:1;

[X,Y]=meshgrid(x,y)  % bu komut x ve y vektörlerini X ve Y matrisine dönüştürerek ızgara şeklinde çizim yüzeyi meydana getirir. 
% x matrisin satır y ise sütun sayısını belirler. X de satırlar Y de ise sütunlar aynı olur
% x, n boyutlu y ise m boyutlu olduğu varsayılarak matris m*n boyutundadır



% FUNCTION

function y = alanbul(z)  % data from outside will come in variable z
    y=pi*z.^2
end
% we wrote the funcs command and them we need call the unc for use

r=5;
alanbul(r);
disp(alanbul(r));  % example

% çok saçma bir kullanım ama temeli şu şekilde çalışıyor:
% ilk olarak function y = call name(kullanılacak değişken adı)
% ikinci olarak içine y= diyip denklem veya script ne olacaksa onu yazıyorsun sonra da alt satıra end diyorsun
% func u kullanmak için önce değişken adı=değer sonra callname(değişken adı) nı kullanıyorsun 
% kalanı için de üstteki örneğe bak 




% 4.Hafta - 3. Ders

% Maks min değer bulma

% max(x): eğer x bir vektör ise içindeki en büyük elemanı bulur. Eğer matris ise her sütundaki en büyük elemanı bulur
% [a b] = max(c): c bir vektör ise önce en büyük değeri a nın içine atanır ardından bu değerin indisi de b değişkenine atanır
% max(a,b): a ve b matirisindeki elemanlardan aynı lokasyondakiler sıra ile karşılaştırılıp yeni bir matrise atanır. a ve b aynı boyutlarda olmalıdır
% !!! Tüm komutlar min şekli için de aynı çalışma mantığı ile geçerlidir !!!
% sum(x): eğer x bir vektör ise, x vektörünün elemanlarının toplamı yazılır. Eğer bir matris ise her sütunun toplamı ayrı ayrı yazılır

a=[-1 4 8; 5 9 4; 3 4 9]
(sum(a)  % burada -1 + 5 + 3=7,  4 + 9 + 4 = 17,  8 + 4 + 9 = 21  şeklinde yeni bir vektör oluşur
sum(sum(a))  % yaparsan da bir vektörün tüm elemanlarının toplamını bulursun
toplam=sum(3:3:15)  % 3den başla 15 e kadar 3 er artışla git ve topla 

% factorial(a): komutu ile vektör ya da matrisdeki her elemanın ayrı ayrı faktöriyeli hesaplanır
% factorial(1:5): 1 ve 3 dahil aralıktaki tüm sayıların faktöriyelini alır
% factorial (1:3:15): 1 den 15 e kadar 15 dahil 3 er aralıklarla tüm sayıların faktöriyelini alır

% prod(1:n): 1den n e kadar olan sayıları çarpar yani n! yapar
% prod(1:3:10):  1 den 10 a kadar 3er sayıları çarpar  1*4*7*10=280

% cumsum(k): k=[-4 7 12],  ans= -4 3 15  burada yapılan şey ilk eleman aynı kalır ardından sonraki ile toplayıp yazılır -4, -4+7, -4+7+12 şeklinde
% eğer vektör değil matris ise bu işlemleri satır değil sütun şeklinde yapıp yeni bir sütuna ekler

% cumprod(k): cumcum un aynı mantığı ancak toplama değil çarpma olarak yapıyor. kurallar hem vektör hem matris için geçerli 

% rand komutu ile k adlı bir 10*8 lik matris üretilip satır satır taranacak her satır ortalaması a, her satırın elemanlarının birbiri ile toplamı b, her satırın elemanlarının birbiri
% ile çarpımı c adlı vektöre atanacaktır.

% çözüm:

k=rand(10,8);
a=mean(k');  %  vektörün elemanlarının ortalaması ya da matrisin sütun sütun ortalamasını buldurur
b=sum(k');   %  vektörün elemanlarının toplamı ya da matrisin sütun sütun toplamasını yapar
c=prod(k');  %  vektörün elemanlarının çarpımı ya da matrisin sütun sütun çarpımını yapar
% transpoze kullanilma sebebi matlab default sütun sütun tarama yapar biz satır satır istiyoruz matrisi yan devirdik

% ISTATISTIKSEL ANALIZ 

% Histogram

% hist(x): x bir vektör ise alt ve üst limitleri arasında 10 adet kutu kullanarak histogram eğrisi çizer matris ise her sütun için aynısını yapar ve değerleri n isimli vektöre atar
% hist(x,m): x in alt ve üst limitleri arasında m adet kutu kullanarak histogram eğrisi çizer ve bunu n adlı m elemanlı bir vektöre atar
% [n y]=hist(x,m): x in limitleri arasında m adet kutu kullanarak eğriyi çizer ve değerleri n vektörüne atar. y vektörü her bir kutunun m ortalamasını içerir
% geomean(x): x vektörünün geometrik ortalama değerini hesaplar
% harmmean(x): x vektörünün harmonik ortalama değerini hesaplar
% trimmean(x,k): x vektöründen m adet maks ve min değerinin atılması ile elde edilen yeni vektörün ortalamasını bulur. m=length(x)*(k/100)/2. m tam değilse yuvarlanır
% median(x): vektörün en büyük ve en küçük değerini siler geri kalan sayıların ortalamasını alır matris ise her sütun için ayrı ayrı uygular
% sort(x): vektör ise vektörü matris ise her bir sütunu kendi içinde min to max sıralar
% sort(x,1 veya 2): 1 sütunları 2 ise satırları min to max sıralar
% sort(a,"ascend" veya "descend"): a vektörünün elemanları ascend min to max descend max to min olarak sıralar.
% sort(a,2,"descend"): a matrisi satırları max to min
% std(a): vektörün standart sapması ya da matrisin her sütunun ayrı ayrı standart sapması
% var(a): a nın varyansını hesaplar
% cov(a): a vektör ise kovaryantını hesaplar
% corrcoef(a): korelasyon katsayılarını içeren matris elde edilir bu matrisin ana köşegen elemanları (sol üstten sağ alta) her zaman 1 olur.
% rand(m,n): değerleri 0 ile 1 arasında değişen elemanlardan m*n boyutunda random matris
% randn(n): normal Gaussian dağılımı. ortalama değeri 0 standart sapması 1 olan eleman değerleri ve n*n boyut matris. n yerine m,n ile boyut değiştirilebilir

 