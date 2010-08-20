LOCAL_PATH:= $(call my-dir)

# For the host only
# =====================================================
include $(CLEAR_VARS)
include $(CLEAR_TBLGEN_VARS)

TBLGEN_TABLES :=    \
	DiagnosticASTKinds.inc	\
    DiagnosticCommonKinds.inc

clang_ast_SRC_FILES :=	\
	APValue.cpp	\
	ASTConsumer.cpp	\
	ASTContext.cpp	\
	ASTDiagnostic.cpp	\
	ASTImporter.cpp	\
	AttrImpl.cpp	\
	CXXInheritance.cpp	\
	Decl.cpp	\
	DeclBase.cpp	\
	DeclCXX.cpp	\
	DeclFriend.cpp	\
	DeclGroup.cpp	\
	DeclObjC.cpp	\
	DeclPrinter.cpp	\
	DeclTemplate.cpp	\
	DeclarationName.cpp	\
	Expr.cpp	\
	ExprCXX.cpp	\
	ExprConstant.cpp	\
	FullExpr.cpp	\
	InheritViz.cpp	\
	NestedNameSpecifier.cpp	\
	ParentMap.cpp	\
	RecordLayout.cpp	\
	RecordLayoutBuilder.cpp	\
	Stmt.cpp	\
	StmtDumper.cpp	\
	StmtIterator.cpp	\
	StmtPrinter.cpp	\
	StmtProfile.cpp	\
	StmtViz.cpp	\
	TemplateBase.cpp	\
	TemplateName.cpp	\
	Type.cpp	\
	TypeLoc.cpp	\
	TypePrinter.cpp

LOCAL_SRC_FILES := $(clang_ast_SRC_FILES)

LOCAL_MODULE:= libclangAST

include $(CLANG_HOST_BUILD_MK)
include $(CLANG_TBLGEN_RULES_MK)
include $(BUILD_HOST_STATIC_LIBRARY)
