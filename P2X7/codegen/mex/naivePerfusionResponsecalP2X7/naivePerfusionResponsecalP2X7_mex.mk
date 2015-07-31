START_DIR = /home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Calcium\ Binding

MATLAB_ROOT = /usr/local/pkgs/MATLAB/R2013a
MAKEFILE = naivePerfusionResponsecalP2X7_mex.mk

include naivePerfusionResponsecalP2X7_mex.mki


SRC_FILES =  \
	naivePerfusionResponsecalP2X7_mexutil.c \
	naivePerfusionResponsecalP2X7_data.c \
	naivePerfusionResponsecalP2X7_initialize.c \
	naivePerfusionResponsecalP2X7_terminate.c \
	naivePerfusionResponsecalP2X7.c \
	sum.c \
	linearODESolvecalP2X7.c \
	expm.c \
	mldivide.c \
	naivePerfusionResponsecalP2X7_api.c \
	naivePerfusionResponsecalP2X7_emxutil.c \
	naivePerfusionResponsecalP2X7_mex.c

MEX_FILE_NAME_WO_EXT = naivePerfusionResponsecalP2X7_mex
MEX_FILE_NAME = $(MEX_FILE_NAME_WO_EXT).mexa64
TARGET = $(MEX_FILE_NAME)

SYS_LIBS = 


#
#====================================================================
# gmake makefile fragment for building MEX functions using Unix
# Copyright 2007-2012 The MathWorks, Inc.
#====================================================================
#
OBJEXT = o
.SUFFIXES: .$(OBJEXT)

OBJLISTC = $(SRC_FILES:.c=.$(OBJEXT))
OBJLISTCPP  = $(OBJLISTC:.cpp=.$(OBJEXT))
OBJLIST  = $(OBJLISTCPP:.cu=.$(OBJEXT))

target: $(TARGET)

ML_INCLUDES = -I "$(MATLAB_ROOT)/simulink/include"
ML_INCLUDES+= -I "$(MATLAB_ROOT)/toolbox/shared/simtargets"
ML_INCLUDES+= -I "$(MATLAB_ROOT)/rtw/ext_mode/common"
ML_INCLUDES+= -I "$(MATLAB_ROOT)/rtw/c/src/ext_mode/common"
SYS_INCLUDE = $(ML_INCLUDES)

# Additional includes

SYS_INCLUDE += -I "$(START_DIR)"
SYS_INCLUDE += -I "$(START_DIR)/codegen/mex/naivePerfusionResponsecalP2X7"
SYS_INCLUDE += -I "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models"
SYS_INCLUDE += -I "$(MATLAB_ROOT)/extern/include"

EML_LIBS = -lemlrt -lut -lmwmathutil -lmwblas
SYS_LIBS += $(CLIBS) $(EML_LIBS)


EXPORTFILE = $(MEX_FILE_NAME_WO_EXT)_mex.map
ifeq ($(Arch),maci)
  EXPORTOPT = -Wl,-exported_symbols_list,$(EXPORTFILE)
  COMP_FLAGS = -c $(CFLAGS) -DMX_COMPAT_32
  CXX_FLAGS = -c $(CXXFLAGS) -DMX_COMPAT_32
  LINK_FLAGS = $(filter-out %mexFunction.map, $(LDFLAGS))
else ifeq ($(Arch),maci64)
  EXPORTOPT = -Wl,-exported_symbols_list,$(EXPORTFILE)
  COMP_FLAGS = -c $(CFLAGS) -DMX_COMPAT_32
  CXX_FLAGS = -c $(CXXFLAGS) -DMX_COMPAT_32
  LINK_FLAGS = $(filter-out %mexFunction.map, $(LDFLAGS))
else
  EXPORTOPT = -Wl,--version-script,$(EXPORTFILE)
  COMP_FLAGS = -c $(CFLAGS) -DMX_COMPAT_32 $(OMPFLAGS)
  CXX_FLAGS = -c $(CXXFLAGS) -DMX_COMPAT_32 $(OMPFLAGS)
  LINK_FLAGS = $(filter-out %mexFunction.map, $(LDFLAGS)) 
endif
LINK_FLAGS += $(OMPLINKFLAGS)
ifeq ($(Arch),maci)
  LINK_FLAGS += -L$(MATLAB_ROOT)/sys/os/maci
endif
ifeq ($(EMC_CONFIG),optim)
  ifeq ($(Arch),mac)
    COMP_FLAGS += $(CDEBUGFLAGS)
    CXX_FLAGS += $(CXXDEBUGFLAGS)
  else
    COMP_FLAGS += $(COPTIMFLAGS)
    CXX_FLAGS += $(CXXOPTIMFLAGS)
  endif
  LINK_FLAGS += $(LDOPTIMFLAGS)
else
  COMP_FLAGS += $(CDEBUGFLAGS)
  CXX_FLAGS += $(CXXDEBUGFLAGS)
  LINK_FLAGS += $(LDDEBUGFLAGS)
endif
LINK_FLAGS += -o $(TARGET)
LINK_FLAGS += 

CCFLAGS =  $(COMP_FLAGS) $(USER_INCLUDE) $(SYS_INCLUDE)
CPPFLAGS =   $(CXX_FLAGS) $(USER_INCLUDE) $(SYS_INCLUDE)

%.$(OBJEXT) : %.c
	$(CC) $(CCFLAGS) "$<"

%.$(OBJEXT) : %.cpp
	$(CXX) $(CPPFLAGS) "$<"

# Additional sources

%.$(OBJEXT) : $(START_DIR)/%.c
	$(CC) $(CCFLAGS) "$<"

%.$(OBJEXT) : $(START_DIR)/codegen/mex/naivePerfusionResponsecalP2X7/%.c
	$(CC) $(CCFLAGS) "$<"



%.$(OBJEXT) : $(START_DIR)/%.cu
	$(CC) $(CCFLAGS) "$<"

%.$(OBJEXT) : $(START_DIR)/codegen/mex/naivePerfusionResponsecalP2X7/%.cu
	$(CC) $(CCFLAGS) "$<"



%.$(OBJEXT) : $(START_DIR)/%.cpp
	$(CXX) $(CPPFLAGS) "$<"

%.$(OBJEXT) : $(START_DIR)/codegen/mex/naivePerfusionResponsecalP2X7/%.cpp
	$(CXX) $(CPPFLAGS) "$<"



$(TARGET): $(OBJLIST) $(MAKEFILE)
	$(LD) $(EXPORTOPT) $(LINK_FLAGS) $(OBJLIST) $(SYS_LIBS)

#====================================================================

