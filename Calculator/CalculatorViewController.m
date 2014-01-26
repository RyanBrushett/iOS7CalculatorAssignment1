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
   SelectedNumber *= 10;
   CalcDisplay.text = [NSString stringWithFormat:@"%i", SelectedNumber];
}
-(IBAction)Number1:(id)sender{
   SelectedNumber *= 10;
   SelectedNumber += 1;
   CalcDisplay.text = [NSString stringWithFormat:@"%i", SelectedNumber];
}
-(IBAction)Number2:(id)sender{
   SelectedNumber *= 10;
   SelectedNumber += 2;
   CalcDisplay.text = [NSString stringWithFormat:@"%i", SelectedNumber];
}
-(IBAction)Number3:(id)sender{
   SelectedNumber *= 10;
   SelectedNumber += 3;
   CalcDisplay.text = [NSString stringWithFormat:@"%i", SelectedNumber];
}
-(IBAction)Number4:(id)sender{
   SelectedNumber *= 10;
   SelectedNumber += 4;
   CalcDisplay.text = [NSString stringWithFormat:@"%i", SelectedNumber];
}
-(IBAction)Number5:(id)sender{
   SelectedNumber *= 10;
   SelectedNumber += 5;
   CalcDisplay.text = [NSString stringWithFormat:@"%i", SelectedNumber];
}
-(IBAction)Number6:(id)sender{
   SelectedNumber *= 10;
   SelectedNumber += 6;
   CalcDisplay.text = [NSString stringWithFormat:@"%i", SelectedNumber];
}
-(IBAction)Number7:(id)sender{
   SelectedNumber *= 10;
   SelectedNumber += 7;
   CalcDisplay.text = [NSString stringWithFormat:@"%i", SelectedNumber];
}
-(IBAction)Number8:(id)sender{
   SelectedNumber *= 10;
   SelectedNumber += 8;
   CalcDisplay.text = [NSString stringWithFormat:@"%i", SelectedNumber];
}
-(IBAction)Number9:(id)sender{
   SelectedNumber *= 10;
   SelectedNumber += 9;
   CalcDisplay.text = [NSString stringWithFormat:@"%i", SelectedNumber];
}
-(IBAction)Decimal:(id)sender{
   
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
   SelectedNumber = 0;
   Operation = 0;
   CalcDisplay.text = [NSString stringWithFormat:@"%i", SelectedNumber];
}
-(IBAction)Backspace:(id)sender{
   
}

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
