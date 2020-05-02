#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioServices.h>
#import <Cephei/HBPreferences.h>

#define SYSTEM_VERSION_LESS_THAN(v) ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedAscending)

// Utils
HBPreferences *pfs;

// Thanks to Nepeta for the DRM
BOOL dpkgInvalid = NO;

// Option Switches
extern BOOL enabled;
BOOL typingSoundSwitch = NO;
BOOL screenshotSoundSwitch = NO;

BOOL isUnlock;

// Homescreen
SystemSoundID killingAppSound;
SystemSoundID forceTouchSound;
SystemSoundID appSwitcherSound;
SystemSoundID folderOpenSound;
SystemSoundID folderCloseSound;
SystemSoundID tappingIconSound;
SystemSoundID swipingSound;
SystemSoundID spotlightSound;

NSString *killingAppSoundsList;
NSString *forceTouchSoundsList;
NSString *appSwitcherSoundsList;
NSString *folderOpenSoundsList;
NSString *folderCloseSoundsList;
NSString *tappingIconSoundsList;
NSString *swipingSoundsList;
NSString *spotlightSoundsList;

// Lockscreen
SystemSoundID passcodeSound;

NSString *passcodeSoundsList;

// Anywhere
SystemSoundID siriSound;
SystemSoundID screenshotSound;
SystemSoundID reachabilitySound;
SystemSoundID textSelectionSound;
SystemSoundID powerDownSound;
SystemSoundID respringSound;
SystemSoundID touchingSound;
SystemSoundID typingSound;
SystemSoundID enteringHomescreenSound;
SystemSoundID alertAppearSound;
SystemSoundID alertDisappearSound;

NSString *siriSoundsList;
NSString *screenshotSoundsList;
NSString *reachabilitySoundsList;
NSString *textSelectionSoundsList;
NSString *powerDownSoundsList;
NSString *respringSoundsList;
NSString *touchingSoundsList;
NSString *typingSoundsList;
NSString *enteringHomescreenSoundsList;
NSString *alertAppearSoundsList;
NSString *alertDisappearSoundsList;

// Hardware Buttons
SystemSoundID volumeSound;
SystemSoundID sleepButtonSound;
SystemSoundID homeSleepButtonSound;
SystemSoundID ringerSound;

NSString *volumeSoundsList;
NSString *sleepButtonSoundsList;
NSString *homeSleepButtonSoundsList;
NSString *ringerSoundsList;

// Control Center
SystemSoundID connectivitySound;
SystemSoundID controlCenterSound;
SystemSoundID ccModuleSound;

NSString *connectivitySoundsList;
NSString *controlCenterSoundsList;
NSString *ccModuleSoundsList;

// Status Changes
SystemSoundID unlockedSound;
SystemSoundID lockedSound;
SystemSoundID authenticationSound;
SystemSoundID callSound;

NSString *unlockedSoundsList;
NSString *lockedSoundsList;
NSString *authenticationSoundsList;
NSString *callSoundsList;

// Other Hardware Actions
SystemSoundID wakeSound;
SystemSoundID chargerSound;

NSString *wakeSoundsList;
NSString *chargerSoundsList;

// Needed Interfaces
@interface UIKBTree : NSObject
@property (nonatomic, strong, readwrite) NSString * name;
+ (id)sharedInstance;
+ (id)key;
@end

@interface UIKeyboardLayoutStar : UIView
@property (nonatomic, copy) NSString * localizedInputKey;
- (void)setPlayKeyClickSoundOn:(int)arg1;
@end

@interface SBPowerDownController : UIViewController
- (void)cancel;
@end

@interface SBPowerDownViewController : UIViewController
- (void)cancel;
- (void)viewWillAppear:(BOOL)arg1;
@end

@interface SBCoverSheetPrimarySlidingViewController : UIViewController
- (void)viewDidDisappear:(BOOL)arg1;
- (void)viewDidAppear:(BOOL)arg1;
@end

@interface SBIconController : UIViewController
- (void)viewDidAppear:(BOOL)animated;
@end