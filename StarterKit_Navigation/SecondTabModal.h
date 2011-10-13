//
//  SecondTabModal.h
//  StarterKit_Navigation
//
//  Created by jeff.wilson on 10/12/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SecondTabModalDelegate;

@interface SecondTabModal : UIViewController {
    id <SecondTabModalDelegate> delegate; 
    UITextField *typeSomethingPlease;
}

@property (nonatomic, assign) id <SecondTabModalDelegate> delegate;
@property (nonatomic, retain) IBOutlet UITextField *typeSomethingPlease;

- (IBAction)closeModal:(id)sender;

@end

@protocol SecondTabModalDelegate
- (void)didFinish:(NSString *)text;
@end