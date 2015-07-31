function tr=getParamTransitionsP2XInact2noallo(p)
	switch p
	case 'k1'
		tr='{C2,D12}->{C1,D11}';
	case 'k2'
		tr='{C1,D11}->{C2,D12}';
	case 'k3'
		tr='{Q1,D13}->{C2,D12}';
	case 'k4'
		tr='{C2,D12}->{Q1,D13}';
	case 'k5'
		tr='{Q2,D14}->{Q1,D13}';
	case 'k6'
		tr='{Q1,D13}->{Q2,D14}';
	case 'k7'
		tr='{C4,D22}->{C3,D21}';
	case 'k8'
		tr='{C3,D21}->{C4,D22}';
	case 'k9'
		tr='{Q3,D23}->{C4,D22}';
	case 'k10'
		tr='{C4,D22}->{Q3,D23}';
	case 'k11'
		tr='{Q4,D24}->{Q3,D23}';
	case 'k12'
		tr='{Q3,D23}->{Q4,D24}';
	case 'k13'
		tr='{C6,D32}->{C5,D31}';
	case 'k14'
		tr='{C5,D31}->{C6,D32}';
	case 'k15'
		tr='{Q5,D33}->{C6,D32}';
	case 'k16'
		tr='{C6,D32}->{Q5,D33}';
	case 'k17'
		tr='{Q6,D34}->{Q5,D33}';
	case 'k18'
		tr='{Q5,D33}->{Q6,D34}';
	case 'k19'
		tr='{C8,D42}->{C7,D41}';
	case 'k20'
		tr='{C7,D41}->{C8,D42}';
	case 'k21'
		tr='{Q7,D43}->{C8,D42}';
	case 'k22'
		tr='{C8,D42}->{Q7,D43}';
	case 'k23'
		tr='{Q8,D44}->{Q7,D43}';
	case 'k24'
		tr='{Q7,D43}->{Q8,D44}';
	case 'L11'
		tr='{C3,D21}->{C1,D11}';
	case 'L12'
		tr='{C4,D22}->{C2,D12}';
	case 'L13'
		tr='{Q3,D23}->{Q1,D13}';
	case 'L14'
		tr='{Q4,D24}->{Q2,D14}';
	case 'L21'
		tr='';
	case 'L22'
		tr='{C2,D12}->{C4,D22}';
	case 'L23'
		tr='{Q1,D13}->{Q3,D23}';
	case 'L24'
		tr='{Q2,D14}->{Q4,D24}';
	case 'L31'
		tr='{C5,D32}->{C3,D21}';
	case 'L32'
		tr='{C6,D31}->{C4,D22}';
	case 'L33'
		tr='{Q5,D33}->{Q3,D23}';
	case 'L34'
		tr='{Q6,D34}->{Q4,D24}';
	case 'L41'
		tr='';
	case 'L42'
		tr='{C4,D22}->{C6,D31}';
	case 'L43'
		tr='{Q3,D23}->{Q5,D33}';
	case 'L44'
		tr='{Q4,D24}->{Q6,D34}';
	case 'L51'
		tr='{C7,D41}->{C5,D31}';
	case 'L52'
		tr='{C8,D42}->{C6,D32}';
	case 'L53'
		tr='{Q7,D43}->{Q5,D33}';
	case 'L54'
		tr='{Q8,D44}->{Q6,D34}';
	case 'L61'
		tr='';
	case 'L62'
		tr='{C6,D32}->{C8,D42}';
	case 'L63'
		tr='{Q5,D33}->{Q7,D43}';
	case 'L64'
		tr='{Q6,D34}->{Q8,D44}';
	case 'W2'
		tr='';
	case 'H0'
		tr='C0->C1';
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
		tr='{D11,D12,D13,D14}->{C1,C2,Q1,Q2}';
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
		tr='{C2,Q1,Q2,D12,D13,D14}->{C4,Q3,Q4,D22,D23,D24}';
	case 'epsilon'
		tr='{C4,Q3,Q4,D22,D23,D24}->{C6,Q5,Q6,D31,D33,D34}';
	case 'mu'
		tr='{C6,Q5,Q6,D32,D33,D34}->{C8,Q7,Q8,D42,D43,D44}';
	case 'A'
		tr='{C1,C2,C3,C4,C5,C6,C7,C8,Q1,Q3,Q5,Q7,D11,D12,D13,D21,D22,D23,D31,D32,D33,D41,D42,D43}->{C2,Q1,C4,Q3,C6,Q5,C8,Q7,Q2,Q4,Q6,Q8,D12,D13,D14,D22,D23,D24,D32,D33,D34,D42,D43,D44}';
	case 'V'
		tr='';
	otherwise
		tr='-';
	end

end