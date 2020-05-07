global par T
T='0';
par=0.1;
a=0; b=2*pi;
N=100; L1=0; L2=2*pi; X=linspace(L1,L2,N);
Y=func(X);
plot(X,Y); grid on;
xlabel('x'); ylabel('f(x)'); title(T);
xr=ginput(2);
[x_m,y_m]=fminbnd(@func,xr(1,1),xr(2,1));
hold on;
plot(x_m,y_m,'r*',xr(1,1),xr(1,2),'g*',xr(2,1),xr(2,2),'g*');
hold off;
%%
f=@(x) 1./(a*cos(x)+b*sin(x)).^2;
a=1; b=2;
A=num2str(a); B=num2str(b);
T=['1/(a cos x + b sin x) ^2, a=', A,', b=', B];
N=100; L1=0; L2=2*pi/3; X=linspace(L1,L2,N);
Y=f(X);
plot(X,Y); grid on;
xlabel('x'); ylabel('f(x)'); title(T);
xr=ginput(2);
[x_m,y_m]=fminbnd(f,xr(1,1),xr(2,1));
hold on;
plot(x_m,y_m,'r*',xr(1,1),xr(1,2),'g*',xr(2,1),xr(2,2),'g*');
hold off;
%%
f=@(x) 2-abs(x).*exp(1).^(-abs(x-1));
a=0; b=4;
A=num2str(a); B=num2str(b);
T=['2 - |x| e^|^x^-^1^|,  a=', A,', b=', B];
N=100; L1=0; L2=4; X=linspace(L1,L2,N);
Y=f(X);
plot(X,Y); grid on;
xlabel('x'); ylabel('f(x)'); title(T);
xr=ginput(2);
[x_m,y_m]=fminbnd(f,xr(1,1),xr(2,1));
hold on;
plot(x_m,y_m,'r*',xr(1,1),xr(1,2),'g*',xr(2,1),xr(2,2),'g*');
hold off;
%%
n=1:3;
f=@(x)func1(x);
N=100; L1=0; L2=7; X=linspace(L1,L2,N);
Y=f(X);
plot(X,Y); grid on;
xlabel('x'); ylabel('f(x)');
xr=ginput(2);
[x_m,y_m]=fminbnd(f,xr(1,1),xr(2,1));
hold on;
plot(x_m,y_m,'r*',xr(1,1),xr(1,2),'g*',xr(2,1),xr(2,2),'g*');
hold off;
%%
for i=2:10
    f=@(x) (x.^i).*log(x);
    A=num2str(a);
    T=['x^a ln x,  a=', A];
    N=100; L1=0; L2=1; X=linspace(L1,L2,N);
    Y=f(X);
    plot(X,Y); grid on;
    xlabel('x'); ylabel('f(x)'); title(T);
    xr=ginput(2);
    [x_m,y_m]=fminbnd(f,xr(1,1),xr(2,1));
    hold on;
    plot(x_m,y_m,'r*',xr(1,1),xr(1,2),'g*',xr(2,1),xr(2,2),'g*');
end
hold off;
