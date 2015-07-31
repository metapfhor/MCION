function tr=getParamTransitionsP2X4Inact12(p)
	switch p
	case 'd1'
		tr='';
	case 'd2'
		tr='';
	case 'd3'
		tr='';
	case 'd4'
		tr='';
	case 'd5'
		tr='';
	case 'd6'
		tr='';
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
		tr='C4->C3';
	case 'k8'
		tr='C3->C4';
	case 'k9'
		tr='Q3->C4';
	case 'k10'
		tr='C4->Q3';
	case 'k11'
		tr='Q4->Q3';
	case 'k12'
		tr='Q3->Q4';
	case 'k13'
		tr='C6->C5';
	case 'k14'
		tr='C5->C6';
	case 'k15'
		tr='Q5->C6';
	case 'k16'
		tr='C6->Q5';
	case 'k17'
		tr='Q6->Q5';
	case 'k18'
		tr='Q5->Q6';
	case 'k19'
		tr='C8->C7';
	case 'k20'
		tr='C7->C8';
	case 'k21'
		tr='Q7->C8';
	case 'k22'
		tr='C8->Q7';
	case 'k23'
		tr='Q8->Q7';
	case 'k24'
		tr='Q7->Q8';
	case 'L11'
		tr='C3->C1';
	case 'L12'
		tr='C4->C2';
	case 'L13'
		tr='Q3->Q1';
	case 'L14'
		tr='Q4->Q2';
	case 'L21'
		tr='C1->C3';
	case 'L22'
		tr='C2->C4';
	case 'L23'
		tr='Q1->Q3';
	case 'L24'
		tr='Q2->Q4';
	case 'L31'
		tr='C5->C3';
	case 'L32'
		tr='C6->C4';
	case 'L33'
		tr='Q5->Q3';
	case 'L34'
		tr='Q6->Q4';
	case 'L41'
		tr='C3->C5';
	case 'L42'
		tr='C4->C6';
	case 'L43'
		tr='Q3->Q5';
	case 'L44'
		tr='Q4->Q6';
	case 'L51'
		tr='C7->C5';
	case 'L52'
		tr='C8->C6';
	case 'L53'
		tr='Q7->Q5';
	case 'L54'
		tr='Q8->Q6';
	case 'L61'
		tr='C5->C7';
	case 'L62'
		tr='C6->C8';
	case 'L63'
		tr='Q5->Q7';
	case 'L64'
		tr='Q6->Q8';
	case 'H0'
		tr='C0->C1';
	case 'H5'
		tr='C1->C0';
	case 'H2'
		tr='{C2,Q1,Q2}->{D12,D13,D14}';
	case 'H1'
		tr='{D11,D12,D13,D14}->{C1,C2,Q1,Q2}';
	case 'H3'
		tr='D14->Z';
	case 'H4'
		tr='Z->C0';
	case 'W2'
		tr='C0->C3';
	case 'g1'
		tr='';
	case 'g2'
		tr='';
	case 'E1'
		tr='';
	case 'E2'
		tr='';
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