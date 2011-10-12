//
//  FourthTabSecond Page.h
//  StarterKit_Navigation
//
//  Created by jeff.wilson on 10/12/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface FourthTabSecondPage : UIViewController {
    
    UILabel *name_label;
    NSString *name_label_text;
}
@property (nonatomic, retain) IBOutlet UILabel *name_label;
@property (nonatomic, retain) NSString *name_label_text;

@end
