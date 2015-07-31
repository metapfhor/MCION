from PyDSTool import *
ic ={'C1':1,'C2':0,'C3':0,'C4':0,'O1':0,'O2':0,'O3':0,'O4':0,'D1':0,'D2':0,'D3':0,'D4':0}
var = {'C1':'k1*C2+L1*C4+H1*D1-3*k2*A/(EC+A)*C1','C2':'3*k2*A/(EC+A)*C1+2*k3*O1+H2*D2-(k1+2*k4*A+H3)*C2','C3':'3*k2*A*C4+2*k1*O4-(k1+2*k2*A)*C3','C4':'k1*C3-(3*k2*A+L1)*C4','O1':'2*k4*A*C2+3*k5*O2+H4*D3-(2*k3+k6*A+H5)*O1','O2':'k6*A*O1+L2*O3+H6*D4-(3*k5+L3+H7)*O2','O3':'k2*A*O4+L3*O2-(3*k1+L2)*O3','O4':'2*k2*A*C3+3*k1*O3-(2*k1+k2*A)*O4','D1':'k1*D2-(3*k2*A/(EC+A)+H1)*D1','D2':'3*k2*A/(EC+A)*D1+2*k3*D3+H3*C2-(k1+2*k4*A+H2)*D2','D3':'2*k4*A*D2+3*k5*D4+H5*O1-(2*k3+k6*A+H4)*D3','D4':'k6*A*D3+H7*O2-(3*k5+H6)*D4'}
DSargs = args()
DSargs.name = 'compP2X7'
DSargs.ics = ic
DSargs.varspecs = var