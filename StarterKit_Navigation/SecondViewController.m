//
//  SecondViewController.m
//  StarterKit_Navigation
//
//  Created by jeff.wilson on 10/12/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SecondViewController.h"
#import "SecondTabModal.h"


@implementation SecondViewController

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}


- (void)viewDidUnload
{
    [super viewDidUnload];

    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc
{
    [super dealloc];
}

#pragma mark - Custom methods

- (IBAction)launchSecondTabModal_fromBottom {
    SecondTabModal *secondTabModal = [[[SecondTabModal alloc] initWithNibName:@"SecondTabModal" bundle:nil] autorelease];
    [secondTabModal setModalTransitionStyle:UIModalTransitionStyleCoverVertical];
    [self presentModalViewController:secondTabModal animated:YES];
}

- (IBAction)launchSecondTabModal_withFade {
    SecondTabModal *secondTabModal = [[[SecondTabModal alloc] initWithNibName:@"SecondTabModal" bundle:nil] autorelease];
    [secondTabModal setModalTransitionStyle:UIModalTransitionStyleCrossDissolve];
    [self presentModalViewController:secondTabModal animated:YES];
}

- (IBAction)launchSecondTabModal_withFlip {
    SecondTabModal *secondTabModal = [[[SecondTabModal alloc] initWithNibName:@"SecondTabModal" bundle:nil] autorelease];
    [secondTabModal setModalTransitionStyle:UIModalTransitionStyleFlipHorizontal];
    [self presentModalViewController:secondTabModal animated:YES];
}

- (IBAction)launchSecondTabModal_withPageCurl {
    SecondTabModal *secondTabModal = [[[SecondTabModal alloc] initWithNibName:@"SecondTabModal" bundle:nil] autorelease];
    [secondTabModal setModalTransitionStyle:UIModalTransitionStylePartialCurl];
    [self presentModalViewController:secondTabModal animated:YES];
}

@end
