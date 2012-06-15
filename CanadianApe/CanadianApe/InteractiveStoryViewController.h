//
//  InteractiveStoryViewController.h
//  CanadianApe
//
//  Created by Stephen Diadamo on 12-05-26.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Story.h"
#import "Page.h"
#import "SBJson.h"

@interface InteractiveStoryViewController : UIViewController{
    Story *theStory;
}
+(Story *) getTheStory;
+(NSMutableArray *) getPageText:(NSDictionary *) storyDict;

@property (nonatomic, retain) Story *theStory;

@end
