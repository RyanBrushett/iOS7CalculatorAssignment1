//
//  CalculatorViewController.m
//  Calculator
//
//  Created by Ryan Brushett on 1/26/2014.
//  Copyright (c) 2014 Ryan Brushett. All rights reserved.
//

#import "CalculatorViewController.h"

@interface CalculatorViewController ()

@end

@implementation CalculatorViewController

#pragma mark - Numbers/Digits

-(IBAction)Number0:(id)sender{
   if (CalcDisplay.text.length >= 9) {
      return;
   }
   selectedNumber *= 10;
   CalcDisplay.text = [NSString stringWithFormat:@"%i", selectedNumber];
}
-(IBAction)Number1:(id)sender{
   if (CalcDisplay.text.length >= 9) {
      return;
   }
   selectedNumber *= 10;
   selectedNumber += 1;
   CalcDisplay.text = [NSString stringWithFormat:@"%i", selectedNumber];
}
-(IBAction)Number2:(id)sender{
   if (CalcDisplay.text.length >= 9) {
      return;
   }
   selectedNumber *= 10;
   selectedNumber += 2;
   CalcDisplay.text = [NSString stringWithFormat:@"%i", selectedNumber];
}
-(IBAction)Number3:(id)sender{
   if (CalcDisplay.text.length >= 9) {
      return;
   }
   selectedNumber *= 10;
   selectedNumber += 3;
   CalcDisplay.text = [NSString stringWithFormat:@"%i", selectedNumber];
}
-(IBAction)Number4:(id)sender{
   if (CalcDisplay.text.length >= 9) {
      return;
   }
   selectedNumber *= 10;
   selectedNumber += 4;
   CalcDisplay.text = [NSString stringWithFormat:@"%i", selectedNumber];
}
-(IBAction)Number5:(id)sender{
   if (CalcDisplay.text.length >= 9) {
      return;
   }
   selectedNumber *= 10;
   selectedNumber += 5;
   CalcDisplay.text = [NSString stringWithFormat:@"%i", selectedNumber];
}
-(IBAction)Number6:(id)sender{
   if (CalcDisplay.text.length >= 9) {
      return;
   }
   selectedNumber *= 10;
   selectedNumber += 6;
   CalcDisplay.text = [NSString stringWithFormat:@"%i", selectedNumber];
}
-(IBAction)Number7:(id)sender{
   if (CalcDisplay.text.length >= 9) {
      return;
   }
   selectedNumber *= 10;
   selectedNumber += 7;
   CalcDisplay.text = [NSString stringWithFormat:@"%i", selectedNumber];
}
-(IBAction)Number8:(id)sender{
   if (CalcDisplay.text.length >= 9) {
      return;
   }
   selectedNumber *= 10;
   selectedNumber += 8;
   CalcDisplay.text = [NSString stringWithFormat:@"%i", selectedNumber];
}
-(IBAction)Number9:(id)sender{
   if (CalcDisplay.text.length >= 9) {
      return;
   }
   selectedNumber *= 10;
   selectedNumber += 9;
   CalcDisplay.text = [NSString stringWithFormat:@"%i", selectedNumber];
}
-(IBAction)Decimal:(id)sender{
   if (CalcDisplay.text.length >= 9) {
      return;
   }
}

#pragma mark - Operations

-(IBAction)Multiply:(id)sender{
   
}
-(IBAction)Divide:(id)sender{
   
}
-(IBAction)Addition:(id)sender{
   
}
-(IBAction)Subtraction:(id)sender{
   
}
-(IBAction)Equals:(id)sender{
   
}

#pragma mark - Clear/Delete

-(IBAction)AllClear:(id)sender{
   selectedNumber = 0;
   operation = 0;
   CalcDisplay.text = [NSString stringWithFormat:@"%i", selectedNumber];
}
-(IBAction)Backspace:(id)sender{
   NSInteger temporary = [CalcDisplay.text integerValue];
   selectedNumber = (int)temporary / 10;
   CalcDisplay.text = [NSString stringWithFormat:@"%i", selectedNumber];
}

#pragma mark - Other

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
