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
   
}
-(IBAction)Number6:(id)sender{
   
}
-(IBAction)Number7:(id)sender{
   
}
-(IBAction)Number8:(id)sender{
   
}
-(IBAction)Number9:(id)sender{
   
}
-(IBAction)Decimal:(id)sender{
   
}

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
-(IBAction)AllClear:(id)sender{
   
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
