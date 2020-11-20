function [t,y] = DE2_salmanee(f,t0,tN,y0,y1,h)

    t(1)=t0; %inital t
    t(2)=t0+h; %sets next t by incrementing by step size
    
    y=y0; %y(0)
    dy=y1; %y'(0)
    
    y(2)= y(1)+dy(1).*h; %sets next y by adding the slope multiplied by step size
    dy(2) = (y(2)-y(1))./h; %sets next dy by dividing the difference between y(2) and y(1) by the step size
    
    ddy= zeros(1,((tN-t0)/h)+1); %creates a vector for y''
    ddy(1) = f(t(1),y(1),dy(1)); %sets initial y'' 

    for i=2:((tN-t0)/h) %loops through from 2 to n
        ddy(i) = f(t(i),y(i),dy(i)); %sets y''
        dy(i+1) = dy(i) + ddy(i).*h; %sets next y'
        y(i+1)= ddy(i).*(h.^2) + 2.*y(i)-y(i-1); %sets next y
        t(i+1)=t(i)+h; %increments t
    end
end

