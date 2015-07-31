function tr=getParamTransitionsP2X4Inact2factor2(p)
	switch p
	case 'k1'
		tr='{C2,C4,C6,C8,Q5,Q6,D12,D22,D32,D42}->{C1,C3,C5,C7,C6,Q5,D11,D21,D31,D41}';
	case 'k2'
		tr='{C1,C3,C5,C7,D11,D21,D31,D41}->{C2,C4,C6,C8,D12,D22,D32,D42}';
	case 'k3'
		tr='{Q1,Q3,Q7,D13,D23,D33,D43}->{C2,C4,C8,D12,D22,D32,D42}';
	case 'k4'
		tr='{C2,C4,C6,C8,D12,D22,D32,D42}->{Q1,Q3,Q5,Q7,D13,D23,D33,D43}';
	case 'k5'
		tr='{Q2,Q4,Q8,D14,D24,D34,D44}->{Q1,Q3,Q7,D13,D23,D33,D43}';
	case 'k6'
		tr='{Q1,Q3,Q5,Q7,D13,D23,D33,D43}->{Q2,Q4,Q6,Q8,D14,D24,D34,D44}';
	case 'L1'
		tr='{C3,C4,Q3,Q4,D21,D22,D23,D24}->{C1,C2,Q1,Q2,D11,D12,D13,D14}';
	case 'L2'
		tr='{C1,C2,Q1,Q2,D11,D12,D13,D14}->{C3,C4,Q3,Q4,D21,D22,D23,D24}';
	case 'L3'
		tr='{C5,C6,Q5,Q6,D31,D32,D33,D34}->{C3,C4,Q3,Q4,D22,D21,D23,D24}';
	case 'L4'
		tr='{C3,C4,Q3,Q4,D21,D22,D23,D24}->{C5,C6,Q5,Q6,D32,D31,D33,D34}';
	case 'L5'
		tr='{C7,C8,Q7,Q8,D41,D42,D43,D44}->{C5,C6,Q5,Q6,D31,D32,D33,D34}';
	case 'L6'
		tr='{C5,C6,Q5,Q6,D31,D32,D33,D34}->{C7,C8,Q7,Q8,D41,D42,D43,D44}';
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
	case 'kd2'
		tr='{C4,Q3,Q4}->{D22,D23,D24}';
	case 'kd3'
		tr='{C6,Q5,Q6}->{D32,D33,D34}';
	case 'kd4'
		tr='{C8,Q7,Q8}->{D42,D43,D44}';
	case 'ks1'
		tr='{D12,D13,D14}->{C2,Q1,Q2}';
	case 'ks2'
		tr='{D21,D22,D23,D24}->{C3,C4,Q3,Q4}';
	case 'ks3'
		tr='{D31,D32,D33,D34}->{C5,C6,Q5,Q6}';
	case 'ks4'
		tr='{D41,D42,D43,D44}->{C7,C8,Q7,Q8}';
	case 'H3'
		tr='D14->Z';
	case 'H3D'
		tr='{D24,D34,D44}->{Z,Z,Z}';
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
	case 'delta'
		tr='{C0,C1,C2,Q1,Q2,D11,D12,D13,D14}->{C3,C3,C4,Q3,Q4,D21,D22,D23,D24}';
	case 'epsilon'
		tr='{C3,C4,Q3,Q4,D21,D22,D23,D24}->{C5,C6,Q5,Q6,D32,D31,D33,D34}';
	case 'mu'
		tr='{C5,C6,Q5,Q6,D31,D32,D33,D34}->{C7,C8,Q7,Q8,D41,D42,D43,D44}';
	case 'A'
		tr='{C1,C2,C3,C4,C5,C6,C7,C8,Q1,Q3,Q5,Q7,D11,D12,D13,D21,D22,D23,D31,D32,D33,D41,D42,D43}->{C2,Q1,C4,Q3,C6,Q5,C8,Q7,Q2,Q4,Q6,Q8,D12,D13,D14,D22,D23,D24,D32,D33,D34,D42,D43,D44}';
	case 'J'
		tr='{C0,C1,C2,C3,C4,C5,C6,Q1,Q2,Q3,Q4,Q5,Q6,D11,D12,D13,D14,D21,D22,D23,D24,D31,D32,D33,D34}->{C3,C3,C4,C5,C6,C7,C8,Q3,Q4,Q5,Q6,Q7,Q8,D21,D22,D23,D24,D32,D31,D33,D34,D41,D42,D43,D44}';
	case 'V'
		tr='';
	case 'n1'
		tr='';
	case 'n2'
		tr='';
	case 'n3'
		tr='';
	case 'r1'
		tr='{C3,C4,Q3,D21,D22,D23}->{C4,Q3,Q4,D22,D23,D24}';
	case 'r2'
		tr='{C5,C6,Q5,D31,D32,D33}->{C6,Q5,Q6,D32,D33,D34}';
	case 'r3'
		tr='{C7,C8,Q7,D41,D42,D43}->{C8,Q7,Q8,D42,D43,D44}';
	case 'v1'
		tr='{C4,Q3,Q4,D22,D23,D24}->{C3,C4,Q3,D21,D22,D23}';
	case 'v2'
		tr='{C6,Q5,Q6,D32,D33,D34}->{C5,C6,Q5,D31,D32,D33}';
	case 'v3'
		tr='{C8,Q7,Q8,D42,D43,D44}->{C7,C8,Q7,D41,D42,D43}';
	otherwise
		tr='-';
	end

end