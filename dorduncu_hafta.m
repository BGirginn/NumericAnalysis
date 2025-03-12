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
B(x)=3*x^4-7*x^2+2*x-1

% Ancak eğer "x" tanımlanmış bir vektör ise alttaki gibi yazılır !!! Önemli fark !!!

B(x)= 3*x.^4-7*x.^2+2*x-1  % bunun sonunda B ifadesi x vektörü ile aynı boyutta olacaktır



