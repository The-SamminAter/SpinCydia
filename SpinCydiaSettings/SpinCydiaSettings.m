#include "SpinCydiaSettings.h"

@implementation SpinCydiaSettingsListController
- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"SpinCydiaSettings" target:self];
	}

	return _specifiers;
}

@end
