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
@synthesize theStory;

- (void)viewDidLoad
{
    [super viewDidLoad];
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

+(NSMutableArray *) getPageText:(NSDictionary *) storyDict
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


+(Story *) getTheStory
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


@end
