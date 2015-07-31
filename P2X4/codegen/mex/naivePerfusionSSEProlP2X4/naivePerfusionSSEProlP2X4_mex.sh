MATLAB="/usr/local/pkgs/MATLAB/R2013a"
Arch=glnxa64
ENTRYPOINT=mexFunction
MAPFILE=$ENTRYPOINT'.map'
PREFDIR="/home/cnd/omar.khan/.matlab/R2013a"
OPTSFILE_NAME="./mexopts.sh"
. $OPTSFILE_NAME
COMPILER=$CC
. $OPTSFILE_NAME
echo "# Make settings for naivePerfusionSSEProlP2X4" > naivePerfusionSSEProlP2X4_mex.mki
echo "CC=$CC" >> naivePerfusionSSEProlP2X4_mex.mki
echo "CFLAGS=$CFLAGS" >> naivePerfusionSSEProlP2X4_mex.mki
echo "CLIBS=$CLIBS" >> naivePerfusionSSEProlP2X4_mex.mki
echo "COPTIMFLAGS=$COPTIMFLAGS" >> naivePerfusionSSEProlP2X4_mex.mki
echo "CDEBUGFLAGS=$CDEBUGFLAGS" >> naivePerfusionSSEProlP2X4_mex.mki
echo "CXX=$CXX" >> naivePerfusionSSEProlP2X4_mex.mki
echo "CXXFLAGS=$CXXFLAGS" >> naivePerfusionSSEProlP2X4_mex.mki
echo "CXXLIBS=$CXXLIBS" >> naivePerfusionSSEProlP2X4_mex.mki
echo "CXXOPTIMFLAGS=$CXXOPTIMFLAGS" >> naivePerfusionSSEProlP2X4_mex.mki
echo "CXXDEBUGFLAGS=$CXXDEBUGFLAGS" >> naivePerfusionSSEProlP2X4_mex.mki
echo "LD=$LD" >> naivePerfusionSSEProlP2X4_mex.mki
echo "LDFLAGS=$LDFLAGS" >> naivePerfusionSSEProlP2X4_mex.mki
echo "LDOPTIMFLAGS=$LDOPTIMFLAGS" >> naivePerfusionSSEProlP2X4_mex.mki
echo "LDDEBUGFLAGS=$LDDEBUGFLAGS" >> naivePerfusionSSEProlP2X4_mex.mki
echo "Arch=$Arch" >> naivePerfusionSSEProlP2X4_mex.mki
echo OMPFLAGS= >> naivePerfusionSSEProlP2X4_mex.mki
echo OMPLINKFLAGS= >> naivePerfusionSSEProlP2X4_mex.mki
echo "EMC_COMPILER=" >> naivePerfusionSSEProlP2X4_mex.mki
echo "EMC_CONFIG=optim" >> naivePerfusionSSEProlP2X4_mex.mki
"/usr/local/pkgs/MATLAB/R2013a/bin/glnxa64/gmake" -B -f naivePerfusionSSEProlP2X4_mex.mk
