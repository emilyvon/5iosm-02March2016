//
//  ViewController.m
//  tax-calc
//
//  Created by Mengying FENG on 2/03/2016.
//  Copyright (c) 2016 Mengying FENG. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

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

- (IBAction)calculaterBtnPressed:(id)sender {
    
    double annualSalary = self.salaryTxtField.text.doubleValue;
    double tax;
    
    if (annualSalary <= 6000 && annualSalary >=0) {
        tax = 0;
    } else if (annualSalary <= 37000) {
        tax = (annualSalary - 6000) * 0.15;
    } else if (annualSalary <= 80000) {
        tax = 4650 + (80000-37000) * 0.30;
    } else if (annualSalary <= 180000) {
        tax = 17550 + (180000 - 80000) * 0.37;
    } else {
        tax = 54550;
    }
    
    
    
    
    
}
@end
