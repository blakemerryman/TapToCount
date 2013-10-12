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
@end

#pragma mark - Public Interface Implementation:
@implementation TapToCountViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _theCount = [[Count alloc] init];
    _theCountDisplayed.text = [NSString stringWithFormat:@"%lu",(long)[_theCount returnTheCount]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - My Actions:
- (IBAction)tapToIncrementTheCount:(id)sender
{
    [_theCount incrementTheCountByOne];
    _theCountDisplayed.text = [NSString stringWithFormat:@"%lu",(long)[_theCount returnTheCount]];
}

@end
