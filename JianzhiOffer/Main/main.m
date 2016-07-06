//
//  main.m
//  JianzhiOffer
//
//  Created by 徐冰 on 06/07/2016.
//  Copyright © 2016 Bing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Singleton.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        Singleton *obj1 = [Singleton getSharedInstance];
        Singleton *obj2 = [Singleton getSharedInstance];
        Singleton *obj3 = [[Singleton alloc] init];
        Singleton *obj4 = [[Singleton alloc] init];
        NSLog(@"Obj1 = %@", obj1);
        NSLog(@"Obj2 = %@", obj2);
        NSLog(@"Obj3 = %@", obj3);
        NSLog(@"Obj4 = %@", [obj4 copy]);
    }
    return 0;
}
