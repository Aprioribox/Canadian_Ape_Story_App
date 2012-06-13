//
//  StoryOneViewController.h
//  CanadianApe
//
//  Created by Stephen Diadamo on 12-05-28.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Story.h"
#import "Page.h"

@interface StoryOneViewController : UIViewController
{
    IBOutlet UITextView *storyTextBox;
    Story* theStory;
    int iterations;
}

@property (nonatomic, retain) UITextView *storyTextBox;
@property (nonatomic, assign) int iterations;
@property (nonatomic, assign) NSString *theStory;

-(void) animateStoryBox;
-(void) fillInStory: (NSTimer*) timer;
-(Story *) getTheStory;
-(NSMutableArray *) getPageText:(NSDictionary *) storyDict;
-(void) rippleView;

@end
