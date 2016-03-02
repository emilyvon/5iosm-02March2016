//
//  ViewController.m
//  high-low-game
//
//  Created by Mengying FENG on 2/03/2016.
//  Copyright (c) 2016 Mengying FENG. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    int r;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    r = arc4random() % 100;
    NSLog(@"Random number generated: %d", r);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_numberTxtField release];
    [_resultLbl release];
    [_guessBtn release];
    [super dealloc];
}
- (IBAction)guessBtnPressed:(id)sender {
    
    UIAlertView *alert;
    
    if (![self.numberTxtField.text isEqual:@""]) {
        
        if ((self.numberTxtField.text.intValue < 1) || (self.numberTxtField.text.intValue > 100)) {
            // show alert
            alert = [[UIAlertView alloc]initWithTitle:@"Invalid input" message:@"Number is between 1 and 100" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
            
            [alert show];
            [alert release];
        }
        else {
        
            int myNum = self.numberTxtField.text.intValue;
            
            if (myNum > r) {
                self.resultLbl.text = @"TOO HIGH!";
            } else if (myNum < r) {
                self.resultLbl.text = @"TOO LOW!";
            } else {
                self.resultLbl.text = @"U GOT IT!";
                self.guessBtn.enabled = false;
            }
        }
        
    }
    
    
}

- (IBAction)restartGameBtnPressed:(id)sender {
    self.guessBtn.enabled = true;
    r = arc4random() % 100;
    NSLog(@"Restart random number: %d", r);
    self.numberTxtField.text = @"";
}
@end
