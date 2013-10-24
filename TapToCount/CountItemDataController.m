//
//  CountItemDataController.m
//  TapToCount
//
//  Created by Blake Merryman on 10/23/13.
//  Copyright (c) 2013 Blake Merryman. All rights reserved.
//

#import "CountItemDataController.h"
#import "CountItem.h"

@interface CountItemDataController ()
- (void)initializeDefaultDataList;
@end

@implementation CountItemDataController

#pragma mark - Initializers:
/* Default initializer method. */
- (id)init
{
    if (self = [super init])
    {
        [self initializeDefaultDataList];
        return self;
    }
    return nil;
}

/* Customer Initializer. */
- (void)initializeDefaultDataList
{
    NSMutableArray* itemList = [[NSMutableArray alloc] init];       // Allocates & initializes new array of items.
    self.masterCountItemList = itemList;                            // Sets new array to be the master array.
    CountItem* item;                                                // Instantiates new CountItem object.
    item = [[CountItem alloc] initWithCount:0 AndName:@"Ray Bans"]; // Allocates & initializes new object with random data.
    [self addCountItemWithItem:item];                               // Adds the new object to the end of the master array.
}

#pragma mark - Public Method Implementations:
// Returns the number of items in the list.
- (NSUInteger)countOfList
{
    return [self.masterCountItemList count];
}

// Returns the object in list at index.
- (CountItem*)objectInListAtIndex:(NSUInteger)index
{
    return [self.masterCountItemList objectAtIndex:index];
}

// Adds item to end of the list.
- (void)addCountItemWithItem:(CountItem*)item
{
    [self.masterCountItemList addObject:item];
}

#pragma mark - Other Methods:
/* This method ensures that the masterCountItemList array remains mutables. */
- (void)setMasterCountItemList:(NSMutableArray *)newList
{
    if (self.masterCountItemList != newList)
    {
        self.masterCountItemList = [newList mutableCopy];
    }
}

@end
