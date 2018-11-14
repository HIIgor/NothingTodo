//
//  NothingQueue.h
//  nothing
//
//  Created by HiIgor on 2018/11/14.
//  Copyright © 2018年 HiIgor. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NothingHeader.h"

NS_ASSUME_NONNULL_BEGIN

@interface NothingQueue : NSObject <TestingProtocol>

- (void)enqueue:(id)obj;

- (void)dequeue:(id *)obj;

- (void)clear;

@end

NS_ASSUME_NONNULL_END
