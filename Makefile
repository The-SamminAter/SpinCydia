include $(THEOS)/makefiles/common.mk

ARCHS = armv7 arm64 arm64e
export GO_EASY_ON_ME=1
TWEAK_NAME = SpinCydia

$(TWEAK_NAME)_FILES = Tweak.xm
$(TWEAK_NAME)_CFLAGS = -Wno-error 
$(TWEAK_NAME)_FRAMEWORKS = UIKit Foundation CoreGraphics QuartzCore

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += SpinCydiaSettings
include $(THEOS_MAKE_PATH)/aggregate.mk

after-install::
	install.exec "killall -9 backboardd"
