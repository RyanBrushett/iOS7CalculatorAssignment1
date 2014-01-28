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
   if (operation != -1){
//      CalcDisplay.text = @"0";
   }
   if (CalcDisplay.text.length <= 9) {
      selectedNumber *= 10;
      CalcDisplay.text = [NSString stringWithFormat:@"%ld", selectedNumber];
   }
}
-(IBAction)Number1:(id)sender{
   if (operation != -1){
//      CalcDisplay.text = @"0";
   }
   if (CalcDisplay.text.length <= 9) {
      selectedNumber *= 10;
      selectedNumber += 1;
      CalcDisplay.text = [NSString stringWithFormat:@"%ld", selectedNumber];
   }
}
-(IBAction)Number2:(id)sender{
   if (operation != -1){
//      CalcDisplay.text = @"0";
   }
   if (CalcDisplay.text.length <= 9) {
      selectedNumber *= 10;
      selectedNumber += 2;
      CalcDisplay.text = [NSString stringWithFormat:@"%ld", selectedNumber];
   }
}
-(IBAction)Number3:(id)sender{
   if (operation != -1){
//      CalcDisplay.text = @"0";
   }
   if (CalcDisplay.text.length <= 9) {
      selectedNumber *= 10;
      selectedNumber += 3;
      CalcDisplay.text = [NSString stringWithFormat:@"%ld", selectedNumber];
   }
}
-(IBAction)Number4:(id)sender{
   if (operation != -1){
//      CalcDisplay.text = @"0";
   }
   if (CalcDisplay.text.length <= 9) {
      selectedNumber *= 10;
      selectedNumber += 4;
      CalcDisplay.text = [NSString stringWithFormat:@"%ld", selectedNumber];
   }
}
-(IBAction)Number5:(id)sender{
   if (operation != -1){
//      CalcDisplay.text = @"0";
   }
   if (CalcDisplay.text.length <= 9) {
      selectedNumber *= 10;
      selectedNumber += 5;
      CalcDisplay.text = [NSString stringWithFormat:@"%ld", selectedNumber];
   }
}
-(IBAction)Number6:(id)sender{
   if (operation != -1){
//      CalcDisplay.text = @"0";
   }
   if (CalcDisplay.text.length <= 9) {
      selectedNumber *= 10;
      selectedNumber += 6;
      CalcDisplay.text = [NSString stringWithFormat:@"%ld", selectedNumber];
   }
}
-(IBAction)Number7:(id)sender{
   if (operation != -1){
//      CalcDisplay.text = @"0";
   }
   if (CalcDisplay.text.length <= 9) {
      selectedNumber *= 10;
      selectedNumber += 7;
      CalcDisplay.text = [NSString stringWithFormat:@"%ld", selectedNumber];
   }
}
-(IBAction)Number8:(id)sender{
   if (operation != -1){
//      CalcDisplay.text = @"0";
   }
   if (CalcDisplay.text.length <= 9) {
      selectedNumber *= 10;
      selectedNumber += 8;
      CalcDisplay.text = [NSString stringWithFormat:@"%ld", selectedNumber];
   }
}
-(IBAction)Number9:(id)sender{
   if (operation != -1){
//      CalcDisplay.text = @"0";
   }
   if (CalcDisplay.text.length <= 9) {
      selectedNumber *= 10;
      selectedNumber += 9;
      CalcDisplay.text = [NSString stringWithFormat:@"%ld", selectedNumber];
   }
}
-(IBAction)Decimal:(id)sender{
   if (CalcDisplay.text.length <= 9) {
      return;
   }
}

#pragma mark - Operations

-(IBAction)Multiply:(id)sender{
   if (runningTotal == 0){
      runningTotal = selectedNumber;
   }
   else{
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
   }
   else{
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
   }
   else{
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
   }
   else{
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
         default:
            break;
      }
   }
   operation = 1;
   selectedNumber = 0;
}
-(IBAction)oneOverX:(id)sender{
   if (runningTotal == 0){
      runningTotal = selectedNumber;
   }
   runningTotal = 1 / runningTotal;
   operation = -1;
   selectedNumber = runningTotal;
   int decimalPlaces = 10;
   NSString *formatString = [NSString stringWithFormat:@"%%1.%if",decimalPlaces];
   CalcDisplay.text = [NSString stringWithFormat:formatString, runningTotal];
}
-(IBAction)squareRoot:(id)sender{

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
   }
   else{
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
   }
   else{
      CalcDisplay.text = [NSString stringWithFormat:formatString, runningTotal];
      selectedNumber = (float)[CalcDisplay.text floatValue];
   }
}
-(IBAction)yToX:(id)sender{
   
}
-(IBAction)positiveOrNegative:(id)sender{
   
}
-(IBAction)Equals:(id)sender{
   if (runningTotal == 0){
      runningTotal = selectedNumber;
   }
   else{
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
         default:
            break;
      }
   }
   operation = -1;
   selectedNumber = 0;
   int decimalPlaces = 2;
   NSString *formatString = [NSString stringWithFormat:@"%%1.%if", decimalPlaces];
   CalcDisplay.text = [NSString stringWithFormat:formatString,runningTotal];
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
