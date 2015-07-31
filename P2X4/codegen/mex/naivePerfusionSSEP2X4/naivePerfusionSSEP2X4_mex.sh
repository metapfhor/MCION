MATLAB="/usr/local/pkgs/MATLAB/R2013a"
Arch=glnxa64
ENTRYPOINT=mexFunction
MAPFILE=$ENTRYPOINT'.map'
PREFDIR="/home/cnd/omar.khan/.matlab/R2013a"
OPTSFILE_NAME="./mexopts.sh"
. $OPTSFILE_NAME
COMPILER=$CC
. $OPTSFILE_NAME
echo "# Make settings for naivePerfusionSSEP2X4" > naivePerfusionSSEP2X4_mex.mki
echo "CC=$CC" >> naivePerfusionSSEP2X4_mex.mki
echo "CFLAGS=$CFLAGS" >> naivePerfusionSSEP2X4_mex.mki
echo "CLIBS=$CLIBS" >> naivePerfusionSSEP2X4_mex.mki
echo "COPTIMFLAGS=$COPTIMFLAGS" >> naivePerfusionSSEP2X4_mex.mki
echo "CDEBUGFLAGS=$CDEBUGFLAGS" >> naivePerfusionSSEP2X4_mex.mki
echo "CXX=$CXX" >> naivePerfusionSSEP2X4_mex.mki
echo "CXXFLAGS=$CXXFLAGS" >> naivePerfusionSSEP2X4_mex.mki
echo "CXXLIBS=$CXXLIBS" >> naivePerfusionSSEP2X4_mex.mki
echo "CXXOPTIMFLAGS=$CXXOPTIMFLAGS" >> naivePerfusionSSEP2X4_mex.mki
echo "CXXDEBUGFLAGS=$CXXDEBUGFLAGS" >> naivePerfusionSSEP2X4_mex.mki
echo "LD=$LD" >> naivePerfusionSSEP2X4_mex.mki
echo "LDFLAGS=$LDFLAGS" >> naivePerfusionSSEP2X4_mex.mki
echo "LDOPTIMFLAGS=$LDOPTIMFLAGS" >> naivePerfusionSSEP2X4_mex.mki
echo "LDDEBUGFLAGS=$LDDEBUGFLAGS" >> naivePerfusionSSEP2X4_mex.mki
echo "Arch=$Arch" >> naivePerfusionSSEP2X4_mex.mki
echo OMPFLAGS= >> naivePerfusionSSEP2X4_mex.mki
echo OMPLINKFLAGS= >> naivePerfusionSSEP2X4_mex.mki
echo "EMC_COMPILER=" >> naivePerfusionSSEP2X4_mex.mki
echo "EMC_CONFIG=optim" >> naivePerfusionSSEP2X4_mex.mki
"/usr/local/pkgs/MATLAB/R2013a/bin/glnxa64/gmake" -B -f naivePerfusionSSEP2X4_mex.mk
