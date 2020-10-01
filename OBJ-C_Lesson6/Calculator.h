//
//  Calculator.h
//  OBJ-C_Lesson6
//
//  Created by Даниил Мурыгин on 01.10.2020.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef int (^ArithmeticBlock) (int a, int b);
typedef int (^LogicBlock) (int a, int b);

typedef enum ArithmeticAction {
    ActionSum,
    ActionSubstraction,
    ActionMultiplication,
    ActionDivision,
    ActionRemainderOfTheDivision
} ArithmeticAction ;

typedef enum LogicAction {
    ActionEQUAL,
    ActionNOTEQUAL,
    ActionGREATER,
    ActionLESS,
    ActionGREATEROREQUAL,
    ActionLESSOREQUAL
} LogicAction ;

@interface Calculator : NSObject
+ (int)beginWithAction:(ArithmeticAction)action firstNumber: (int)first secondNumber: (int)second;
+ (bool)beginWithLogicAction:(LogicAction)action firstNumber: (int)first secondNumber: (int)second;
@end

NS_ASSUME_NONNULL_END
