#import "Nevve.h"

%group Nevve

%hook SBMainDisplaySceneManager

- (void)_appKilledInAppSwitcher:(id)arg1 {

    %orig;
    if (enabled) {
        killingAppSound = 0;
		AudioServicesDisposeSystemSoundID(killingAppSound);
		AudioServicesCreateSystemSoundID((CFURLRef) CFBridgingRetain([NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/Nevve/%@",killingAppSoundsList]]),& killingAppSound);
		AudioServicesPlaySystemSound(killingAppSound); 

    }

}

%end

%hook SBApplication

- (void)_didExitWithContext:(id)arg1 {

    %orig;
    if (enabled) {
        if (!(SYSTEM_VERSION_LESS_THAN(@"13.0")))  {
            killingAppSound = 0;
            AudioServicesDisposeSystemSoundID(killingAppSound);
            AudioServicesCreateSystemSoundID((CFURLRef) CFBridgingRetain([NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/Nevve/%@",killingAppSoundsList]]),& killingAppSound);
            AudioServicesPlaySystemSound(killingAppSound); 

        }

    }

}

%end

%hook SBUIIconForceTouchController

- (void)iconForceTouchViewControllerWillDismiss:(id)arg1 {

    %orig;
    if (enabled) {
        forceTouchSound = 0;
		AudioServicesDisposeSystemSoundID(forceTouchSound);
		AudioServicesCreateSystemSoundID((CFURLRef) CFBridgingRetain([NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/Nevve/%@",forceTouchSoundsList]]),& forceTouchSound);
		AudioServicesPlaySystemSound(forceTouchSound); 

    }

}

%end

%hook SBAppSwitcherPageView

- (void)setVisible:(BOOL)arg1 {

    %orig;
    if (enabled) {
        appSwitcherSound = 0;
		AudioServicesDisposeSystemSoundID(appSwitcherSound);
		AudioServicesCreateSystemSoundID((CFURLRef) CFBridgingRetain([NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/Nevve/%@",appSwitcherSoundsList]]),& appSwitcherSound);
		AudioServicesPlaySystemSound(appSwitcherSound); 

    }

}

%end

%hook SBFolderController

- (void)folderControllerWillOpen:(id)arg1 {

    %orig;
    if (enabled) {
        folderOpenSound = 0;
		AudioServicesDisposeSystemSoundID(folderOpenSound);
		AudioServicesCreateSystemSoundID((CFURLRef) CFBridgingRetain([NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/Nevve/%@",folderOpenSoundsList]]),& folderOpenSound);
		AudioServicesPlaySystemSound(folderOpenSound); 

    }

}

- (void)folderControllerWillClose:(id)arg1 {

    %orig;
    if (enabled) {
        folderCloseSound = 0;
		AudioServicesDisposeSystemSoundID(folderCloseSound);
		AudioServicesCreateSystemSoundID((CFURLRef) CFBridgingRetain([NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/Nevve/%@",folderCloseSoundsList]]),& folderCloseSound);
		AudioServicesPlaySystemSound(folderCloseSound); 

    }

}

%end

%hook SBIconController

- (void)iconTapped:(id)arg1 {

    %orig;
    if (enabled) {
        tappingIconSound = 0;
		AudioServicesDisposeSystemSoundID(tappingIconSound);
		AudioServicesCreateSystemSoundID((CFURLRef) CFBridgingRetain([NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/Nevve/%@",tappingIconSoundsList]]),& tappingIconSound);
		AudioServicesPlaySystemSound(tappingIconSound); 

    }

}

%end

%hook SBHIconManager

- (void)iconTapped:(id)arg1 {

    %orig;
    if (enabled) {
        tappingIconSound = 0;
		AudioServicesDisposeSystemSoundID(tappingIconSound);
		AudioServicesCreateSystemSoundID((CFURLRef) CFBridgingRetain([NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/Nevve/%@",tappingIconSoundsList]]),& tappingIconSound);
		AudioServicesPlaySystemSound(tappingIconSound); 

    }

}

%end

%hook SBFolderView

- (void)scrollViewWillBeginDragging:(id)arg1 {

    %orig;
    if (enabled) {
        swipingSound = 0;
		AudioServicesDisposeSystemSoundID(swipingSound);
		AudioServicesCreateSystemSoundID((CFURLRef) CFBridgingRetain([NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/Nevve/%@",swipingSoundsList]]),& swipingSound);
		AudioServicesPlaySystemSound(swipingSound); 

    }

}

%end

%hook SBSearchScrollView

- (BOOL)gestureRecognizerShouldBegin:(id)arg1 {

    if (enabled) {
        spotlightSound = 0;
		AudioServicesDisposeSystemSoundID(spotlightSound);
		AudioServicesCreateSystemSoundID((CFURLRef) CFBridgingRetain([NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/Nevve/%@",spotlightSoundsList]]),& spotlightSound);
		AudioServicesPlaySystemSound(spotlightSound); 

    }

    return %orig;

}

%end

%hook SBUIPasscodeLockViewBase 

- (void)_sendDelegateKeypadKeyDown {

    %orig;
    if (enabled) {
        passcodeSound = 0;
		AudioServicesDisposeSystemSoundID(passcodeSound);
		AudioServicesCreateSystemSoundID((CFURLRef) CFBridgingRetain([NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/Nevve/%@",passcodeSoundsList]]),& passcodeSound);
		AudioServicesPlaySystemSound(passcodeSound); 

    }

}

%end

%hook SiriUISiriStatusView

- (void)layoutSubviews {

    %orig;
    if (enabled) {
        siriSound = 0;
		AudioServicesDisposeSystemSoundID(siriSound);
		AudioServicesCreateSystemSoundID((CFURLRef) CFBridgingRetain([NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/Nevve/%@",siriSoundsList]]),& siriSound);
		AudioServicesPlaySystemSound(siriSound); 

    }

}

%end

%hook SSScreenCapturer

+ (void)playScreenshotSound {

    if (enabled && screenshotSoundSwitch) {
        screenshotSound = 0;
		AudioServicesDisposeSystemSoundID(screenshotSound);
		AudioServicesCreateSystemSoundID((CFURLRef) CFBridgingRetain([NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/Nevve/%@",screenshotSoundsList]]),& screenshotSound);
		AudioServicesPlaySystemSound(screenshotSound); 

    } else {
        %orig;

    }

}

%end

%hook SBUIController

- (void)handleWillBeginReachabilityAnimation {

    %orig;
    if (enabled) {
        reachabilitySound = 0;
		AudioServicesDisposeSystemSoundID(reachabilitySound);
		AudioServicesCreateSystemSoundID((CFURLRef) CFBridgingRetain([NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/Nevve/%@",reachabilitySoundsList]]),& reachabilitySound);
		AudioServicesPlaySystemSound(reachabilitySound); 

    }

}

%end

%hook UICalloutBar

- (void)buttonPressed:(id)arg1 {

    %orig;
    if (enabled) {
        textSelectionSound = 0;
		AudioServicesDisposeSystemSoundID(textSelectionSound);
		AudioServicesCreateSystemSoundID((CFURLRef) CFBridgingRetain([NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/Nevve/%@",textSelectionSoundsList]]),& textSelectionSound);
		AudioServicesPlaySystemSound(textSelectionSound); 

    }

}

%end

%hook SBPowerDownController

- (void)orderFront {

    %orig;
    if (enabled) {
        powerDownSound = 0;
		AudioServicesDisposeSystemSoundID(powerDownSound);
		AudioServicesCreateSystemSoundID((CFURLRef) CFBridgingRetain([NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/Nevve/%@",powerDownSoundsList]]),& powerDownSound);
		AudioServicesPlaySystemSound(powerDownSound); 

    }

}

%end

%hook SBPowerDownViewController

- (void)viewWillAppear:(BOOL)arg1 {

    %orig;
    if (enabled) {
        powerDownSound = 0;
		AudioServicesDisposeSystemSoundID(powerDownSound);
		AudioServicesCreateSystemSoundID((CFURLRef) CFBridgingRetain([NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/Nevve/%@",powerDownSoundsList]]),& powerDownSound);
		AudioServicesPlaySystemSound(powerDownSound); 

    }

}

%end

%hook SpringBoard

- (void)applicationDidFinishLaunching:(id)arg1 {

    %orig;
    if (enabled) {
        respringSound = 0;
		AudioServicesDisposeSystemSoundID(respringSound);
		AudioServicesCreateSystemSoundID((CFURLRef) CFBridgingRetain([NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/Nevve/%@",respringSoundsList]]),& respringSound);
		AudioServicesPlaySystemSound(respringSound); 

    }

}

- (BOOL)_handlePhysicalButtonEvent:(UIPressesEvent *)arg1 {

	// type = 101 -> Home button
	// force = 0 -> button released
	// force = 1 -> button pressed

	//int type = arg1.allPresses.allObjects[0].type;
	int force = arg1.allPresses.allObjects[0].force;

	if (force == 1) {
        if (enabled) {
            homeSleepButtonSound = 0;
            AudioServicesDisposeSystemSoundID(homeSleepButtonSound);
            AudioServicesCreateSystemSoundID((CFURLRef) CFBridgingRetain([NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/Nevve/%@",homeSleepButtonSoundsList]]),& homeSleepButtonSound);
            AudioServicesPlaySystemSound(homeSleepButtonSound); 

        }

	}

	return %orig;

}

- (void)_ringerChanged:(id)arg1 {

    %orig;
    if (enabled) {
        ringerSound = 0;
		AudioServicesDisposeSystemSoundID(ringerSound);
		AudioServicesCreateSystemSoundID((CFURLRef) CFBridgingRetain([NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/Nevve/%@",ringerSoundsList]]),& ringerSound);
		AudioServicesPlaySystemSound(ringerSound); 

    }

}

%end

%hook UIWindow

- (BOOL)_shouldHitTestEntireScreen {

    if (enabled) {
        touchingSound = 0;
		AudioServicesDisposeSystemSoundID(touchingSound);
		AudioServicesCreateSystemSoundID((CFURLRef) CFBridgingRetain([NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/Nevve/%@",touchingSoundsList]]),& touchingSound);
		AudioServicesPlaySystemSound(touchingSound); 

    }

    return %orig;

}

%end

%hook UIKeyboardLayoutStar

- (void)playKeyClickSoundOnDownForKey:(UIKBTree *)key {

    if (enabled && typingSoundSwitch) {
        typingSound = 0;
		AudioServicesDisposeSystemSoundID(typingSound);
		AudioServicesCreateSystemSoundID((CFURLRef) CFBridgingRetain([NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/Nevve/%@",typingSoundsList]]),& typingSound);
		AudioServicesPlaySystemSound(typingSound); 

    } else {
        %orig;

    }

}

%end

%hook SBIconController

- (void)viewWillAppear:(BOOL)arg1 {

    %orig;
    if (enabled) {
        enteringHomescreenSound = 0;
		AudioServicesDisposeSystemSoundID(enteringHomescreenSound);
		AudioServicesCreateSystemSoundID((CFURLRef) CFBridgingRetain([NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/Nevve/%@",enteringHomescreenSoundsList]]),& enteringHomescreenSound);
		AudioServicesPlaySystemSound(enteringHomescreenSound); 

    }

}

%end

%hook VolumeControl

- (void)increaseVolume {

    %orig;
    if (enabled) {
        volumeSound = 0;
		AudioServicesDisposeSystemSoundID(volumeSound);
		AudioServicesCreateSystemSoundID((CFURLRef) CFBridgingRetain([NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/Nevve/%@",volumeSoundsList]]),& volumeSound);
		AudioServicesPlaySystemSound(volumeSound); 

    }

}

- (void)decreaseVolume {

    %orig;
    if (enabled) {
        volumeSound = 0;
		AudioServicesDisposeSystemSoundID(volumeSound);
		AudioServicesCreateSystemSoundID((CFURLRef) CFBridgingRetain([NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/Nevve/%@",volumeSoundsList]]),& volumeSound);
		AudioServicesPlaySystemSound(volumeSound); 

    }

}

%end

%hook SBVolumeControl

- (void)increaseVolume {

    %orig;
    if (enabled) {
        volumeSound = 0;
		AudioServicesDisposeSystemSoundID(volumeSound);
		AudioServicesCreateSystemSoundID((CFURLRef) CFBridgingRetain([NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/Nevve/%@",volumeSoundsList]]),& volumeSound);
		AudioServicesPlaySystemSound(volumeSound); 

    }

}

- (void)decreaseVolume {

    %orig;
    if (enabled) {
        volumeSound = 0;
		AudioServicesDisposeSystemSoundID(volumeSound);
		AudioServicesCreateSystemSoundID((CFURLRef) CFBridgingRetain([NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/Nevve/%@",volumeSoundsList]]),& volumeSound);
		AudioServicesPlaySystemSound(volumeSound); 

    }

}

%end

%hook SBSleepWakeHardwareButtonInteraction

- (BOOL)consumeInitialPressDown {

    if (enabled) {
        sleepButtonSound = 0;
		AudioServicesDisposeSystemSoundID(sleepButtonSound);
		AudioServicesCreateSystemSoundID((CFURLRef) CFBridgingRetain([NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/Nevve/%@",sleepButtonSoundsList]]),& sleepButtonSound);
		AudioServicesPlaySystemSound(sleepButtonSound); 

    }

    return %orig;

}

- (void)_playLockSound {

    if (enabled ) {
        lockedSound = 0;
		AudioServicesDisposeSystemSoundID(lockedSound);
		AudioServicesCreateSystemSoundID((CFURLRef) CFBridgingRetain([NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/Nevve/%@",lockedSoundsList]]),& lockedSound);
		AudioServicesPlaySystemSound(lockedSound); 
        isUnlock = YES;

    } else {
        %orig;

    }

}

%end

%hook CCUILabeledRoundButton

- (void)buttonTapped:(id)arg1 {

    %orig;
    if (enabled) {
        connectivitySound = 0;
		AudioServicesDisposeSystemSoundID(connectivitySound);
		AudioServicesCreateSystemSoundID((CFURLRef) CFBridgingRetain([NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/Nevve/%@",connectivitySoundsList]]),& connectivitySound);
		AudioServicesPlaySystemSound(connectivitySound); 

    }

}

%end

%hook SBControlCenterController

- (void)_willPresent {

    %orig;
    if (enabled) {
        controlCenterSound = 0;
		AudioServicesDisposeSystemSoundID(controlCenterSound);
		AudioServicesCreateSystemSoundID((CFURLRef) CFBridgingRetain([NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/Nevve/%@",controlCenterSoundsList]]),& controlCenterSound);
		AudioServicesPlaySystemSound(controlCenterSound); 

    }

}

%end

%hook CCUIToggleViewController

- (void)buttonTapped:(id)arg1 forEvent:(id)arg2 {

    %orig;
    if (enabled) {
        ccModuleSound = 0;
		AudioServicesDisposeSystemSoundID(ccModuleSound);
		AudioServicesCreateSystemSoundID((CFURLRef) CFBridgingRetain([NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/Nevve/%@",ccModuleSoundsList]]),& ccModuleSound);
		AudioServicesPlaySystemSound(ccModuleSound); 

    }

}

%end

%hook SBCoverSheetPrimarySlidingViewController

- (void)viewWillDisappear:(BOOL)arg1 {

    %orig;
    if (enabled && isUnlock) {
        unlockedSound = 0;
		AudioServicesDisposeSystemSoundID(unlockedSound);
		AudioServicesCreateSystemSoundID((CFURLRef) CFBridgingRetain([NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/Nevve/%@",unlockedSoundsList]]),& unlockedSound);
		AudioServicesPlaySystemSound(unlockedSound); 
        isUnlock = NO;

    }

}

%end

%hook SBDashBoardViewController

- (void)setAuthenticated:(BOOL)authenticated {

    %orig;

    if (authenticated) {
        if (enabled) {
            authenticationSound = 0;
            AudioServicesDisposeSystemSoundID(authenticationSound);
            AudioServicesCreateSystemSoundID((CFURLRef) CFBridgingRetain([NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/Nevve/%@",authenticationSoundsList]]),& authenticationSound);
            AudioServicesPlaySystemSound(authenticationSound); 

        }

	}

}

%end

%hook SBDashBoardLockScreenEnvironment // iOS 13

-(void)setAuthenticated:(BOOL)arg1 {

	%orig;

	if (arg1) {
        if (enabled) {
            authenticationSound = 0;
            AudioServicesDisposeSystemSoundID(authenticationSound);
            AudioServicesCreateSystemSoundID((CFURLRef) CFBridgingRetain([NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/Nevve/%@",authenticationSoundsList]]),& authenticationSound);
            AudioServicesPlaySystemSound(authenticationSound); 

        }

	}

}

%end

%hook ICSApplicationDelegate

- (void)audioCallStatusChanged:(id)arg1 {

    %orig;
    if (enabled) {
        callSound = 0;
		AudioServicesDisposeSystemSoundID(callSound);
		AudioServicesCreateSystemSoundID((CFURLRef) CFBridgingRetain([NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/Nevve/%@",callSoundsList]]),& callSound);
		AudioServicesPlaySystemSound(callSound); 

    }

}

%end

%hook SBBacklightController

- (void)turnOnScreenFullyWithBacklightSource:(long long)source {

	%orig;
	// 26 - source of screenshots on newer ios version (afaik); eg this method gets called with source == 26 if u make a screenshot
	if (source != 26) {
        if (enabled) {
            wakeSound = 0;
            AudioServicesDisposeSystemSoundID(wakeSound);
            AudioServicesCreateSystemSoundID((CFURLRef) CFBridgingRetain([NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/Nevve/%@",wakeSoundsList]]),& wakeSound);
            AudioServicesPlaySystemSound(wakeSound); 

        }

	}

}

%end

%hook UIAlertController

-(void)viewWillAppear:(BOOL)arg1 {

    %orig;
    if (enabled) {
        alertAppearSound = 0;
		AudioServicesDisposeSystemSoundID(alertAppearSound);
		AudioServicesCreateSystemSoundID((CFURLRef) CFBridgingRetain([NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/Nevve/%@",alertAppearSoundsList]]),& alertAppearSound);
		AudioServicesPlaySystemSound(alertAppearSound); 

    }

}

-(void)viewWillDisappear:(BOOL)arg1 {

    %orig;
    if (enabled) {
        alertDisappearSound = 0;
		AudioServicesDisposeSystemSoundID(alertDisappearSound);
		AudioServicesCreateSystemSoundID((CFURLRef) CFBridgingRetain([NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/Nevve/%@",alertDisappearSoundsList]]),& alertDisappearSound);
		AudioServicesPlaySystemSound(alertDisappearSound); 

    }

}

%end

%end

    // This is an Alert if the Tweak is pirated (DRM)
%group NevveIntegrityFail

%hook SBIconController

- (void)viewDidAppear:(BOOL)animated {

    %orig; //  Thanks to Nepeta for the DRM
    if (!dpkgInvalid) return;
		UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Nevve"
		message:@"Seriously? Pirating a free Tweak is awful!\nPiracy repo's Tweaks could contain Malware if you didn't know that, so go ahead and get Nevve from the official Source https://repo.litten.sh/.\nIf you're seeing this but you got it from the official source then make sure to add https://repo.litten.sh to Cydia or Sileo."
		preferredStyle:UIAlertControllerStyleAlert];

		UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Aww man" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * action) {

			UIApplication *application = [UIApplication sharedApplication];
			[application openURL:[NSURL URLWithString:@"https://repo.litten.sh/"] options:@{} completionHandler:nil];

	}];

		[alertController addAction:cancelAction];

		[self presentViewController:alertController animated:YES completion:nil];

}

%end

%end

%ctor {

    if (![NSProcessInfo processInfo]) return;
    NSString *processName = [NSProcessInfo processInfo].processName;
    bool isSpringboard = [@"SpringBoard" isEqualToString:processName];

    // Someone smarter than Nepeta invented this.
    // https://www.reddit.com/r/jailbreak/comments/4yz5v5/questionremote_messages_not_enabling/d6rlh88/
    bool shouldLoad = NO;
    NSArray *args = [[NSClassFromString(@"NSProcessInfo") processInfo] arguments];
    NSUInteger count = args.count;
    if (count != 0) {
        NSString *executablePath = args[0];
        if (executablePath) {
            NSString *processName = [executablePath lastPathComponent];
            BOOL isApplication = [executablePath rangeOfString:@"/Application/"].location != NSNotFound || [executablePath rangeOfString:@"/Applications/"].location != NSNotFound;
            BOOL isFileProvider = [[processName lowercaseString] rangeOfString:@"fileprovider"].location != NSNotFound;
            BOOL skip = [processName isEqualToString:@"AdSheet"]
                        || [processName isEqualToString:@"CoreAuthUI"]
                        || [processName isEqualToString:@"InCallService"]
                        || [processName isEqualToString:@"MessagesNotificationViewService"]
                        || [executablePath rangeOfString:@".appex/"].location != NSNotFound;
            if ((!isFileProvider && isApplication && !skip) || isSpringboard) {
                shouldLoad = YES;
            }
        }
    }

    if (!shouldLoad) return;
  
    // Thanks To Nepeta For The DRM
    dpkgInvalid = ![[NSFileManager defaultManager] fileExistsAtPath:@"/var/lib/dpkg/info/sh.litten.nevve.list"];

    if (!dpkgInvalid) dpkgInvalid = ![[NSFileManager defaultManager] fileExistsAtPath:@"/var/lib/dpkg/info/sh.litten.nevve.md5sums"];

    if (dpkgInvalid) {
        %init(NevveIntegrityFail);
        return;
    }

    pfs = [[HBPreferences alloc] initWithIdentifier:@"sh.litten.nevvepreferences"];
    // Enabled Switch
    [pfs registerBool:&enabled default:YES forKey:@"Enabled"];
    // Option Switches
    [pfs registerBool:&typingSoundSwitch default:NO forKey:@"typingSound"];
    [pfs registerBool:& screenshotSoundSwitch default:NO forKey:@"screenshotSound"];
    // Homescreen
    [pfs registerObject:& killingAppSoundsList default:nil forKey:@"killingAppSounds"];
	[pfs registerObject:& forceTouchSoundsList default:nil forKey:@"forceTouchSounds"];
    [pfs registerObject:& appSwitcherSoundsList default:nil forKey:@"appSwitcherSounds"];
    [pfs registerObject:& folderOpenSoundsList default:nil forKey:@"folderOpenSounds"];
    [pfs registerObject:& folderCloseSoundsList default:nil forKey:@"folderCloseSounds"];
    [pfs registerObject:& tappingIconSoundsList default:nil forKey:@"tappingIconSounds"];
    [pfs registerObject:& swipingSoundsList default:nil forKey:@"swipingSounds"];
    [pfs registerObject:& spotlightSoundsList default:nil forKey:@"spotlightSounds"];
    // Lockscreen
    [pfs registerObject:& passcodeSoundsList default:nil forKey:@"passcodeSounds"];
    // Anywhere
    [pfs registerObject:& siriSoundsList default:nil forKey:@"siriSounds"];
	[pfs registerObject:& screenshotSoundsList default:nil forKey:@"screenshotSounds"];
    [pfs registerObject:& reachabilitySoundsList default:nil forKey:@"reachabilitySounds"];
    [pfs registerObject:& textSelectionSoundsList default:nil forKey:@"textSelectionSounds"];
    [pfs registerObject:& powerDownSoundsList default:nil forKey:@"powerDownSounds"];
    [pfs registerObject:& respringSoundsList default:nil forKey:@"respringSounds"];
    [pfs registerObject:& touchingSoundsList default:nil forKey:@"touchingSounds"];
    [pfs registerObject:& typingSoundsList default:nil forKey:@"typingSounds"];
    [pfs registerObject:& enteringHomescreenSoundsList default:nil forKey:@"enteringHomescreenSounds"];
    [pfs registerObject:& alertAppearSoundsList default:nil forKey:@"alertAppearSounds"];
    [pfs registerObject:& alertDisappearSoundsList default:nil forKey:@"alertDisappearSounds"];
    // Hardware Buttons
    [pfs registerObject:& volumeSoundsList default:nil forKey:@"volumeSounds"];
	[pfs registerObject:& sleepButtonSoundsList default:nil forKey:@"sleepButtonSounds"];
    [pfs registerObject:& homeSleepButtonSoundsList default:nil forKey:@"homeSleepButtonSounds"];
    [pfs registerObject:& ringerSoundsList default:nil forKey:@"ringerSounds"];
    // Control Center
    [pfs registerObject:& connectivitySoundsList default:nil forKey:@"connectivitySounds"];
	[pfs registerObject:& controlCenterSoundsList default:nil forKey:@"controlCenterSounds"];
    [pfs registerObject:& ccModuleSoundsList default:nil forKey:@"ccModuleSounds"];
    // Status Changes
    [pfs registerObject:& unlockedSoundsList default:nil forKey:@"unlockedSounds"];
	[pfs registerObject:& lockedSoundsList default:nil forKey:@"lockedSounds"];
    [pfs registerObject:& authenticationSoundsList default:nil forKey:@"authenticationSounds"];
    [pfs registerObject:& callSoundsList default:nil forKey:@"callSounds"];
    // Other Hardware Actions
    [pfs registerObject:& wakeSoundsList default:nil forKey:@"wakeSounds"];

	if (!dpkgInvalid && enabled) {
        BOOL ok = false;
        
        ok = ([[NSFileManager defaultManager] fileExistsAtPath:[NSString stringWithFormat:@"/var/lib/dpkg/info/%@%@%@%@%@%@%@%@%@.nevve.md5sums", @"s", @"h", @".", @"l", @"i", @"t", @"t", @"e", @"n"]]
        );

        if (ok && [@"litten" isEqualToString:@"litten"]) {
            %init(Nevve);
            return;
        } else {
            dpkgInvalid = YES;
        }
    }
}