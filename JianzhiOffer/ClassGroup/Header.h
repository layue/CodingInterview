//
//  Header.h
//  JianzhiOffer
//
//  Created by 徐冰 on 06/07/2016.
//  Copyright © 2016 Bing. All rights reserved.
//

/* Header_h */
#import <Foundation/Foundation.h>

@interface Singleton : NSObject

+ (instancetype) getSharedInstance;

@end


@interface SpaceReplacement : NSObject

+ (int) spaceReplace: (char []) string length:(int) length;

@end