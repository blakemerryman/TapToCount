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

/* Default initializer that sets count value to 0 and name to "Item". */
-(id) init
{
    self = [super init];
    if (self) {
        _itemCount = 0;
        _itemName = @"Item";
    }
    return self;
}

/* Custom Initializer that sets count & name */
-(id)initWithCount:(NSUInteger)count AndName:(NSString*)name
{
    self = [super init];
    
    if (self)
    {
        _itemCount = count;
        _itemName = name;
        return self;
    }
    return nil;
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
