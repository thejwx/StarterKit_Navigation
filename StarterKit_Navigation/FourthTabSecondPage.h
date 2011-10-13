//
//  FourthTabSecond Page.h
//  StarterKit_Navigation
//
//  Created by jeff.wilson on 10/12/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface FourthTabSecondPage : UIViewController {
    
    UILabel *age_label;
    NSString *age_label_text;
}
@property (nonatomic, retain) IBOutlet UILabel *age_label;
@property (nonatomic, retain) NSString *age_label_text;

@end
