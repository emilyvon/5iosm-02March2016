//
//  ViewController.m
//  test_noarc
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

- (void)dealloc {
    [_hoursTxtField release];
    [_feeLbl release];
    [super dealloc];
}
- (IBAction)calculateBtnPressed:(id)sender {
    
    NSString *hours = _hoursTxtField.text;
    double parkingFee;
    NSString *messageString;
    
    //    NSString *fee = [[NSString alloc]initWithFormat:@"Total parking fee: %@", self.feeLbl.text];
    
    
    if (![self.hoursTxtField.text  isEqual: @""]) {
        //        int hours = self.hoursTxtField.text.doubleValue;
        //
        //        if (hours <= 2) {
        //            self.feeLbl.text = fee
        
        
        if ([hours intValue] <= 2) {
            parkingFee = [hours intValue] * 2.50;
        } else if ([hours intValue] <=4) {
            parkingFee = 2 * 2.5 + ([hours intValue] -2) * 2;
        } else {
            parkingFee = 2 * 2.5 + 2 * 2 + ([hours intValue] - 4) * 1.50;
        }
        
    }
    
    messageString = [[NSString alloc]initWithFormat:@"Total fee: %0.2f", parkingFee];
    
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Parking Fee Due" message:messageString delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:nil];
    
    [alert show];

    [messageString release];
    [alert release];
    
}
@end
