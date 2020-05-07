function S=func1(x)
S=0;
for i=1:3
    S=S+(cos(i*x)-sin(i*x)).^2;
end