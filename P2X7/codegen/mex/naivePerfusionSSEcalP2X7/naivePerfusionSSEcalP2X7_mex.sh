MATLAB="/usr/local/pkgs/MATLAB/R2013a"
Arch=glnxa64
ENTRYPOINT=mexFunction
MAPFILE=$ENTRYPOINT'.map'
PREFDIR="/home/lmackay/.matlab/R2013a"
OPTSFILE_NAME="./mexopts.sh"
. $OPTSFILE_NAME
COMPILER=$CC
. $OPTSFILE_NAME
echo "# Make settings for naivePerfusionSSEcalP2X7" > naivePerfusionSSEcalP2X7_mex.mki
echo "CC=$CC" >> naivePerfusionSSEcalP2X7_mex.mki
echo "CFLAGS=$CFLAGS" >> naivePerfusionSSEcalP2X7_mex.mki
echo "CLIBS=$CLIBS" >> naivePerfusionSSEcalP2X7_mex.mki
echo "COPTIMFLAGS=$COPTIMFLAGS" >> naivePerfusionSSEcalP2X7_mex.mki
echo "CDEBUGFLAGS=$CDEBUGFLAGS" >> naivePerfusionSSEcalP2X7_mex.mki
echo "CXX=$CXX" >> naivePerfusionSSEcalP2X7_mex.mki
echo "CXXFLAGS=$CXXFLAGS" >> naivePerfusionSSEcalP2X7_mex.mki
echo "CXXLIBS=$CXXLIBS" >> naivePerfusionSSEcalP2X7_mex.mki
echo "CXXOPTIMFLAGS=$CXXOPTIMFLAGS" >> naivePerfusionSSEcalP2X7_mex.mki
echo "CXXDEBUGFLAGS=$CXXDEBUGFLAGS" >> naivePerfusionSSEcalP2X7_mex.mki
echo "LD=$LD" >> naivePerfusionSSEcalP2X7_mex.mki
echo "LDFLAGS=$LDFLAGS" >> naivePerfusionSSEcalP2X7_mex.mki
echo "LDOPTIMFLAGS=$LDOPTIMFLAGS" >> naivePerfusionSSEcalP2X7_mex.mki
echo "LDDEBUGFLAGS=$LDDEBUGFLAGS" >> naivePerfusionSSEcalP2X7_mex.mki
echo "Arch=$Arch" >> naivePerfusionSSEcalP2X7_mex.mki
echo OMPFLAGS= >> naivePerfusionSSEcalP2X7_mex.mki
echo OMPLINKFLAGS= >> naivePerfusionSSEcalP2X7_mex.mki
echo "EMC_COMPILER=" >> naivePerfusionSSEcalP2X7_mex.mki
echo "EMC_CONFIG=optim" >> naivePerfusionSSEcalP2X7_mex.mki
"/usr/local/pkgs/MATLAB/R2013a/bin/glnxa64/gmake" -B -f naivePerfusionSSEcalP2X7_mex.mk
