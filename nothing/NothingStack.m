//
//  NothingStack.m
//  nothing
//
//  Created by HiIgor on 2018/11/14.
//  Copyright © 2018年 HiIgor. All rights reserved.
//

#import "NothingStack.h"

@interface NothingStack ()

@property (nonatomic, strong) NSMutableArray *array;

@end

@implementation NothingStack

- (instancetype)init {
    self = [super init];
    if (self) {
        self.array = [NSMutableArray array];
    }
    
    return self;
}

- (id)popup {
    id obj = self.array.lastObject;
    NSLog(@"%@ popuped", obj);
    [self.array removeLastObject];
    return obj;
}

- (void)push:(id)obj {
    if (obj && ![self.array containsObject:obj]) {
        [self.array addObject:obj];
        NSLog(@"%@ pushed", obj);
    }
}

- (NSUInteger)size {
    return self.array.count;
}

- (id)top {
    return self.array.lastObject;
}

+ (void)test {
    NSLog(@"NothingStack testing ~");
    NothingStack *stack = [[NothingStack alloc] init];
    [stack push:@2];
    [stack push:@3];
    [stack popup];
    [stack push:@4];
    [stack push:@5];
}
@end

