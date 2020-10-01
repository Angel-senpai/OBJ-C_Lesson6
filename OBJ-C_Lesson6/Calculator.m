//
//  Calculator.m
//  OBJ-C_Lesson6
//
//  Created by Даниил Мурыгин on 01.10.2020.
//

#import "Calculator.h"
ArithmeticBlock sum = ^(int a, int b) {
    return a + b;
};

ArithmeticBlock substraction = ^(int a, int b) {
    return a - b;
};

ArithmeticBlock multiplication = ^(int a, int b) {
    return a * b;
};

ArithmeticBlock division = ^(int a, int b) {
    return a / b;
};

ArithmeticBlock remainderOfTheDivision = ^(int a, int b) {
    return a % b;
};

LogicBlock equal = ^(int a, int b) {
    return a == b;
};
LogicBlock notequal = ^(int a, int b) {
    return a != b;
};
LogicBlock greater = ^(int a, int b) {
    return a > b;
};
LogicBlock less = ^(int a, int b) {
    return a < b;
};
LogicBlock lessOrEqual = ^(int a, int b) {
    return a <= b;
};
LogicBlock greaterOrEqual = ^(int a, int b) {
    return a >= b;
};

@implementation Calculator
+ (int)beginWithAction:(ArithmeticAction)action firstNumber:(int)first secondNumber:(int)second {
    
    switch (action) {
        case ActionSum:
            return sum(first, second);
        case ActionSubstraction:
            return substraction(first, second);
        case ActionMultiplication:
            return multiplication(first, second);
        case ActionDivision:
            return division(first, second);
        case ActionRemainderOfTheDivision:
            return remainderOfTheDivision(first, second);
    }
    
}

+ (bool)beginWithLogicAction:(LogicAction)action firstNumber: (int)first secondNumber: (int)second{
    switch (action) {
        case ActionEQUAL:
            return equal(first,second);
        case ActionNOTEQUAL:
            return notequal(first,second);
        case ActionGREATER:
            return greater(first,second);
        case ActionLESS:
            return less(first,second);
        case ActionLESSOREQUAL:
            return lessOrEqual(first,second);
        case ActionGREATEROREQUAL:
            return greaterOrEqual(first,second);
    }
}
@end
