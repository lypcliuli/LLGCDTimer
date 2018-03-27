//
//  LLGCDTimer.m
//  Demo
//
//  Created by LYPC on 2018/3/27.
//  Copyright © 2018年 LYPC. All rights reserved.
//

#import "LLGCDTimer.h"

@implementation LLGCDTimer

+ (void)llGCDTimer:(NSInteger)duration repeat:(BOOL)repeat interval:(NSInteger)interval progress:(void(^)(NSInteger current))progressAction endAction:(void(^)(NSInteger current))endAction {
    __block NSInteger num = duration;
    dispatch_queue_t queue = dispatch_get_main_queue();
    dispatch_source_t timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, queue);
    dispatch_source_set_timer(timer, DISPATCH_TIME_NOW, interval*1.0 * NSEC_PER_SEC, 0 * NSEC_PER_SEC);
    dispatch_source_set_event_handler(timer, ^{
        num --;
        if (num == 0) {
            num = duration;
            if (!repeat) {
                dispatch_source_cancel(timer);
            }
            progressAction(num);
            endAction(num);
        }else {
            progressAction(num);
        }
    });
    dispatch_resume(timer);
}

@end
