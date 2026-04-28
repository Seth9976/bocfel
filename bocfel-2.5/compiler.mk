ifeq ($(CXX), g++)
COMPILER_FLAGS=	-MMD -MP -MF .deps/$(*F).d -Wall -Wshadow -Wswitch -Wno-sign-compare -std=c++14 -pedantic
endif

ifeq ($(CXX), clang++)
COMPILER_FLAGS=	-MMD -MP -MF .deps/$(*F).d -Wall -Wunused-macros -std=c++14 -pedantic
endif

ifeq ($(CXX), icpc)
COMPILER_FLAGS=	-Wall -std=c++14
endif

ifeq ($(CXX), icpx)
COMPILER_FLAGS=	-MMD -MP -MF .deps/$(*F).d -Wall -std=c++14
endif

ifeq ($(CXX), sunCC)
COMPILER_FLAGS=	-xMMD -xMF .deps/$(*F).d -std=c++14 -pedantic
endif

ifeq ($(CXXHOST),)
REALCXX:=	$(CXX)
else
REALCXX:=	$(CXXHOST)-$(CXX)
endif
