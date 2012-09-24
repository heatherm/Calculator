//
//  CalculatorViewController.h
//  Calculator
//
//  Created by Heather Moore on 9/23/12.
//  Copyright (c) 2012 com.heathrmoor.iphone. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CalculatorViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *display;
@property (nonatomic) BOOL userIsInTheMiddleOfEnteringANumber;

- (IBAction)digitPressed:(UIButton *)sender;

@end
