//
//  NothingHeader.h
//  nothing
//
//  Created by HiIgor on 2018/11/14.
//  Copyright © 2018年 HiIgor. All rights reserved.
//

#ifndef NothingHeader_h
#define NothingHeader_h

@protocol TestingProtocol <NSObject>

+ (void)test;

@end


@protocol LinkNodeProtocol <NSObject>

@property (nonatomic, strong) id <LinkNodeProtocol> next;
@property (nonatomic, strong) id content;
- (id <LinkNodeProtocol>)reverse;
- (id <LinkNodeProtocol>)recursiveReverse;
- (void)print;

@end

@protocol TreeNodeProtocol <NSObject>

@property (nonatomic, strong) id <TreeNodeProtocol> left;
@property (nonatomic, strong) id <TreeNodeProtocol> right;
@property (nonatomic, strong) id content;
- (void)preOrderTraverse; //先序遍历
- (void)inOrderTraverse;  //中序遍历
- (void)postOrderTraverse;//后序遍历
- (void)levelTraverse; //广度遍历
- (void)invertBinaryTree; //翻转
@end


#endif /* NothingHeader_h */
