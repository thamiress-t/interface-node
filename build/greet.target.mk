# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := greet
DEFS_Debug := \
	'-DNODE_GYP_MODULE_NAME=greet' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-DV8_DEPRECATION_WARNINGS' \
	'-DV8_IMMINENT_DEPRECATION_WARNINGS' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-D__STDC_FORMAT_MACROS' \
	'-DOPENSSL_NO_PINSHARED' \
	'-DOPENSSL_THREADS' \
	'-DNAPI_DISABLE_CPP_EXCEPTIONS' \
	'-DBUILDING_NODE_EXTENSION' \
	'-DDEBUG' \
	'-D_DEBUG' \
	'-DV8_ENABLE_CHECKS'

# Flags passed to all source files.
CFLAGS_Debug := \
	-fPIC \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-g \
	-O0

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-fno-rtti \
	-std=gnu++1y

INCS_Debug := \
	-I/home/pi/.cache/node-gyp/14.17.3/include/node \
	-I/home/pi/.cache/node-gyp/14.17.3/src \
	-I/home/pi/.cache/node-gyp/14.17.3/deps/openssl/config \
	-I/home/pi/.cache/node-gyp/14.17.3/deps/openssl/openssl/include \
	-I/home/pi/.cache/node-gyp/14.17.3/deps/uv/include \
	-I/home/pi/.cache/node-gyp/14.17.3/deps/zlib \
	-I/home/pi/.cache/node-gyp/14.17.3/deps/v8/include \
	-I/home/pi/native-addon-starter-kit/node_modules/node-addon-api

DEFS_Release := \
	'-DNODE_GYP_MODULE_NAME=greet' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-DV8_DEPRECATION_WARNINGS' \
	'-DV8_IMMINENT_DEPRECATION_WARNINGS' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-D__STDC_FORMAT_MACROS' \
	'-DOPENSSL_NO_PINSHARED' \
	'-DOPENSSL_THREADS' \
	'-DNAPI_DISABLE_CPP_EXCEPTIONS' \
	'-DBUILDING_NODE_EXTENSION'

# Flags passed to all source files.
CFLAGS_Release := \
	-fPIC \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-O3 \
	-fno-omit-frame-pointer

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-fno-rtti \
	-std=gnu++1y

INCS_Release := \
	-I/home/pi/.cache/node-gyp/14.17.3/include/node \
	-I/home/pi/.cache/node-gyp/14.17.3/src \
	-I/home/pi/.cache/node-gyp/14.17.3/deps/openssl/config \
	-I/home/pi/.cache/node-gyp/14.17.3/deps/openssl/openssl/include \
	-I/home/pi/.cache/node-gyp/14.17.3/deps/uv/include \
	-I/home/pi/.cache/node-gyp/14.17.3/deps/zlib \
	-I/home/pi/.cache/node-gyp/14.17.3/deps/v8/include \
	-I/home/pi/native-addon-starter-kit/node_modules/node-addon-api

OBJS := \
	$(obj).target/$(TARGET)/cpp/greeting.o \
	$(obj).target/$(TARGET)/cpp/index.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-pthread \
	-rdynamic

LDFLAGS_Release := \
	-pthread \
	-rdynamic

LIBS :=

$(obj).target/greet.node: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/greet.node: LIBS := $(LIBS)
$(obj).target/greet.node: TOOLSET := $(TOOLSET)
$(obj).target/greet.node: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,solink_module)

all_deps += $(obj).target/greet.node
# Add target alias
.PHONY: greet
greet: $(builddir)/greet.node

# Copy this to the executable output path.
$(builddir)/greet.node: TOOLSET := $(TOOLSET)
$(builddir)/greet.node: $(obj).target/greet.node FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/greet.node
# Short alias for building this executable.
.PHONY: greet.node
greet.node: $(obj).target/greet.node $(builddir)/greet.node

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/greet.node

