ARCHS = armv7 arm64 arm64e
include theos/makefiles/common.mk

TWEAK_NAME = SpinCydia
SpinSettings_FILES = Tweak.xm
SpinSettings_FRAMEWORKS = UIKit Foundation CoreGraphics QuartzCore
SpinSettings_CFLAGS = -Wno-error
export GO_EASY_ON_ME := 1
include $(THEOS_MAKE_PATH)/tweak.mk

SUBPROJECTS += SpinCydiaSettings
include $(THEOS_MAKE_PATH)/aggregate.mk

after-install::
	install.exec "killall -9 backboardd"
