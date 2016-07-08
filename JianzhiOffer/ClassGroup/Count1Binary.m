//
//  Count1Binary.m
//  JianzhiOffer
//
//  Created by 徐冰 on 08/07/2016.
//  Copyright © 2016 Bing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Header.h"

@implementation Count1Binary

+ (int) count1Binary: (int) num {
    //Method1
//    int count = 0;
//    int flag = 1;
//    
//    while (flag) {
//        if (flag & num) {
//            count ++;
//        }
//        flag <<= 1;
//    }
//    
//    return count;
    
    //Method2
    int count = 0;
    while (num) {
        num &= (num - 1);
        count ++;
    }
    return count;
}

@end
