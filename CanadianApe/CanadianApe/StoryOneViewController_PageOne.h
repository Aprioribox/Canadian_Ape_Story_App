//
//  StoryOneViewController.h
//  CanadianApe
//
//  Created by Stephen Diadamo on 12-05-28.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "InteractiveStoryViewController.h"

@interface StoryOneViewController_PageOne : UIViewController
{
    IBOutlet UITextView *storyTextBox;
    int iterations;
}

@property (nonatomic, retain) UITextView *storyTextBox;
@property (nonatomic, assign) int iterations;

-(void) animateStoryBox;
-(void) fillInStory: (NSTimer*) timer;

@end
