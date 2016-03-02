//
//  ViewController.h
//  tax-calc
//
//  Created by Mengying FENG on 2/03/2016.
//  Copyright (c) 2016 Mengying FENG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *salaryTxtField;
- (IBAction)calculaterBtnPressed:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *resultLbl;
@property (weak, nonatomic) IBOutlet UILabel *payYourTaxLbl;


@end

