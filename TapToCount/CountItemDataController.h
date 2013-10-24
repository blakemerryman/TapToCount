//
//  CountItemDataController.h
//  TapToCount
//
//  Created by Blake Merryman on 10/23/13.
//  Copyright (c) 2013 Blake Merryman. All rights reserved.
//

#import <Foundation/Foundation.h>
@class CountItem;

@interface CountItemDataController : NSObject

#pragma mark - Data Controller Properties:
// Mutable Array that holds master list of Count Items.
@property(nonatomic,copy)NSMutableArray* masterCountItemList;

#pragma mark - Data Controller Public Interface:
- (NSUInteger)countOfList;                                  // Returns the number of items in the list.
- (CountItem*)objectInListAtIndex:(NSUInteger)index;        // Returns the object in list at index.
- (void)addCountItemWithItem:(CountItem*)item;              // Adds item to end of the list.

@end
