//
//  TapToCountViewController.h
//  TapToCount
//
//  Created by Blake Merryman on 10/11/13.
//  Copyright (c) 2013 Blake Merryman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TapToCountViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *theCountDisplayed;
- (IBAction)tapToIncrementTheCount:(id)sender;
@end
