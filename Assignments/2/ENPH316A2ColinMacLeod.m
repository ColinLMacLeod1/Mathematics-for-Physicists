%% Question 1 d)
% Create data for plot
x = -4:0.01:4;
y = 0.5*sin(x)./(1-2*0.5*cos(x)+0.5^2);
% Plot
figure(1)
plot(x,y)
hold on
y1 = 0.5*sin(x);
plot(x,y1,'r')
y5 = sinApprox1(x,5);
plot(x,y5,'g')
y10 = sinApprox1(x,10);
plot(x,y10,'k')
legend('f(x)','n = 1','n = 5','n = 10')
title('Plot of Approximations of f(x)')
xlabel('x')
ylabel('f')
% Residuals Plot
figure (2)
yres = y-y;
y1res = y-y1; 
y5res = y-y5;
y10res = y-y10;

plot(x,yres)
hold on
plot(x,y1res,'r')
plot(x,y5res,'g')
plot(x,y10res,'k')
legend('f(x)','n = 1','n = 5','n = 10')
title('Plot of Residuals Approximations of f(x)')
xlabel('x')
ylabel('Residual')

%% Question 2 b)
x1 = linspace(-pi,0,1000);
x2 = linspace(0,pi,1000);
f1 = @(x) -x.*(pi+x);
f2 = @(x) x.*(x-pi);
y = horzcat(f1(x1),f2(x2));
x = horzcat(x1,x2);
y1 = sinApprox2(x,1);
y2 = sinApprox2(x,2);
y3 = sinApprox2(x,3);
figure(3)
%plotting the original function
plot(x,y) 
hold on
%Plotting the Approximations
plot(x,y1,'g') 
plot(x,y2,'r')
plot(x,y3,'k')
title('Plots of the original function compared with n=1:3 approximations')
legend('f(x)','n=1','n=2','n=3')
xlabel('x')
ylabel('y')
%Calculating Residuals
y1res = y - y1;
y2res = y - y2;
y3res = y - y3;
%Plotting Residuals
figure(4)
plot(x,y1res)
hold on
plot(x,y2res,'g')
plot(x,y3res,'r')
title('Residuals from the plots of the original function compared with n=1:3 approximations')
legend('n=1','n=2','n=3')
xlabel('x')
ylabel('Residual')

%% Question 2 c)
figure (5)
x = linspace(-2*pi,pi,100);
y = pi*x.^2 + 16*x + pi^5/15;
plot(x,y)
hold on
plot(-8/pi,0,'*')
title('Question 2 c) Error')
xlabel('bn')
ylabel('E')
