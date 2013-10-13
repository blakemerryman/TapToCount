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

-(id) init
{
    self = [super init];
    if (self) {
        _theCount = 10;
    }
    return self;
}

-(NSUInteger)returnTheCount
{
    return _theCount;
}

-(void)incrementTheCountByOne
{
    _theCount += 1;
}

-(void)decrementTheCountByOne
{
    if (_theCount > 0)
    {
        _theCount -= 1;
    }
}

@end
