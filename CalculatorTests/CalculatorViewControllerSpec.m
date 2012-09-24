#import "Kiwi.h"
#import "CalculatorViewController.h"

SPEC_BEGIN(CalculatorViewControllerSpec)
describe(@"CalculatorViewCOntroller", ^{
    __block CalculatorViewController *controller = nil;
    __block UILabel *label = nil;
    
    beforeAll(^{
        controller = [[CalculatorViewController alloc] init];
        label = [[UILabel alloc] init];
        [[[controller should] receiveAndReturn:label] display];
    });
    
    describe(@"digitPressed", ^{
        it(@"sets the display equal to the button title", ^{
            UIButton *button = [[UIButton alloc] init];
            [[[button should] receiveAndReturn:@"1"] currentTitle];
            [controller digitPressed:button];
            [[label.text should] equal:@"1"];
            [[theValue(controller.userIsInTheMiddleOfEnteringANumber) should] equal:theValue(YES)];
        });
    });
});
SPEC_END