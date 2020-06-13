INSTALL_TARGET_PROCESSES = Instagram

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = InstagramTools

InstagramTools_FILES = Tweak.x
InstagramTools_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
