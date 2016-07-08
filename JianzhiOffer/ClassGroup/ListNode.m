//
//  ListNode.m
//  JianzhiOffer
//
//  Created by 徐冰 on 08/07/2016.
//  Copyright © 2016 Bing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Header.h"

@implementation ListNode

- (void) ListNode:(int)val {
    self.val = val;
    self.next = nil;
}

+ (ListNode *) reverseList:(ListNode *)head {
    if (head == nil || head.next == nil) {
        NSLog(@"--");
        return head;
    }
    
    ListNode *current = head.next;
    head.next = nil;
    while (current != nil) {
        ListNode *temp = current.next;
        current.next = head;
        head = current;
        current = temp;
        
    }
    
    return head;
}

@end