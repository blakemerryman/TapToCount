//
//  CountItem.h
//  TapToCount
//
//  Created by Blake Merryman on 10/11/13.
//  Copyright (c) 2013 Blake Merryman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CountItem : NSObject

#pragma mark - Object Properties:
@property NSUInteger itemCount;         // The item's count.
@property NSString* itemName;           // The items' name.

#pragma mark - Public Interface:
-(id)init;                              // Default initializer.
-(id)initWithCount:(NSUInteger)count    // Custom initializer.
           AndName:(NSString*)name;
-(NSUInteger)returnItemCount;           // Returns value of itemCount.
-(void)incrementItemCountByOne;         // Increases itemCount by one.
-(void)decrementItemCountByOne;         // Decreases itemCount by one.
-(void)resetItemCountToZero;            // Resets itemCount to zero.

@end
