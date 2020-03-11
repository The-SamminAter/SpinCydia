include $(THEOS)/makefiles/common.mk
ARCHS = armv7 arm64 arm64e
BUNDLE_NAME = SpinCydiaSettings

SpinSettingsSettings_FILES = SpinCydiaSettings.mm
SpinSettingsSettings_INSTALL_PATH = /Library/PreferenceBundles
SpinSettingsSettings_FRAMEWORKS = UIKit
SpinSettingsSettings_PRIVATE_FRAMEWORKS = Preferences
SpinSettingsSettings_CFLAGS = -Wno-error

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/SpinCydiaSettings.plist$(ECHO_END)

include $(THEOS_MAKE_PATH)/aggregate.mk