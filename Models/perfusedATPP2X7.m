function [ode, naive] = perfusedP2X7(ton,toff,amp)
    ATP=@(t) amp*(heaviside(t-ton)-heaviside(t-toff));
    k1=0.3;
    k2=40000;
    k3=2.4;
    k4=50000;
    k5=1.58;
    k6=7000;
    H1=0.001;
    H2=0;
    H3=0.001;
    H4=0.01;
    L1=0.0001;
    L2=0.004;
    L3=0.5;

    function dy = fullP2X7(t,y)
        dy=zeros(12,1);%C1,C2,Q1,Q2
        A=ATP(t);
        dy(1)=k1*y(2)+H1*y(5)+L1*y(9)-3*k2*A*y(1);% C1
        dy(2)=3*k2*A*y(1)+2*k3*y(3)-(2*k4*A+k1+H3)*y(2)+H2*y(6);% C2
        dy(3)=2*k4*A*y(2)+3*k5*y(4)-(k6*A+2*k3+H4)*y(3);% Q1
        dy(4)=k6*A*y(3)+L2*y(12)-(3*k5+H3+L3)*y(4);% Q2

        
        dy(5)=k1*y(6)-3*k2*A*y(5)-H1*y(5);% D1
        dy(6)=3*k2*A*y(5)+2*k3*y(7)-(2*k4*A+k1+H2)*y(6)+H3*y(2);% D2
        dy(7)=2*k4*A*y(6)+3*k5*y(8)-(k6*A+2*k3)*y(7)+H4*y(3);% D3
        dy(8)=k6*A*y(7)-3*k5*y(8)+H3*y(4);% D4
        
        dy(9)=3*k2*A*y(10)-k1*y(9);
        dy(10)=k1*y(9)+2*k1*y(11)-(5*k2*A)*y(10);
        dy(11)=2*k2*A*y(10)+3*k1*y(12)-(2*k1+k2*A)*y(11);
        dy(12)=k2*A*y(11)+L3*y(4)-(3*k1+L2)*y(12);
        
        
     end
 
    naive=zeros(12,1);
    naive(1)=1;
    
    ode=@ fullP2X7;
end

