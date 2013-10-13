//
//  Count.m
//  TapToCount
//
//  Created by Blake Merryman on 10/11/13.
//  Copyright (c) 2013 Blake Merryman. All rights reserved.
//

#import "Count.h"

#pragma mark - Public Interface Implementation:
@implementation Count

/* Default initializer. Sets count value to 0. */
-(id) init
{
    self = [super init];
    if (self) {
        _theCount = 0;
    }
    return self;
}

/* Returns the count value. */
-(NSUInteger)returnTheCount
{
    return _theCount;
}

/* Increases the count value by one. */
-(void)incrementTheCountByOne
{
    _theCount += 1;
}

/* Decreases the count value by one. */
-(void)decrementTheCountByOne
{
    // Ensures the count will never drop below zero.
    if (_theCount > 0)
    {
        _theCount -= 1;
    }
}

@end
