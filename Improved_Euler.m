function [t,y] = improved_euler(f,t0,tN,y0,h) %defines the function

t=t0:h:tN; %sets t between initial and final t, with a step size of h
y=y0; %sets y to its initial value

    for n=1:((tN-t0)/h)
        y(n+1)=(y(n)+(((1/2).*h).*(f(t(n),y(n))+f(t(n)+h,y(n)+h.*f(t(n),y(n)))))); %computes the improved euler method
        t(n+1)=t(n)+h; %increases t by h
    end 
end
