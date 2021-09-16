syms lambda;
C0=1.4508554;
C1=-0.0031268;
C2=-0000381;
C3=0.0030270;
C4=0.0000779;
C5=0.0000018;
l=0.035;
c=3*10^5;
n=C0+C1.*(lambda).^2+C2.*(lambda).^4+(C3./((lambda).^2-l))+(C4./((lambda).^2-l).^2)+(C5./((lambda).^2-l).^3);
d2=diff(diff(n,lambda),lambda);
Dm=(-lambda./c).*d2.*10^9;

lambda = 1.1:0.05:2;
subs(lambda);
result=eval(Dm);

subplot(1,1,1)
plot(result,lambda)