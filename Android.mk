LOCAL_PATH := $(call my-dir)  
  
include $(CLEAR_VARS)  

LOCAL_C_INCLUDES :=$(LOCAL_PATH) E:\tools\sdk\ndk-bundle\platforms\android-14\arch-arm\usr\include\

# 编译生成的模块的名称
LOCAL_MODULE := poison  

# 需要被编译的源码文件 
LOCAL_SRC_FILES := poison.c \
	       elf_utils.c \
	       ptrace_utils.c \
	       tools.c 

# 支持log日志打印android/log.h里函数调用的需要
LOCAL_LDLIBS += -L$(SYSROOT)/usr/lib -llog  

# 编译模块生成可执行文件 
include $(BUILD_EXECUTABLE)  
