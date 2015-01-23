//
//  ViewController.m
//  TipCalculator
//
//  Created by Renato Camilio on 1/23/15.
//  Copyright (c) 2015 Renato Camilio. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *tipPercentageTextField;
@property (weak, nonatomic) IBOutlet UILabel *tipAmountLabel;
@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;
- (IBAction)calculateTip:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)calculateTip:(id)sender {
    CGFloat tipAmount = [self.billAmountTextField.text floatValue] * ([self.tipPercentageTextField.text floatValue] / 100);
    self.tipAmountLabel.text = [NSString stringWithFormat:@"CAD$ %.2f", tipAmount];
}

@end
