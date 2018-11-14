//
//  NothingQueue.m
//  nothing
//
//  Created by HiIgor on 2018/11/14.
//  Copyright © 2018年 HiIgor. All rights reserved.
//

#import "NothingQueue.h"

@interface NothingQueue ()

@property (nonatomic, strong) NSMutableArray *queue;

@end

@implementation NothingQueue

- (instancetype)init {
    self = [super init];
    if (self) {
        self.queue = [NSMutableArray array];
    }
    
    return self;
}

- (void)enqueue:(id)obj {
    if (obj) {
        [self.queue addObject:obj];
        NSLog(@"%@ enqueue", obj);
    }
}

- (void)dequeue:(id *)obj {
    if (self.queue.count > 0) {
        *obj = [self.queue firstObject];
        [self.queue removeObjectAtIndex:0];
        NSLog(@"%@ dequeue", *obj);
    }
}

- (void)clear {
    [self.queue removeAllObjects];
}

+ (void)test {
    NSLog(@"NothingQueue testing ~");
    NothingQueue *queue = [[NothingQueue alloc] init];
    [queue enqueue:@"0"];
    [queue enqueue:@"1"];
    [queue enqueue:@"3"];
    NSString *str = nil;
    [queue dequeue:&str];
    
}

- (NSString *)description {
    return [self.queue description];
}

@end
