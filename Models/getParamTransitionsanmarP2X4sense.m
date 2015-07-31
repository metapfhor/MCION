function tr=getParamTransitionsanmarP2X4sense(p)
	switch p
	case 'k1'
		tr='{C2,C4,Q3,Q4,D2}->{C1,C3,C4,Q3,D1}';
	case 'k2'
		tr='{C1,C3,C4,Q3,D1}->{C2,C4,Q3,Q4,D2}';
	case 'k3'
		tr='{Q1,D3}->{C2,D2}';
	case 'k4'
		tr='{C2,D2}->{Q1,D3}';
	case 'k5'
		tr='{Q2,D4}->{Q1,D3}';
	case 'k6'
		tr='{Q1,D3}->{Q2,D4}';
	case 'L1'
		tr='C3->C1';
	case 'L2'
		tr='Q4->Q2';
	case 'L3'
		tr='Q2->Q4';
	case 'H1'
		tr='D1->C1';
	case 'H2'
		tr='{C2,Q1,Q2}->{D2,D3,D4}';
	case 'H3'
		tr='D4->Z';
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
	case 'alpha'
		tr='';
	case 'beta'
		tr='';
	case 'J'
		tr='';
	otherwise
		tr='-';
	end

end