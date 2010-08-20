LOCAL_PATH:= $(call my-dir)

# For the host only
# =====================================================
include $(CLEAR_VARS)
include $(CLEAR_TBLGEN_VARS)

TBLGEN_TABLES :=    \
    DiagnosticCommonKinds.inc

clang_codegen_SRC_FILES :=	\
	CGBlocks.cpp	\
	CGBuiltin.cpp	\
	CGCXX.cpp	\
	CGCall.cpp	\
	CGClass.cpp	\
	CGDebugInfo.cpp	\
	CGDecl.cpp	\
	CGDeclCXX.cpp	\
	CGException.cpp	\
	CGExpr.cpp	\
	CGExprAgg.cpp	\
	CGExprCXX.cpp	\
	CGExprComplex.cpp	\
	CGExprConstant.cpp	\
	CGExprScalar.cpp	\
	CGObjC.cpp	\
	CGObjCGNU.cpp	\
	CGObjCMac.cpp	\
	CGRTTI.cpp	\
	CGRecordLayoutBuilder.cpp	\
	CGStmt.cpp	\
	CGTemporaries.cpp	\
	CGVTT.cpp	\
	CGVTables.cpp	\
	CodeGenFunction.cpp	\
	CodeGenModule.cpp	\
	CodeGenTypes.cpp	\
	Mangle.cpp	\
	ModuleBuilder.cpp	\
	TargetInfo.cpp

LOCAL_SRC_FILES := $(clang_codegen_SRC_FILES)

LOCAL_MODULE:= libclangCodeGen

include $(CLANG_HOST_BUILD_MK)
include $(CLANG_TBLGEN_RULES_MK)
include $(LLVM_GEN_INTRINSICS_MK)
include $(BUILD_HOST_STATIC_LIBRARY)
