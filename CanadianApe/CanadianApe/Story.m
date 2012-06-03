//
//  Story.m
//  CanadianApe
//
//  Created by Stephen Diadamo on 12-06-02.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Story.h"

@implementation Story

-(NSString *) title
{
    return title;
}

-(void) setTitle:(NSString *) value
{
    title = value;
}

-(NSDate *) dateAdded
{
    return dateAdded;
}

-(void) setDate:(NSDate *) value
{
    dateAdded = value;
}

-(int) numberOfPages
{
    return (numberOfPages);
}

-(void) setNumberOfpages:(int) num
{
    numberOfPages = num;
}

-(NSMutableArray *) textOnPageArray
{
    return textOnPageArray;
}

-(void) setTextOnPageArray:(NSMutableArray *) value
{
    textOnPageArray = value;
}

-(NSString *) getTextOnPage:(int)page
{
    NSString *text;
    if (page < textOnPageArray.count){
        text =  [[textOnPageArray objectAtIndex: page] textOnPage];
    } else {
        [NSException raise:@"Page value too large. Exceeds number of pages in story." format:@"Story has %d pages. Page desired was %d.", textOnPageArray.count, page];
    }
    return text;
}

@end
