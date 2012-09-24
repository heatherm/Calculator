#import "Kiwi.h"
#import "CalculatorBrain.h"

SPEC_BEGIN(CalculatorBrainSpec)
    describe(@"CalculatorBrain", ^{
        describe(@"performOperation", ^{
            it(@"adds", ^{
                CalculatorBrain *brain = [[CalculatorBrain alloc] init];
                [brain pushOperand:2.0];
                [brain pushOperand:4.0];
                [[theValue([brain performOperation:@"+"]) should] equal:theValue(6.0)];
            });
            it(@"subtracts", ^{
                CalculatorBrain *brain = [[CalculatorBrain alloc] init];
                [brain pushOperand:1.0];
                [brain pushOperand:4.0];
                [[theValue([brain performOperation:@"-"]) should] equal:theValue(3.0)];
            });
            it(@"multiplies", ^{
                CalculatorBrain *brain = [[CalculatorBrain alloc] init];
                [brain pushOperand:2.0];
                [brain pushOperand:4.0];
                [[theValue([brain performOperation:@"*"]) should] equal:theValue(8.0)];
            });
            it(@"divides", ^{
                CalculatorBrain *brain = [[CalculatorBrain alloc] init];
                [brain pushOperand:6.0];
                [brain pushOperand:6.0];
                [[theValue([brain performOperation:@"/"]) should] equal:theValue(1.0)];
            });

        });
    });
SPEC_END