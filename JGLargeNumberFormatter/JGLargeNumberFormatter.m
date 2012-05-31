//
//  THLargeNumberNumberFormatter.m
//  TradeHero
//
//  Created by Julien Grimault on 27/4/12.
//  Copyright (c) 2012 julien.grimault@me.com. All rights reserved.
//

#import "JGLargeNumberFormatter.h"

@implementation JGLargeNumberFormatter

#pragma mark - Properties
@synthesize thousandsAbreviation = _thousandsAbreviation;
@synthesize millionsAbreviation = _millionsAbreviation;
@synthesize billionsAbreviation = _billionsAbreviation;


-(NSString*)stringFromNumber:(NSNumber*)number
{
  if ( ! ( self.thousandsAbreviation || self.millionsAbreviation || self.billionsAbreviation ) )
  {
    return [super stringFromNumber:number];
  }
  
  double d = [number doubleValue];
  double absolute = fabs(d);
  if ( self.billionsAbreviation && absolute >= 1000000000 )
  {
    NSString* numberInBillion = [super stringFromNumber:[NSNumber numberWithDouble:d / 1000000000]];
    return [NSString stringWithFormat:@"%@%@", numberInBillion, self.billionsAbreviation];
  }
  if ( self.millionsAbreviation && absolute >= 1000000 )
  {
    NSString* numberInMillion = [super stringFromNumber:[NSNumber numberWithDouble:d / 1000000]];
    return [NSString stringWithFormat:@"%@%@", numberInMillion, self.millionsAbreviation];
  }
  if ( self.thousandsAbreviation && absolute >= 1000 )
  {
    NSString* numberInThousand = [super stringFromNumber:[NSNumber numberWithDouble:d / 1000]];
    return [NSString stringWithFormat:@"%@%@", numberInThousand, self.thousandsAbreviation];
  }
  return [super stringFromNumber:number];
}


@end
