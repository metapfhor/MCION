MATLAB="/usr/local/pkgs/MATLAB/R2013a"
Arch=glnxa64
ENTRYPOINT=mexFunction
MAPFILE=$ENTRYPOINT'.map'
PREFDIR="/home/lmackay/.matlab/R2013a"
OPTSFILE_NAME="./mexopts.sh"
. $OPTSFILE_NAME
COMPILER=$CC
. $OPTSFILE_NAME
echo "# Make settings for naivePerfusionSSEIntegratorcalP2X7" > naivePerfusionSSEIntegratorcalP2X7_mex.mki
echo "CC=$CC" >> naivePerfusionSSEIntegratorcalP2X7_mex.mki
echo "CFLAGS=$CFLAGS" >> naivePerfusionSSEIntegratorcalP2X7_mex.mki
echo "CLIBS=$CLIBS" >> naivePerfusionSSEIntegratorcalP2X7_mex.mki
echo "COPTIMFLAGS=$COPTIMFLAGS" >> naivePerfusionSSEIntegratorcalP2X7_mex.mki
echo "CDEBUGFLAGS=$CDEBUGFLAGS" >> naivePerfusionSSEIntegratorcalP2X7_mex.mki
echo "CXX=$CXX" >> naivePerfusionSSEIntegratorcalP2X7_mex.mki
echo "CXXFLAGS=$CXXFLAGS" >> naivePerfusionSSEIntegratorcalP2X7_mex.mki
echo "CXXLIBS=$CXXLIBS" >> naivePerfusionSSEIntegratorcalP2X7_mex.mki
echo "CXXOPTIMFLAGS=$CXXOPTIMFLAGS" >> naivePerfusionSSEIntegratorcalP2X7_mex.mki
echo "CXXDEBUGFLAGS=$CXXDEBUGFLAGS" >> naivePerfusionSSEIntegratorcalP2X7_mex.mki
echo "LD=$LD" >> naivePerfusionSSEIntegratorcalP2X7_mex.mki
echo "LDFLAGS=$LDFLAGS" >> naivePerfusionSSEIntegratorcalP2X7_mex.mki
echo "LDOPTIMFLAGS=$LDOPTIMFLAGS" >> naivePerfusionSSEIntegratorcalP2X7_mex.mki
echo "LDDEBUGFLAGS=$LDDEBUGFLAGS" >> naivePerfusionSSEIntegratorcalP2X7_mex.mki
echo "Arch=$Arch" >> naivePerfusionSSEIntegratorcalP2X7_mex.mki
echo OMPFLAGS= >> naivePerfusionSSEIntegratorcalP2X7_mex.mki
echo OMPLINKFLAGS= >> naivePerfusionSSEIntegratorcalP2X7_mex.mki
echo "EMC_COMPILER=" >> naivePerfusionSSEIntegratorcalP2X7_mex.mki
echo "EMC_CONFIG=optim" >> naivePerfusionSSEIntegratorcalP2X7_mex.mki
"/usr/local/pkgs/MATLAB/R2013a/bin/glnxa64/gmake" -B -f naivePerfusionSSEIntegratorcalP2X7_mex.mk
