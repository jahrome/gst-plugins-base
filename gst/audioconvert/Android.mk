LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= 		\
	gstaudioconvert.c 	\
	gstaudioconvertorc-dist.c	\
	audioconvert.c 		\
	gstchannelmix.c 	\
	gstaudioquantize.c 	\
	plugin.c

LOCAL_SHARED_LIBRARIES := \
	liborc				  \
	libgstaudio-0.10   \
	libgstreamer-0.10	   \
	libgstbase-0.10		 \
	libglib-2.0			 \
	libgthread-2.0		  \
	libgmodule-2.0		  \
	libgobject-2.0

LOCAL_MODULE:= libgstaudioconvert

LOCAL_C_INCLUDES := 			\
	$(LOCAL_PATH)			\
	$(GST_PLUGINS_BASE_TOP)		\
	$(GST_PLUGINS_BASE_TOP)/android	\
	$(GST_PLUGINS_BASE_TOP)/gst-libs	\
	$(GST_PLUGINS_BASE_TOP)/gst-libs/gst/audio/android	\
	external/orc			\
	external/gstreamer		\
	external/gstreamer/android 	\
	external/gstreamer/libs		\
	external/gstreamer/gst		\
	external/gstreamer/gst/android	\
	external/glib			\
	external/glib/glib		\
	external/glib/android	  	\
	external/glib/gmodule	  	\
	external/glib/gobject	  	\
	external/glib/gthread

LOCAL_CFLAGS := \
	-DHAVE_CONFIG_H	

include $(BUILD_PLUGIN_LIBRARY)
