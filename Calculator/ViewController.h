//
//  ViewController.h
//  Calculator
//
//  Created by Vineet Sathyan on 6/10/15.
//  Copyright (c) 2015 sample. All rights reserved.
//

#import <UIKit/UIKit.h>

extern NSString * const OperandAdd;
extern NSString * const OperandSubtract;

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *outputLabel;

@property (nonatomic) int firstNumber;
@property (nonatomic) int secondNumber;
@property (nonatomic, strong) NSString * currentOperand;


- (IBAction)addButtonClicked:(id)sender;
- (IBAction)subtractButtonClicked:(id)sender;

- (IBAction)equalButtonClicked:(id)sender;


- (IBAction)numberButtonClicked:(id)sender;

@end

