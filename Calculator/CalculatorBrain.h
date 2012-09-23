//
//  CalculatorBrain.h
//  Calculator
//
//  Created by Heather Moore on 9/23/12.
//  Copyright (c) 2012 com.heathrmoor.iphone. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorBrain : NSObject

- (void) pushOperand:(double)operand;
- (double) performOperation: (NSString *)operation;

@end
