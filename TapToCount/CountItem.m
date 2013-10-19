//
//  CountItem.m
//  TapToCount
//
//  Created by Blake Merryman on 10/11/13.
//  Copyright (c) 2013 Blake Merryman. All rights reserved.
//

#import "CountItem.h"

#pragma mark - Public Interface Implementation:
@implementation CountItem

/* Default initializer. Sets count value to 0. */
-(id) init
{
    self = [super init];
    if (self) {
        _itemCount = 0;
    }
    return self;
}

/* Returns the count value. */
-(NSUInteger)returnItemCount
{
    return _itemCount;
}

/* Increases the count value by one. */
-(void)incrementItemCountByOne
{
    _itemCount += 1;
}

/* Decreases the count value by one. */
-(void)decrementItemCountByOne
{
    // Ensures the count will never drop below zero.
    if (_itemCount > 0)
    {
        _itemCount -= 1;
    }
}

-(void)resetItemCountToZero
{
    _itemCount = 0;
}

@end
