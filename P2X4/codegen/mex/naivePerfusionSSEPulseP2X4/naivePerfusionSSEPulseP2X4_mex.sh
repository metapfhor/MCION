MATLAB="/usr/local/pkgs/MATLAB/R2013a"
Arch=glnxa64
ENTRYPOINT=mexFunction
MAPFILE=$ENTRYPOINT'.map'
PREFDIR="/home/cnd/omar.khan/.matlab/R2013a"
OPTSFILE_NAME="./mexopts.sh"
. $OPTSFILE_NAME
COMPILER=$CC
. $OPTSFILE_NAME
echo "# Make settings for naivePerfusionSSEPulseP2X4" > naivePerfusionSSEPulseP2X4_mex.mki
echo "CC=$CC" >> naivePerfusionSSEPulseP2X4_mex.mki
echo "CFLAGS=$CFLAGS" >> naivePerfusionSSEPulseP2X4_mex.mki
echo "CLIBS=$CLIBS" >> naivePerfusionSSEPulseP2X4_mex.mki
echo "COPTIMFLAGS=$COPTIMFLAGS" >> naivePerfusionSSEPulseP2X4_mex.mki
echo "CDEBUGFLAGS=$CDEBUGFLAGS" >> naivePerfusionSSEPulseP2X4_mex.mki
echo "CXX=$CXX" >> naivePerfusionSSEPulseP2X4_mex.mki
echo "CXXFLAGS=$CXXFLAGS" >> naivePerfusionSSEPulseP2X4_mex.mki
echo "CXXLIBS=$CXXLIBS" >> naivePerfusionSSEPulseP2X4_mex.mki
echo "CXXOPTIMFLAGS=$CXXOPTIMFLAGS" >> naivePerfusionSSEPulseP2X4_mex.mki
echo "CXXDEBUGFLAGS=$CXXDEBUGFLAGS" >> naivePerfusionSSEPulseP2X4_mex.mki
echo "LD=$LD" >> naivePerfusionSSEPulseP2X4_mex.mki
echo "LDFLAGS=$LDFLAGS" >> naivePerfusionSSEPulseP2X4_mex.mki
echo "LDOPTIMFLAGS=$LDOPTIMFLAGS" >> naivePerfusionSSEPulseP2X4_mex.mki
echo "LDDEBUGFLAGS=$LDDEBUGFLAGS" >> naivePerfusionSSEPulseP2X4_mex.mki
echo "Arch=$Arch" >> naivePerfusionSSEPulseP2X4_mex.mki
echo OMPFLAGS= >> naivePerfusionSSEPulseP2X4_mex.mki
echo OMPLINKFLAGS= >> naivePerfusionSSEPulseP2X4_mex.mki
echo "EMC_COMPILER=" >> naivePerfusionSSEPulseP2X4_mex.mki
echo "EMC_CONFIG=optim" >> naivePerfusionSSEPulseP2X4_mex.mki
"/usr/local/pkgs/MATLAB/R2013a/bin/glnxa64/gmake" -B -f naivePerfusionSSEPulseP2X4_mex.mk
