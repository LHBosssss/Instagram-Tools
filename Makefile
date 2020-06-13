INSTALL_TARGET_PROCESSES = Instagram
THEOS_DEVICE_IP = 192.168.1.8
ARCHS = arm64e
DEBUG = 0
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = InstagramTools

InstagramTools_FILES = Tweak.x
InstagramTools_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
