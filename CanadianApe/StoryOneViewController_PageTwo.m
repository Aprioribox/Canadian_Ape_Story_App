//
//  StoryOneViewController_PageTwo.m
//  CanadianApe
//
//  Created by Stephen Diadamo on 12-06-14.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "StoryOneViewController_PageTwo.h"

@interface StoryOneViewController_PageTwo ()
@end

@implementation StoryOneViewController_PageTwo

@synthesize storyTextBox;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    storyTextBox.text = [[InteractiveStoryViewController getTheStory] getTextOnPage:1];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return YES;
}

@end
