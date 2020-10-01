//
//  Operation.m
//  OBJ-C_Lesson6
//
//  Created by Даниил Мурыгин on 01.10.2020.
//

#import "Operation.h"

@implementation Operation

- (void)start {
    NSLog(@"OPERATION START");
}

- (void)main {
    NSLog(@"RESULT");
}

- (BOOL)isCancelled {
    NSLog(@"isCancelled");
    return [super isCancelled];
}

- (BOOL)isFinished {
    NSLog(@"isFinished");
    return [super isFinished];
}

-(BOOL)isReady {
    NSLog(@"isReady");
    return [super isReady];
}

@end
