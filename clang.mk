ifeq ($(CLANG_ROOT_PATH),)
$(error Must set variable CLANG_ROOT_PATH before including this! $(LOCAL_PATH))
endif

CLANG_HOST_BUILD_MK := $(CLANG_ROOT_PATH)/clang-host-build.mk
CLANG_TBLGEN_RULES_MK := $(CLANG_ROOT_PATH)/clang-tblgen-rules.mk
