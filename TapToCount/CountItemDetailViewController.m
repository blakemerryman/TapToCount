//
//  TapToCountViewController.m
//  TapToCount
//
//  Created by Blake Merryman on 10/11/13.
//  Copyright (c) 2013 Blake Merryman. All rights reserved.
//

#import "CountItemDetailViewController.h"
#import "CountItem.h"

#pragma mark - Private Interface:
@interface CountItemDetailViewController ()

#pragma mark - Private Properties:
@property CountItem* theItem;       // CountItem used privately within this object.

#pragma mark - Private Interface:
-(void)updateView;     // Method that updates the display labels.

@end

#pragma mark - Public Interface Implementation:
@implementation CountItemDetailViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.theItem = [[CountItem alloc] init];
    self.navigationBar.title = [self.theItem itemName];
    self.itemCountLabel.text = [NSString stringWithFormat:@"%lu",(long)[self.theItem itemCount]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) setCountItem:(CountItem*)newItem
{
    if (self.theItem != newItem)
    {
        self.theItem = newItem;
        [self updateView];
    }
}

#pragma mark - Motion Event Methods:
// Shake to Reset Count
-(void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    if (motion == UIEventSubtypeMotionShake)
    {
        // User has shaken the device. Reset the count to zero.
        [self.theItem resetItemCountToZero]; // TODO: Abstract this to be -(void)restCountToValue:(NSUInteger)value for multiple uses.
        [self updateView];
        
    }
}

#pragma mark - My UI Button Actions:
/* Action from button that increases the item's count. */
- (IBAction)tapToIncrementItemCount:(id)sender
{
    [self.theItem incrementItemCountByOne];
    [self updateView];
}

/* Action from button that decreases the item's count. */
- (IBAction)tapToDecrementItemCount:(id)sender
{
    [self.theItem decrementItemCountByOne];
    [self updateView];

}

#pragma mark - Private Method Implementations:
/* Private method that updates the count & displays the updated value to label. */
-(void)updateView
{
    // Sets the nav bar's title to the item name.
    self.navigationBar.title = [self.theItem itemName];
    
    // Sets the label's text to the item count. Converts item count to string value before display.
    self.itemCountLabel.text = [NSString stringWithFormat:@"%lu",(long)[self.theItem itemCount]];
}

@end
