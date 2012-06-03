//
//  Story.h
//  CanadianApe
//
//  Created by Stephen Diadamo on 12-06-02.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Story : NSString {
    NSString *title;
    NSDate *dateAdded;
    NSInteger *numberOfPages;
    NSMutableArray *textOnPageArray;
}

// Exposures
-(NSString *) title;
-(void) setTitle:(NSString *) value;

-(NSDate *) dateAdded;
-(void) setDate:(NSDate *) value;

-(NSInteger *) numberOfPages;
-(void) setNumberOfpages:(NSInteger *) num;

-(NSMutableArray *) textOnPageArray;


//Instance Methods


@end
