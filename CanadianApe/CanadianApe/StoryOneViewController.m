//
//  StoryOneViewController.m
//  CanadianApe
//
//  Created by Stephen Diadamo on 12-05-28.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "StoryOneViewController.h"
#import "SBJson.h"

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
    theStory = [self getTheStory];
    storyTextBox.text = [theStory getTextOnPage:0];
    //[self animateStoryBox];
    [self rippleView];
}

-(void)viewDidUnload
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
                                                     repeats:YES];
}

-(void) rippleView
{
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:5];
    [UIView setAnimationTransition:110 forView:self.view cache:NO];
    [UIView commitAnimations];
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

-(NSMutableArray *) getPageText:(NSDictionary *) storyDict
{
    NSArray *pageArray = [storyDict objectForKey:@"page"];
    NSMutableArray *pages = [[[NSMutableArray alloc] init] autorelease];
    for (NSDictionary *p in pageArray){
        Page *page = [[[Page alloc] init] autorelease];
        [page setPageNumber:(int)[p objectForKey:@"number"]];
        [page setTextOnPage:[p objectForKey:@"text"]];
        [pages addObject:page];
    }
    return pages;
}


-(Story *) getTheStory
{
    
    Story *parsedStory = [[[Story alloc] init] autorelease];
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"SampleStory" ofType:@"json"];  
    if (filePath){
        NSString *jsonStoryFileText = [[[NSString alloc] initWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil] autorelease];        
        SBJsonParser *parser = [[[SBJsonParser alloc] init] autorelease];
        NSDictionary *storyData = (NSDictionary *) [parser objectWithString:jsonStoryFileText error:nil];
        [parsedStory setTitle: [storyData objectForKey:@"title"]];
        [parsedStory setDate: [storyData objectForKey:@"date"]];
        [parsedStory setTextOnPageArray:[self getPageText:[storyData objectForKey:@"story"]]];
        
        //Try to fix this. Really stupid.
        int numPages = [[parsedStory textOnPageArray] count];
        [parsedStory setNumberOfpages:numPages];
        
    } else {
        [NSException raise:@"Error reading story file." format:@"Check the the path exists and that the format is JSON."];
    }  
    return parsedStory;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return YES;
}

@end

