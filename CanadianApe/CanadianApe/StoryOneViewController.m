//
//  StoryOneViewController.m
//  CanadianApe
//
//  Created by Stephen Diadamo on 12-05-28.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "StoryOneViewController.h"

@interface StoryOneViewController ()

@end

@implementation StoryOneViewController

@synthesize storyTextBox;
@synthesize theStory;
@synthesize  iterations;

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
	// Do any additional setup after loading the view.
    theStory = [NSString stringWithContentsOfFile:@"the_story.txt"];
    storyTextBox.text = theStory;
    [self animateStoryBox];
 }

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

-(void) dealloc 
{
    [storyTextBox release];
    [super dealloc];
}

-(void) animateStoryBox
{
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:0.5
                                                     target:self
                                                    selector:@selector(fillInStory:)
                                                   userInfo:nil
                                                     repeats:YES];;
}

-(void) fillInStory:(NSTimer *) timer
{
    iterations++;
    if (iterations > 10){
        [timer invalidate];
    }else {
        storyTextBox.text = [storyTextBox.text stringByAppendingString:@"Hello   "];
    }
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return YES;
}

@end
