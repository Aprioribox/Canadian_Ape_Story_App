//
//  InteractiveStoryViewController.m
//  CanadianApe
//
//  Created by Stephen Diadamo on 12-05-26.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "InteractiveStoryViewController.h"

@interface InteractiveStoryViewController ()

@end

@implementation InteractiveStoryViewController

@synthesize storyTextBox;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

-(IBAction)animateStoryBox:(id)sender
{
    NSString * story = @"Hello world";
    storyTextBox.text = story;
}

-(void) dealloc 
{
    [storyTextBox release];
    [super dealloc];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

@end
