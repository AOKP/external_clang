LOCAL_PATH:= $(call my-dir)

# For the host only
# =====================================================
include $(CLEAR_VARS)
include $(CLEAR_TBLGEN_VARS)

TBLGEN_TABLES :=    \
    DiagnosticCommonKinds.inc	\
	DiagnosticAnalysisKinds.inc

clang_analysis_SRC_FILES :=	\
	AnalysisContext.cpp	\
	CFG.cpp	\
	LiveVariables.cpp	\
	PrintfFormatString.cpp	\
	ReachableCode.cpp	\
	UninitializedValues.cpp


LOCAL_SRC_FILES := $(clang_analysis_SRC_FILES)

LOCAL_MODULE:= libclangAnalysis

include $(CLANG_HOST_BUILD_MK)
include $(CLANG_TBLGEN_RULES_MK)
include $(BUILD_HOST_STATIC_LIBRARY)
