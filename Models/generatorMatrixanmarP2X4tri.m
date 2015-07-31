function generatorMatrixanmarP2X4tri()
global k1 k2 k3 k4 k5 k6 L1 L2 L3 H0 H1 H2 H3 H4 H5 H6 H7 g1 g2 E1 E2 alpha beta gamma J V A n1 n2 Gmin Hmin rmin Q;

Q=[-H0-L3*J^n1/(J^n1+beta^n1),H0,0,L3*J^n1/(J^n1+beta^n1),0,0,0,0,0,0,0,0,0,0;
H7,-H7-3*k2*A-L3*J^n1/(J^n1+beta^n1),3*k2*A,L3*J^n1/(J^n1+beta^n1),0,0,0,0,0,0,0,0,0,0;
0,k1,-k1-2*k4*A-H2-L3*J^n1/(J^n1+beta^n1),0,L3*J^n1/(J^n1+beta^n1),2*k4*A,0,0,0,0,H2,0,0,0;
L1,L1,0,-3*k2*A*(1+alpha*J^n1/(J^n1+beta^n1))-L1-L1,3*k2*A*(1+alpha*J^n1/(J^n1+beta^n1)),0,0,0,0,0,0,0,0,0;
0,0,L2,k1*(1-J^n1/(J^n1+beta^n1)+Gmin),-k1*(1-J^n1/(J^n1+beta^n1)+Gmin)-2*k2*A*(1+alpha*J^n1/(J^n1+beta^n1))-H2*(1-J^n1/(J^n1+beta^n1)+Hmin)-L2,0,0,2*k2*A*(1+alpha*J^n1/(J^n1+beta^n1)),0,0,H2*(1-J^n1/(J^n1+beta^n1)+Hmin),0,0,0;
0,0,2*k3,0,0,-2*k3-k6*A-H2-L3*J^n1/(J^n1+beta^n1),k6*A,L3*J^n1/(J^n1+beta^n1),0,0,0,H2,0,0;
0,0,0,0,0,3*k5,-3*k5-H2-L3*J^n1/(J^n1+beta^n1),0,L3*J^n1/(J^n1+beta^n1),0,0,0,H2,0;
0,0,0,0,2*k1*(1-J^n1/(J^n1+beta^n1)+Gmin),L2,0,-2*k1*(1-J^n1/(J^n1+beta^n1)+Gmin)-k2*A*(1+alpha*J^n1/(J^n1+beta^n1))-H2*(1-J^n1/(J^n1+beta^n1)+Hmin)-L2,k2*A*(1+alpha*J^n1/(J^n1+beta^n1)),0,0,H2*(1-J^n1/(J^n1+beta^n1)+Hmin),0,0;
0,0,0,0,0,0,L2,3*k1*(1-J^n1/(J^n1+beta^n1)+Gmin),-3*k1*(1-J^n1/(J^n1+beta^n1)+Gmin)-H2*(1-J^n1/(J^n1+beta^n1)+Hmin)-L2,0,0,0,H2*(1-J^n1/(J^n1+beta^n1)+Hmin),0;
0,H1,0,H4*J^n2/(J^n2+gamma^n2),0,0,0,0,0,-3*k2*A-H4*J^n2/(J^n2+gamma^n2)-H1,3*k2*A,0,0,0;
0,0,0,0,H3*J^n2/(J^n2+gamma^n2)+rmin*2*(heaviside(J)-0.5),0,0,0,0,k1,-k1-2*k2*A-H3*J^n2/(J^n2+gamma^n2)-rmin*2*(heaviside(J)-0.5),2*k2*A,0,0;
0,0,0,0,0,0,0,H3*J^n2/(J^n2+gamma^n2)+rmin*2*(heaviside(J)-0.5),0,0,2*k3,-2*k3-k2*A-H3*J^n2/(J^n2+gamma^n2)-rmin*2*(heaviside(J)-0.5),k2*A,0;
0,0,0,0,0,0,0,0,H3*J^n2/(J^n2+gamma^n2)+rmin*2*(heaviside(J)-0.5),0,0,3*k1,-3*k1-H3*J^n2/(J^n2+gamma^n2)-rmin*2*(heaviside(J)-0.5)-H5,H5;
0,H6,0,0,0,0,0,0,0,0,0,0,0,-H6;];
end