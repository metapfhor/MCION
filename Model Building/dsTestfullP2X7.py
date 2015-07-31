from PyDSTool import *


'''
ic ={'C1':1,'C2':0,'C3':0,'C4':0,'O1':0,'O2':0,'O3':0,'O4':0,'D1':0,'D2':0,'D3':0,'D4':0}
var = {'C1':'k1*C2+L1*C4+H1*D1-3*k2*A*C1','C2':'3*k2*A*C1+2*k3*O1+H2*D2-(k1+2*k4*A+H3)*C2','C3':'3*k2*A*C4+2*k1*O4-(k1+2*k2*A)*C3','C4':'k1*C3-(3*k2*A+L1)*C4','O1':'2*k4*A*C2+3*k5*O2+H4*D3-(2*k3+k6*A+H5)*O1','O2':'k6*A*O1+L2*O3+H6*D4-(3*k5+L3+H7)*O2','O3':'k2*A*O4+L3*O2-(3*k1+L2)*O3','O4':'2*k2*A*C3+3*k1*O3-(2*k1+k2*A)*O4','D1':'k1*D2-(3*k2*A+H1)*D1','D2':'3*k2*A*D1+2*k3*D3+H3*C2-(k1+2*k4*A+H2)*D2','D3':'2*k4*A*D2+3*k5*D4+H5*O1-(2*k3+k6*A+H4)*D3','D4':'k6*A*D3+H7*O2-(3*k5+H6)*D4'}
par = {'A':0,'C':0.002,'E12':0,'E34':0,'H1':0.001,'H2':0,'H3':0,'H4':0,'H5':0,'H6':0,'H7':1,'K1':7181280,'K2':374025,'K3':26513.1646,'L1':0.0001,'L2':0.004,'L3':0.5,'V':-0.06,'g12':1.8e-08,'g34':4.5e-08,'k1':0.3,'k2':718128,'k3':2.4,'k4':897660,'k5':1.58,'k6':125672.4,'kca':10000000,'koff':10000,'r1':2.4,'r2':0,'tau1':4.6417e-07,'tau2':5.57e-07,'tau3':7.9569e-06}


DSargs = args()
DSargs.name = 'fullP2X7'
DSargs.ics = ic
DSargs.varspecs = var
DSargs.pars = par
DSargs.tdata = [0, 120]           
'''


icdict = {'x': 1, 'y': 0.4}
pardict = {'k': 0.1, 'm': 0.5}
x_rhs = 'y'
y_rhs = '-k*x/m'
vardict = {'x': x_rhs, 'y': y_rhs}

DSargs = args()                   # create an empty object instance of the args class, call it DSargs
DSargs.name = 'SHO'               # name our model
DSargs.ics = icdict               # assign the icdict to the ics attribute
DSargs.pars = pardict             # assign the pardict to the pars attribute
DSargs.tdata = [0, 20]            # declare how long we expect to integrate for
DSargs.varspecs = vardict         # assign the vardict dictionary to the 'varspecs' attribute of DSargs




DS = Generator.Radau_ODEsystem(DSargs)

traj = DS.compute('demo')
pts = traj.sample()

plt.plot(pts['t'], pts['x'], label='x')
plt.plot(pts['t'], pts['y'], label='y')
plt.legend()
plt.xlabel('t')
plt.show();