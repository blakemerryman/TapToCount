//
//  Count.h
//  TapToCount
//
//  Created by Blake Merryman on 10/11/13.
//  Copyright (c) 2013 Blake Merryman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Count : NSObject
#pragma mark - Object Properties:
@property NSUInteger theCount;  // Holds the count.
#pragma mark - Public Interface:
-(id)init;                      // Default initializer.
-(NSUInteger)returnTheCount;    // Returns the value of the count.
-(void)incrementTheCountByOne;  // Increases the count by one.
-(void)decrementTheCountByOne;  // Decreases the count by one.
-(void)resetTheCountToZero;     // Resets the count to zero.
@end
