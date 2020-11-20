function [t,x] = solvesystem_salmanee(f,t0,tN,x0,h) 

t = t0;
x_initial = x0; 

x = zeros(length(x0),round((tN-t0)/h)+1); 
x(:,1) = x_initial'; 

    for i = 1:(tN-t0)/h
        x1 = f(t(i), x_initial); 
        x2 = f(t+h, x_initial+x1*h); 
        x_initial = x_initial+(h./2).*(x1+x2); 
        t(i+1) = t(i)+h;  
        x(:, i+1) = x_initial'; 
    end 
end
