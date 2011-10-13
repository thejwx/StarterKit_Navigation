//
//  SecondViewController.h
//  StarterKit_Navigation
//
//  Created by jeff.wilson on 10/12/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondTabModal.h"


@interface SecondViewController : UIViewController <SecondTabModalDelegate> {
    
    UILabel *modalReturnText;
}

@property (nonatomic, retain) IBOutlet UILabel *modalReturnText;

- (IBAction)launchSecondTabModal_fromBottom;
- (IBAction)launchSecondTabModal_withFade;
- (IBAction)launchSecondTabModal_withFlip;
- (IBAction)launchSecondTabModal_withPageCurl;
- (void)didFinish:(NSString *)text;


@end
