//
//  NothingStack.h
//  nothing
//
//  Created by HiIgor on 2018/11/14.
//  Copyright © 2018年 HiIgor. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NothingHeader.h"

NS_ASSUME_NONNULL_BEGIN

@interface NothingStack : NSObject <TestingProtocol>

- (id)popup;

- (void)push:(id)obj;

- (NSUInteger)size;

- (id)top;

@end

NS_ASSUME_NONNULL_END
