//
//  InteractiveStoryViewController.h
//  CanadianApe
//
//  Created by Stephen Diadamo on 12-05-26.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InteractiveStoryViewController : UIViewController{
   IBOutlet UITextView *storyTextBox;
}

@property (nonatomic, retain) UITextView *storyTextBox;
-(IBAction) animateStoryBox:(id) sender;


@end
