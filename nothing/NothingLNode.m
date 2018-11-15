//
//  NothingLNode.m
//  nothing
//
//  Created by HiIgor on 2018/11/14.
//  Copyright © 2018年 HiIgor. All rights reserved.
//

#import "NothingLNode.h"

@implementation NothingLNode
@synthesize next = _next, content = _content;

- (instancetype)init {
    self = [super init];
    if (self) {
        _next = nil;
        _content = nil;
    }
    
    return self;
}

+ (void)test {
    /* 1->2->3->4->5->6->7->8->9->10 */
    NothingLNode *head = nil;
    for (int i = 10; i > 0; i--) {
        NothingLNode *node = [[NothingLNode alloc] init];
        node.next = head;
        node.content = @(i);
        head = node;
    }
    [head print];
    
    //================================= 单链表翻转 ===================================
    /* 10->9->8->7->6->5->4->3->2->1 */
    id <LinkNodeProtocol> newHead = [head recursiveReverse];
    [newHead print];
    
    id <LinkNodeProtocol> newHead1 = [newHead reverse];
    [newHead1 print];
    //==============================================================================
}

// 非递归实现链表翻转
- (id <LinkNodeProtocol>)reverse {
    id <LinkNodeProtocol> node = self;
    if (!node.next) {
        return node;
    }
    
    /*
     多个指针位置
     一个用来保存断裂重连之后，上一个节点 newHead
     一个用来不断向前进行 p
     */
    id <LinkNodeProtocol> p = node, newHead = nil;
    while (p) {
        id <LinkNodeProtocol> t = p.next;
        p.next = newHead;
        newHead = p;
        p = t;
    }
    
    return newHead;
}

- (id <LinkNodeProtocol>)recursiveReverse {
    
    // 每一层花括号内向下调用直到调用到最深处，到最深处将新的头结点获取并不断想上一层传值
 /*{
        {
            {
                {
                    ..... => reverse(第1次翻转);
                }
                reverse(第n-3次翻转);
            }
            reverse(第n-2次翻转);
        }
        reverse(第n-1次翻转);
    }*/
    id <LinkNodeProtocol> node = self;
    if (!node.next) {
        return node;
    }
    
    id <LinkNodeProtocol> newHead = [node.next recursiveReverse];
    
    node.next.next = node;
    node.next = nil;
    
    return newHead;
}

- (void)print {
    NSLog(@"\n LinkNode printing ~!~~");
    id <LinkNodeProtocol> node = self;
    while (node) {
        NSLog(@"next -> %@", node.content);
        node = node.next;
    }
}

@end
