//
//  ViewController.h
//  test_noarc
//
//  Created by Mengying FENG on 2/03/2016.
//  Copyright (c) 2016 Mengying FENG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (retain, nonatomic) IBOutlet UITextField *hoursTxtField;
@property (retain, nonatomic) IBOutlet UILabel *feeLbl;
- (IBAction)calculateBtnPressed:(id)sender;


@end

