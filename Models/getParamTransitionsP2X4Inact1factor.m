function tr=getParamTransitionsP2X4Inact1factor(p)
	switch p
	case 'k1'
		tr='{C2,C4,C6,C8,D12}->{C1,C3,C5,C7,D11}';
	case 'k2'
		tr='{C1,C3,C5,C7,D11}->{C2,C4,C6,C8,D12}';
	case 'k3'
		tr='{Q1,Q3,Q5,Q7,D13}->{C2,C4,C6,C8,D12}';
	case 'k4'
		tr='{C2,C4,C6,C8,D12}->{Q1,Q3,Q5,Q7,D13}';
	case 'k5'
		tr='{Q2,Q4,Q6,Q8,D14}->{Q1,Q3,Q5,Q7,D13}';
	case 'k6'
		tr='{Q1,Q3,Q5,Q7,D13}->{Q2,Q4,Q6,Q8,D14}';
	case 'L1'
		tr='{C3,C4,Q3,Q4}->{C1,C2,Q1,Q2}';
	case 'L2'
		tr='{C1,C2,Q1,Q2}->{C3,C4,Q3,Q4}';
	case 'L3'
		tr='{C5,C6,Q5,Q6}->{C3,C4,Q3,Q4}';
	case 'L4'
		tr='{C3,C4,Q3,Q4}->{C5,C6,Q5,Q6}';
	case 'L5'
		tr='{C7,C8,Q7,Q8}->{C5,C6,Q5,Q6}';
	case 'L6'
		tr='{C5,C6,Q5,Q6}->{C7,C8,Q7,Q8}';
	case 'W1'
		tr='C3->C0';
	case 'W2'
		tr='C0->C3';
	case 'H0'
		tr='C0->C1';
	case 'H11'
		tr='D11->C1';
	case 'H5'
		tr='C1->C0';
	case 'kd1'
		tr='{C2,Q1,Q2}->{D12,D13,D14}';
	case 'ks1'
		tr='{D12,D13,D14}->{C2,Q1,Q2}';
	case 'H3'
		tr='D14->Z';
	case 'H4'
		tr='Z->C1';
	case 'g1'
		tr='';
	case 'g2'
		tr='';
	case 'E1'
		tr='';
	case 'E2'
		tr='';
	case 'r1'
		tr='{C3,C4,Q3}->{C4,Q3,Q4}';
	case 'r2'
		tr='{C5,C6,Q5}->{C6,Q5,Q6}';
	case 'r3'
		tr='{C7,C8,Q7}->{C8,Q7,Q8}';
	case 'v1'
		tr='{C4,Q3,Q4}->{C3,C4,Q3}';
	case 'v2'
		tr='{C6,Q5,Q6}->{C5,C6,Q5}';
	case 'v3'
		tr='{C8,Q7,Q8}->{C7,C8,Q7}';
	case 'rho1'
		tr='';
	case 'rho2'
		tr='';
	case 'rho3'
		tr='';
	case 'gamma1'
		tr='C4->C2';
	case 'gamma2'
		tr='Q3->Q1';
	case 'gamma3'
		tr='Q4->Q2';
	case 'delta'
		tr='{C0,C1,C2,Q1,Q2}->{C3,C3,C4,Q3,Q4}';
	case 'epsilon'
		tr='{C3,C4,Q3,Q4}->{C5,C6,Q5,Q6}';
	case 'mu'
		tr='{C5,C6,Q5,Q6}->{C7,C8,Q7,Q8}';
	case 'A'
		tr='{C1,C2,C3,C4,C5,C6,C7,C8,Q1,Q3,Q5,Q7,D11,D12,D13}->{C2,Q1,C4,Q3,C6,Q5,C8,Q7,Q2,Q4,Q6,Q8,D12,D13,D14}';
	case 'J'
		tr='{C0,C1,C2,C3,C4,C5,C6,Q1,Q2,Q3,Q4,Q5,Q6}->{C3,C3,C4,C5,C6,C7,C8,Q3,Q4,Q5,Q6,Q7,Q8}';
	case 'V'
		tr='';
	otherwise
		tr='-';
	end

end