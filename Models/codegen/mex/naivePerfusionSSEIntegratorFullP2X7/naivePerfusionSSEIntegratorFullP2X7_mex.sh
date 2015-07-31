MATLAB="/usr/local/pkgs/MATLAB/R2013a"
Arch=glnxa64
ENTRYPOINT=mexFunction
MAPFILE=$ENTRYPOINT'.map'
PREFDIR="/home/lmackay/.matlab/R2013a"
OPTSFILE_NAME="./mexopts.sh"
. $OPTSFILE_NAME
COMPILER=$CC
. $OPTSFILE_NAME
echo "# Make settings for naivePerfusionSSEIntegratorFullP2X7" > naivePerfusionSSEIntegratorFullP2X7_mex.mki
echo "CC=$CC" >> naivePerfusionSSEIntegratorFullP2X7_mex.mki
echo "CFLAGS=$CFLAGS" >> naivePerfusionSSEIntegratorFullP2X7_mex.mki
echo "CLIBS=$CLIBS" >> naivePerfusionSSEIntegratorFullP2X7_mex.mki
echo "COPTIMFLAGS=$COPTIMFLAGS" >> naivePerfusionSSEIntegratorFullP2X7_mex.mki
echo "CDEBUGFLAGS=$CDEBUGFLAGS" >> naivePerfusionSSEIntegratorFullP2X7_mex.mki
echo "CXX=$CXX" >> naivePerfusionSSEIntegratorFullP2X7_mex.mki
echo "CXXFLAGS=$CXXFLAGS" >> naivePerfusionSSEIntegratorFullP2X7_mex.mki
echo "CXXLIBS=$CXXLIBS" >> naivePerfusionSSEIntegratorFullP2X7_mex.mki
echo "CXXOPTIMFLAGS=$CXXOPTIMFLAGS" >> naivePerfusionSSEIntegratorFullP2X7_mex.mki
echo "CXXDEBUGFLAGS=$CXXDEBUGFLAGS" >> naivePerfusionSSEIntegratorFullP2X7_mex.mki
echo "LD=$LD" >> naivePerfusionSSEIntegratorFullP2X7_mex.mki
echo "LDFLAGS=$LDFLAGS" >> naivePerfusionSSEIntegratorFullP2X7_mex.mki
echo "LDOPTIMFLAGS=$LDOPTIMFLAGS" >> naivePerfusionSSEIntegratorFullP2X7_mex.mki
echo "LDDEBUGFLAGS=$LDDEBUGFLAGS" >> naivePerfusionSSEIntegratorFullP2X7_mex.mki
echo "Arch=$Arch" >> naivePerfusionSSEIntegratorFullP2X7_mex.mki
echo OMPFLAGS= >> naivePerfusionSSEIntegratorFullP2X7_mex.mki
echo OMPLINKFLAGS= >> naivePerfusionSSEIntegratorFullP2X7_mex.mki
echo "EMC_COMPILER=" >> naivePerfusionSSEIntegratorFullP2X7_mex.mki
echo "EMC_CONFIG=optim" >> naivePerfusionSSEIntegratorFullP2X7_mex.mki
"/usr/local/pkgs/MATLAB/R2013a/bin/glnxa64/gmake" -B -f naivePerfusionSSEIntegratorFullP2X7_mex.mk
