//
//  ViewController.m
//  Calculator
//
//  Created by Vineet Sathyan on 6/10/15.
//  Copyright (c) 2015 sample. All rights reserved.
//

#import "ViewController.h"

NSString * const OperandAdd = @"+";
NSString * const OperandSubtract = @"-";

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self clear];
}


- (IBAction)addButtonClicked:(id)sender {
    self.currentOperand = OperandAdd;
    
    NSString * currentText = self.outputLabel.text;
    currentText = [NSString stringWithFormat:@"%d%@", self.firstNumber, self.currentOperand];
    
    self.outputLabel.text = currentText;
}

- (IBAction)subtractButtonClicked:(id)sender {
    self.currentOperand = OperandSubtract;
    
    NSString * currentText = self.outputLabel.text;
    currentText = [NSString stringWithFormat:@"%d%@", self.firstNumber, self.currentOperand];
    
    self.outputLabel.text = currentText;
}

- (IBAction)equalButtonClicked:(id)sender {
    int outputNumber = 0;
    if (self.currentOperand == OperandAdd)
    {
        outputNumber = self.firstNumber + self.secondNumber;
    }
    else if (self.currentOperand == OperandSubtract)
    {
        outputNumber = self.firstNumber - self.secondNumber;
    }
    
    self.outputLabel.text = [NSString stringWithFormat:@"%d", outputNumber];
    [self clear];
}

- (IBAction)numberButtonClicked:(id)sender {
    
    NSString * currentText = self.outputLabel.text;
    
    UIButton *button = (UIButton *)sender;
    int number = [button.titleLabel.text intValue];
    
    
    
    if (self.currentOperand)
    {
        self.secondNumber = number;
        
        currentText = [NSString stringWithFormat:@"%d%@%d", self.firstNumber, self.currentOperand, self.secondNumber];
    }
    else
    {
        self.firstNumber = number;
        currentText = [NSString stringWithFormat:@"%d", number];
    }
    
    self.outputLabel.text = currentText;
}

- (void)clear {
    self.firstNumber = 0;
    self.secondNumber = 0;
    self.currentOperand = nil;
}

- (void)appendString:(NSString *)text {
    NSString * currentText = self.outputLabel.text;
    currentText = [currentText stringByAppendingString:text];
    self.outputLabel.text = currentText;
}

@end
