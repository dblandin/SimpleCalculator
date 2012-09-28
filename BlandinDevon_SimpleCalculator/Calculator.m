//
//  Calculator.m
//  BlandinDevon_SimpleCalculator
//
//  Created by Devon Blandin on 9/27/12.
//  Copyright (c) 2012 Devon Code Shop. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

@synthesize val;
@synthesize total;
@synthesize incrementVal;
@synthesize incrementing;

-(id) init
{
    if (self = [super init])
    {
        self.val = 0;
    }
    return self;
}

-(int) add:(int)v
{
    self.val += v;
    self.incrementing = FALSE;
    self.total = 0;
    return self.val;
}

-(int) equals:(int)v
{
    if (self.incrementing == TRUE)
    {
        return self.total += self.incrementVal;
    }
    else
    {
        self.total = [self add:v];
        self.incrementVal = v;
        [self clear];
        self.incrementing = TRUE;
        return total;
    }
}

-(void) clear
{
    self.val = 0;
}

@end