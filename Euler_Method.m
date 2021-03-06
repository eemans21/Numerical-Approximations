function [t,x1,x2] = euler_1(f,g,t0,tN,x0_1,x0_2,h)

x1(1)=x0_1;
x2(1)=x0_2;

t = t0:h:tN;

    for i=1:((tN-t0)/h)
        x1(i+1)=x1(i)+h*f(t(i),x1(i));
        x2(i+1)=x2(i)+h*g(t(i),x2(i));
        t(i+1)=t(i)+h;
    end
end
