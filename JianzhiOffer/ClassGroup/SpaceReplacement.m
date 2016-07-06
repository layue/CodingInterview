//
//  SpaceReplacement.m
//  JianzhiOffer
//
//  Created by 徐冰 on 06/07/2016.
//  Copyright © 2016 Bing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Header.h"

@implementation SpaceReplacement

+ (int) spaceReplace: (char []) string length:(int) length {
    int addLength = 0;
    for (int i = 0; i < length; i ++) {
        if(string[i] == ' ') {
            addLength += 2;
        }
    }
    
    int newLength = length + addLength;
    int current = newLength - 1;
    for (int i = length - 1; i >= 0; i --) {
        if (string[i] != ' ') {
            string[current --] = string[i];
        } else {
            string[current --] = '0';
            string[current --] = '2';
            string[current --] = '%';
        }
    }
    return newLength;
}

@end