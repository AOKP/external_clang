###########################################################
## TableGen: Compile .td files to .inc.
###########################################################
ifeq ($(LOCAL_MODULE_CLASS),)
    LOCAL_MODULE_CLASS := STATIC_LIBRARIES
endif

ifneq ($(strip $(TBLGEN_TABLES)),)

intermediates := $(call local-intermediates-dir)

ifneq ($(filter Diagnostic%Kinds.inc,$(TBLGEN_TABLES)),)
LOCAL_GENERATED_SOURCES += $(addprefix $(intermediates)/clang/Basic/,$(filter Diagnostic%Kinds.inc,$(TBLGEN_TABLES)))
$(intermediates)/clang/Basic/Diagnostic%Kinds.inc: $(CLANG_ROOT_PATH)/include/clang/Basic/Diagnostic.td $(TBLGEN)
	@echo "Building Clang $(patsubst Diagnostic%Kinds.inc,%,$(@F)) diagnostic tables with tblgen"
	$(call transform-host-td-to-out,clang-diags-defs -clang-component=$(patsubst Diagnostic%Kinds.inc,%,$(@F)))
endif

ifneq ($(findstring DiagnosticGroups.inc,$(TBLGEN_TABLES)),)
LOCAL_GENERATED_SOURCES += $(intermediates)/clang/Basic/DiagnosticGroups.inc
$(intermediates)/clang/Basic/DiagnosticGroups.inc: $(CLANG_ROOT_PATH)/include/clang/Basic/Diagnostic.td $(CLANG_ROOT_PATH)/include/clang/Basic/DiagnosticGroups.td $(TBLGEN)
	@echo "Building Clang diagnostic groups with tblgen"
	$(call transform-host-td-to-out,clang-diag-groups)
endif

ifneq ($(findstring Options.inc,$(TBLGEN_TABLES)),)
LOCAL_GENERATED_SOURCES += $(intermediates)/clang/Driver/Options.inc
$(intermediates)/clang/Driver/Options.inc: $(CLANG_ROOT_PATH)/include/clang/Driver/Options.td $(CLANG_ROOT_PATH)/include/clang/Driver/OptParser.td $(TBLGEN)
	@echo "Building Clang Driver Option tables with tblgen"
	$(call transform-host-td-to-out,opt-parser-defs)
endif

ifneq ($(findstring CC1Options.inc,$(TBLGEN_TABLES)),)
LOCAL_GENERATED_SOURCES += $(intermediates)/clang/Driver/CC1Options.inc
$(intermediates)/clang/Driver/CC1Options.inc: $(CLANG_ROOT_PATH)/include/clang/Driver/CC1Options.td $(CLANG_ROOT_PATH)/include/clang/Driver/OptParser.td $(TBLGEN)
	@echo "Building Clang CC1 Option tables with tblgen"
	$(call transform-host-td-to-out,opt-parser-defs)
endif

endif
