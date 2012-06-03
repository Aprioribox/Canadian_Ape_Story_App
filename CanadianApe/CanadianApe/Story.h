//
//  Story.h
//  CanadianApe
//
//  Created by Stephen Diadamo on 12-06-02.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Page.h"

@interface Story : NSString {
    NSString *title;
    NSDate *dateAdded;
    int numberOfPages;
    NSMutableArray *textOnPageArray;
}

// Exposures
-(NSString *) title;
-(void) setTitle:(NSString *) value;

-(NSDate *) dateAdded;
-(void) setDate:(NSDate *) value;

-(int) numberOfPages;
-(void) setNumberOfpages:(int) num;

-(NSMutableArray *) textOnPageArray;
-(void) setTextOnPageArray:(NSMutableArray *) value;


//Instance Methods
-(NSString *) getTextOnPage:(int) page;

@end
