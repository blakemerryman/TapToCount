//
//  TapToCountViewController.m
//  TapToCount
//
//  Created by Blake Merryman on 10/11/13.
//  Copyright (c) 2013 Blake Merryman. All rights reserved.
//

#import "TapToCountViewController.h"
#import "CountItem.h"

#pragma mark - Private Interface:
@interface TapToCountViewController ()

#pragma mark - Private Properties:
@property CountItem* TheItem;       // CountItem used privately within this object.

#pragma mark - Private Interface:
-(void)updateTheCountDisplayed;     // Method that updates the display labels.

@end

#pragma mark - Public Interface Implementation:
@implementation TapToCountViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _TheItem = [[CountItem alloc] init];
    _itemCountLabel.text = [NSString stringWithFormat:@"%lu",(long)[_TheItem returnItemCount]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Motion Event Methods:
// Shake to Reset Count
-(void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    if (motion == UIEventSubtypeMotionShake)
    {
        // User has shaken the device. Reset the count to zero.
        [_TheItem resetItemCountToZero]; // TODO: Abstract this to be -(void)restCountToValue:(NSUInteger)value for multiple uses.
        [self updateTheCountDisplayed];
        
    }
}

#pragma mark - My UI Button Actions:
/* Action from button that increases the item's count. */
- (IBAction)tapToIncrementItemCount:(id)sender
{
    [_TheItem incrementItemCountByOne];
    [self updateTheCountDisplayed];
}

/* Action from button that decreases the item's count. */
- (IBAction)tapToDecrementItemCount:(id)sender
{
    [_TheItem decrementItemCountByOne];
    [self updateTheCountDisplayed];

}

#pragma mark - Private Method Implementations:
/* Private method that updates the count & displays the updated value to label. */
-(void)updateTheCountDisplayed
{
    NSUInteger updatedCount = [_TheItem returnItemCount];
    _itemCountLabel.text = [NSString stringWithFormat:@"%lu",(long)updatedCount];
}

@end
