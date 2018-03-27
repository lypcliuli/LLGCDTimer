//
//  LLGCDTimer.h
//  Demo
//
//  Created by LYPC on 2018/3/27.
//  Copyright © 2018年 LYPC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LLGCDTimer : NSObject

+ (void)llGCDTimer:(NSInteger)duration repeat:(BOOL)repeat interval:(NSInteger)interval progress:(void(^)(NSInteger current))progressAction endAction:(void(^)(NSInteger current))endAction;

@end
