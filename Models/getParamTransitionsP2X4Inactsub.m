function tr=getParamTransitionsP2X4Inactsub(p)
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
	case 'H0'
		tr='C0->C1';
	case 'H1'
		tr='{D11,D12,D13,D14}->{C0,C2,Q1,Q2}';
	case 'H2'
		tr='{C2,Q1,Q2}->{D12,D13,D14}';
	case 'H3'
		tr='D14->Z';
	case 'H4'
		tr='Z->C1';
	case 'H5'
		tr='C1->C0';
	case 'g1'
		tr='';
	case 'g2'
		tr='';
	case 'E1'
		tr='';
	case 'E2'
		tr='';
	case 'delta'
		tr='';
	case 'epsilon'
		tr='';
	case 'mu'
		tr='';
	case 'A'
		tr='{C1,C2,Q1,D11,D12,D13}->{C2,Q1,Q2,D12,D13,D14}';
	case 'J'
		tr='';
	case 'V'
		tr='';
	otherwise
		tr='-';
	end

end