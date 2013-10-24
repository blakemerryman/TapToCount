//
//  TapToCountViewController.h
//  TapToCount
//
//  Created by Blake Merryman on 10/11/13.
//  Copyright (c) 2013 Blake Merryman. All rights reserved.
//

#import <UIKit/UIKit.h>
@class CountItem;

@interface CountItemDetailViewController : UITableViewController

#pragma mark - ViewController Properties:
@property(strong,nonatomic) CountItem* countItem;                     // VC's instance of CountItem object.
@property(strong,nonatomic) IBOutlet UILabel *itemCountLabel;         // Label displays item's count.
@property(strong,nonatomic) IBOutlet UINavigationItem *navigationBar; // Navigation bar.

#pragma mark - ViewController Public Interface:
- (IBAction)tapToIncrementItemCount:(id)sender;  // Action from button that increases item's count.
- (IBAction)tapToDecrementItemCount:(id)sender;  // Action from button that decreases item's count.

@end
