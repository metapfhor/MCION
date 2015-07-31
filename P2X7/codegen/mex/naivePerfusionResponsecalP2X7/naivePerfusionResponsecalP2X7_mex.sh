MATLAB="/usr/local/pkgs/MATLAB/R2013a"
Arch=glnxa64
ENTRYPOINT=mexFunction
MAPFILE=$ENTRYPOINT'.map'
PREFDIR="/home/lmackay/.matlab/R2013a"
OPTSFILE_NAME="./mexopts.sh"
. $OPTSFILE_NAME
COMPILER=$CC
. $OPTSFILE_NAME
echo "# Make settings for naivePerfusionResponsecalP2X7" > naivePerfusionResponsecalP2X7_mex.mki
echo "CC=$CC" >> naivePerfusionResponsecalP2X7_mex.mki
echo "CFLAGS=$CFLAGS" >> naivePerfusionResponsecalP2X7_mex.mki
echo "CLIBS=$CLIBS" >> naivePerfusionResponsecalP2X7_mex.mki
echo "COPTIMFLAGS=$COPTIMFLAGS" >> naivePerfusionResponsecalP2X7_mex.mki
echo "CDEBUGFLAGS=$CDEBUGFLAGS" >> naivePerfusionResponsecalP2X7_mex.mki
echo "CXX=$CXX" >> naivePerfusionResponsecalP2X7_mex.mki
echo "CXXFLAGS=$CXXFLAGS" >> naivePerfusionResponsecalP2X7_mex.mki
echo "CXXLIBS=$CXXLIBS" >> naivePerfusionResponsecalP2X7_mex.mki
echo "CXXOPTIMFLAGS=$CXXOPTIMFLAGS" >> naivePerfusionResponsecalP2X7_mex.mki
echo "CXXDEBUGFLAGS=$CXXDEBUGFLAGS" >> naivePerfusionResponsecalP2X7_mex.mki
echo "LD=$LD" >> naivePerfusionResponsecalP2X7_mex.mki
echo "LDFLAGS=$LDFLAGS" >> naivePerfusionResponsecalP2X7_mex.mki
echo "LDOPTIMFLAGS=$LDOPTIMFLAGS" >> naivePerfusionResponsecalP2X7_mex.mki
echo "LDDEBUGFLAGS=$LDDEBUGFLAGS" >> naivePerfusionResponsecalP2X7_mex.mki
echo "Arch=$Arch" >> naivePerfusionResponsecalP2X7_mex.mki
echo OMPFLAGS= >> naivePerfusionResponsecalP2X7_mex.mki
echo OMPLINKFLAGS= >> naivePerfusionResponsecalP2X7_mex.mki
echo "EMC_COMPILER=" >> naivePerfusionResponsecalP2X7_mex.mki
echo "EMC_CONFIG=optim" >> naivePerfusionResponsecalP2X7_mex.mki
"/usr/local/pkgs/MATLAB/R2013a/bin/glnxa64/gmake" -B -f naivePerfusionResponsecalP2X7_mex.mk
