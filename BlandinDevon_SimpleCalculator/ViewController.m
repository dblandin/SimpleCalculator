//
//  ViewController.m
//  BlandinDevon_SimpleCalculator
//
//  Created by Devon Blandin on 9/27/12.
//  Copyright (c) 2012 Devon Code Shop. All rights reserved.
//

#import "ViewController.h"
#import "Calculator.h"
#import "QuartzCore/QuartzCore.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize resultsText;
@synthesize operandText;
Calculator *calculator; // singleton
bool clearPending;
bool addPending;

- (void)viewDidLoad
{
    [super viewDidLoad];
    calculator = [[Calculator alloc] init];
    resultsText.text = @"0";
    clearPending = TRUE;
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setResultsText:nil];
    [self setOperandText:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)numberButtonPressed:(UIButton *)sender {
    if (clearPending == TRUE)
    {
        resultsText.text = @"";
        if (addPending != TRUE)
        {
            operandText.text = @"";
        }
        clearPending = FALSE;
    }
    resultsText.text = [resultsText.text stringByAppendingString:[sender titleForState:UIControlStateNormal]];
}
- (IBAction)equalsButtonPressed:(UIButton *)sender {
    resultsText.text = [NSString stringWithFormat:@"%d", [calculator equals:[resultsText.text intValue]]];
    operandText.text = @"=";
    clearPending = TRUE;
    addPending = FALSE;
}

- (IBAction)addButtonPressed:(UIButton *)sender {
    if (addPending != TRUE)
    {
        resultsText.text = [NSString stringWithFormat:@"%d", [calculator add:[resultsText.text intValue]]];
        operandText.text = @"+";
        clearPending = TRUE;
        addPending = TRUE;
    }
}
@end