#================================================================#
# Copyright (c) 2010-2011 Zipline Games, Inc.
# All Rights Reserved.
# http://getmoai.com
#================================================================#

	include $(CLEAR_VARS)

	LOCAL_MODULE 		:= moai-fmod-ex
	LOCAL_ARM_MODE 		:= $(MY_ARM_MODE)
	LOCAL_CFLAGS		:= $(MY_LOCAL_CFLAGS) -include $(MOAI_SDK_HOME)/src/zl-vfs/zl_replace.h -fvisibility=hidden

	LOCAL_C_INCLUDES 	:= $(MY_HEADER_SEARCH_PATHS)
	LOCAL_SRC_FILES 	+= $(MOAI_SDK_HOME)/src/moai-fmod-ex/host.cpp
	LOCAL_SRC_FILES 	+= $(MOAI_SDK_HOME)/src/moai-fmod-ex/MOAIFmodEx.cpp
	LOCAL_SRC_FILES 	+= $(MOAI_SDK_HOME)/src/moai-fmod-ex/MOAIFmodExChannel.cpp
	LOCAL_SRC_FILES 	+= $(MOAI_SDK_HOME)/src/moai-fmod-ex/MOAIFmodExSound.cpp

	include $(BUILD_STATIC_LIBRARY)