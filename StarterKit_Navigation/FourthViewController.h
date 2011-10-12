//
//  FourthViewController.h
//  StarterKit_Navigation
//
//  Created by jeff.wilson on 10/12/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface FourthViewController : UITableViewController {
    NSMutableArray *itemList;
    NSArray *items;
}

@property(nonatomic,retain)NSMutableArray *itemList;
@property(nonatomic,retain)NSArray *items;

@end
