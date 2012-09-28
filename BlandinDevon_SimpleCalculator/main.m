//
//  main.m
//  BlandinDevon_SimpleCalculator
//
//  Created by Devon Blandin on 9/27/12.
//  Copyright (c) 2012 Devon Code Shop. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AppDelegate.h"
#import "Calculator.h"

int main(int argc, char *argv[])
{
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
        Calculator *calculator = [[Calculator alloc] init];
        
        NSLog(@"Testing add...");
        [calculator add:12];
        NSLog(@"12 + 45 = %d", [calculator equals:45]);
        
    }
}
