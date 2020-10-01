//
//  main.m
//  OBJ-C_Lesson6
//
//  Created by Даниил Мурыгин on 01.10.2020.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"
#import "Operation.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int first = 10;
        int second = 2;
        
        int resultSum = [Calculator beginWithAction:ActionSum firstNumber:first secondNumber:second];
        
        NSLog(@"%d", resultSum);
        
        bool resultEqual = [Calculator beginWithLogicAction:ActionEQUAL firstNumber:resultSum secondNumber:11];
        
        NSLog(@"%d", resultEqual);
        
        ///MARK: GCD
        //Создание последовательной очереди
        dispatch_queue_t serial_queue = dispatch_queue_create("SerialQueue", NULL);
        
        __block int tempValue;
        
        dispatch_async(serial_queue, ^{
            tempValue = [Calculator beginWithAction:ActionMultiplication firstNumber:first secondNumber:first];
        });
        
        
        ///MARK: NSOperationQueque
        //Создание операции
        NSOperationQueue *mainQueue = [NSOperationQueue mainQueue];
        
        Operation *customQueue1 = [[Operation alloc] init];
        Operation *customQueue2 = [[Operation alloc] init];
        
        [customQueue2 addDependency:customQueue1];
        
        [mainQueue addOperation:customQueue1];
    }
    return 0;
}
