//
//  CalculatorViewController.h
//  Calculator
//
//  Created by Ryan Brushett on 1/26/2014.
//  Copyright (c) 2014 Ryan Brushett. All rights reserved.
//

#import <UIKit/UIKit.h>

int operation;
long selectedNumber;
float runningTotal;

@interface CalculatorViewController : UIViewController
{
   IBOutlet UILabel *CalcDisplay;
}

-(IBAction)Number0:(id)sender;
-(IBAction)Number1:(id)sender;
-(IBAction)Number2:(id)sender;
-(IBAction)Number3:(id)sender;
-(IBAction)Number4:(id)sender;
-(IBAction)Number5:(id)sender;
-(IBAction)Number6:(id)sender;
-(IBAction)Number7:(id)sender;
-(IBAction)Number8:(id)sender;
-(IBAction)Number9:(id)sender;
-(IBAction)Decimal:(id)sender;

-(IBAction)Multiply:(id)sender;
-(IBAction)Divide:(id)sender;
-(IBAction)Addition:(id)sender;
-(IBAction)Subtraction:(id)sender;
-(IBAction)oneOverX:(id)sender;
-(IBAction)squareRoot:(id)sender;
-(IBAction)xSquared:(id)sender;
-(IBAction)xCubed:(id)sender;
-(IBAction)yToX:(id)sender;
-(IBAction)positiveOrNegative:(id)sender;
-(IBAction)Equals:(id)sender;

-(IBAction)AllClear:(id)sender;
-(IBAction)Backspace:(id)sender;

@end
