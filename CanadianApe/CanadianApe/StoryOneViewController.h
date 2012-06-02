//
//  StoryOneViewController.h
//  CanadianApe
//
//  Created by Stephen Diadamo on 12-05-28.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StoryOneViewController : UIViewController
{
    IBOutlet UITextView *storyTextBox;
    NSString *theStory;
    int iterations;
}

@property (nonatomic, retain) UITextView *storyTextBox;
@property (nonatomic, assign) int iterations;
@property (nonatomic, assign) NSString *theStory;

-(void) animateStoryBox;
-(void) fillInStory: (NSTimer*) timer;

@end
