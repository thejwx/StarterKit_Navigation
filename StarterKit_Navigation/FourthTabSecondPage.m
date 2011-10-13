//
//  FourthTabSecond Page.m
//  StarterKit_Navigation
//
//  Created by jeff.wilson on 10/12/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "FourthTabSecondPage.h"


@implementation FourthTabSecondPage
@synthesize age_label, age_label_text;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [age_label release];
    [age_label_text release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [age_label setText:[NSString stringWithFormat:@"This person is %@ years old.", age_label_text]];
}

- (void)viewDidUnload
{
    [self setAge_label:nil];
    [self setAge_label_text:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
