#import "Kiwi.h"
#import "CalculatorBrain.h"

SPEC_BEGIN(CalculatorBrainSpec)
    describe(@"CalculatorBrain", ^{
        __block CalculatorBrain *brain = nil;
        
        beforeAll(^{
            brain = [[CalculatorBrain alloc] init];
        });
        
        describe(@"performOperation", ^{
            it(@"adds", ^{
                [brain pushOperand:2.0];
                [brain pushOperand:4.0];
                [[theValue([brain performOperation:@"+"]) should] equal:theValue(6.0)];
            });
            it(@"subtracts", ^{
                [brain pushOperand:1.0];
                [brain pushOperand:4.0];
                [[theValue([brain performOperation:@"-"]) should] equal:theValue(3.0)];
            });
            it(@"multiplies", ^{
                [brain pushOperand:2.0];
                [brain pushOperand:4.0];
                [[theValue([brain performOperation:@"*"]) should] equal:theValue(8.0)];
            });
            it(@"divides", ^{
                [brain pushOperand:6.0];
                [brain pushOperand:6.0];
                [[theValue([brain performOperation:@"/"]) should] equal:theValue(1.0)];
            });

        });
    });
SPEC_END