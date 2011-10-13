//
//  StarterKit_NavigationAppDelegate.m
//  StarterKit_Navigation
//
//  Created by jeff.wilson on 10/12/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "StarterKit_NavigationAppDelegate.h"
#import "ThirdTabModal.h"

@implementation StarterKit_NavigationAppDelegate


@synthesize window=_window;

@synthesize tabBarController=_tabBarController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    // Add the tab bar controller's current view as a subview of the window
    [self addCenterTab:[UIImage imageNamed:@"centerTab.png"]];
    self.window.rootViewController = self.tabBarController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

- (void)dealloc
{
    [_window release];
    [_tabBarController release];
    [super dealloc];
}

/*
// Optional UITabBarControllerDelegate method.
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
}
*/

/*
// Optional UITabBarControllerDelegate method.
- (void)tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed
{
}
*/

- (void) switchToTab:(int)index
{
    [_tabBarController setSelectedIndex:index];
}


- (void) launchThirdTabModal
{
    ThirdTabModal *thirdTabModal = [[[ThirdTabModal alloc] initWithNibName:@"ThirdTabModal" bundle:nil] autorelease];
    [_tabBarController presentModalViewController:thirdTabModal animated:YES];
}

// Create a custom UIButton and add it to the center of our tab bar
-(void) addCenterTab:(UIImage*)image
{
    UIButton* buttonForCenterTab = [UIButton buttonWithType:UIButtonTypeCustom];
    buttonForCenterTab.frame = CGRectMake(0, 0, image.size.width, image.size.height);
    [buttonForCenterTab setBackgroundImage:image forState:UIControlStateNormal];
    [buttonForCenterTab addTarget:self action:@selector(launchThirdTabModal) forControlEvents:UIControlEventTouchUpInside];
    
    CGFloat delta = image.size.height - _tabBarController.tabBar.frame.size.height;
    if (delta < 0)
        buttonForCenterTab.center = _tabBarController.tabBar.center;
    else
    {
        CGPoint center = _tabBarController.tabBar.center;
        center.y = center.y - delta/2.0;
        buttonForCenterTab.center = center;
    }
    
    [_tabBarController.view addSubview:buttonForCenterTab];
}

@end
