#import <Preferences/PSListController.h>
#import <UIKit/UIKit.h>

@interface SpinCydiaSettingsListController: PSListController {
}
@end

@interface ViewController : UIViewController <UIImagePickerControllerDelegate,UINavigationControllerDelegate>
@end

@implementation SpinCydiaSettingsListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"SpinCydiaSettings" target:self] retain];
	}
	return _specifiers;

}

-(void)save
{
    [self.view endEditing:YES];
}

@end
