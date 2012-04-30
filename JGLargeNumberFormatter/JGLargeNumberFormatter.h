//
//  THLargeNumberNumberFormatter.h
//  TradeHero
//
//  Created by Julien Grimault on 27/4/12.
//  Copyright (c) 2012 julien.grimault@me.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JGLargeNumberFormatter : NSNumberFormatter

@property (nonatomic, copy) NSString* thousandsAbreviation;
@property (nonatomic, copy) NSString* millionsAbreviation;
@property (nonatomic, copy) NSString* billionsAbreviation;

@end
