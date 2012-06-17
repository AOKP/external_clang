LOCAL_PATH:= $(call my-dir)

# For the host only
# =====================================================
include $(CLEAR_VARS)
include $(CLEAR_TBLGEN_VARS)

TBLGEN_TABLES :=    \
	AttrImpl.inc	\
	AttrList.inc	\
	Attrs.inc	\
	DeclNodes.inc	\
	DiagnosticASTKinds.inc	\
	DiagnosticCommonKinds.inc	\
	DiagnosticSemaKinds.inc	\
	StmtNodes.inc

clang_ast_SRC_FILES :=	\
	APValue.cpp	\
	ASTConsumer.cpp	\
	ASTContext.cpp	\
	ASTDiagnostic.cpp	\
	ASTImporter.cpp	\
	AttrImpl.cpp	\
	CXXInheritance.cpp	\
	Decl.cpp	\
	DeclarationName.cpp	\
	DeclBase.cpp	\
	DeclCXX.cpp	\
	DeclFriend.cpp	\
	DeclGroup.cpp	\
	DeclObjC.cpp	\
	DeclPrinter.cpp	\
	DeclTemplate.cpp	\
	DumpXML.cpp	\
	Expr.cpp	\
	ExprClassification.cpp	\
	ExprConstant.cpp	\
	ExprCXX.cpp	\
	ExternalASTSource.cpp	\
	InheritViz.cpp	\
	ItaniumCXXABI.cpp	\
	ItaniumMangle.cpp	\
	Mangle.cpp	\
	MicrosoftCXXABI.cpp	\
	MicrosoftMangle.cpp	\
	NestedNameSpecifier.cpp	\
	ParentMap.cpp	\
	RecordLayout.cpp	\
	RecordLayoutBuilder.cpp	\
	SelectorLocationsKind.cpp \
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
	TypePrinter.cpp \
	VTTBuilder.cpp \
	VTableBuilder.cpp

LOCAL_SRC_FILES := $(clang_ast_SRC_FILES)
LOCAL_CFLAGS := -fno-strict-aliasing

LOCAL_MODULE:= libclangAST
LOCAL_MODULE_TAGS := optional

LOCAL_MODULE_TAGS := optional

include $(CLANG_HOST_BUILD_MK)
include $(CLANG_TBLGEN_RULES_MK)
include $(BUILD_HOST_STATIC_LIBRARY)
