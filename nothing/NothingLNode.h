//
//  NothingLNode.h
//  nothing
//
//  Created by HiIgor on 2018/11/14.
//  Copyright © 2018年 HiIgor. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NothingHeader.h"

@protocol LinkNodeProtocol <NSObject>

@property (nonatomic, strong) id <LinkNodeProtocol> next;
@property (nonatomic, strong) id content;
- (id <LinkNodeProtocol>)reverse;
- (id <LinkNodeProtocol>)recursiveReverse;
- (void)print;

@end

NS_ASSUME_NONNULL_BEGIN

@interface NothingLNode : NSObject <LinkNodeProtocol, TestingProtocol>

@end

NS_ASSUME_NONNULL_END
