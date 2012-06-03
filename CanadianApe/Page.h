//
//  Page.h
//  CanadianApe
//
//  Created by Stephen Diadamo on 12-06-03.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Page : NSString {
    int *pageNumber;
    NSString *textOnPage;
}

@property (getter = pageNumer, setter = setPageNumber:) int _pageNumber;
@property (nonatomic, retain) NSString *textOnPage;

@end
