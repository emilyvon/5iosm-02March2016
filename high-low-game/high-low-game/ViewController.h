//
//  ViewController.h
//  high-low-game
//
//  Created by Mengying FENG on 2/03/2016.
//  Copyright (c) 2016 Mengying FENG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (retain, nonatomic) IBOutlet UITextField *numberTxtField;
@property (retain, nonatomic) IBOutlet UILabel *resultLbl;
- (IBAction)guessBtnPressed:(id)sender;
- (IBAction)restartGameBtnPressed:(id)sender;
@property (retain, nonatomic) IBOutlet UIButton *guessBtn;

@end