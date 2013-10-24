//
//  CountItemMasterViewController.h
//  TapToCount
//
//  Created by Blake Merryman on 10/24/13.
//  Copyright (c) 2013 Blake Merryman. All rights reserved.
//

#import <UIKit/UIKit.h>
@class CountItemDataController; // Forward declaration.

@interface CountItemMasterViewController : UITableViewController
@property(strong,nonatomic)CountItemDataController* dataController;
@end
