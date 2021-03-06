##############################################################################
# Compiler and flags
CC= g++
CFLAGS= -g -O3  -std=c++0x 

USEBLAS= True

# NETCDF library directories
NETCDF_INCLUDEDIR=/usr/include
NETCDF_LIBDIR=/usr/lib64

# Library files to include
LDFILES= -llapack -lblas -lnetcdf -lnetcdf_c++ 

##############################################################################
# DO NOT MODIFY BELOW THIS LINE
##############################################################################

# Local files
FILES= Announce.cpp \
       PolynomialInterp.cpp \
       GridElements.cpp \
       OverlapMesh.cpp \
       MeshUtilities.cpp \
       MeshUtilitiesFuzzy.cpp \
       MeshUtilitiesExact.cpp \
       GaussQuadrature.cpp \
       GaussLobattoQuadrature.cpp \
       FiniteElementTools.cpp \
       NetCDFUtilities.cpp \
       OfflineMap.cpp \
       TriangularQuadrature.cpp

GENERATERLLMESH_FILES= GenerateRLLMesh.cpp $(FILES)

GENERATECSMESH_FILES= GenerateCSMesh.cpp $(FILES)

GENERATEICOMESH_FILES= GenerateICOMesh.cpp $(FILES)

GENERATELAMBERTCONFCONICMESH_FILES = GenerateLambertConfConicMesh.cpp $(FILES)

GENERATEOVERLAPMESH_FILES= GenerateOverlapMesh.cpp $(FILES)

GENERATEGLLMETADATA_FILES= GenerateGLLMetaData.cpp $(FILES)

MESHTOTXT_FILES= MeshToTxt.cpp $(FILES)

GENERATETESTDATA_FILES= GenerateTestData.cpp $(FILES)

CALCULATEDIFFNORMS_FILES= CalculateDiffNorms.cpp $(FILES)

APPLYOFFLINEMAP_FILES= ApplyOfflineMap.cpp $(FILES)

GENERATEOFFLINEMAP_FILES= GenerateOfflineMap.cpp LinearRemapSE0.cpp LinearRemapFV.cpp $(FILES)

# Load system-specific defaults
CFLAGS+= -I$(NETCDF_INCLUDEDIR)
LDFLAGS+= -L$(NETCDF_LIBDIR)

include Make.defs

##
## Build instructions
##
all: GenerateRLLMesh GenerateCSMesh GenerateICOMesh GenerateLambertConfConicMesh GenerateOverlapMesh GenerateGLLMetaData MeshToTxt GenerateTestData CalculateDiffNorms ApplyOfflineMap GenerateOfflineMap

GenerateRLLMesh: $(GENERATERLLMESH_FILES:%.cpp=$(BUILDDIR)/%.o)
	$(CC) $(LDFLAGS) -o $@ $(GENERATERLLMESH_FILES:%.cpp=$(BUILDDIR)/%.o) $(LDFILES)

GenerateCSMesh: $(GENERATECSMESH_FILES:%.cpp=$(BUILDDIR)/%.o)
	$(CC) $(LDFLAGS) -o $@ $(GENERATECSMESH_FILES:%.cpp=$(BUILDDIR)/%.o) $(LDFILES)

GenerateICOMesh: $(GENERATEICOMESH_FILES:%.cpp=$(BUILDDIR)/%.o)
	$(CC) $(LDFLAGS) -o $@ $(GENERATEICOMESH_FILES:%.cpp=$(BUILDDIR)/%.o) $(LDFILES)

GenerateLambertConfConicMesh: $(GENERATELAMBERTCONFCONICMESH_FILES:%.cpp=$(BUILDDIR)/%.o)
	$(CC) $(LDFLAGS) -o $@ $(GENERATELAMBERTCONFCONICMESH_FILES:%.cpp=$(BUILDDIR)/%.o) $(LDFILES)

GenerateOverlapMesh: $(GENERATEOVERLAPMESH_FILES:%.cpp=$(BUILDDIR)/%.o)
	$(CC) $(LDFLAGS) -o $@ $(GENERATEOVERLAPMESH_FILES:%.cpp=$(BUILDDIR)/%.o) $(LDFILES)

GenerateGLLMetaData: $(GENERATEGLLMETADATA_FILES:%.cpp=$(BUILDDIR)/%.o)
	$(CC) $(LDFLAGS) -o $@ $(GENERATEGLLMETADATA_FILES:%.cpp=$(BUILDDIR)/%.o) $(LDFILES)

MeshToTxt: $(MESHTOTXT_FILES:%.cpp=$(BUILDDIR)/%.o)
	$(CC) $(LDFLAGS) -o $@ $(MESHTOTXT_FILES:%.cpp=$(BUILDDIR)/%.o) $(LDFILES)

GenerateTestData: $(GENERATETESTDATA_FILES:%.cpp=$(BUILDDIR)/%.o)
	$(CC) $(LDFLAGS) -o $@ $(GENERATETESTDATA_FILES:%.cpp=$(BUILDDIR)/%.o) $(LDFILES)

CalculateDiffNorms: $(CALCULATEDIFFNORMS_FILES:%.cpp=$(BUILDDIR)/%.o)
	$(CC) $(LDFLAGS) -o $@ $(CALCULATEDIFFNORMS_FILES:%.cpp=$(BUILDDIR)/%.o) $(LDFILES)

ApplyOfflineMap: $(APPLYOFFLINEMAP_FILES:%.cpp=$(BUILDDIR)/%.o)
	$(CC) $(LDFLAGS) -o $@ $(APPLYOFFLINEMAP_FILES:%.cpp=$(BUILDDIR)/%.o) $(LDFILES)

GenerateOfflineMap: $(GENERATEOFFLINEMAP_FILES:%.cpp=$(BUILDDIR)/%.o)
	$(CC) $(LDFLAGS) -o $@ $(GENERATEOFFLINEMAP_FILES:%.cpp=$(BUILDDIR)/%.o) $(LDFILES)


##
## Clean
##
clean:
	rm -f GenerateRLLMesh GenerateCSMesh GenerateICOMesh GenerateLambertConfConicMesh GenerateOverlapMesh GenerateGLLMetaData MeshToTxt GenerateTestData CalculateDiffNorms ApplyOfflineMap GenerateOfflineMap *.o
	rm -rf $(DEPDIR)
	rm -rf $(BUILDDIR)

##
## Include dependencies
##
include $(FILES:%.cpp=$(DEPDIR)/%.d)

# DO NOT DELETE

