//
//  ViewController.m
//  LargeNumberFormatter
//
//  Created by Julien Grimault on 30/4/12.
//  Copyright (c) 2012 julien.grimault@me.com. All rights reserved.
//

#import "ViewController.h"
#import "JGLargeNumberFormatter.h"

@interface ViewController ()

@end

@implementation ViewController
#pragma mark - Properties
@synthesize billionsLabel = _billionsLabel;
@synthesize millionsLabel = _millionsLabel;
@synthesize thousandsLabel = _thousandsLabel;

- (void)viewDidLoad
{
  [super viewDidLoad];
  
  JGLargeNumberFormatter* formatter = [[JGLargeNumberFormatter alloc] init];
  formatter.billionsAbreviation = @"B";
  formatter.millionsAbreviation = @"M";
  formatter.thousandsAbreviation = @"K";
  
  NSInteger someBillions = 3670000000;
  NSInteger someMillions = 70400000;
  NSInteger someThousands = 3100;
  
  self.billionsLabel.text = [formatter stringFromNumber:[NSNumber numberWithInteger:someBillions]];
  self.millionsLabel.text = [formatter stringFromNumber:[NSNumber numberWithInteger:someMillions]];
  self.thousandsLabel.text = [formatter stringFromNumber:[NSNumber numberWithInteger:someThousands]];
  
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
  return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
