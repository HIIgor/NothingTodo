//
//  NothingBinaryTreeNode.m
//  nothing
//
//  Created by 向亚国 on 2018/11/14.
//  Copyright © 2018年 HiIgor. All rights reserved.
//

#import "NothingBinaryTreeNode.h"

@implementation NothingBinaryTreeNode
@synthesize left = _left, right = _right, content = _content;


- (instancetype)initWithContent:(id)content {
    self = [super init];
    if (self) {
        _content = content;
    }
    
    return self;
}

+ (instancetype)tree {
    //                           0
    //                        /    \
    //                       1      2
    //                      / \    /
    //                     3   4  8
    //                    / \      \
    //                   5   6      9
    //                  /
    //                 7
    NothingBinaryTreeNode *node0 = [[NothingBinaryTreeNode alloc] initWithContent:@0];
    NothingBinaryTreeNode *node1 = [[NothingBinaryTreeNode alloc] initWithContent:@1];
    NothingBinaryTreeNode *node2 = [[NothingBinaryTreeNode alloc] initWithContent:@2];
    NothingBinaryTreeNode *node3 = [[NothingBinaryTreeNode alloc] initWithContent:@3];
    NothingBinaryTreeNode *node4 = [[NothingBinaryTreeNode alloc] initWithContent:@4];
    NothingBinaryTreeNode *node5 = [[NothingBinaryTreeNode alloc] initWithContent:@5];
    NothingBinaryTreeNode *node6 = [[NothingBinaryTreeNode alloc] initWithContent:@6];
    NothingBinaryTreeNode *node7 = [[NothingBinaryTreeNode alloc] initWithContent:@7];
    NothingBinaryTreeNode *node8 = [[NothingBinaryTreeNode alloc] initWithContent:@8];
    NothingBinaryTreeNode *node9 = [[NothingBinaryTreeNode alloc] initWithContent:@9];
    node0.left = node1;
    node0.right = node2;
    node1.left = node3;
    node1.right = node4;
    node3.left = node5;
    node3.right = node6;
    node5.left = node7;
    node2.left = node8;
    node8.right = node9;
    
    return node0;
}

+ (void)test {
    NothingBinaryTreeNode *tree = [NothingBinaryTreeNode tree];
    NSLog(@"深度优先遍历~~");
    NSLog(@"先序遍历");
    [tree preOrderTraverse];
    NSLog(@"中序遍历");
    [tree inOrderTraverse];
    NSLog(@"后续遍历");
    [tree postOrderTraverse];



    NSLog(@"广度优先遍历~~");
    [tree levelTraverse];

    //翻转
    NSLog(@"二叉树翻转~~~");
    [tree invertBinaryTree];
    [tree levelTraverse];

}

- (void)preOrderTraverse {
    if (self) {
        NSLog(@"%@", self.content);

        [self.left preOrderTraverse];
        [self.right preOrderTraverse];
    }
}

- (void)inOrderTraverse {  //中序遍历
    if (self) {
        [self.left inOrderTraverse];
        NSLog(@"%@", self.content);
        [self.right inOrderTraverse];
    }
}

- (void)postOrderTraverse { //后续遍历
    if (self) {
        [self.left postOrderTraverse];
        [self.right postOrderTraverse];
        NSLog(@"%@", self.content);
    }
}

- (void)levelTraverse { //广度遍历
    //借助队列,一个节点跟随一个节点，下一层的始终再上一层后边，右边的节点始终在左边后边
    NSMutableArray *queue = [NSMutableArray array];
    [queue addObject:self];
    while (queue.count > 0) {
        NothingBinaryTreeNode * node = queue.firstObject;
        NSLog(@"%@", node.content);

        [queue removeObjectAtIndex:0];
        if (node.left) {
            [queue addObject:node.left];
        }

        if (node.right) {
            [queue addObject:node.right];
        }
    }
}

- (void)invertBinaryTree { //二叉树翻转
    if (!self.left && !self.right) {
        return;
    }

    [self.left invertBinaryTree];
    [self.right invertBinaryTree];

    NothingBinaryTreeNode *node = self.left;
    self.left = self.right;
    self.right = node;
}

@end
