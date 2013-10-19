//
//  TapToCountViewController.m
//  TapToCount
//
//  Created by Blake Merryman on 10/11/13.
//  Copyright (c) 2013 Blake Merryman. All rights reserved.
//

#import "TapToCountViewController.h"
#import "Count.h"

#pragma mark - Private Interface:
@interface TapToCountViewController ()
@property Count* theCount;
-(void)updateTheCountDisplayed;
@end

#pragma mark - Public Interface Implementation:
@implementation TapToCountViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _theCount = [[Count alloc] init];
    _theCountDisplayed.text = [NSString stringWithFormat:@"%lu",(long)[_theCount returnTheCount]];
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
        [_theCount resetTheCountToZero]; // TODO: Abstract this to be -(void)restCountToValue:(NSUInteger)value for multiple uses.
        [self updateTheCountDisplayed];
        
    }
}


#pragma mark - My UI Button Actions:
/* Action from button that increases the count. */
- (IBAction)tapToIncrementTheCount:(id)sender
{
    [_theCount incrementTheCountByOne];
    [self updateTheCountDisplayed];
}

/* Action from button that decreases the count. */
- (IBAction)tapToDecrementTheCount:(id)sender
{
    [_theCount decrementTheCountByOne];
    [self updateTheCountDisplayed];

}

#pragma mark - Private Method Implementations:
/* Private method that updates the count & displays the updated value to label. */
-(void)updateTheCountDisplayed
{
    NSUInteger updatedCount = [_theCount returnTheCount];
    _theCountDisplayed.text = [NSString stringWithFormat:@"%lu",(long)updatedCount];
}

@end
