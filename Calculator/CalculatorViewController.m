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

   /* 
    * Here we have all of the methods for the number buttons.
    * They work very simply. Basically they all check to make sure
    * the string in the calc display is not too long and, if that goes ok
    * they multiply "selected number" by 10 and add the button number.
    */
-(IBAction)Number0:(id)sender{
   if (CalcDisplay.text.length >= 7) {
      return;
   }
   selectedNumber *= 10;
   CalcDisplay.text = [NSString stringWithFormat:@"%ld", selectedNumber];
}
-(IBAction)Number1:(id)sender{
   if (CalcDisplay.text.length >= 7) {
      return;
   }
   selectedNumber *= 10;
   selectedNumber += 1;
   CalcDisplay.text = [NSString stringWithFormat:@"%ld", selectedNumber];
}
-(IBAction)Number2:(id)sender{
   if (CalcDisplay.text.length >= 7) {
      return;
   }
   selectedNumber *= 10;
   selectedNumber += 2;
   CalcDisplay.text = [NSString stringWithFormat:@"%ld", selectedNumber];
}
-(IBAction)Number3:(id)sender{
   if (CalcDisplay.text.length >= 7) {
      return;
   }
   selectedNumber *= 10;
   selectedNumber += 3;
   CalcDisplay.text = [NSString stringWithFormat:@"%ld", selectedNumber];
}
-(IBAction)Number4:(id)sender{
   if (CalcDisplay.text.length >= 7) {
      return;
   }
   selectedNumber *= 10;
   selectedNumber += 4;
   CalcDisplay.text = [NSString stringWithFormat:@"%ld", selectedNumber];
}
-(IBAction)Number5:(id)sender{
   if (CalcDisplay.text.length >= 7) {
      return;
   }
   selectedNumber *= 10;
   selectedNumber += 5;
   CalcDisplay.text = [NSString stringWithFormat:@"%ld", selectedNumber];
}
-(IBAction)Number6:(id)sender{
   if (CalcDisplay.text.length >= 7) {
      return;
   }
   selectedNumber *= 10;
   selectedNumber += 6;
   CalcDisplay.text = [NSString stringWithFormat:@"%ld", selectedNumber];
}
-(IBAction)Number7:(id)sender{
   if (CalcDisplay.text.length >= 7) {
      return;
   }
   selectedNumber *= 10;
   selectedNumber += 7;
   CalcDisplay.text = [NSString stringWithFormat:@"%ld", selectedNumber];
}
-(IBAction)Number8:(id)sender{
   if (CalcDisplay.text.length >= 7) {
      return;
   }
   selectedNumber *= 10;
   selectedNumber += 8;
   CalcDisplay.text = [NSString stringWithFormat:@"%ld", selectedNumber];
}
-(IBAction)Number9:(id)sender{
   if (CalcDisplay.text.length >= 7) {
      return;
   }
   selectedNumber *= 10;
   selectedNumber += 9;
   CalcDisplay.text = [NSString stringWithFormat:@"%ld", selectedNumber];
}
-(IBAction)Decimal:(id)sender{
   if (CalcDisplay.text.length >= 7) {
      return;
   }
      // :(
}

#pragma mark - Operations

   /*
    * Running total is used so you can chain operations together.
    * Each operation chains along happily and adds its own operation
    * value at the end. For example:
    * If I press 2 + 6 - 3, the operation is changed to 0 when I hit
    * the plus button and the running total becomes 2. 
    * I type 6 and then - which reads the operation as 0 and so it adds 2 and 6,
    * making 8, then changing the operation to 1.
    * If I then type the equals sign, it will read the operation as 1, subtract
    * 3 from 8, and display 5 on the screen.
    */
-(IBAction)Multiply:(id)sender{
   if (runningTotal == 0){
      runningTotal = selectedNumber;
      CalcDisplay.text = @"0";
   } else {
      CalcDisplay.text = @"0";
      switch (operation) {
         case 0:
            runningTotal += selectedNumber;
            break;
         case 1:
            runningTotal -= selectedNumber;
            break;
         case 2:
            runningTotal *= selectedNumber;
            break;
         case 3:
            runningTotal /= selectedNumber;
            break;
         case 4:
            runningTotal = pow(runningTotal, selectedNumber);
         default:
            break;
      }
   }
   operation = 2;
   selectedNumber = 0;
}
-(IBAction)Divide:(id)sender{
   if (runningTotal == 0){
      runningTotal = selectedNumber;
      CalcDisplay.text = @"0";
   } else {
      CalcDisplay.text = @"0";
      switch (operation) {
         case 0:
            runningTotal += selectedNumber;
            break;
         case 1:
            runningTotal -= selectedNumber;
            break;
         case 2:
            runningTotal *= selectedNumber;
            break;
         case 3:
            runningTotal /= selectedNumber;
            break;
         case 4:
            runningTotal = pow(runningTotal, selectedNumber);
         default:
            break;
      }
   }
   operation = 3;
   selectedNumber = 0;
}
-(IBAction)Addition:(id)sender{
   if (runningTotal == 0){
      runningTotal = selectedNumber;
      CalcDisplay.text = @"0";
   } else {
      CalcDisplay.text = @"0";
      switch (operation) {
         case 0:
            runningTotal += selectedNumber;
            break;
         case 1:
            runningTotal -= selectedNumber;
            break;
         case 2:
            runningTotal *= selectedNumber;
            break;
         case 3:
            runningTotal /= selectedNumber;
            break;
         case 4:
            runningTotal = pow(runningTotal, selectedNumber);
         default:
            break;
      }
   }
   operation = 0;
   selectedNumber = 0;
}
-(IBAction)Subtraction:(id)sender{
   if (runningTotal == 0){
      runningTotal = selectedNumber;
      CalcDisplay.text = @"0";
   } else {
      CalcDisplay.text = @"0";
      switch (operation) {
         case 0:
            runningTotal += selectedNumber;
            break;
         case 1:
            runningTotal -= selectedNumber;
            break;
         case 2:
            runningTotal *= selectedNumber;
            break;
         case 3:
            runningTotal /= selectedNumber;
            break;
         case 4:
            runningTotal = pow(runningTotal, selectedNumber);
         default:
            break;
      }
   }
   operation = 1;
   selectedNumber = 0;
}

   /*
    * These operations simply operate on the number in the display
    * and then return.
    */
-(IBAction)oneOverX:(id)sender{
   if (runningTotal == 0){
      runningTotal = selectedNumber;
   }
   runningTotal = 1 / runningTotal;
   operation = -1;
   selectedNumber = runningTotal;
   int decimalPlaces = 8;
   NSString *formatString = [NSString stringWithFormat:@"%%1.%if",decimalPlaces];
   CalcDisplay.text = [NSString stringWithFormat:formatString, runningTotal];
}
-(IBAction)squareRoot:(id)sender{
   if (runningTotal == 0) {
      runningTotal = selectedNumber;
   }
   runningTotal = sqrt(runningTotal);
   operation = -1;
   selectedNumber = runningTotal;
   int decimalPlaces = 3;
   NSString *formatString = [NSString stringWithFormat:@"%%1.%if",decimalPlaces];
   if ([NSString stringWithFormat:formatString,runningTotal].length > 10) {
      CalcDisplay.text = @"Ovrflw Err";
      runningTotal = 0;
      selectedNumber = 0;
      operation = -1;
      return;
   } else {
      CalcDisplay.text = [NSString stringWithFormat:formatString,runningTotal];
      selectedNumber = (float)[CalcDisplay.text floatValue];
   }

}
-(IBAction)xSquared:(id)sender{
   if (runningTotal == 0){
      runningTotal = selectedNumber;
   }
   runningTotal *= runningTotal;
   operation = -1;
   int decimalPlaces = 2;
   NSString *formatString = [NSString stringWithFormat:@"%%1.%if",decimalPlaces];
   if ([NSString stringWithFormat:formatString, runningTotal].length > 10) {
      CalcDisplay.text = @"Ovrflw Err";
      runningTotal = 0;
      selectedNumber = 0;
      operation = -1;
      return;
   } else {
      CalcDisplay.text = [NSString stringWithFormat:formatString, runningTotal];
      selectedNumber = (float)[CalcDisplay.text floatValue];
   }
}
-(IBAction)xCubed:(id)sender{
   if (runningTotal == 0){
      runningTotal = selectedNumber;
   }
   runningTotal *= runningTotal * runningTotal;
   operation = -1;
   int decimalPlaces = 2;
   NSString *formatString = [NSString stringWithFormat:@"%%1.%if",decimalPlaces];
   if ([NSString stringWithFormat:formatString, runningTotal].length > 10) {
      CalcDisplay.text = @"Ovrflw Err";
      runningTotal = 0;
      selectedNumber = 0;
      operation = -1;
      return;
   } else {
      CalcDisplay.text = [NSString stringWithFormat:formatString, runningTotal];
      selectedNumber = (float)[CalcDisplay.text floatValue];
   }
}
-(IBAction)yToX:(id)sender{
   if (runningTotal == 0){
      runningTotal = selectedNumber;
      CalcDisplay.text = @"0";
   } else {
      CalcDisplay.text = @"0";
      switch (operation) {
         case 0:
            runningTotal += selectedNumber;
            break;
         case 1:
            runningTotal -= selectedNumber;
            break;
         case 2:
            runningTotal *= selectedNumber;
            break;
         case 3:
            runningTotal /= selectedNumber;
            break;
         case 4:
            runningTotal = pow(runningTotal, selectedNumber);
         default:
            break;
      }
   }
   operation = 4;
   selectedNumber = 0;
}
   /*
    * Positive or negative works by subtracting 2 * the running total from
    * the running total. This works for switching from positive to negative
    * and back again.
    */
-(IBAction)positiveOrNegative:(id)sender{
   if (runningTotal == 0) {
      runningTotal = selectedNumber;
   }
   runningTotal = runningTotal - (2 * runningTotal);
   int decimalPlaces = 2;
   NSString *formatString = [NSString stringWithFormat:@"%%1.%if",decimalPlaces];
   if ([NSString stringWithFormat:formatString, runningTotal].length > 10) {
      CalcDisplay.text = @"Ovrflw Err";
      runningTotal = 0;
      selectedNumber = 0;
      operation = -1;
      return;
   } else {
      CalcDisplay.text = [NSString stringWithFormat:formatString, runningTotal];
      selectedNumber = (float)[CalcDisplay.text floatValue];
   }
}
-(IBAction)Equals:(id)sender{
   if (runningTotal == 0){
      runningTotal = (float)[CalcDisplay.text floatValue];
   } else {
      CalcDisplay.text = @"0";
      switch (operation) {
         case 0:
            runningTotal += selectedNumber;
            break;
         case 1:
            runningTotal -= selectedNumber;
            break;
         case 2:
            runningTotal *= selectedNumber;
            break;
         case 3:
            runningTotal /= selectedNumber;
            break;
         case 4:
            runningTotal = pow(runningTotal, selectedNumber);
         default:
            break;
      }
   }
   operation = -1;
   selectedNumber = 0;
   int decimalPlaces = 2;
   NSString *formatString = [NSString stringWithFormat:@"%%1.%if", decimalPlaces];
   if ([NSString stringWithFormat:formatString, runningTotal].length > 10) {
      CalcDisplay.text = @"Ovrflw Err";
      runningTotal = 0;
      selectedNumber = 0;
      operation = -1;
      return;
   } else {
      CalcDisplay.text = [NSString stringWithFormat:formatString, runningTotal];
      selectedNumber = (float)[CalcDisplay.text floatValue];
   }
}

#pragma mark - Clear/Delete

-(IBAction)AllClear:(id)sender{
   selectedNumber = 0;
   operation = -1;
   runningTotal = 0;
   CalcDisplay.text = [NSString stringWithFormat:@"%ld", selectedNumber];
}
-(IBAction)Backspace:(id)sender{
   long temporary = (long)[CalcDisplay.text longLongValue];
   selectedNumber = temporary / 10;
   CalcDisplay.text = [NSString stringWithFormat:@"%ld", selectedNumber];
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
   operation = -1;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
