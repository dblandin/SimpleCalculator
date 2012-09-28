//
//  Calculator.h
//  BlandinDevon_SimpleCalculator
//
//  Created by Devon Blandin on 9/27/12.
//  Copyright (c) 2012 Devon Code Shop. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

// properties

@property int val;
@property int total;
@property int incrementVal;
@property bool incrementing;

// instance methods

-(int) add:(int) v;
-(int) equals:(int) v;
-(void) clear;


// class methods

@end
