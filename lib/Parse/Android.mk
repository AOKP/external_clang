LOCAL_PATH:= $(call my-dir)

# For the host only
# =====================================================
include $(CLEAR_VARS)
include $(CLEAR_TBLGEN_VARS)

TBLGEN_TABLES :=    \
	DiagnosticParseKinds.inc	\
    DiagnosticCommonKinds.inc

clang_parse_SRC_FILES :=	\
	AttributeList.cpp	\
	DeclSpec.cpp	\
	MinimalAction.cpp	\
	ParseCXXInlineMethods.cpp	\
	ParseDecl.cpp	\
	ParseDeclCXX.cpp	\
	ParseExpr.cpp	\
	ParseExprCXX.cpp	\
	ParseInit.cpp	\
	ParseObjc.cpp	\
	ParsePragma.cpp	\
	ParseStmt.cpp	\
	ParseTemplate.cpp	\
	ParseTentative.cpp	\
	Parser.cpp

LOCAL_SRC_FILES := $(clang_parse_SRC_FILES)

LOCAL_MODULE:= libclangParse

include $(CLANG_HOST_BUILD_MK)
include $(CLANG_TBLGEN_RULES_MK)
include $(BUILD_HOST_STATIC_LIBRARY)
