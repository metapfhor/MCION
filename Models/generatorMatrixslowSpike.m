function generatorMatrixslowSpike()
global q1 q2 q3 q4 q5 q6 vout Q;
Q=[-q2*A,q2*A,0,0,0;q1,-q1-q4*A,q4*A,0,0;0,q3,-q3-q6*A,q6*A,0;0,0,q5,-q5-vout,vout;0,0,0,0,0];
end