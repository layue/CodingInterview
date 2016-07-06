//
//  Singleton.m
//  JianzhiOffer
//
//  Created by 徐冰 on 06/07/2016.
//  Copyright © 2016 Bing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Singleton.h"

static Singleton  *sharedInstance = nil;

@implementation Singleton
+  (instancetype) getSharedInstance {
    static dispatch_once_t  onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[super allocWithZone: NULL] init];
    });
    return sharedInstance;
}

+ (id) allocWithZone: (struct _NSZone *) zone {
    return [Singleton getSharedInstance];
}

- (id) copyWithZone: (struct _NSZone *) zone {
    return [Singleton getSharedInstance];
}

@end