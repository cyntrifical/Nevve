#import "NevveAnywhere.h"

@implementation NevveAnywhereListController

+ (NSString *)hb_specifierPlist {

    return @"NevveAnywhere";
    
}

-(void)listThatDir {

   directoryAnywhereContent = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:@"/Library/Nevve/" error:NULL];

}

-(void)loadView {

    [super loadView];

    [self listThatDir];

    [self checkForFiles];

}

- (void)setAndPreview:(id)value forSpecifier:(id)specifier {

    AudioServicesDisposeSystemSoundID(soundSelected);
    AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/Nevve/%@",value]],&soundSelected);
    AudioServicesPlaySystemSound(soundSelected);
    
    [super setPreferenceValue:value specifier:specifier];

}

- (NSArray *)getData:(id)target {

    NSMutableArray *listing = [NSMutableArray arrayWithObjects:@"None",nil];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"pathExtension != ''"];
    
    for (NSURL *fileURL in [directoryAnywhereContent filteredArrayUsingPredicate:predicate]) {
	    [listing addObject:fileURL];

    }

    return listing;

}
- (void)checkForFiles {

    if ([directoryAnywhereContent count] == 0) {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Nevve"
        message:@"Dang!\nIt Looks Like You Haven't Installed Any Sound Extensions, Go And Download At Least One Sound Extension From My Repo Or Place Your Own Sound File In /Library/Nevve/ c:"
        preferredStyle:UIAlertControllerStyleAlert];

        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Understood" style:UIAlertActionStyleCancel handler:nil];
        [alert addAction:cancelAction];
        [self presentViewController:alert animated:YES completion:nil];

    }

}

@end
