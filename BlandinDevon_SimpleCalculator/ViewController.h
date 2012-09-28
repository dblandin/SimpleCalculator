//
//  ViewController.h
//  BlandinDevon_SimpleCalculator
//
//  Created by Devon Blandin on 9/27/12.
//  Copyright (c) 2012 Devon Code Shop. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)numberButtonPressed:(UIButton *)sender;
- (IBAction)equalsButtonPressed:(UIButton *)sender;
- (IBAction)addButtonPressed:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *resultsText;
@property (weak, nonatomic) IBOutlet UILabel *operandText;

@end
