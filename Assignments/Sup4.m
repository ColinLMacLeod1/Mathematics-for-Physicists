%% Approximation Plots
sumT = @(n,t) cos(pi.*n.*t).*2.*sinh(1)./(1+ pi.^2.*n.^2);
t1 = -0.2:0.02:1.2;
fn1 = sinh(1) + sumT(1,t1);
fn5 = sinh(1);
for i=1:5 
    fn5 = fn5 + sumT(i,t1);
end

fn10 = sinh(1);
for i=1:10
    fn10 = fn10 + sumT(i,t1);
end
t2 = 0:0.02:1;
figure(2)
plot(t1,fn1)
hold on
plot(t1,fn5,'r')
plot(t1,fn10,'g')
plot(t2,cosh(t2-1),'k')
legend('N = 1','N=5','N=10','Original')
title('Plotted Approximations')
%% Residuals
fn1res = sinh(1) + sumT(1,t2) - cosh(t2-1);
fn5res = sinh(1);
for i=1:5 
    fn5res = fn5res + sumT(i,t2);
end
fn5res = fn5res - cosh(t2-1);
fn10res = sinh(1);
for i=1:10
    fn10res = fn10res + sumT(i,t2);
end
fn10res = fn10res-cosh(t2-1);
figure(3)
plot(t2,fn1res)
hold on
plot(t2,fn5res,'r')
plot(t2,fn10res,'g')
legend('N = 1','N=5','N=10')
title('Residuals')

