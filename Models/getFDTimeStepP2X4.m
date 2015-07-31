function dt = getFDTimeStepP2X4(A)
	dt=1/(10*max(getDegradationRatesP2X4(A)));
end